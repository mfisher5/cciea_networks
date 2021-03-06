% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_matrix.R
\name{filter_matrix}
\alias{filter_matrix}
\title{Filter Catch Matrix}
\usage{
filter_matrix(
  mydata,
  commercial = TRUE,
  rare = 5e-04,
  type = "fraction",
  ids = c("drvid_year", "trip_id", "removal_type", "pcgroup")
)
}
\arguments{
\item{mydata}{catch matrix}

\item{commercial}{If TRUE, filter for only commercial landings records}

\item{rare}{proportion or number of trips required to retain species/ gear combination}

\item{type}{If 'fraction', rare parameter is a proportion of trips; If 'number', rare parameter is a number of trips}

\item{ids}{character vector of ID column names}
}
\value{
filtered catch matrix
}
\description{
Filter the catch matrix (rows= trips, columns = species/gear combos, values = revenue or pounds)
to remove non-commercial landings records or 'rare' species/gear combinations.
Script 01, Section 1.4
}
\examples{
final.output <- filter_matrix(data = output, commercial = filter_type, rare = filter_rare)
}
