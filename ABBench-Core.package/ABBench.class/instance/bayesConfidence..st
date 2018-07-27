statistics
bayesConfidence: benchMarks
	| bayesFactor |
	bayesFactor := self bayesFactor: benchMarks.
	^ bayesFactor / (1+bayesFactor).