tests
testGamma
	self assert: ((ABBench new gamma: 1) exp closeTo: 1 factorial precision: 0.1).
	self assert: ((ABBench new gamma: 11) exp closeTo: 10 factorial precision: 0.1).
	self assert: ((ABBench new gamma: 101) exp closeTo: 100 factorial precision: 0.1).