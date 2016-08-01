initialization
initializePresenter
	matchExpression
		whenCodeEdited: [ self disableLists ];
		whenMethodStateChangedDo: [ self disableLists ];
		whenMethodActivatedDo: [ self matchMethodActivated ].
	
	testExpression
		whenCodeEdited: [ self disableLists ];
		whenMethodStateChangedDo: [ self disableLists ];
		whenMethodDeactivatedDo: [ self testMethodDeactivated ].
	
	executeButton action: [ self performMatching ].
	helpButton action: [ HelpBrowser openOn: MatchToolHelp ].
	
	resultList
		whenSelectedItemChanged: [ :assoc |
			self selectedResultsItemChanged: assoc ];
		whenListChanged:
				[ :newItems | self resultsChanged: newItems ].