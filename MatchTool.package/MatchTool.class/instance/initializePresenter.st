initialization
initializePresenter
	matchExpression
		whenCodeEdited: [ self textChanged ];
		whenMethodActivatedDo: [ self matchMethodActivated ].
	
	testExpression
		whenCodeEdited: [ self textChanged ];
		whenMethodDeactivatedDo: [ self testMethodDeactivated ].
	
	executeButton action: [ self performMatching ].
	
	resultList
		whenSelectedItemChanged: [ :assoc |
			self selectedResultsItemChanged: assoc ];
		whenListChanged:
				[ :newItems | self resultsChanged: newItems ]