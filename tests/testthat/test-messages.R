test_that("Messge functions are the same", {
  expect_equal(n_kinds_message(1), compose_message(1))
  expect_equal(n_kinds_message(2), compose_message(2))
  expect_equal(n_kinds_message(1:2), compose_message(1:2))
})
