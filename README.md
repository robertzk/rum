Rum [![Build Status](https://travis-ci.org/robertzk/rum.svg?branch=master)](https://travis-ci.org/robertzk/rum) [![Coverage Status](https://coveralls.io/repos/robertzk/rum/badge.svg?branch=master)](https://coveralls.io/r/robertzk/rum)
===========

Have you ever wished to test whether a certain R function
was called or not called? Or whether it was called with a given
set of parameters?

Inspired by Ruby's Mocha gem, rum aims to make it easy to write
tests that ensure other package functions are or are not called.
This is important because it eliminates messy stubbing that would
have to be performed otherwise to achieve the same effect.

# Usage

```r
test_that("some function is called", {
  expect_called(some_function, {
    some_function()
  })
})

test_that("some function is not called", {
  # not comes from testthat
  not(expect_called)(some_function, {
    # Do nothing!
  })
})

test_that("some function receives an arguments", {
  expect_receives(some_function, list(foo = "bar"), times = 2, {
    some_function(foo = "bar")
    some_function(foo = "bar")
  }))
})

test_that("some other package function receives an arguments", {
  expect_receives(otherpkg::some_function, list(foo = "bar"), {
    otherpkg::some_function(foo = "bar")
    # Or a function internal to this package that calls otherpkg::some_function
    # with those arguments.
  })
})
```

# Installation

This package is not yet available from CRAN (as of May 15, 2015).
To install the latest development builds directly from GitHub, run this instead:

```R
if (!require("devtools")) install.packages("devtools")
devtools::install_github("robertzk/rum")
```


