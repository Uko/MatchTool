menu
worldMenu: aBuilder

	<worldMenu>
	(aBuilder item: #'MatchTool')
		order: 0.40;
		icon: (Smalltalk ui icons jigsawIcon);
		parent: #Tools;
		action: [
			self new
				openWithSpec;
				disableLists.
			self flag: 'use #disableLists here to overcome spec issue where #enabled: status is not set on widget construction' ]