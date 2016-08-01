initialization
initializeWidgets
	self instantiateWidgets.
	
	matchExpression
		title: 'Pattern code';
		beForPatternCode.		
	testExpression title: 'Test code'.
	
	executeButton
		icon: #smallDoIt asIcon;
		label: 'Match';
		shortcut: Character cr meta.
		
	helpButton
		icon: (#questionIcon asIcon scaledToSize: 22 @ 22);
		shortcut: $h meta.
		
	self initializeLists.
	self initializeFocusOrder