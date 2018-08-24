tests
testVariance
	<script>
	| samples time runs |
	runs := 15.
	time := [ samples := (1 to: runs) collect: [ :i | ABBench bench: [ 50 factorial ] ] ] timeToRun.
	{(time / runs).
	samples.} inspect.