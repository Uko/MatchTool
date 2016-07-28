initialization
initializeWidgets
	
	matchExpression := self newCode.
	testExpression  := self newCode.
	resultList := self newList.
	executeButton := self newButton.
	matchMap := self newMultiColumnList.

	"matchExpression ghostText: 'Matching expression'.
	testExpression  ghostText: 'An expression to test mathing agaings'.	"

	executeButton
		icon: #smallDoIt asIcon;
		label: 'Match';
		shortcut: Character cr meta.
		
	resultList
		displayBlock: [ :assoc |
			assoc key formattedCode ].
	
	matchMap
		allowToSelect: false;
		displayBlock: [ :assoc |
			{ assoc key formattedCode . assoc value formattedCode } ].
		
	self focusOrder
		add: matchExpression;
		add: testExpression;
		add: executeButton;
		add: resultList