as yet unclassified
updateTextAreaWhenPlugged
	super updateTextAreaWhenPlugged.
	self textArea shoutStyler styler
		beForMatchCode;
		beForMethod.
		
	self restyleTextArea.