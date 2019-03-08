*matchTool
jigsawIcon
	^ icons
		at: #jigsawIcon
		ifAbsentPut: [
			Form fromBinaryStream: self jigsawIconContents base64Decoded readStream ].