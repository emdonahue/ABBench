testing
bIsFaster
	"Returns true if there is enough data to make a determination and b is definitely faster (and not merely equal)."
	^ self nullRejected & (bSamples median > aSamples median)