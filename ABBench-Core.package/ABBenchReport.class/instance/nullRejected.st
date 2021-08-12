private-statistics
nullRejected
	"The null is rejected when sufficient data shows that either a or b is faster than the other. We reject when the bayes factor falls below the inverse of our target confidence level. Since the bayes factor is a ratio, we are checking when one term is a certain number of times larger or smaller than the other."
	^ 1 / self targetConfidenceLevel >= self bayesFactor