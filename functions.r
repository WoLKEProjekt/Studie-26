fit_lmer <- function(
  response_var,
  groups = NULL,
  time_var = NULL,
  controls = NULL,
  random_terms = NULL,
  lmer_control = NULL,
  data
) {
  for (idx in seq_along(random_terms)) {
    random_term <- random_terms[idx]

    formula_string <- paste(
      response_var,
      "~",
      ifelse(
        !is.null(groups),
        paste0("(", paste(groups, collapse = " + "), ")", " * "),
        ""
      ),
      time_var,
      "+",
      paste(controls, collapse = "+"),
      ifelse(!is.null(random_term), "+", ""),
      random_term
    )

    # print(formula_string)
    if (is.null(lmer_control) && !is.null(random_term)) {
      model <- lme4::lmer(as.formula(formula_string), data = data)
    } else if (!is.null(random_term)) {
      model <- lme4::lmer(
        as.formula(formula_string),
        data = data,
        control = lmer_control
      )
    } else {
      model <- lm(as.formula(formula_string), data = data)
    }
    if (!isSingular(model)) {
      return(model)
    }

    if (idx == length(random_terms)) {
      warning(
        paste(
          "Model for",
          response_var,
          "is singular. The simplest random structure lead to a singular model."
        )
      )
      return(model)
    } else {
      message(
        paste0(
          "Model for ",
          response_var,
          " is singular using the random structure ",
          random_term,
          ". Reducing random effects structure."
        )
      )
    }
  }
}

modelsummary_models <- function(
  models,
  outcomes = NULL,
  title = NULL,
  output = "kableExtra"
) {
  # create a new list based on the outcomes that contains names(list)=models
  if (!is.null(outcomes)) {
    list_models <- lapply(seq_along(outcomes), function(x) {
      models[[x]]
    })
    names(list_models) <- outcomes
  } else {
    list_models <- lapply(seq_along(models), function(x) {
      models[[x]]
    })
    names(list_models) <- sapply(models, function(x) {
      ifelse("mira" %in% class(x), formula(x[[4]][[1]])[[2]], formula(x)[[2]])
    })
  }
  ms <- modelsummary(
    list_models,
    output = output,
    # estimate = "{estimate}{stars} \n ({std.error}) p={p.value}",
    statistic = c("SE" = "std.error", "t" = "statistic", "p" = "p.value"),
    estimate = c("b" = "{estimate}{stars}"),
    #statistic=NULL,
    shape = term ~ model + statistic,
    title = title,
    fmt = fmt_decimal(digits = 2, pdigits = 3),
    escape = switch(output, "latex" = T, "latex_tabular" = T, F)
  )
  if (output == "kableExtra") {
    return(
      ms %>%
        kable_styling(
          bootstrap_options = c("striped", "condensed", "hover"),
          full_width = T
        )
    )
  } else {
    return(ms)
  }
}

# Convert everything to character, then use type.convert to infer proper base types
clean_df <- function(df) {
  df[] <- lapply(df, function(col) {
    if (!is.atomic(col)) {
      col <- as.character(col)
    }
    col <- as.character(col) # force avector etc. to become characters
    type.convert(col, as.is = TRUE)
  })
  return(df)
}

check_distances <- function(data, dist = 2) {
  # finding typos in code
  # get and save single instances of code
  single_codes <- data %>%
    count(code) %>%
    filter(n == 1) %>%
    pull(code)
  # Get only the rows where code is in single_codes
  data_single <- data %>%
    filter(code %in% single_codes)

  # Now split the codes based on group
  single_codes_pre <- data_single %>%
    filter(time == "pre") %>%
    pull(code)

  single_codes_post <- data_single %>%
    filter(time == "post") %>%
    pull(code)

  # 1. Compute the distance matrix
  dist_matrix <- stringdistmatrix(
    a = single_codes_pre,
    b = single_codes_post,
    method = "lv"
  )

  # 2. Convert to data frame with row and column names
  dist_df <- as.data.frame(dist_matrix)
  rownames(dist_df) <- single_codes_pre
  colnames(dist_df) <- single_codes_post

  # 3. Extract the index positions where distance == 2
  matches_x <- which(dist_df == dist, arr.ind = TRUE)

  # 4. Create a data frame of those matches
  matches_distance_x <- data.frame(
    pre_code = rownames(dist_df)[matches_x[, "row"]],
    post_code = colnames(dist_df)[matches_x[, "col"]],
    distance = dist
  )

  # 5. View result
  print(matches_distance_x)
}

check_demo_vars <- function(
  data,
  demo_vars = c("age", "semester", "gender", "students"),
  id = "code",
  time_col = "time",
  pre_label = "pre",
  post_label = "post",
  show_only_diff = FALSE
) {
  out <- data %>%
    select(all_of(c(id, time_col, demo_vars))) %>%
    # ensure a common type across demo vars
    mutate(across(all_of(demo_vars), as.character)) %>%
    pivot_longer(
      cols = all_of(demo_vars),
      names_to = "variable",
      values_to = "value"
      # alternatively: values_transform = as.character
      # or: values_ptypes = list(value = character())
    ) %>%
    group_by(.data[[id]], variable, .data[[time_col]]) %>%
    summarise(
      value = paste(unique(na.omit(value)), collapse = ", "),
      .groups = "drop"
    ) %>%
    pivot_wider(names_from = all_of(time_col), values_from = value) %>%
    transmute(
      !!id := .data[[id]],
      variable,
      pre = .data[[pre_label]],
      post = .data[[post_label]],
      match = (pre == post) | (is.na(pre) & is.na(post))
    ) %>%
    arrange(.data[[id]], variable)

  if (show_only_diff) {
    out <- filter(out, is.na(match) | !match)
  }
  print(n = 100, na.omit(out))
}
