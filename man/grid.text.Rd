\name{grid.text}
\alias{grid.text}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Draw Text in a Grid Viewport}
\description{
  This function draws a piece of text.
}
\usage{
grid.text(label, x = unit(0.5, "npc"), y = unit(0.5, "npc"), 
          just = "centre", rot = 0,
          check.overlap = FALSE, default.units = "npc",
          gp=gpar(), draw = TRUE, vp = NULL)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{label}{A vector of strings or expressions to draw.}
  \item{x}{A numeric vector or unit object specifying x-values.}
  \item{y}{A numeric vector or unit object specifying y-values.}
  \item{just}{The justification of the text about its (x, y)
    location.  If two values are given, the first specifies
    horizontal justification and the second specifies vertical
    justification.}
  \item{rot}{The angle to rotate the text.}
  \item{check.overlap}{A logical value to indicate whether to
    check for and omit overlapping text.}
  \item{default.units}{A string indicating the default units to use
    if \code{x} or \code{y}
    are only given as numeric vectors.}  
  \item{gp}{An object of class \code{gpar}, typically the output
    from a call to the function \code{gpar}.  This is basically
    a list of graphical parameter settings.}
  \item{draw}{A logical value indicating whether graphics output
    should be produced.}
  \item{vp}{A Grid viewport object (or NULL).}
}
\value{
  An object of class \code{"grob"}.
}
\details{
  If the \code{label} argument is an expression, the output is
  formatted as a mathematical annotation, as for base graphics text.
  
  The \code{"grob"} object contains an object of class \code{"text"}.
}
\author{Paul Murrell}
\seealso{
  \link{Grid},
  \code{\link{viewport}}
}

\examples{
grid.newpage()
x <- runif(20)
y <- runif(20)
rot <- runif(20, 0, 360)
grid.text("SOMETHING NICE AND BIG", x=x, y=y, rot=rot, gp=gpar(fontsize=20, 
          col="grey"))
grid.text("SOMETHING NICE AND BIG", x=x, y=y, rot=rot, gp=gpar(fontsize=20), 
          check=TRUE)
grid.newpage()
draw.text <- function(just, i, j) {
  grid.text("ABCD", x=x[j], y=y[i], just=just)
  grid.text(deparse(substitute(just)), x=x[j], y=y[i] + unit(2, "lines"),
            gp=gpar(col="grey", fontsize=8))
}
x <- unit(1:4/5, "npc")
y <- unit(1:4/5, "npc")
grid.grill(h=y, v=x, gp=gpar(col="grey"))
draw.text(c("bottom"), 1, 1)
draw.text(c("left", "bottom"), 2, 1)
draw.text(c("right", "bottom"), 3, 1)
draw.text(c("centre", "bottom"), 4, 1)
draw.text(c("centre"), 1, 2)
draw.text(c("left", "centre"), 2, 2)
draw.text(c("right", "centre"), 3, 2)
draw.text(c("centre", "centre"), 4, 2)
draw.text(c("top"), 1, 3)
draw.text(c("left", "top"), 2, 3)
draw.text(c("right", "top"), 3, 3)
draw.text(c("centre", "top"), 4, 3)
draw.text(c(), 1, 4)
draw.text(c("left"), 2, 4)
draw.text(c("right"), 3, 4)
draw.text(c("centre"), 4, 4)
}
\keyword{ dplot }%-- one or more ...
