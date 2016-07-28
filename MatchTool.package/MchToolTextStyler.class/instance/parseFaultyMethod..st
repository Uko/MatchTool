as yet unclassified
parseFaultyMethod: aString 
	^ [ self parser parseFaultyMethod: aString ]
		on: MessageNotUnderstood
		do: [ :ex | (ex receiver isKindOf: RBParseErrorNode)
				ifTrue: [
					(RBMethodNode selector: #noMethod body: ex receiver) source: aString.
					 ex receiver ]
				ifFalse: [ ex pass ] ]