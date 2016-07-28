as yet unclassified
setEditingModeFor: textArea withBehavior: behavior


	model isForMatch
		ifTrue: [ 
			model isForMethod
				ifTrue:  [ textArea beForMatchMethod ]
				ifFalse: [ textArea beForMatchExpression ] ]
		ifFalse: [ 
			model isForMethod
				ifTrue:  [ textArea beForSmaltalkMethod ]
				ifFalse: [ textArea beForSmaltalkExpression ] ]