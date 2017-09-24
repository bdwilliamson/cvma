
<!-- README.md is generated from README.Rmd. Please edit that file -->
R/`cvma`
========

[![Travis-CI Build Status](https://travis-ci.org/benkeser/cvma.svg?branch=master)](https://travis-ci.org/benkeser/cvma) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/benkeser/cvma?branch=master&svg=true)](https://ci.appveyor.com/project/benkeser/cvma) [![Coverage Status](https://img.shields.io/codecov/c/github/benkeser/cvma/master.svg)](https://codecov.io/github/benkeser/cvma?branch=master) [![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

> Machine learning-based summary of association with multivariate outcomes

**Authors:** [David Benkeser](https://www.benkeserstatistics.com/) and Ivana Malenica

Introduction
------------

This package provides a method for summarizing the strength of association between a set of variables and a multivariate outcome. In particular, cross-validation is combined with stacked regression (aka super learning) to estimate the convex combination of a multivariate outcome that maximizes cross-validated R-squared of a super learner-based prediction. The method is particularly well suited for situations with high-dimensional covariates and/or complex relationships between covariates and outcomes.

Installation
------------

You can install a stable release of `cvma` from GitHub via [`devtools`](https://www.rstudio.com/products/rpackages/devtools/) with:

``` r
devtools::install_github("benkeser/cvma")
```

In the future, the package will be available from [CRAN](https://cran.r-project.org/) via

``` r
install.packages("cvma")
```

Use
---

TO DO : Add usage section

Variable importance
-------------------

TO DO : Write variable importance functions

License
-------

© 2017 [David C. Benkeser](http://www.benkeserstatistics.com)

The contents of this repository are distributed under the MIT license. See below for details:

    The MIT License (MIT)

    Copyright (c) 2016-2017 David C. Benkeser

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
