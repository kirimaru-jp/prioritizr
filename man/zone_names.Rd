% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zone_names.R
\name{zone_names}
\alias{zone_names}
\alias{zone_names,ConservationProblem-method}
\alias{zone_names,OptimizationProblem-method}
\alias{zone_names,ZonesRaster-method}
\alias{zone_names,ZonesCharacter-method}
\title{Zone names}
\usage{
zone_names(x)

\S4method{zone_names}{ConservationProblem}(x)

\S4method{zone_names}{ZonesRaster}(x)

\S4method{zone_names}{ZonesCharacter}(x)
}
\arguments{
\item{x}{\code{\link[=problem]{problem()}} (i.e., \code{\linkS4class{ConservationProblem}}) or \code{\link[=Zones]{Zones()}}}
}
\value{
\code{character} zone names.
}
\description{
Extract the names of zones in an object.
}
\examples{
# load data
data(sim_pu_zones_stack, sim_features_zones)

# print names of zones in a Zones object
print(zone_names(sim_features_zones))
# create problem with multiple zones
p <- problem(sim_pu_zones_stack, sim_features_zones) \%>\%
     add_min_set_objective() \%>\%
     add_relative_targets(matrix(0.2, ncol = 3, nrow = 5)) \%>\%
     add_binary_decisions()

# print zone names in problem
print(zone_names(p))
}
