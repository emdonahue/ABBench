private-statistics
nullAccepted
	"If sufficient data shows no difference between a and b, we have 'accepted the null hypothesis' that there is no difference. We accept when the bayes factor exceeds our requried confidence level."
	^ self targetConfidenceLevel <= self bayesFactor.