visiting rb nodes
visitMethodNode: aMethodNode

	aMethodNode isPatternNode
		ifTrue: [ self visitPatternMethodNode: aMethodNode ]
		ifFalse: [ super visitMethodNode: aMethodNode ]