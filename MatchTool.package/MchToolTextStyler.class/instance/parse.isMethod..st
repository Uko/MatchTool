private
parse: aText isMethod: isMethod

	^ isMethod 
		ifTrue: [ 
			self parseFaultyMethod: aText ]	
		ifFalse:[ self parser parseFaultyExpression: aText ].