
<!-- README.md is generated from README.Rmd. Please edit that file -->

# truthtbl

<!-- badges: start -->
<!-- badges: end -->

The goal of truthtbl is to generate truth tables for a given a vector of
variables.

## Installation

You can install the development version of truthtbl like so:

``` r
devtools::install_github("andreranza/truthtbl")
```

## Example

``` r
library(truthtbl)
expand_truth_tbl(c("is_inactive", "is_neutered"))
#>   is_inactive is_neutered
#> 1        TRUE        TRUE
#> 2       FALSE        TRUE
#> 3        TRUE       FALSE
#> 4       FALSE       FALSE
```
