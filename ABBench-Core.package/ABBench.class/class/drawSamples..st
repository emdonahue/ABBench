sampling
drawSamples: aBlock
	"Generate a new report and run samples until it has enough data to conclude."
	| report |
	report := ABBenchReport new.
	[ report hasSufficientEvidence ] whileFalse: [ 
		report addSampleA: (self drawSampleA: aBlock) B: (self drawSampleB: aBlock) ].
^ report