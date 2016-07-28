initialization
selectedResultsItemChanged: assoc
	^ assoc
		ifNil: [ matchMap items: #().
			testExpression clearCodeSelection ]
		ifNotNil: [ matchMap items: assoc value associations.
			testExpression setCodeSelection: assoc key sourceInterval ]