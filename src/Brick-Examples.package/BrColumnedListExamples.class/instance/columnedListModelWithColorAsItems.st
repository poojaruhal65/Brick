examples - model
columnedListModelWithColorAsItems
	<gtExample>
	| aColumnedListModel |
	
	aColumnedListModel := self addColorValueColumn.
	aColumnedListModel items: (Color registeredColorNames collect: [ :aColorName | Color named: aColorName ]).

	^ aColumnedListModel