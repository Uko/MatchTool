initialization
initializePresenter
	super initializePresenter.
	titleHolder whenChangedDo: [ :string | titleLabel label: string ].
	methodCheckbox whenChangedDo: [ :bool | codeArea isForMethod: bool ].
	codeArea
		acceptBlock:
			[ :text :notifier | self accept: text notifying: notifier ]