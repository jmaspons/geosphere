# Author: Robert J. Hijmans
# October 2009
# version 1.0
# license GPL3


antipodal <- function(p1, p2, tol=1e-9) {
	p1 <- .pointsToMatrix(p1) 
	p2 <- .pointsToMatrix(p2) 
	p <- cbind(p1[,1], p1[,2], p2[,1], p2[,2])	
	p[,c(1,3)] <- .normalizeLonDeg(p[,c(1,3)])
	diflon <- abs(p[,1] - p[,3]) 
	diflat <- abs(p[,2] + p[,4])
	(diflat < tol) & (diflon > (180 - tol))
}


antipode <- function(p) {
	p <- .pointsToMatrix(p)
	p[,1] <- .normalizeLonDeg(p[,1] + 180)
	p[,2] <- -p[,2]
	return( p )
}

