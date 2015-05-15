#' Expect a given function to be called during an expression. 
#'
#' @param function_name name. Either the name of the function, or
#'    a package function given by the \code{::} or \code{:::} operators.
#' @param expr expression. An R expression that should somewhere during
#'    it execution call \code{function_name}.
#' @return \code{NULL}, invisibly, but an error if the expectation
#'    is not satisfied (i.e., \code{function_name} is not called).
#' @examples
#' expect_called(force, force(1))
expect_called <- function(function_name, expr) {
  
}

