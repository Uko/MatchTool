as yet unclassified
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.

	self textArea shoutStyler styler
		beForSmalltalkCode;
		beForMethod.
		
	self restyleTextArea.