# What makes a good description?
# What makes a good test?

# tests define correctness for your code - what do i care that is right?
# higher risk would do more test
# run tests button runs test in fresh environment; devtools test in global environment
# browser() in function for troubleshooting
# re-name output
# rewatch jenny bryans talk
# devtools::test_coverage() percent of code covered
# put browser() in function for debugging

# returns a vector of size 2 ----
test_that("length", {
  expected <- compute_corr(data = faithful, var1 = eruptions, var2 = waiting)
  expect_s3_class(expected, "data.frame")
  expect_equal(dim(expected), c(1,2))
  expect_named(expected, c("correlation", "pval"))
  expect_equal(expected[["correlation"]], 0.90, tolerance = 0.01)
})



# how to test that variables are in input data set?
