tests
testNullConfirmed
	
	self assert: (ABBench new nullConfirmed: 11).
	self deny: (ABBench new nullConfirmed: 9).