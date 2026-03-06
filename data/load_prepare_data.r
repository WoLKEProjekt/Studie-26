### Load Data
# load csv -> df_pre
source("./data/import_data.r")

# extract relevant items in a separate data frame
data_raw <- df %>%
  select(
    QUESTNNR,
    starts_with("DE"), # Demographics
    starts_with("AI"), # AI Literacy Hornberger
    starts_with("GL"), # AI Literacy GLAT
    starts_with("TP"), # TPACK
    starts_with("RE"), # CEA Critical Evaluation of AI
    starts_with("CT"), # Computational Thinking
    starts_with("STARTED"),
    starts_with("FINISHED")
  )
# replace _posttest with _post for easier handling
data_raw$QUESTNNR <- str_replace(
  data_raw$QUESTNNR,
  "_posttest",
  "_post"
)
# rename demographics
data_raw <- data_raw %>%
  mutate(
    code = tolower(DE13_01),
    age = DE14_01,
    semester = DE15_01,
    studies = DE16,
    subject1 = DE24,
    subject2 = DE25,
    gender = factor(
      DE10,
      levels = c("Weiblich", "Männlich", "Divers"),
      labels = c("Female", "Male", "Divers")
    ),
    location = factor(
      DE11,
      levels = c("PH Ludwigsburg", "PH Schwäbisch Gmünd")
    ),
    isp = DE09,
    ai_training = DE32,
    ai_training_amount = DE33,
    #sprache_intervention = DE08,
    sprache_last_sem = DE06, #already visited cans KI seminar
    #mint_control = DE07,
    mint_exclusion = DE02,
    intervention_sprache = case_when(
      str_to_lower(as.character(DE08)) == "ja" ~ TRUE,
      str_to_lower(as.character(DE08)) == "nein" ~ FALSE
    ),
    intervention_mint = case_when(
      str_to_lower(as.character(DE07)) == "ja" ~ TRUE,
      str_to_lower(as.character(DE07)) == "nein" ~ FALSE
    ),
    intervention_only = coalesce(intervention_sprache, FALSE) | # is intervention group (stem or language)
      coalesce(intervention_mint, FALSE),
    intervention_only = as.logical(intervention_only)
  )
data_raw <- data_raw[, c("code", setdiff(names(data_raw), "code"))] #set code as first column

# create relevant columns group (sprache mint), time (pre, post) and intervention (control, mint, sprache)
data_raw <- data_raw %>%
  mutate(
    group = case_when(
      str_detect(QUESTNNR, "sprache") ~ "language",
      str_detect(QUESTNNR, "mint") ~ "stem"
    ),
    time = case_when(
      str_detect(QUESTNNR, "post") ~ "post",
      TRUE ~ "pre"
    ),
    group = factor(group, levels = c("language", "stem")),
    time = factor(time, levels = c("pre", "post"))
  )

# create intervention with 3 factors: control, mint, sprache
data_raw <- data_raw %>%
  mutate(
    intervention = factor(
      ifelse(
        intervention_only == F,
        "control",
        ifelse(group == "stem", "stem", "language")
      ),
      levels = c("control", "stem", "language")
    )
  )
# create new variable subject with levels bachelor and master depending on studies value
data_raw <- data_raw %>%
  mutate(
    students = case_when(
      str_detect(tolower(studies), "master") ~ "master",
      str_detect(tolower(studies), "bachelor") ~ "bachelor",
      TRUE ~ NA
    ),
    students = factor(students, levels = c("bachelor", "master"))
  )


data_raw <- data_raw[!rownames(data_raw) %in% c("199"), ] # delete one (out of 3) entry from enta20, which is a single stem entry and a control group. has two valid entries in language intervention
data_raw <- data_raw[!rownames(data_raw) %in% c("129", "285"), ] # delete two (out of 4) entry from enan27. the one stem entry and the one language pre entry (has 2) which matches most with post entry
data_raw <- data_raw[!rownames(data_raw) %in% c("385"), ] # delete the first post entry from IMLI24 and kept the second, because the first entry was mixed up with answers from another subjects

