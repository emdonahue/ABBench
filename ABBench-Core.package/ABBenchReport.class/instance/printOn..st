printing
printOn: aStream
	self hasSufficientEvidence
		ifFalse: [ ^ aStream nextPutAll: 'AB test INCONCLUSIVE' ].
		 self nullAccepted
		ifTrue: [ ^ aStream nextPutAll: 'A and B are EQUAL' ].
	aStream nextPutAll: 'B is '.
	self percentChange printOn: aStream showingDecimalPlaces: 2.
	aStream
		nextPutAll:
			(self bIsFaster
				ifTrue: '% FASTER than A'
				ifFalse: '% SLOWER than A').