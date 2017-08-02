tests-actions
testRemoveBehavior
	| tuar className |
	tuar := TUAReconstructor new.
	className := 'Gandalf'.
	Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #behaviorRemoved).
			(#affectedObject -> className)} asDictionary.
	self deny: ((Smalltalk globals allClasses collect: #asString) includes: className).