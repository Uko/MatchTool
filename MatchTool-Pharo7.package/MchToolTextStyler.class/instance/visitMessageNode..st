visiting rb nodes
visitMessageNode: aMessageNode

	aMessageNode isPatternNode
		ifTrue: [ self visitPatternMessageNode: aMessageNode ]
		ifFalse: [ super visitMessageNode: aMessageNode ]