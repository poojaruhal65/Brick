examples - scripting
compositeAllClassesAndPackageWithIndex
	<gtExample>
	| aList |

	aList := BrColumnedList new.
	aList display: Smalltalk allClasses.
	aList column
		title: 'Index';
		stencil: [ :aClass :anIndex |
			BlTextElement new
				width: 30;
				margin: (BlInsets all: 3);
				text: (anIndex asString asRopedText foreground: Color gray) ].

	aList column
		title: 'Class';
		stencil: [ :aClass | (BrListLabelStencil new text: aClass name asString) asElement width: 200 ].

	aList column
		title: 'Package';
		stencil: [ :aClass | BrListLabelStencil new text: aClass package name asString ].

	^ aList