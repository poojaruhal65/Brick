api - instantiation
create
	^ BlTextElement new
		margin: (BlInsets all: 3);
		text: self text;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent ]