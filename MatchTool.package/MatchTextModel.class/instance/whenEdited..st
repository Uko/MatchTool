api-events
whenEdited: aBlock
	"Set a block to perform when the accept block changed"
	
	hasUnacceptedEdits whenChangedDo: [ :val |
		val ifTrue: aBlock value ]