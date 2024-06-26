% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normal.R
\name{normal_input}
\alias{normal_input}
\title{Retrieve climatologies for normal period}
\usage{
normal_input(dbCon, bbox, normal = "normal_na", cache = TRUE)
}
\arguments{
\item{dbCon}{A db connection object created by \code{data_connect}.}

\item{bbox}{numeric. Vector of length 4 giving bounding box of study region, in the order ymax,ymin,xmax,xmin. In general this is created by \code{get_bb()}, but can also be user-defined.}

\item{normal}{A \code{character} or a \code{SpatRaster}. For character, label of the normal baseline to use.
Can be obtained from \code{\link[=list_normal]{list_normal()}}. For \code{SpatRaster}, 36 layers normal climate variables with
names PPT01:PPT12, Tmax01:Tmax12 and Tmin01:Tmin12. Defaults to \code{list_normal()[1]}.}

\item{cache}{logical. Specifying whether to cache new data locally or no. Defaults to \code{TRUE}.}
}
\value{
A \code{SpatRaster} containing normals, lapse rates
and digital elevation model layers, that can be used with \code{\link[=downscale]{downscale()}}.
}
\description{
This function downloads (or retrieves from cache) monthly Tmin, Tmax, and PPT variables
for the specified climatology and for the specified bounding box. It is intended for use with \code{\link[=downscale]{downscale()}},
but can also be used as a stand-alone climatology.
}
\details{
The first 36 layers of the output raster correspond with the actual climate variables. The raster also contains
lapse rates for each variable, and a corresponding digital elevation model.
}
\seealso{
\code{\link[=downscale]{downscale()}}
}
