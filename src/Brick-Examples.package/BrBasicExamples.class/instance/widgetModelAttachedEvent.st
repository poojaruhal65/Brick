examples - events
widgetModelAttachedEvent
	<gtExample>
	| aWidgetElement aWidgetModel viewModelAttachedEvent |

	aWidgetElement := BlElement new.
	aWidgetModel := BrWidgetModel new.

	viewModelAttachedEvent := nil.
	aWidgetModel when: BrViewModelAttached do: [ :anEvent | viewModelAttachedEvent := anEvent copy ].

	aWidgetElement viewModel: aWidgetModel.

	self assert: viewModelAttachedEvent isNotNil.
	self assert: viewModelAttachedEvent source equals: aWidgetModel.
	self assert: viewModelAttachedEvent target equals: aWidgetModel.
	self assert: viewModelAttachedEvent currentTarget equals: aWidgetModel.
	self assert: viewModelAttachedEvent viewModel equals: aWidgetModel.
	self assert: viewModelAttachedEvent traversedTargets size equals: 2.

	^ viewModelAttachedEvent