accessing
namingImportant

^ HelpTopic 
		title: 'Naming is Important'
		contents: 'The pattern nodes work so they can match anything that fits. But their naming is important as the code get’s mapped to them by name. For example:

	`block value: `@expression value: `@expression

will match only those “value:value:” messages that have exactly the same expressions as both arguments. It is like that because we used the same pattern variable name.'