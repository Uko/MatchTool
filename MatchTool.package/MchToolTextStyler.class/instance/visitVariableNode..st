visiting rb nodes
visitVariableNode: aVariableNode
	
	
	aVariableNode isPatternNode
		ifTrue: [ self visitPatternVariableNode: aVariableNode ]
		ifFalse: [ super visitVariableNode: aVariableNode ]