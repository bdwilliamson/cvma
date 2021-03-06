% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sl_fn.R
\name{cv_risk_sl_r2}
\alias{cv_risk_sl_r2}
\title{Cross-validated non-parametric R-squared of the super learner}
\usage{
cv_risk_sl_r2(input, sl_control)
}
\arguments{
\item{input}{List where each entry corresponds to a validation fold. Each entry is a list
with entries: Y (univariate outcome for this validation fold), pred (matrix of predictions
from \code{learner} and columns correspond to different \code{leaner}s).}

\item{sl_control}{List of super learner control options.}
}
\value{
A list with named entries cv_measure, ci_low, ci_high, and p_value. The list will
be returned by \code{max_assoc} irrespective of the named entries; however, the \code{print}
methods will only work if the function returns the above names.
}
\description{
In general, the function passed to \code{sl_control$cv_risk} should expect a list
of outcomes and predictions in validation folds. The function should return a 
list with names cv_measure, ci_low, ci_high, and p_value. The output of this function 
is returned irrespective of the names of the list; however, the names are 
necessary for \code{print} methods to work properly.
}
\details{
In this case, the confidence intervals are computed on the scale of log(MSE/Var) and 
back-transformed to the R-squared scale. Here, MSE is the cross-validated mean 
squared-error of the super learner for predicting a univariate outcome (one of the
components of \code{Y}) and Var is the cross-validated marginal mean of this outcome. The p-value
is for the one-sided hypothesis test that cross-validated R-squared equals zero against
the alternative that it is greater than zero.
}
\examples{

# simulate data with proper format
input <- list(list(valid_folds=1, Y = rbinom(50,1,0.5),pred = runif(50,0,1)),
              list(valid_folds=2, Y = rbinom(50,1,0.5),pred = runif(50,0,1))) 
     
# alpha value                        
sl_control= list(alpha= 0.05)    

# get risk 
cv_risk <- cv_risk_sl_r2(input, sl_control)                         
}
