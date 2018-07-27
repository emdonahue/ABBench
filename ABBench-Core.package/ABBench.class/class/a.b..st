profiling
a: aBlock b: bBlock
	^ bench ifNil: bBlock ifNotNil: [ :x | x a: aBlock b: bBlock ].