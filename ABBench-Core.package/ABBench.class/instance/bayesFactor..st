statistics
bayesFactor: benchMarks
	| nullBayesFactor alternateBayesFactor |
	"nullBayesFactor := self normal: 0 mean: 0 std: 1.
	alternateBayesFactor := self posteriorNormal: benchMarks."
	nullBayesFactor := self beta: 0.5 a: 1 b: 1.
	alternateBayesFactor := self posteriorBeta: benchMarks.
	^ alternateBayesFactor / nullBayesFactor.