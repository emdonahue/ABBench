printing
printOn: aStream
	self hasSufficientEvidence ifFalse: [ ^ aStream nextPutAll: 'AB test INCONCLUSIVE' ].
	self bIsEqual ifTrue: [ ^ aStream nextPutAll: 'B is EQUAL to A' ].
	aStream nextPutAll: 'B is '.
	self percentChange printOn: aStream showingDecimalPlaces: 2.
	aStream nextPutAll:
		(self bIsFaster
			ifTrue: '% FASTER than A'
			ifFalse: '% SLOWER than A').