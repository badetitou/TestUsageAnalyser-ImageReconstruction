"
A TUAReconstructorTest is a test class for testing the behavior of TUAReconstructor
"
Class {
	#name : #TUAReconstructorTest,
	#superclass : #TestCase,
	#category : 'TestsUsageAnalyser-ImageReconstruction-Tests'
}

{ #category : #'tests-actions' }
TUAReconstructorTest >> testAddBehavior [
	| tuar className |
	tuar := TUAReconstructor new.
	className := 'Gandalf'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #behaviorAdded).
			(#affectedObject -> className)} asDictionary.
	self assert: ((Smalltalk globals allClasses collect: #asString) includes: 'Gandalf').
	Smalltalk globals removeClassNamed: className
]

{ #category : #'tests-actions' }
TUAReconstructorTest >> testRemoveBehavior [
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
]

{ #category : #'tests-actions' }
TUAReconstructorTest >> testRenameClassWithNewClassName [
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
]
