*Brick-Editor-Pillar
gtInspectorPillarWithBlocIn: composite
	<gtInspectorPresentationOrder: 40>
	^ composite bloc
		title: 'Pillar';
		element: [ 
			| text styler editor editorElement |
			text := BrRopedText string: self contents.
			styler := BrPillarStyler new fileReference: self.
			editor := BrTextEditor new.
			editor styler: styler.
			editor text: text.
			editor segmentBuilder: BrTextEditorAttributedLineSegmentBuilder new.
			editorElement := BrEditorElement new.
			editorElement constraintsDo: [ :c |
			    c horizontal matchParent.
			    c vertical matchParent ].
			editorElement editor: editor ];
		when: [ #('pier' 'pillar') includes: self extension ]