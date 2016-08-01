accessing
statementPatterns

^ HelpTopic 
		title: '(`.) Statement Pattern Nodes'
		contents: 'Backtick can be followed by a period to match statements. For example:

	`var
		ifTrue:  [ `.statement1 ]
		ifFalse: [ `.statement2 ]

will match an “ifTrue:ifFalse:” message send to any variable, where both blocks have only one statement each.'