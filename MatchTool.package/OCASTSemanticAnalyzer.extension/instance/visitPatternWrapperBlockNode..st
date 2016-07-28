*MatchTool
visitPatternWrapperBlockNode: aNode

	self visitNode: aNode wrappedNode.
	self visitBlockNode: aNode