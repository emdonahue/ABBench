tests
testPercentFaster
	self assert: (ABBench new marks: #(#(1000) #(500))) percentFaster equals: 100.