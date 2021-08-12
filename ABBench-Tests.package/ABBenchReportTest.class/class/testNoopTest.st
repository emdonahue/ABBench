tests
testNoopTest
	"This seems to have a slight bias and it is unclear why."
	<script>
	(ABBench bench: [ ABBench samplingB ifTrue: [ ] ifFalse: [ ] ]) inspect.