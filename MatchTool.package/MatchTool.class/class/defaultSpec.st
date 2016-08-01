specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col | col
			add: #matchExpression;
			add: #testExpression. ]
		origin: 0 @ 0 corner: 0.46 @ 1;
		
		newColumn: [ :col | col
			newRow: [ :buttonRow | buttonRow
				add: #executeButton;
				add: #helpButton width: 30 ]
			height: 30;
			add: #resultList ]
		origin: 0.46 @ 0 corner: 0.73 @ 1;
		
		newColumn: [ :col | col
			add: #matchMap ]
		origin: 0.73 @ 0 corner: 1 @ 1;
		yourself