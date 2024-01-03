test_that("expand_truth_tbl() works", {
  expect_snapshot(expand_truth_tbl(character(0)), error = TRUE)
  facts <- c("is_neutered", "is_inactive")
  expect_s3_class(expand_truth_tbl(facts), "data.frame")
  expect_equal(ncol(expand_truth_tbl(facts)), 2)
})

test_that("expand_truth_tbl_impl() works", {
  expect_snapshot(expand_truth_tbl_impl(1.5), error = TRUE)
  expect_s3_class(expand_truth_tbl_impl(4L), "data.frame")
  expect_equal(ncol(expand_truth_tbl_impl(4L)), 4)
})
