\name{cv.twosets}
\alias{cv.twosets}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Two-fold Cross-Validation
%%  ~~function to do ... ~~
}
\description{ To calcuate two-fold cross-validation based on a random splitting
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
cv.twosets(data1, beta1.hat, data2, beta2.hat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data1}{ The first subsample
%%     ~~Describe \code{data1} here~~
}
  \item{beta1.hat}{ The sparse solution obtained from the first subsample
%%     ~~Describe \code{beta1.hat} here~~
}
  \item{data2}{ The second subsample
%%     ~~Describe \code{data2} here~~
}
  \item{beta2.hat}{ The sparse solution obtained from the second subsample
%%     ~~Describe \code{beta2.hat} here~~
}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{cv.value}{The two-fold cross-validation value.}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
