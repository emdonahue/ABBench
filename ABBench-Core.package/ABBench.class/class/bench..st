api
bench: aBlock
	"The main interface to run the benchmark tests. After benchmarks have been run, reset the default path to B. In practice, this has proven more intuitive to me than setting it to what it was before sampling, since by the time I am ready to run new samples I believe my A code works and I am ready to continue developing the B branch. This saves me from having to reset the default path back to B."
	^ [ self drawSamples: aBlock ]
		ensure: [ samplingB := true ].