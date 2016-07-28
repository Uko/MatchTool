event handling
performMatching
	| matches |
	matchExpression accept.
	testExpression  accept.
	
	self isReadyForMatching ifFalse: [ ^ self ].
	
	matches := OrderedCollection new.
	
	testNode nodesDo: [ :node |
		matchNode
			match: node
			onSuccess: [ :map |
				matches add: node -> map ]
			onFailure: [  ] ].
		
	resultList enable.
	matchMap   enable.
	resultList items: matches.