tests
testDefaultPath
	self assert: (ABBench a: 1 b: 2) equals: 1.
	ABBench b.
	self assert: (ABBench a: 1 b: 2) equals: 2.
	ABBench a.
self assert: (ABBench a: 1 b: 2) equals: 1.