## exclusions
# exclude, count and save the count of the ones that have not finished the questionnaire (FINISHED == F) and check how many that are
total_n_before_exclusion <- nrow(data_raw) # 345 total
not_finished_count <- sum(data_raw$FINISHED == "FALSE") # 47 removed
data_raw <- data_raw %>% filter(FINISHED == "TRUE") # 298 remaining
# count and exclude the one that have TRUE in mint_exclusion
mint_exclusion_count <- sum(data_raw$mint_exclusion == "Ja", na.rm = TRUE) # 29 removed
data_raw <- data_raw %>% filter(is.na(mint_exclusion) | mint_exclusion != "Ja") # 269 remaining

# count in separate variable and exclude those with NA in code or empty code
# view those codes with empty or NA code first
na_in_code <- sum(is.na(data_raw$code) | data_raw$code == "") # 5 removed
data_raw <- data_raw[!(is.na(data_raw$code) | data_raw$code == ""), ] # 263 remaining
total_n_after_first_exclusion <- nrow(data_raw)

# save data for later reference in report
save(
  total_n_before_exclusion,
  file = "data/dropouts/26-total_n_before_exclusion.Rdata"
)
save(not_finished_count, file = "data/dropouts/26-not_finished_count.Rdata")
save(mint_exclusion_count, file = "data/dropouts/26-mint_exclusion_count.Rdata")
save(na_in_code, file = "data/dropouts/26-na_in_code.Rdata")
save(
  total_n_after_first_exclusion,
  file = "data/dropouts/26-total_n_after_first_exclusion.Rdata"
)

# find out which codes have multiple entries and delete least fitting ones
# codes_multiple <- names(which(table(data_raw$code) > 2)) # "enan27" "enta20"

# correct typos in codes (from levenshtein checks later)
data_raw$code[data_raw$code == "erad21"] <- "mrad21"
data_raw$code[data_raw$code == "rgan29"] <- "rgan09"
data_raw$code[data_raw$code == "enbr15"] <- "enbi15"
data_raw$code[data_raw$code == "imna12"] <- "imna13"
data_raw$code[data_raw$code == "enbr15"] <- "enbi15"
data_raw$code[data_raw$code == "imna12"] <- "imna13"
data_raw$code[data_raw$code == "rhsa18"] <- "rgsa18"
data_raw$code[data_raw$code == "enan05"] <- "iman05"
data_raw$code[data_raw$code == "immi03"] <- "enmi03"
data_raw$code[data_raw$code == "lmni21"] <- "rgni21"
code_typos_corrected <- 10
save(code_typos_corrected, file = "data/dropouts/26-code_typos_corrected.Rdata")

# check demograph. differences pre to post
dem_diff <- check_demo_vars(
  data_raw,
  demo_vars = c(
    "age",
    "semester",
    "gender",
    "students",
    # "studies",
    "intervention",
    "location"
  ),
  id = "code",
  show_only_diff = T
)

# ## checks
# df_subset <- data_raw %>%
#   filter(code %in% adjust_semester) %>%
#   select(
#     code,
#     # subject1,
#     # subject2,
#     students,
#     studies,
#     # gender,
#     # age,
#     # location,
#     semester,
#     time
#     # intervention,
#     # isp
#   )
# View(df_subset)

# age
codes_age <- dem_diff %>%
  filter(variable == "age") %>%
  pull(code)
# correct age in post to age in pre (to report one age and have same age for subj when calc models)
for (cc in codes_age) {
  # save pre value
  pre_val <- data_raw$age[
    data_raw$code == cc & data_raw$time == "pre"
  ]

  # write that in post value
  data_raw$age[
    data_raw$code == cc & data_raw$time == "post"
  ] <- pre_val
}

# correct students in post to students in pre (to report one value and have same student status for subj when calc models)
codes_students <- dem_diff %>%
  filter(variable == "students") %>%
  pull(code)
