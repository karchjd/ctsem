% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ctDataHelp.R
\name{ctstantestdat}
\alias{ctstantestdat}
\title{ctstantestdat}
\format{matrix}
\description{
Generated dataset for testing \code{\link{ctStanFit}} from ctsem package.
}
\examples{
\dontrun{
Tpoints=50
n.manifest=2
n.TDpred=1
n.TIpred=3
n.latent=2
n.subjects=5
gm<-ctModel(type='omx', Tpoints=Tpoints,n.latent=n.latent,
n.TDpred=n.TDpred,n.TIpred=n.TIpred,n.manifest=n.manifest,
  MANIFESTVAR=diag(0.5,2),
  TIPREDEFFECT=matrix(c(.5,0,0,-.5,0,0),nrow=2),
  TIPREDVAR=matrix(c(1,-.2,0, 0,1,0, 0,0,.5),nrow=3),
  TDPREDEFFECT=matrix(c(.1,-.2),nrow=2),
  TDPREDVAR=matrix(0,nrow=n.TDpred*(Tpoints),ncol=n.TDpred*(Tpoints)),
  TDPREDMEANS=matrix(rnorm(n.TDpred*(Tpoints),0,1),
   nrow=n.TDpred*(Tpoints)),
  LAMBDA=diag(1,2),
  DRIFT=matrix(c(-.3,.2,-.1,-.2),nrow=2),
  TRAITVAR=t(chol(matrix(c(4,3,3,4),nrow=2))),
  DIFFUSION=matrix(c(.3,.1,0,.2),2),CINT=matrix(c(0,0),nrow=2),
  T0MEANS=matrix(0,ncol=1,nrow=2),
  T0VAR=diag(100,2))

ctstantestdat<-ctGenerate(gm,n.subjects=n.subjects,burnin=30,
wide=FALSE)
save(ctstantestdat,file='.\\\\data\\\\ctstantestdat.rda')
paths <- sort(Sys.glob(c("data/*.rda", "data/*.RData")))
library(tools)
resaveRdaFiles(paths)
}
}
