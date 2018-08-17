tests
testBetaAB
	self assert: ((ABBenchReport new beta: 0.5 a: 1 b: 1) closeTo: 1 precision: 0.1).
	self assert: ((ABBenchReport new beta: 0.5 a: 10 b: 2) closeTo: 0.107421875 precision: 0.1).