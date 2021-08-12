api
a: aBlock b: bBlock
	"Called by user code to offer a pair of code paths to the benchmarking system to be tested against one another. May be called multiple times and from anywhere in the code where the paths diverge."
	^ samplingB ifTrue: bBlock ifFalse: aBlock.