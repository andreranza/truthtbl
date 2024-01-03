#' Generate a truth tables
#'
#' Generate a truth tables given a vector of facts.
#'
#' @param fact_names A character vector of facts.
#'
#' @return A data.frame.
#' @export
#'
#' @examples expand_truth_tbl(c("is_neutered", "is_inactive"))
expand_truth_tbl <- function(fact_names) {
  stopifnot(is.character(fact_names))
  stopifnot(length(fact_names) > 0)
  truth_tbl <- expand_truth_tbl_impl(dim = length(fact_names))
  rename_truth_tbl(truth_tbl, names_vec = fact_names)
}

#' @importFrom rlang exec is_integer
expand_truth_tbl_impl <- function(dim) {
  stopifnot(is_integer(dim))
  stopifnot(dim > 0L)
  tf0 <- vector(mode = "list", length = dim)
  tf_list <- lapply(tf0, function(x) c(TRUE, FALSE))
  rlang::exec("expand_grid", tf_list)
}

rename_truth_tbl <- function(truth_tbl, names_vec) {
  stopifnot(is.data.frame(truth_tbl))
  stopifnot(is.character(names_vec))
  stopifnot(ncol(names_vec) == length(names_vec))
  names(truth_tbl) <- names_vec
  truth_tbl
}




