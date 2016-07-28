initialization
instantiateWidgets
	matchExpression := self instantiate: MatchToolSnippetWidget.
	testExpression := self instantiate: MatchToolSnippetWidget.
	resultList := self newList.
	executeButton := self newButton.
	matchMap := self newMultiColumnList