deletion
delete_A_in_BCrA_at_3_3
	<gtExample>
	| aTextEditor |
	aTextEditor := self insert_NewLine_in_BA_At_1.

	aTextEditor delete: 3 to: 3.

	self assert: aTextEditor text asString equals: 'B', String cr.
	self assert: aTextEditor segmentCollector computedSegmentsCount equals: 2.
	self assert: aTextEditor segmentCollector segments first textInterval equals: (1 to: 1).
	self assert: aTextEditor segmentCollector segments second textInterval equals: (2 to: 2).

	^ aTextEditor