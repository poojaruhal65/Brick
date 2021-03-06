initialize-release
initialize
	super initialize.
	styles := SortedCollection sortBlock: [ :s1 :s2 | s1 <= s2 ].
	transitions := SortedCollection sortBlock: [ :t1 :t2 | t1 <= t2 ].
	children := IdentitySet new.
	inlineOrdinalCnt := 1000.
	stylesheets := BrStylesheetContainer on: self styleable. 
	pseudoClassStates := BrPseudoClassStates on: self styleable. 
	styleClasses := OrderedCollection new.
	stylesheets add: self class defaultStylesheet.
	self styleable addEventFilter: BrStyleEventListener new.