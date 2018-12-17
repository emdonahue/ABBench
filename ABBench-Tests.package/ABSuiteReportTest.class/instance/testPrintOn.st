tests
testPrintOn
	self
		assert:
			(ABBenchReport new
				aSamples: #(1 1 1);
				bSamples: #(2 2 2)) asSuiteReport asString
		equals: 'B is 100.00% FASTER'.