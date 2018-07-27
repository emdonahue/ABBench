statistics
posteriorBeta: someObservations
	| numPos numNeg numZero aMarks bMarks |
	numPos := 0.
	numNeg := 0.
	numZero := 0.
	aMarks := someObservations first.
	bMarks := someObservations second.
	aMarks do: [ :a | bMarks do: [ :b | b < a ifTrue: [ numPos := numPos + 1 ] ifFalse: [ b = a ifTrue: [ numZero := numZero + 1 ] ifFalse: [ numNeg := numNeg + 1 ] ] ] ].
	^ self beta: 0.5 a: 0.5 * numZero + numPos + 1 b: 0.5 * numZero + numNeg + 1.