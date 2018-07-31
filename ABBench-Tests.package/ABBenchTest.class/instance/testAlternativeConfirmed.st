tests
testAlternativeConfirmed
	self deny: (ABBench new alternativeConfirmed: 0.11).
	self assert: (ABBench new alternativeConfirmed: 0.09).