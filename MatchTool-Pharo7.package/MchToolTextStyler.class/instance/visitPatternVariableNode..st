visiting rb nodes
visitPatternVariableNode: aVariableNode

	self
		addStyle: #tempVar
		attribute: TextEmphasis underlined
		forNode: aVariableNode
	