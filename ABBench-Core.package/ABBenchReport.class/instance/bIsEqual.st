testing
bIsEqual
	"Returns true if there is enough data to make a determination and the test was unable to identify any performance difference between a and b."
	^ self nullAccepted. "Implies hasSufficientData."