
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ftree

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

ftree is an experimental and mostly useless R package. It has one
function, `ftree()` that shows a file tree on your console.

## Unix

Unicode doesn’t quite work correctly..

``` r
## this doesn't render in Github Markdown
library(ftree)
ftree(path = system.file(package = "ftree"))
#> [1] "/home/runner/work/_temp/Library/ftree"
#> [2] "-a"                                   
#> [3] "-F"                                   
#> /home/runner/work/_temp/Library/ftree
#> ├──🧾DESCRIPTION
#> ├──🧾INDEX
#> ├──🧾LICENSE
#> ├── Meta/
#> │   ├──🧾Rd.rds
#> │   ├──🧾features.rds
#> │   ├──🧾hsearch.rds
#> │   ├──🧾links.rds
#> │   ├──🧾nsInfo.rds
#> │   └──🧾package.rds
#> ├──🧾NAMESPACE
#> ├── R/
#> │   ├──🧾ftree
#> │   ├──🧾ftree.rdb
#> │   └──🧾ftree.rdx
#> ├── help/
#> │   ├──🧾AnIndex
#> │   ├──🧾aliases.rds
#> │   ├── figures/
#> │   │   └──🧾console-screenshot-1.png
#> │   ├──🧾ftree.rdb
#> │   ├──🧾ftree.rdx
#> │   └──🧾paths.rds
#> └── html/
#>     ├──🧾00Index.html
#>     └──🧾R.css
#> 
#> 5🧾directories,🧾21🧾files
```

## Windows

Note that unicode rendering this doesn’t seem to work well when with
rmarkdown in Windows. However, it should display fine in the console.

<img src="man/figures/console-screenshot-1.png" width="50%" />

Test emjoi rendering:

``` r
emo::ji("folder")
#> 📂
```

ping5
