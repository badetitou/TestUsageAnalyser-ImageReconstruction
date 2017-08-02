tests-testing
testApply
	| tuar className comment |
	tuar := TUAReconstructor new.
	className := 'Gandalf'.
	comment := 'You shall not pass | '.
	Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #classCommented).
			(#affectedObject -> className).
			('snapshot' -> comment)} asDictionary.
	self assert: (Smalltalk globals classNamed: className) comment equals: comment.
	Smalltalk globals removeClassNamed: className