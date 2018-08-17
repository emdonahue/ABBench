statistics
bayesFactor
	"Returns a likelihood ratio of how many times more likely the null hypothesis (both paths are equally fast) is after observing the sampled data than it was under the original prior. The larger the ratio, the more convincingly the data shows that paths a and b are equally fast."

	^ self nullMapEstimate / self nullPrior.