statistics
mean: someObservations 
	someObservations size = 0 ifTrue: [ ^ 0 ].
	^ someObservations average