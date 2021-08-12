tests
test100Faster
	<script>
	(ABBench bench: [ 
		ABBench samplingB ifTrue: [ 0.2 seconds wait ] ifFalse: [ 0.1 seconds wait ] ]) inspect.