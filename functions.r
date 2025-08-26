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
    if (!is.atomic(col)) col <- as.character(col)
    col <- as.character(col)  # force avector etc. to become characters
    type.convert(col, as.is = TRUE)
  })
  return(df)
}