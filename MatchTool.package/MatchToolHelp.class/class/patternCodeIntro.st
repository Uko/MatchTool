accessing
patternCodeIntro

^ HelpTopic 
		title: 'Pattern Code Introduction'
		contents: 'Pattern code is very similar to an ordinary Smalltalk code, but allows to specify some “wildcards”. The purpose is fairly simple. Imagine that you have a piece of code

	car isNil ifTrue: [ ^ self ].

You can positively compare it with the same piece of code for equality, but won’t it be cool if you could compare something similar, but ignoring the fact that the receiver it named “car”? With pattern rules you can do exactly that. Consider the following code and notice backtick before car:

	`car isNil ifTrue: [ ^ self ].

Now this expression can match any other expression where “isNil ifTrue: [ ^ self ]” is sent to any variable (or literal). With such power you can find all the usages of “isNil ifTrue:” and replace them with “ifNil”.

The following sections will go over different kinds of wildcards (pattern nodes).'