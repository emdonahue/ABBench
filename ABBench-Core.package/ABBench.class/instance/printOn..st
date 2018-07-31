printing
printOn: aStream
	(self nullConfirmed: (self bayesFactor: marks))
		ifTrue: [ aStream nextPutAll: 'A and B are EQUAL ('.
			self nullConfidence printOn: aStream showingDecimalPlaces: 0.
			aStream nextPutAll: '% confident)'.
			^ self ].
	aStream nextPutAll: 'B is '.
	self bFaster
		ifTrue: [ self percentFaster printOn: aStream showingDecimalPlaces: 2.
			aStream nextPutAll: '% FASTER than A ('.
			self alternativeConfidence printOn: aStream showingDecimalPlaces: 2.
			aStream nextPutAll: '% confident)' ]
		ifFalse: [ self percentSlower printOn: aStream showingDecimalPlaces: 2.
			aStream nextPutAll: '% SLOWER than A ('.
			self alternativeConfidence printOn: aStream showingDecimalPlaces: 0.
			aStream nextPutAll: '% confident)' ].