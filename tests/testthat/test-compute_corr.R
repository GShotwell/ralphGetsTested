# What makes a good description?
# What makes a good test?

# returns a vector of size 2 ----
test_that("length", {
  expect_length(compute_corr(data = faithful, var1 = eruptions, var2 = waiting), 2)
})

# computes correct correlation ----
# what small numeric differences will fail here?
# fails here, I am guessing this is not a good test!
test_that("correct value", {
  expect_equal(compute_corr(data = faithful, var1 = eruptions, var2 = waiting)[["correlation"]], 0.9008112)
})

# how to test that variables are in input data set?
