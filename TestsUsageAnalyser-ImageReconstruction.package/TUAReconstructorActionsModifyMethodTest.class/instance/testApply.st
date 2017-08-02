tests
testApply
	| tuar methodString methodStringModified className class |
	tuar := TUAReconstructor new.
	methodString := 'FlyYouFools'.
	methodStringModified := methodString
		,
			'
		^ self'.
	className := 'Gandalf'.
	class := Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	class compile: methodString.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #methodModified).
			('snapshot' -> methodStringModified).
			(#affectedObject -> className)} asDictionary.
	self assert: (class >> methodString asSymbol) sourceCode equals: methodStringModified.
	Smalltalk globals removeClassNamed: className