"
A TUAReconstructorActionsAddMethodTest is a test class for testing the behavior of TUAReconstructorActionsAddMethod
"
Class {
	#name : #TUAReconstructorActionsAddMethodTest,
	#superclass : #TestCase,
	#category : 'TestsUsageAnalyser-ImageReconstruction-Tests'
}

{ #category : #'tests-testing' }
TUAReconstructorActionsAddMethodTest >> testApply [
	| tuar methodString className class |
	tuar := TUAReconstructor new.
	methodString := 'FlyYouFools'.
	className := 'Gandalf'.
	class := Object
		subclass: className
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #methodAdded).
			('snapshot' -> methodString).
			(#affectedObject -> className)} asDictionary.
	self
		assert: ( (class >> methodString asSymbol) isNotNil).
	Smalltalk globals removeClassNamed: className
]
