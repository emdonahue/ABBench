tests
testPercentSlower
	self assert: (ABBench new marks: #(#(2000) #(1000))) percentSlower equals: 100.