sampling
drawSample: aBlock
	"Run the benchmark tests on the current path and count the samples."
	Smalltalk garbageCollect.
	^ (aBlock benchFor: 0.1 second) executionsPerSecond.