initialize-release
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	self textArea shoutStyler styler
		beForMatchCode;
		beForMethod.
		
	self restyleTextArea.