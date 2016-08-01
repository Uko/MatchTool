accessing
blockPatterns

^ HelpTopic 
		title: '(`{ }) Block Pattern Nodes'
		contents: 'These are the most exotic of all the nodes. They match any AST nodes like a list pattern and test it with a block. The syntax is similar to the smalltalk block, but curly braces are used instead of square brackets and as always the whole expression begins with a backtick.

Consider the following example:

	`{ :node | node isVariable and: [ node isGlobal ] } become: nil

this pattern will match a message #become: with an attribute nil, where the receiver is a variable and it is a global variable.


There is also a special case called wrapped block pattern node which has the same syntax and follows a normal pattern node. In this case first the node will be matched based on its pattern, and then passed to the block. For example:

	`#arr `{ :node | node isLiteralArray } asArray

is a simple way to detect expression like “#(1 2 3) asArray”. In this case first #(1 2 3) will be matched by the literal node and then tested by the block.'
		