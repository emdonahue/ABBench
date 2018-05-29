profiling
a: aBlock b: bBlock
	^ bench ifNil: aBlock ifNotNil: [ :x | x a: aBlock b: bBlock ]