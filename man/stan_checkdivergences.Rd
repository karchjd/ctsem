% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stan_checkdivergences.R
\name{stan_checkdivergences}
\alias{stan_checkdivergences}
\title{Analyse divergences in a stanfit object}
\usage{
stan_checkdivergences(sf, nupars = "all")
}
\arguments{
\item{sf}{stanfit object.}

\item{nupars}{either the string 'all', or an integer reflecting how many pars 
(from first to nupars) to use.}
}
\value{
A list of four matrices. $locationsort and $sdsort contian the bivariate interactions of 
unconstrained parameters, sorted by either the relative location of any divergences, or the relative standard deviation.
$locationmeans and $sdmeans collapse across the bivariate interactions to return the means for each parameter.
}
\description{
Analyse divergences in a stanfit object
}
\examples{
\dontrun{
stan_checkdivergences(myfitobj)
}
}
