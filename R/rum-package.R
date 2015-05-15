#' Stubbing and mocking for R.
#'
#' The rum packages aims to provide extra testing capabilities.
#' Specifically, functions like \code{expect_receives} and
#' \code{expect_called} are introduced that ensure a given
#' function is called, possibly with specific parameters.
#'
#' This is very useful if you wish to, for example, ensure that
#' a certain function that makes a network request was called,
#' but you do not want to perform messy stubbing that would
#' achieve the same effect.
#'
#' @seealso \url{https://github.com/freerange/mocha}
#' @name rum
#' @docType package
NULL
