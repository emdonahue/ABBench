tests
testAddition
	"Unreliable for a single +"
	<script>
	(ABBench bench: [
		ABBench samplingB ifTrue: [ 1 + 1 ] ifFalse: [ 1 + 1 + 1 ] ]) inspect.