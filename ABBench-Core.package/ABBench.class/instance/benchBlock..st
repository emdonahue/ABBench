profiling
benchBlock: aBlock
	| benchResult |
	Smalltalk garbageCollect.
	benchResult := aBlock benchFor: self class benchTime.
	^ benchResult executionsPerSecond.
	"^ benchResult iterations."