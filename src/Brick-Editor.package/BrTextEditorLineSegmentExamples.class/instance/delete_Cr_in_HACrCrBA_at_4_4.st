deletion
delete_Cr_in_HACrCrBA_at_4_4
	<gtExample>
	| aTextEditor |
	aTextEditor := self insert_NewLine_in_HACrBA_At_2.

	aTextEditor delete: 4 to: 4.

	self assert: aTextEditor text asString equals: 'HA', String cr, 'BA'.
	self assert: aTextEditor segmentCollector computedSegmentsCount equals: 2.
	self assert: aTextEditor segmentCollector segments first textInterval equals: (1 to: 2).
	self assert: aTextEditor segmentCollector segments second textInterval equals: (4 to: 5).

	^ aTextEditor