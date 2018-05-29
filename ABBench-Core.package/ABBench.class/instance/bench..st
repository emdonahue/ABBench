profiling
bench: aBlock
	| aMarks bMarks |
	aMarks := OrderedCollection new.
	bMarks := OrderedCollection new.
	10
		timesRepeat: [ aPath := true.
			Smalltalk garbageCollect.
			aMarks add: aBlock timeToRun.
			aPath := false.
			Smalltalk garbageCollect .
	bMarks add: aBlock timeToRun ] .
	^ (((aMarks sum + 1 nanoSecond) / aMarks size + 1 nanoSecond)
		/ ((bMarks sum + 1 nanoSecond) / bMarks size + 1 nanoSecond)) asFloat