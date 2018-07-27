statistics
beta: x a: a b: b
	^ (x ln * (a - 1) + ((1 - x) ln * (b - 1)) + ((self gamma: a + b) - (self gamma: a) - (self gamma: b))) exp.
	"^ x ** (a - 1) * ((1 - x) ** (b - 1)) + ((self gamma: a + b) - (self gamma: a) - (self gamma: b))."