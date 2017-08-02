tests-actions
testRenameClassWithNewClassName
	| tuar className newClassName |
	tuar := TUAReconstructor new.
	className := 'Gandalf'.
	newClassName := 'Legolas'.
	Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #classRenamed).
			(#affectedObject -> className).
			('snapshot' -> newClassName)} asDictionary.
	self assert: ((Smalltalk globals allClasses collect: #asString) includes: newClassName).
	self deny: ((Smalltalk globals allClasses collect: #asString) includes: className).
	Smalltalk globals removeClassNamed: newClassName