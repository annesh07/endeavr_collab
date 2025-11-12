
<!-- README.md is generated from README.Rmd. Please edit that file -->

# endeavr

<!-- badges: start -->

[![R-CMD-check](https://github.com/annesh07/endeavr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/annesh07/endeavr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of endeavr is to create conflict Adding pull

## Installation

You can install the development version of endeavr from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("annesh07/endeavr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(endeavr)
mvnpdf(X = matrix(rep(1,6), 2, 3),
                  mean = c(1,2,3),
                  varcovM = diag(2),
                  Log = TRUE)
#> $`Input matrix`
#>      [,1] [,2] [,3]
#> [1,]    1    1    1
#> [2,]    1    1    1
#> 
#> $`MVN density`
#> [1] -1.837877 -2.837877 -5.837877
#> 
#> attr(,"class")
#> [1] "mvnpdf"
```
