statistics
posteriorNormal: someObservations
	^ self normal: 0 mean: (self mean: someObservations) std: (self std: someObservations).