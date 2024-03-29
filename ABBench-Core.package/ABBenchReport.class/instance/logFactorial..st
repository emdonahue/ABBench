private-statistics
logFactorial: n
	"Approximation to the continuous log factorial function. Based on PolyMath library's Beta distribution."

	| coefficients leadingFactor series |
	n <= 1
		ifTrue: [ ^ (self logFactorial: n + 1) - n ln ].
	coefficients := #(76.18009172947146 -86.50532032941677 24.01409824083091 -1.231739572450155 0.1208650973866179e-2 -0.5395239384953e-5).
	leadingFactor := (n + 5.5) ln * (n + 0.5) - (n + 5.5).
	series := 1.000000000190015 + (coefficients withIndexCollect: [ :x :i | x / (n + i) ]) sum.
	^ leadingFactor + (series * (2 * Float pi) sqrt / n) ln.