inspecting
graphSamplesA
	| ds |
	ds := self graphData.
	ds dotShape color: Color red trans.
	ds points: (aSamples collectWithIndex: [ :x :i | i @ x asFloat ]).
	ds label: 'A'.
	^ ds.