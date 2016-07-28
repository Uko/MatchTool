initialization
parseTest: text

	testNode := RBParser
		parseExpression: text
		onError: [ ^ false ].
	^ true