accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				package: 'ABBench-Core';
				package: 'ABBench-Tests' with: [ spec requires: #('ABBench-Core') ] ]