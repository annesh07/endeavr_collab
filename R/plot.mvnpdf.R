#' Plot of the mvnpdf function
#'
#' @param x an object of class \code{mvnpdf} resulting from a call of the
#' \code{mnvpdf()} function.
#' @param ... graphical parameters passed to \code{plot()} function.
#'
#' @return Nothing is returned, only a plot is given.
#' @export
#'
#' @examples
#' pdfvalues <- mvnpdf(X=matrix(seq(-3, 3, by = 0.1), nrow = 1), mean = c(0),
#' varcovM = matrix(1), Log=FALSE)
#' plot(pdfvalues)
plot.mvnpdf <- function(x, ...) {
  plot(x$"Input matrix", x$"MVN density", type = "l", ...)
}
