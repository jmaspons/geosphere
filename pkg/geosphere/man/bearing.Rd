\name{bearing}
\Rdversion{1.1}

\alias{bearing}

\title{
Bearing
}

\description{
Get the initial bearing (direction to travel in) to go from point1 to point2 following the shortest path (a great circle). Note that bearings change continuously while traveling along a great circle. A route with constant bearing is a rhumb line (see \code{\link[geosphere]{brngRhumb}}.
}

\usage{
bearing(p1, p2)
}

\arguments{
  \item{p1}{longitude/latitude of point(s); can be a vector of two numbers, a matrix of 2 columns (first one is longitude, second is latitude) or a spatialPoints* object}
  \item{p2}{as above. Should have same length as p1, or a single point (or vice versa when p1 is a single point}
}


\value{
A bearing in degrees
}


\author{
Chris Veness; ported to R by Robert Hijmans;
}


\seealso{
\code{ \link[geosphere]{brngRhumb}  }
}

\examples{
bearing(c(0,0),c(90,90))
}

\references{
\url{http://www.movable-type.co.uk/scripts/latlong.html}

\url{http://williams.best.vwh.net/ftp/avsig/avform.txt}
}


\keyword{ spatial }
