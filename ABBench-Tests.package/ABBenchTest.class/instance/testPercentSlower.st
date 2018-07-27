tests
testPercentSlower
	self assert: (ABBench new marks: #(#(1000) #(2000))) percentSlower equals: 100.