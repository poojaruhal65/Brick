api - instantiation
createDefault
	^ BlTextElement new
		margin: (BlInsets all: 3);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ]