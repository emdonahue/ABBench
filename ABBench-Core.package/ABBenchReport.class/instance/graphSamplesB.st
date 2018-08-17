inspecting
graphSamplesB
	| ds |
	ds := self graphData.
	ds dotShape color: Color blue trans.
	ds points: (bSamples collectWithIndex: [ :x :i | i @ x asFloat ]).
	ds label: 'B'.
	^ ds.