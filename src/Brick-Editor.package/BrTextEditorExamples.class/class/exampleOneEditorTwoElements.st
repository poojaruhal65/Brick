examples - comparison
exampleOneEditorTwoElements
	| space1 editorElement1 space2 editorElement2 editor styler |

	editor := BrTextEditor new.

	styler := BrRBTextStyler new.
	styler classOrMetaClass: Morph.
	editor styler: styler.
	
	editor text: ((BrRopedText string: (Morph>>#fullDrawOn:) sourceCode) attributes: {
		(BrFontSizeAttribute size: 14) beNotOverwritableByStyler.
		BrFontGenericFamilyAttribute monospace beNotOverwritableByStyler
	}).
	
	editorElement1 := BrEditorElement new.
	editorElement1 constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	editorElement1 editor: editor.

	space1 := BlSpace new.
	space1 extent: self extent.
	space1 root addChild: editorElement1.
	
	editorElement2 := BrEditorElement new.
	editorElement2 constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	editorElement2 editor: editor.

	space2 := BlSpace new.
	space2 extent: self extent.
	space2 root addChild: editorElement2.
	
	space1 show.
	space2 show