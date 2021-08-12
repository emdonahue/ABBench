sampling
drawSampleB: aBlock
	"Sets the B path and runs the benchmarks to test the speed of that path."
	self b.
	^ self drawSample: aBlock.