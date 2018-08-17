tests
testPercentChange
	self
		assert:
			(ABBenchReport new
				aSamples: #(1 1 1);
				bSamples: #(2 2 2)) percentChange
		equals: 100.
	self
		assert:
			(ABBenchReport new
				aSamples: #(2 2 2);
				bSamples: #(1 1 1)) percentChange
		equals: 50.