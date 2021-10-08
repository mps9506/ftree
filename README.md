
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ftree

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

ftree is an experimental and mostly useless R package. It has one
function, `ftree()` that shows a file tree on your console.

Note that this doesn’t seem to work well when with rmarkdown in Windows.

``` r
## this doesn't render in Github Markdown
library(ftree)
ftree()
#> /f [error opening dir]
#> /a [error opening dir]
#> 
#> 0 directories, 0 files
```

<img src="man/figures/console-screenshot-1.png" width="50%" />

Test rendering:

``` r
emo::ji("folder")
#> 📁
```

ping1
