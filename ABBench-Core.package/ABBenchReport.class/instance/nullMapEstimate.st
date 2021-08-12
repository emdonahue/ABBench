private-statistics
nullMapEstimate
	"Estimate the MAP likelihood that the two paths are equally fast (null hypothesis) after having observed the sampled data."

	| numPos numNeg |
	numPos := 1.
	numNeg := 1.
	aSamples do: [ :a | "For all samples in a,"
		bSamples do: [ :b | "each compared to all samples in b,"
			"If b is clearly greater than a past the margin of error, record a win for b."
			a * self smoothingMargin < b ifTrue: [ numPos := numPos + 1 ]
				"If a is clearly greater, record a win for a."
				ifFalse: [ b * self smoothingMargin < a ifTrue: [ numNeg := numNeg + 1 ]
					"Otherwise, divide the win between them to record progress towards determining 'no change'."
					ifFalse: [ numPos := numPos + 0.5. numNeg := numNeg + 0.5 ] ] ] ].
		"Return the probability of a and b being equal under the observed data."
	^ self beta: 0.5 a: numPos b: numNeg.