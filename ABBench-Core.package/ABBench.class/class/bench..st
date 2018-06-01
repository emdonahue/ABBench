profiling
bench: aBlock
	| oldBench | 
	^ [ oldBench := bench. 
		bench := self new.
	bench bench: aBlock ]
		ensure: [ bench := oldBench ]