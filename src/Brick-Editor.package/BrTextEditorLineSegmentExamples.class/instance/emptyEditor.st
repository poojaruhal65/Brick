instance creation
emptyEditor
	<gtExample>
	| aTextEditor |
	
	aTextEditor := BrTextEditor new segmentBuilder: self lineSegmentBuilder.
	
	self assert: aTextEditor text asString equals: ''.
	self assert: aTextEditor segmentCollector computedSegmentsCount equals: 1.
	self assert: aTextEditor segmentCollector segments first textInterval equals: (0 to: 0).

	^ aTextEditor