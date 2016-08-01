accessing
basicPatterns

^ HelpTopic 
		title: '(`) Basic Pattern Nodes'
		contents: 'Code prefixed with a backtick character (`) defines a pattern node. A pattern node can be a variable or a literal:

	`node asString

that will match message asString sent to any receiver.

It can be a message:

	Smalltalk globals `message

that will match any unary message sent to “Smalltalk globals”.

It can also be a method itself:

	`method
		^ nil

that will match any method which returns nil. '