tests-testing
testApply
	| tuar methodString methodRealName className class |
	tuar := TUAReconstructor new.
	methodString := 'flyYouFools: frodo patate: world
	canard'.
	methodRealName := 'flyYouFools:patate:'.
	className := 'Gandalf'.
	class := Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	class compile: methodString.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #methodRemoved).
			('snapshot' -> methodString).
			(#affectedObject -> className)} asDictionary.
	self should: [ class >> methodRealName asSymbol ] raise: KeyNotFound.
	Smalltalk globals removeClassNamed: className