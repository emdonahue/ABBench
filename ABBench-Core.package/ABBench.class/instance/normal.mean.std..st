statistics
normal: anX mean: aMean std: aStd
	^ 1 / ((2*Float pi *aStd squared) sqrt) * (Float e ** ((anX - aMean) squared negated / (2 * aStd squared)) ) 