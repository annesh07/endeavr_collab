#' Computing multivariate Gaussian density for n p-dimensional observations
#'
#' @param X observation matrix, with n (columns) samples and p (rows) dimensions
#' @param mean p-dimensional mean vector of the MVN Gaussian density function
#' @param varcovM pxp dimensional Covariance matrix for the MVN Gaussian
#' density function
#' @param Log Logical argument, TRUE if the logarithm of the density function is
#' required. Default is TRUE
#'
#' @return a list containing the observation X as "Input Matrix" and their
#' corresponding (log) density as "MVN density"
#' @export
#'
#' @examples endeavr::mvnpdf(X = matrix(rep(1,6), 2, 3),
#'                  mean = c(1,2,3),
#'                  varcovM = diag(2),
#'                  Log = TRUE)
mvnpdf <- function(X, mean, varcovM, Log = TRUE){
  p <- nrow(X)
  X0 <- sweep(X, 2, mean, "-")
  density <- diag((2*pi)^(-p/2)*det(varcovM)^(-0.5)*exp(-0.5*t(X0) %*%
                                                          solve(varcovM) %*% X0))
  if (Log){
    density <- log(density)
  }
  output <- list("Input matrix" = X, "MVN density" = density)
  class(output) <- "mvnpdf"
  return(output)
}
