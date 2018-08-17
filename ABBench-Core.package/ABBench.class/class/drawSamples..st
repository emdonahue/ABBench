sampling
drawSamples: aBlock
	| report |
	report := ABBenchReport new.
	[ report hasSufficientEvidence ] whileFalse: [ report addSampleA: (self drawSampleA: aBlock) B: (self drawSampleB: aBlock) ].
^ report