accessing
listPatterns

^ HelpTopic 
		title: '(`@) List Pattern Nodes'
		contents: 'To have a complete flexibility there is a possibility to use at sign (@) before the name of a pattern not which turns the node into a “list pattern node”. These node can match more than a single entity. For example

	`@expr isPatternVariable

will match both massages

	1 isPatternVariable

and

	ast statement first isPatternVariable.

but in the second case `@expr will represent “ast statement first”. These pattern nodes will also match block definitions.


With message and method list nodes one can match any number of keywords and parameters. An expression:

	Smalltalk globals `@message: `@args

will match any message (including) unary sent to “Smalltalk globals” and `@args will be mapped to the list of arguments.
!Disclaimer: you may write an expression with just “args” instead of “`@args”, but following the list pattern grammar makes it easier to read.

Similarly you can match a list of temporary variables:

	`@method: `@args
		| `temp `@temps |

This will match any method with one or more temporary variables and without any statement. The first temporary variable will be mapped to `temp the rest ones — to `@temps.


Finally you can have a list of statements:

	[ `.@Statements.
		`var := `@object ]

this expression will match a block which has an assignment of an expression to a variable as a last statement. It can be preceded by any number of other statement (including 0).


The list patterns does not make any sense for literal nodes i.e. `#@literal.


P.S. In the end it does not matter whether you will write `.@Statement or `@.Statement. But I like to put @ closer to the variable name as the character is larger itself and the name looks nicer this way.'