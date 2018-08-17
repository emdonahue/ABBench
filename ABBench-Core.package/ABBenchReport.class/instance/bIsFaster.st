testing
bIsFaster
	^ self nullRejected & (bSamples median > aSamples median)