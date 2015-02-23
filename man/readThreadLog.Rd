\name{readThreadLog}
\alias{readThreadLog}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
readThreadLog(filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{
%%     ~~Describe \code{filename} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (filename) 
{
    library(stringr)
    library(plyr)
    columns <- c("ThreadID", "PoolName", "Handle", "HandleHighBits", 
        "Priority", "State", "Calls", "LastTime", "CurTime", 
        "PointID", "ConnectId", "RPCName")
    data <- read.csv(filename, header = FALSE, sep = ",", skip = 2, 
        col.names = columns, skipNul = TRUE, colClasses = "character")
    filter_rows <- grep("^ Current|Subsystem: piarchss|ThreadID|PoolName|Handle|HandleHighBits|Priority|State|Calls|LastTime|CurTime|PointID|ConnectId|RPCName|Main|Message|Read", 
        data$PoolName)
    data <- data[-c(filter_rows), ]
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
