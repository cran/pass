\name{agree.twosets}
\alias{agree.twosets}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Agreement of Two Subsets
%%  ~~function to do ... ~~
}
\description{ To calculate Cohen's Kappa coefficients of two subsets 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
agree.twosets(aset1, aset2, p.tot)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{aset1}{ The first subsets
%%     ~~Describe \code{aset1} here~~
}
  \item{aset2}{ The second subsets
%%     ~~Describe \code{aset2} here~~
}
  \item{p.tot}{ The total number of variables
%%     ~~Describe \code{p.tot} here~~
}
}

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{ratio}{The Kappa coefficient of the input two subsets}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{ Cohen (1960). A coefficient of agreement for nominal scales. Educational and Psychological Measurement 20: 37-46.
%% ~put references to the literature/web site here ~
}
