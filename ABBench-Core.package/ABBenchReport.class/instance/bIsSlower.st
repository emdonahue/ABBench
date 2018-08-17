testing
bIsSlower
	^ self nullRejected & (bSamples median < aSamples median).