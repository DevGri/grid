\name{grid.copy}
\alias{grid.copy}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Make a Copy of a Grid Graphical Object}
\description{
  Grid graphical objects are references to list structures,
  which means that copies of graphical objects ``point'' to the
  same list structure.

  This function copies graphical objects by \emph{value}, which means
  that the copy ``points'' to a separate list structure.
}
\usage{
grid.copy(grob)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{grob}{An object of class \code{"grob"}.}
}
\value{
  An object of class \code{"grob"}.
}
\author{Paul Murrell}
\seealso{
  \code{\link{grid.grob}}.
}

\examples{
# Create a graphical object
l <- grid.lines(draw=FALSE)
# View the list.struct
grid.get(l)
# Copy by reference
l2 <- l
# Edit the common list.struct
grid.edit(l2, gp=gpar(col="green"))
# We have modified "l"
grid.get(l)
# Copy by value
l3 <- grid.copy(l)
}
\keyword{ dplot }%-- one or more ...
