statistics
nullMapEstimate
	"Estimate the MAP likelihood that the two paths are equally fast (null hypothesis) after having observed the sampled data."

	| numPos numNeg |
	numPos := 1.
	numNeg := 1.
	aSamples
		do: [ :a | 
			bSamples
				do: [ :b | 
					a * self smoothingMargin < b
						ifTrue: [ numPos := numPos + 1	"Even after scaling a up by the smoothing margin, it is still less than b, so that's a clear win for b." ]
						ifFalse: [ b * self smoothingMargin < a
								ifTrue: [ numNeg := numNeg + 1 ]
								ifFalse: [ numPos := numPos + 0.5.
									numNeg := numNeg + 0.5 ] ] ] ].
	^ self beta: 0.5 a: numPos b: numNeg.