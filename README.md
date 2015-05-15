Rum [![Build Status](https://travis-ci.org/robertzk/rum.svg?branch=master)](https://travis-ci.org/robertzk/rum) [![Coverage Status](https://coveralls.io/repos/robertzk/rum/badge.svg?branch=master)](https://coveralls.io/r/robertzk/rum)
===========

Have you ever wished to test whether a certain R function
was called or not called? Or whether it was called with a given
set of parameters?

Inspired by Ruby's Mocha gem, rum aims to make it easy to write
tests that ensure other package functions are or are not called.
This is important because it eliminates messy stubbing that would
have to be performed otherwise to achieve the same effect.

# Installation

This package is not yet available from CRAN (as of May 15, 2015).
To install the latest development builds directly from GitHub, run this instead:

```R
if (!require("devtools")) install.packages("devtools")
devtools::install_github("robertzk/rum")
```





