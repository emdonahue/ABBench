tests
testBIsFaster
	self
		assert:
			(ABBenchReport new
				aSamples: #(1 1 1);
				bSamples: #(2 2 2)) bIsFaster.
				self
		deny:
			(ABBenchReport new
				aSamples: #(1 1);
				bSamples: #(2 2)) bIsFaster.