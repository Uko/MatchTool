as yet unclassified
initializeWidgets
	
	titleLabel := self newLabel.
	methodCheckbox := self newCheckBox.
	codeArea := self instantiate: MatchTextModel.
	
	titleLabel label: self title.
	methodCheckbox label: 'Method'.