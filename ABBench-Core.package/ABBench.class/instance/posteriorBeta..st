statistics
posteriorBeta: someObservations
	| numPos numNeg numZero aMarks bMarks scaleFactor |
	numPos := 0.
	numNeg := 0.
	numZero := 0.
	scaleFactor := self class scaleFactor.
	aMarks := someObservations first.
	bMarks := someObservations second.
	aMarks
		do: [ :a | 
			bMarks
				do: [ :b | 
					a * scaleFactor < b
						ifTrue: [ numPos := numPos + 1 ]
						ifFalse: [ b * scaleFactor < a
								ifTrue: [ numNeg := numNeg + 1 ]
								ifFalse: [ numZero := numZero + 1 ] ] ] ].
	^ self beta: 0.5 a: 0.5 * numZero + numPos + 1 b: 0.5 * numZero + numNeg + 1.