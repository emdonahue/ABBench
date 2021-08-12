tests
testFasterSlower

	"With 3 clear samples at the default significance threshold (16 for equality), we make a determination."
	self assert: (ABBenchReport new aSamples: #(1 1 1); bSamples: #(2 2 2)) hasSufficientEvidence.
	self assert: (ABBenchReport new aSamples: #(1 1 1); bSamples: #(2 2 2)) bIsFaster.
	self assert: (ABBenchReport new aSamples: #(2 2 2); bSamples: #(1 1 1)) bIsSlower.
	self assert: (ABBenchReport new aSamples: #(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1); bSamples: #(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)) bIsEqual.
			
	"With only two examples, we still have not made a determination."
	self deny: (ABBenchReport new aSamples: #(1 1); bSamples: #(2 2)) hasSufficientEvidence.
	self deny: (ABBenchReport new aSamples: #(1 1); bSamples: #(2 2)) bIsFaster.
	self deny: (ABBenchReport new aSamples: #(2 2); bSamples: #(1 1)) bIsSlower.
	self deny: (ABBenchReport new aSamples: #(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1); bSamples: #(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)) bIsEqual.
	
	