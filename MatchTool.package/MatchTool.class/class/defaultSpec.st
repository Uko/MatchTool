specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col | col
			add: #matchExpression;
			add: #testExpression. ]
		origin: 0 @ 0 corner: 0.5 @ 1;
		
		newColumn: [ :col | col
			add: #executeButton height: 30;
			add: #resultList ]
		origin: 0.5 @ 0 corner: 0.75 @ 1;
		
		newColumn: [ :col | col
			add: #matchMap ]
		origin: 0.75 @ 0 corner: 1 @ 1;
		yourself