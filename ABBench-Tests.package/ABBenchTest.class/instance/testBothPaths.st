tests
testBothPaths
	| aPath bPath |
	self skip.
	aPath := false.
	bPath := false.
	self assert: (ABBench bench: [ ABBench a: [ aPath := true ] b: [ bPath := true ] ]) equals: 1.
	self assert: aPath.
	self assert: bPath.