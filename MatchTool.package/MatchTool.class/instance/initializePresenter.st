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
		whenSelectionChangedDo: [ :selection | 
			[ :assoc | self selectedResultsItemChanged: assoc ]
				cull: selection selectedItem ];
		whenModelChangedDo: [ :newItems | self resultsChanged: newItems ]