tests-actions
testAddBehavior
	| tuar className |
	tuar := TUAReconstructor new.
	className := 'Gandalf'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #behaviorAdded).
			(#affectedObject -> className)} asDictionary.
	self assert: ((Smalltalk globals allClasses collect: #asString) includes: 'Gandalf').
	Smalltalk globals removeClassNamed: className