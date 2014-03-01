\name{predict.sublasso}
\alias{predict.sublasso}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Predict method for SubLasso fits.
}
\description{
Similar to other predict methods, this functions predicts fitted values, logits, coefficients and more from a fitted "SubLasso" object.
}
\usage{
\method{predict}{sublasso}(object, xpred, type, s, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{Fitted "SubLasso" model object.
}
  \item{xpred}{Matrix of new values for x at which predictions are to be made.  Must have the same row with x
}
  \item{type}{type=c("link","response","class"). Default is "class";Type of prediction required. Type "link" gives the linear predictors; Type "response" gives the fitted probabilities;  Type "class" produces the class label corresponding to the maximum probability.

}
  \item{s}{Value(s) of the penalty parameter lambda at which predictions are required. Default is obtained by CV method.
}
  \item{...}{Currently not used
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%\item{comp2 }{Description of 'comp2'}
%% ...
\item{Predy}{it depends on type.}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

