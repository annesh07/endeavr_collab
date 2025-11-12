test_that("gaussian density calculation works", {
  expect_equal(mvnpdf(X = matrix(1.96), mean = c(0), varcovM = matrix(1),
                      Log = FALSE)$"MVN density", dnorm(1.96))
  expect_equal(mvnpdf(X = matrix(c(1.96, 2.97), ncol=2), mean = c(0),
                      varcovM = diag(1), Log = FALSE)$"MVN density", dnorm(c(1.96, 2.97)))
})
