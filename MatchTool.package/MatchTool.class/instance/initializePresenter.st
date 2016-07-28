initialization
initializePresenter

	matchExpression
		acceptBlock: [:text :notifier |
    	[ matchNode := RBParser parseRewriteExpression: text ]
			on: SyntaxErrorNotification
			do: [ :ex |
    			notifier
					notify: ex errorMessage
					at: ex location
					in: ex errorCode.
				false ] ];
		whenEdited: [ self textChanged ].
	testExpression
		acceptBlock:[:text :notifier |
    	[ testNode := RBParser parseExpression: text ]
			on: SyntaxErrorNotification
			do:[ :ex |
    			notifier
					notify: ex errorMessage
					at: ex location
					in: ex errorCode.
			false ] ];
		whenEdited: [ self textChanged ].

	executeButton action: [ 
		self performMatching ].
	
	resultList
		whenSelectedItemChanged: [ :assoc |
			assoc
				ifNil:    [
					matchMap items: #().
					testExpression clearSelection ]
				ifNotNil: [
					matchMap items: assoc value associations.
					testExpression setSelection: assoc key sourceInterval ] ];
		whenListChanged: [ :newItems |
			matchMap items: #().
			newItems
				ifEmpty: [ resultList borderColor: Color red ]
				ifNotEmpty: [ resultList borderColor: Color transparent ] ]