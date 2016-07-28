initialization
initializeLists
	resultList
		disable;
		displayBlock: [ :assoc | assoc key formattedCode ].
	matchMap
		disable;
		allowToSelect: false;
		displayBlock: [ :assoc | 
			{assoc key formattedCode.
			assoc value formattedCode} ]