initialization
parseMatch: text

	matchNode := RBParser
		parseRewriteExpression: text
		onError: [ ^ false ].
	^ true