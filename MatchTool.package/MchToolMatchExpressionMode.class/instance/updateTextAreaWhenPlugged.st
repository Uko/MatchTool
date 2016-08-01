initialize-release
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	self textArea shoutStyler styler
		beForMatchCode;
		beForExpression.
		
	self restyleTextArea.