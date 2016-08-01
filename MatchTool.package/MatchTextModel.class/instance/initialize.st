initialization
initialize
	
	super initialize.
	isForMatchHolder  := false asValueHolder.
	isForMethodHolder := false asValueHolder.
	
	isForMatchHolder whenChangedDo: [ :bool | 
		self changed: #isForMatch: with: { bool } ].
		
	isForMethodHolder whenChangedDo: [ :bool | 
		self changed: #isForMethod: with: { bool } ].
	
	self
		beForCode;
		aboutToStyle: true.