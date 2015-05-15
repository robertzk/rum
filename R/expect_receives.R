#' Expect a given function to be receive specified arguments during execution.
#'
#' This assertion checks that a given function is called with specified
#' arguments during the execution of another expression.
#'
#' @inheritParams expect_called
#' @param arguments list. A subset of the arguments we expect the
#'    function to be called with.
#' @param times integer. The number of times the function should be
#'    called with these arguments. By default, \code{1}.
#' @return \code{NULL}, invisibly, but an error if the expectation
#'    is not satisfied (i.e., \code{function_name} is not called).
#' @export
#' @examples
#' # expect_receives(force, list(1), lapply(c(1,1), force), times = 2)
expect_receives <- function(function_name, arguments, expr, times = 1) {

}

