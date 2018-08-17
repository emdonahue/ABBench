inspecting
graphData
	| ds |
	ds := RTData new 
	x: #x;
	y: #y.
	ds interaction popup text: [ :p | p y ].
	^ ds