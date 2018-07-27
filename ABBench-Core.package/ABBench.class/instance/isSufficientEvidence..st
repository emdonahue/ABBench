statistics
isSufficientEvidence: benchMarks
	| bayesFactor |
	bayesFactor := self bayesFactor: benchMarks.
	^ (self nullConfirmed: bayesFactor) or: (self alternativeConfirmed: bayesFactor).