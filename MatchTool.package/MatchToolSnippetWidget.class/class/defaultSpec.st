as yet unclassified
defaultSpec

	^ SpecLayout composed newColumn: [ :col | col
		newRow: [ :row | row
			add: #titleLabel;
			add: #methodCheckbox width: 100. ]
		height: 30;
		newRow: [ :row | row
			add: #codeArea ] ];
		yourself