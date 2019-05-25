initialization
initializeWidgets
	self instantiateWidgets.
	matchExpression
		title: 'Pattern code';
		beForPatternCode.
	testExpression title: 'Test code'.
	executeButton
		icon:
			(self iconNamed: #smallDoIt);
		label: 'Match';
		shortcut: Character cr meta.
	helpButton
		icon: ((self iconNamed: #questionIcon) scaledToSize: 22 @ 22);
		shortcut: $h meta.
	self initializeLists.
	self initializeFocusOrder