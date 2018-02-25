
<!-- README.md is generated from README.Rmd. Please edit that file -->
taoteprog
=========

This is an analysis package for [Tao Te Programming](http://www.burns-stat.com/documents/books/tao-te-programming/) book. The main goal is to study "alliance graph" of programming advice. `taoteprog` provides the following data:

-   `tot_chapters` - a [tibble](http://tibble.tidyverse.org/) with information about chapters. Has two columns: `chapter` (for chapter number) and `name` (for chapter name).
-   `tot_edges` - a `tibble` with information about chapter connections (considered as edges in "alliance graph"). Has three columns: `chapter1` and `chapter2` with chapter number of edge vertices and `type` with "ally" or "opponent" type.

Installation
------------

You can install taoteprog from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("echasnovski/taoteprog")
```
