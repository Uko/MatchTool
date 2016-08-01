initialize-release
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	
	self textArea shoutStyler styler
		beForSmalltalkCode;
		beForExpression.
		
	self restyleTextArea.