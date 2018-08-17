api
a: aBlock b: bBlock
	^ samplingB ifTrue: bBlock ifFalse: aBlock.