parsing
parser

	^ self isForPatternCode
		ifTrue: [ RBPatternParser ]
		ifFalse: [ RBParser ]