# after checking manually, enro23 und enut12 students post entry nehmen, für rest post = pre setzen
for (cc in c("enro23", "enut12")) {
  # save pre value
  post_val <- data_raw$students[data_raw$code == cc & data_raw$time == "post"]

  # write that in post value
  data_raw$students[data_raw$code == cc & data_raw$time == "pre"] <- post_val
}
for (cc in codes_students) {
  # save pre value
  pre_val <- data_raw$students[data_raw$code == cc & data_raw$time == "pre"]

  # write that in post value
  data_raw$students[data_raw$code == cc & data_raw$time == "post"] <- pre_val
}

#correct one student who was controle group but had different group selected in pre test
for (cc in c("imna13")) {
  # save pre value
  post_val <- data_raw$intervention[
    data_raw$code == cc & data_raw$time == "post"
  ]

  # write that in post value and fix other relevant fields
  data_raw$intervention[
    data_raw$code == cc & data_raw$time == "pre"
  ] <- post_val
  data_raw$intervention_only[
    data_raw$code == cc & data_raw$time == "pre"
  ] <- FALSE
  data_raw$intervention_mint[
    data_raw$code == cc & data_raw$time == "pre"
  ] <- FALSE
}

# semester count correction (post to pre) after reviewing dem. data
adjust_semester <- dem_diff %>%
  filter(variable == "semester") %>%
  pull(code)
for (cc in adjust_semester) {
  # save pre value
  pre_val <- data_raw$semester[data_raw$code == cc & data_raw$time == "pre"]

  # write that in post value
  data_raw$semester[data_raw$code == cc & data_raw$time == "post"] <- pre_val
}


#count how many negative values there are in all RE and TP columns
neg_counts <- colSums(
  dplyr::select(data_raw, dplyr::starts_with(c("RE", "TP"))) < 0,
  na.rm = TRUE
)

## checks
# data_raw$STARTED has this format "2026-01-27 12:21:13 CET" but i wanna check with tables only the dates, not the time
# date_check <- as.Date(substr(data_raw$STARTED, 1, 10))
# table(date_check)

# check code distances with levenshtein distance to find potential typos in codes
codes_dist <- check_distances(data_raw, 2)

# save all codes (pre_code, then post_code) from codes_dist in sequence in array, but it has to be row by row
codes_dist_array <- c()
for (i in 1:nrow(codes_dist)) {
  codes_dist_array <- c(
    codes_dist_array,
    codes_dist$pre_code[i],
    codes_dist$post_code[i]
  )
}

# filter data_raw for all codes in codes_dist_array to check them in a separate df, but keep order of codes_dist_array
# View(
#   data_raw %>%
#     filter(code %in% codes_dist_array) %>%
#     slice(match(codes_dist_array, code))
# )
# View(data_raw %>% filter(code == "enmi03"))
# View(df %>% filter(DE13_01 == "IMLI24"))

## --- anonymize code -> anon_code using a random mapping ---
set.seed(20260302) # choose & record a seed to reproduce the same mapping later (optional)

codes <- unique(data_raw$code)

# random but stable (given seed) permutation of sequential IDs
anon_ids <- sprintf("P%05d", sample.int(length(codes)))

key <- data.frame(
  code = codes,
  anon_code = anon_ids,
  stringsAsFactors = FALSE
)

data_all <- merge(data_raw, key, by = "code", all.x = TRUE, sort = FALSE)

# remove the original identifier column
data_all$code <- NULL
# rename anon_code to code
names(data_all)[names(data_all) == "anon_code"] <- "code"
data_all <- data_all[, c("code", setdiff(names(data_all), "code"))] #set code as first column

# save data for demographics (no pre-post filtering)
save(data_all, file = "data/26-data_all.Rdata")

# only keep subjects with both data in pre and post test for analysis
data <- data_all %>%
  group_by(code) %>%
  filter(all(c("pre", "post") %in% time)) %>%
  ungroup()

# if table(data$code, data$time) shows that there are values unequal to 0, give out warning
tab <- table(data$code, data$time, useNA = "ifany")

if (any(tab != 1, na.rm = TRUE)) {
  warning(
    "There are non-one values in the code × time table. Please fix before continue with analysis. See table(data$code, data$time)"
  )
}
# check again

save(data, file = "data/26-data.Rdata")
