expand_grid <- function(...) {
  df <- expand.grid(...)
  stopifnot(is.data.frame(df))
  rename_tolower(df)
}

rename_tolower <- function(data) {
  stopifnot(is.data.frame(data))
  df_names <- names(data)
  df_names_lower <- tolower(df_names)
  names(data) <- df_names_lower
  data
}
