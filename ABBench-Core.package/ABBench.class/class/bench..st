api
bench: aBlock
	^ [ self drawSamples: aBlock ]
		ensure: [ samplingB := true ].