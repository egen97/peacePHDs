
<!-- README.md is generated from README.Rmd. Please edit that file -->

# peacePHDs

<!-- badges: start -->
<!-- badges: end -->

A package used to run the Coon and Friends Hack4Peace project. Contains
functions used to ease the translation and geocoding of text-data.

## Installation

You can install the development version of peacePHDs like so:

``` r
devtools::install_github("https://github.com/egen97/peacePHDs")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(peacePHDs)
## basic example code
translated_texts <- lapply(telegram_posts, peacePHDs::translate_colBind)
```
