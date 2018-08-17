inspecting
gtInspectSamples: composite
	<gtInspectorPresentationOrder: 20>
	composite roassal2
		title: 'Samples';
		initializeView: [ RTGrapher new ];
		painting: [ :view | 
			view add: self graphSamplesA.
			view add: self graphSamplesB.
			view axisX title: 'Sample #'.
			view axisY title: 'Iterations/Second'.
			view legend below ];
		when: [ aSamples isNotEmpty & bSamples isNotEmpty ].