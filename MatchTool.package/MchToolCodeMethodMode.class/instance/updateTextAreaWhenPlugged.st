initialize-release
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.

	self textArea shoutStyler styler
		beForSmalltalkCode;
		beForMethod.
		
	self restyleTextArea.