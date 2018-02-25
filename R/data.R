#' Chapters of "Tao Te Programming"
#'
#' `tot_chapters` is a [tibble][tibble::tibble] with information about chapters
#' of [Tao Te Programming](http://www.burns-stat.com/documents/books/tao-te-programming/)
#' book. It has two columns:
#' - __chapter__ <int> : Chapter number.
#' - __name__ <chr> : Chapter name.
"tot_chapters"

#' Edges of alliance graph from "Tao Te Programming"
#'
#' `tot_edges` is a [tibble][tibble::tibble] with information about chapter
#' connections in
#' [Tao Te Programming](http://www.burns-stat.com/documents/books/tao-te-programming/)
#' book (considered as edges in "alliance graph"). It has three columns:
#' - __chapter1__ <int> : Number of first chapter in connection.
#' - __chapter2__ <int> : Number of second chapter in connection.
#' -  __type__ <chr> : Connection type ("ally" for "friendly" connection and
#' "opponent" for "not friendly" connection).
"tot_edges"
