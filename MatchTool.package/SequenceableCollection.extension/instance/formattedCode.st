*MatchTool
formattedCode
	^ String streamContents: [ :str |
		self
			do: [ :item |
				str nextPutAll: item formattedCode ]
			separatedBy: [ 
				str nextPutAll: '. ' ] ]