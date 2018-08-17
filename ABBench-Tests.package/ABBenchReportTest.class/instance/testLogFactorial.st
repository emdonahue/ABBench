tests
testLogFactorial
	self assert: ((ABBenchReport new logFactorial: 1) exp closeTo: 1 factorial precision: 0.1).
	self assert: ((ABBenchReport new logFactorial: 11) exp closeTo: 10 factorial precision: 0.1).
	self assert: ((ABBenchReport new logFactorial: 101) exp closeTo: 100 factorial precision: 0.1).