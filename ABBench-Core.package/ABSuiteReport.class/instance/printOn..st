printing
printOn: aStream
	"b all faster. b all slower. b some faster"

	"b is x% faster. b is x% slower. a and b are equal. b is x% faster to y% slower OR faster x% of the time"

	aStream nextPutAll: 'B is '.
	(self bIsFaster)
		ifTrue: [ (reports sum: [ :r | r percentChange ]) / reports size printOn: aStream showingDecimalPlaces: 2.
			aStream nextPutAll: '% FASTER' ].