tests
test50Slower
	<script>
	(ABBench bench: [
		ABBench samplingB ifTrue: [ 0.1 seconds wait ] ifFalse: [ 0.2 seconds wait ] ]) inspect.