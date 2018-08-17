sampling
drawSample: aBlock
	Smalltalk garbageCollect.
	^ (aBlock benchFor: 1 second) executionsPerSecond.