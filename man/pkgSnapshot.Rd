% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/packages.R
\name{pkgSnapshot}
\alias{pkgSnapshot}
\title{Take a snapshot of all the packages and version numbers}
\usage{
pkgSnapshot(packageVersionFile, libPath, standAlone = FALSE)
}
\arguments{
\item{packageVersionFile}{A filename to save the packages and their currently
installed version numbers. Defaults to \code{".packageVersions.txt"}.}

\item{libPath}{The path to the local library where packages are installed.
Defaults to the .libPaths()[1]}

\item{standAlone}{Logical. If \code{TRUE}, all packages will be installed and loaded strictly
from the \code{libPaths} only. If \code{FALSE}, all \code{.libPaths} will
be used to find the correct versions. This can be create dramatically faster
installs if the user has a substantial number of the packages already in their
personal library. In the case of \code{TRUE}, there will be a hidden file
place in the \code{libPath} directory that lists all the packages
that were needed during the \code{Require} call. Default \code{FALSE} to
minimize package installing.}
}
\description{
This can be used later by \code{installVersions} to install or re-install the correct versions.
}
\details{
A file is written with the package names and versions of all packages within \code{libPath}.
This can later be passed to \code{Require}.
}
\examples{
pkgSnapFile <- tempfile()
pkgSnapshot(pkgSnapFile, .libPaths()[1])
data.table::fread(pkgSnapFile)

}
