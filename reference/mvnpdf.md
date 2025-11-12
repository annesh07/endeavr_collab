# Computing multivariate Gaussian density for n p-dimensional observations

Computing multivariate Gaussian density for n p-dimensional observations

## Usage

``` r
mvnpdf(X, mean, varcovM, Log = TRUE)
```

## Arguments

- X:

  observation matrix, with n (columns) samples and p (rows) dimensions

- mean:

  p-dimensional mean vector of the MVN Gaussian density function

- varcovM:

  pxp dimensional Covariance matrix for the MVN Gaussian density
  function

- Log:

  Logical argument, TRUE if the logarithm of the density function is
  required. Default is TRUE

## Value

a list containing the observation X as "Input Matrix" and their
corresponding (log) density as "MVN density"

## Examples

``` r
endeavr::mvnpdf(X = matrix(rep(1,6), 2, 3),
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
