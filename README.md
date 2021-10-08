
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ftree

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

ftree is an experimental and mostly useless R package. It has one
function, `ftree()` that shows a file tree on your console. It works on
Windows. I don’t fully understand character encoding and have not tried
it on Linux or Mac. It is also questionable if it works well with
Rmarkdown.

``` r
## this doesn't render in Github Markdown
library(ftree)
ftree()
#> Folder PATH listing
#> Volume serial number is BA76-F030
#> C:.
#> |   .gitignore
#> |   .Rbuildignore
#> |  <U+0001F4DC>DESCRIPTION
#> |  <U+0001F4DC>ftree.Rproj
#> |  <U+0001F4DC>LICENSE
#> |  <U+0001F4DC>LICENSE.md
#> |  <U+0001F4DC>NAMESPACE
#> |  <U+0001F4DC>README.md
#> |  <U+0001F4DC>README.Rmd
#> |   
#> +---<U+0001F4C2>man
#> |   |  <U+0001F4DC>ftree.Rd
#> |   |   
#> |   \---<U+0001F4C2>figures
#> |          <U+0001F4DC>console-screenshot-1.png
#> |           
#> \---<U+0001F4C2>R
#>        <U+0001F4DC>ftree.R
#> 
```

<img src="man/figures/console-screenshot-1.png" width="50%" />

``` r
emo::ji("folder")
#> <U+0001F4C2>
```
