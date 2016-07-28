menu
worldMenu: aBuilder

	<worldMenu>
	(aBuilder item: #'MatchTool')
		order: 0.40;
		icon: (Smalltalk ui icons jigsawIcon);
		parent: #Tools;
		action: [ self new openWithSpec ]