statistics
beta: x a: a b: b
	"Computes the Beta distribution PDF of x, with shape parameters a and b."
	^ (x ln * (a - 1) + ((1 - x) ln * (b - 1)) + ((self logFactorial: a + b) - (self logFactorial: a) - (self logFactorial: b))) exp.