private
resolveStyleFor: aVariableNode
	| style |
	
	style := super resolveStyleFor: aVariableNode.
	"we are working with snippets, we don't want red variables just
	because they were not defined anywhare"
	(style == #invalid or: [ 
	 style == #incompleteIdentifier ])
		ifTrue: [ style := #tempVar ].
	
	^ style