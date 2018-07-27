profiling
bench: aBlock
	| aMarks bMarks |
	aMarks := OrderedCollection new.
	bMarks := OrderedCollection new.
	Smalltalk garbageCollect.
	[ self isSufficientEvidence: { aMarks. bMarks } ]
		whileFalse: [ aPath := true.
			aMarks add: (self benchBlock: aBlock).
			aPath := false.
			bMarks add: (self benchBlock: aBlock) ].
	^ self marks: {aMarks. bMarks}.