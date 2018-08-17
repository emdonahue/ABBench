tests
testNullAccepted
	| ones |
	ones := (1 to: 16) collect: [ :x | 1 ].
	self
		assert:
			(ABBenchReport new
				aSamples: ones;
				bSamples: ones) nullAccepted.