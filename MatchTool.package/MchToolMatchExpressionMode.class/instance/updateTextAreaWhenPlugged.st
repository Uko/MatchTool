as yet unclassified
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	self textArea shoutStyler styler
		beForMatchCode;
		beForExpression.
		
	self restyleTextArea.