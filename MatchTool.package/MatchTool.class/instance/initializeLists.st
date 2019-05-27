initialization
initializeLists
	resultList
		disable;
		displayBlock: [ :assoc | assoc key formattedCode ].
	matchMap
		disable;
		addColumn: (StringTableColumn evaluated: [:assoc | assoc key formattedCode]);
		addColumn: (StringTableColumn evaluated: [:assoc | assoc value formattedCode]).
