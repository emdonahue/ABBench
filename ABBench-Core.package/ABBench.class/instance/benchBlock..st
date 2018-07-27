profiling
benchBlock: aBlock
	Smalltalk garbageCollect.
	^ ((aBlock benchFor: self class benchTime) period asNanoSeconds / 1e9) asFloat.