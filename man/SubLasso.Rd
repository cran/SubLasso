\name{SubLasso}
\alias{SubLasso}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Logistic model via Lasso penalty with a subset features
}
\description{
Fit a logistic model via Lasso penalty. A subset features can be fixed in the model.
}
\usage{
SubLasso(X, y, subset, nfold)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{gene expression matrix, column is sample, row is gene(probe sets).
}
  \item{y}{category vector, 1 (positive, illness) or 0 (negative, normal).
}
  \item{subset}{gene (probe sets) names must be included in the model; Default is null set.
}
  \item{nfold}{number of cross-validation; Default is 5.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
some details
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{selname}{features selected by the model.}
\item{w}{the coefficient (weight) of feature in the model}
\item{valid}{sensitivity (Sn), specificity (Sp), Accuracy (Acc), and Matthews correlation coefficient(Mcc)}
\item{description}{the description statistics of selected features by group.}
\item{correlation}{the correlations between all selected features.}
}
\references{
%% ~put references to the literature/web site here ~
Friedman, J., Hastie, T. and Tibshirani, R. (2008) Regularization Paths for Generalized Linear Modelsvia Coordinate Descent, http://www.stanford.edu/~hastie/Papers/glmnet.pdf Journal of Statistical Software, Vol. 33(1), 1-22 Feb 2010. http://www.jstatsoft.org/v33/i01/


}
\author{
%%  ~~who you are~~
Youxi Luo
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
glmnet
} \examples{ 
#screen device is not support in examples but SubLasso function use it to visualize results.
#when you want to test examples, please uncomment following code.

##### Example 1
#data(Golub_Merge)
#X <- Golub_Merge$X
#y <- Golub_Merge$y
#f1=SubLasso(X,y,nfold=10)

## predict.sublasso(f1,X[1:10,]) ##error predicted x
#predy=predict.sublasso(f1,X)
#predy=predict.sublasso(f1,X,type="class")
#predy=predict.sublasso(f1,X,type="link")
#predy=predict.sublasso(f1,X,type="response")
#predy=predict.sublasso(f1,X,type="response",s=0.05)
#subset=f1$selname
#f2=SubLasso(X,y,subset,nfold=10)

#subset=row.names(X)[1:10]
#f3=SubLasso(X,y,subset,nfold=10)

#predy=predict.sublasso(f3,X)
#predy=predict.sublasso(f3,X,type="class")
#predy=predict.sublasso(f3,X,type="link")
#predy=predict.sublasso(f3,X,type="response")
#predy=predict.sublasso(f3,X,type="response",s=0.05)

###Example 2

#data(Colon)
#X<-t(Colon$X)
#y_tmp<-Colon$Y
#y<-ifelse(y_tmp==1,1,0)
#f1=SubLasso(X,y,nfold=10)
#subset=f1$selname
#f2=SubLasso(X,y,subset,nfold=10)
#subset=row.names(X)[30:40]
#f3=SubLasso(X,y,subset,nfold=10)


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
}
