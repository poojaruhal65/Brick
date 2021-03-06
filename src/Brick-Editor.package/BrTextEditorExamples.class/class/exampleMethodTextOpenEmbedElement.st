examples
exampleMethodTextOpenEmbedElement
	| space editorElement |

	editorElement := (self >> #elementWithMethod) gtExample returnValue.
	editorElement editor text attributes: {
		BrFontSizeAttribute size: 18.
		BrFontGenericFamilyAttribute monospace
	}.
	editorElement editor text attributes: {
		BrTextAdornmentDynamicAttribute new elementBlock: [ BlElement new size: 70 @ 50; background: Color red; yourself ]
	} from: 30 to: 30.
	editorElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	space := BlSpace new.
	space extent: 800@400.
	space root addChild: editorElement.
	space show.