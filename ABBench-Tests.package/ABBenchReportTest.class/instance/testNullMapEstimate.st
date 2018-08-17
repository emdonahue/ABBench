tests
testNullMapEstimate
	| r |
	r := ABBenchReport new.
	r addSampleA: 1 B: r smoothingMargin.	"The smoothing margin is, by definition, within the smoothing margin of 1, so these should be a tie."
	self assert: r nullMapEstimate equals: (r beta: 0.5 a: 1.5 b: 1.5).
	r addSampleA: 2 B: 3.	"3 beats 1 and 2, 2 only beats 1, the 1's tie.."
	self assert: r nullMapEstimate equals: (r beta: 0.5 a: 3.5 b: 2.5).