#' A mocha-style let helper for easy object mocking.
#'
#' @param name character. The name of the mocked object.
#' @param expr expression. The expression to re-evaluate each time the
#'    mock is instantiated.
#' @param envir environment. The environment to create an active binding
#'    in which will create mocked locals (by default the calling environment).
#' @export
let <- function(name, expr, envir = parent.frame()) {
  name <- gsub('"', '', deparse(substitute(name)), fixed = TRUE)
  force(envir)
  expr <- substitute(expr)
  makeActiveBinding(name, function() {
    force(envir); force(name); force(expr)
    local <- initial <- sys.frames()[[length(sys.frames()) - 1]]
    obj   <- structure(list(), class = "nonexistent")
    while (!identical(local, emptyenv()) && !identical(local, envir)) {
      if (exists(name, envir = local, inherits = FALSE) &&
          !bindingIsActive(name, env = local)) {
        obj <- get(name, envir = local)
        break
      }
      local <- parent.env(local)
    }
    if (is(obj, "nonexistent")) {
      obj <- eval(expr, envir = envir)
      if (!identical(initial, envir)) {
        assign(name, obj, envir = initial)
      }
    }
    obj
  }, env = envir)
}


