tests
testMultiplication
	"Reliable for a single *"
	<script>
	(ABBench bench: [
		ABBench samplingB ifTrue: [ 1 * 1 ] ifFalse: [ 1 * 1 * 1 ] ]) inspect.