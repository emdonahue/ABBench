private-statistics
beta: x a: a b: b
	"Computes the Beta distribution PDF of x, with shape parameters a and b. Comparing all samples of paths A and B, if A wins a times and B wins b times, what is the probability that B is faster x percent of the time (generally .5)?"
	^ (x ln * (a - 1) + ((1 - x) ln * (b - 1)) + ((self logFactorial: a + b) - (self logFactorial: a) - (self logFactorial: b))) exp.