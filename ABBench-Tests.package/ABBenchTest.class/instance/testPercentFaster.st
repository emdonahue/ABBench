tests
testPercentFaster
	self assert: (ABBench new marks: #(#(500) #(1000))) percentFaster equals: 100.