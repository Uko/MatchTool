initialization
resultsChanged: newItems
	matchMap items: #().
	resultList resetSelection.
	^ newItems
		ifEmpty: [ resultList borderColor: Color red ]
		ifNotEmpty: [ resultList borderColor: Color green ]