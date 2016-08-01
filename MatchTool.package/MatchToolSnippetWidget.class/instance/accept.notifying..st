event handling
accept: text notifying: notifier
	[ ast := self parse: text ]
		on: SyntaxErrorNotification
		do: [ :ex | 
			notifier notify: ex errorMessage at: ex location in: ex errorCode.
			^ false ]