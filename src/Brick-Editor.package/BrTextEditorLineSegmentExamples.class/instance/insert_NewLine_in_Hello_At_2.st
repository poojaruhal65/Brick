insertion
insert_NewLine_in_Hello_At_2
	<gtExample>
	| aTextEditor |
	aTextEditor := self insert_Hello_inEmptyAt_0.

	aTextEditor insertString: String cr at: 2.

	self assert: aTextEditor text asString equals: 'He', String cr, 'llo'.
	self assert: aTextEditor segmentCollector computedSegmentsCount equals: 2.
	self assert: aTextEditor segmentCollector segments first textInterval equals: (1 to: 2).
	self assert: aTextEditor segmentCollector segments second textInterval equals: (4 to: 6).

	^ aTextEditor