profiling
bench: aBlock
	^ [ bench := self new.
		bench bench: aBlock ] ensure: [ bench := nil ]