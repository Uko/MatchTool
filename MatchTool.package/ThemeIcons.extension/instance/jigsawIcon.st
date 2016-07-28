*matchTool
jigsawIcon
	^ icons
		at: #jigsawIcon
		ifAbsentPut: [
			Form fromBinaryStream:
				(Base64MimeConverter mimeDecodeToBytes:
					self jigsawIconContents readStream) ].