private-statistics
nullPrior
	"Prior probability that there is no change between paths a and b having observed no data."
	^ self beta: 0.5 a: 0.5 b: 0.5.