parsing
parse: text

	^ self isForMethod
		ifTrue: [ self parser parseMethod: text ]
		ifFalse: [ self parser parseExpression: text ]
