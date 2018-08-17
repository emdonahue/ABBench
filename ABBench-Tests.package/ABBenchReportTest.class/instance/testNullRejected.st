tests
testNullRejected
	| ones twos |
	ones := (1 to: 3) collect: [ :x | 1 ].
	twos := (1 to: 3) collect: [ :x | 2 ].
	self
		assert:
			(ABBenchReport new
				aSamples: ones;
				bSamples: twos) nullRejected.