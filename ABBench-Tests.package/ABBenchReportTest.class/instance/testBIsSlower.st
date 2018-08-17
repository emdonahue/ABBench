tests
testBIsSlower
	self
		assert:
			(ABBenchReport new
				aSamples: #(2 2 2);
				bSamples: #(1 1 1)) bIsSlower.
	self
		deny:
			(ABBenchReport new
				aSamples: #(2 2);
				bSamples: #(1 1)) bIsFaster.