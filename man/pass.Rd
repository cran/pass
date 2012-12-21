\name{pass}
\alias{pass}
\alias{print.pass}
\alias{plot.pass}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Prediction and Stability Selection of Tuning Parameters

%%  ~~function to do ... ~~
}
\description{
To perform two methods, Kappa and PASS, for selecting tuning parameters in regularized procedures such as LASSO, SCAD, and adaptive LASSO
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pass(data, base = "LASSO", lambda.grid=NULL, num.grid=20, num.split = 20, alpha = 0.1)

\method{print}{pass}(x, ...)
\method{plot}{pass}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{ It is an n by (p+1) matrix, where the first p columns form the design matrix and the last column is response vector. 
%%     ~~Describe \code{data} here~~
}
  \item{base}{ It is the base procedure used for variable selection. Three choices of base are "LASSO", "SCAD", and "aLASSO".
%%     ~~Describe \code{base} here~~
}
  \item{lambda.grid}{ It is a vector consisting of the values of tuning parameter lambda to be evaluated. If lambda.grid=NULL, a grid of lambda's will be decided 
automatically, with specified number of lambda's to be considered. 
%%     ~~Describe \code{lambda.grid} here~~
}

  \item{num.grid}{ It is the number of lambda's to be considered, where a grid of lambda's is decided manually or automatically. The default value is 20.}

  \item{num.split}{ It is the number of random half-half splittings. The default value is 20. 
%%     ~~Describe \code{num.split} here~~
}
  \item{alpha}{ It is the threshold only used for the Kappa selection method. It is not a tuning parameter. The default value is 0.1. 
%%     ~~Describe \code{alpha} here~~
}
  \item{x}{ This is the output object of class \code{"pass"} to be used in \code{print.pass} and \code{plot.pass}.} 
  \item{\dots}{Not used.}
}
\details{ Because the data matrix will be centerized so that the column means are zero, there is no need an intercept column in the data matrix. 
         Function \code{print.lass(x)} prints the two estimated optimal values of tuning parameter lambda and function \code{plot.lass(x)} plots 
         the two tuning parameter selection processess, where \code{x} is the output of function \code{pass}.
}
%%  ~~ If necessary, more details than the description above ~~

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
 \item{pass.values}{The values evaluated over lambda.grid using the PASS criterion. A curve based on these values can be drawn using function \code{plot.pass}. The maximum point is selected as 
                        the estimated optimal value for the tuning parameter lamda.} 

 \item{kappa.values}{The values evaluated over lambda.grid using the Kappa criterion. A curve based on these values can be drawn using function \code{plot.pass}. The maximum point (adjusted 
                        for the threshold \code{alpha}) is selected as the estimated optimal value for the tuning parameter lamda.}


 \item{lambda.pass}{The estimated optimal value for the tuning parameter lambda using the PASS criterion}

 \item{lambda.kappa}{The estimated optimal value for the tuning parameter lambda using the Kappa criterion (adjusted for the threshold \code{alpha})}

 \item{beta.pass}{The estimated coefficients using selected lambda by the PASS criterion}

 \item{beta.kappa}{The estimated coefficients using selected lambda by the Kappa criterion (adjusted for the threshold \code{alpha})}

 \item{subset.pass}{The selected submodel by the PASS criterion}

 \item{subset.kappa}{The selected submodel by the Kappa criterion (adjusted for the threshold \code{alpha})}

}
\references{
(1) Sun, Wang, and Fang (2012+) Consistent selection of tuning parameters via variable selection stability. Revision Submmitted. Available at arXiv. 

(2) Fang, Wang, and Sun (2012+) A PASS for tuning parameter selection in regularized regression. Submmitted. Available at arXiv.
%% ~put references to the literature/web site here ~
}
\author{
Yixin Fang, Wei Sun, Junhui Wang
}
\examples{

library(MASS)
library(lars)
library(ncvreg)

beta=c(3,1.5,0,0,2,0,0,0)
p=8
n=100
sigma=1
rho=0.5

set.seed(100)
x=matrix(0, n, p)
x[,1]<-rnorm(n, 0, 1)
for (i in 2:p) x[,i]<-rho*x[,i-1]+sqrt(1-rho^2)*rnorm(n, 0, 1)
y=x\%*\%beta+sigma*rnorm(n, 0, 1)
data<-cbind(x,y)

lambda.grid=10^seq(-2,2,length=20)
results<-pass(data=data, base="LASSO", lambda.grid=lambda.grid, num.grid=20, num.split=20)
print(results)
plot(results)

}


