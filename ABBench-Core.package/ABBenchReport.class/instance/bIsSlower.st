testing
bIsSlower
	"Returns true if there is enough data to make a determination and b is definitely slower (and not merely equal)."
	^ self hasSufficientEvidence & self bIsEqual not & self bIsFaster not.