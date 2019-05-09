Class {
	#name : #TUAReconstructorActions,
	#superclass : #Object,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActions >> apply: anAnnouncement [
	self subclassResponsibility 
]

{ #category : #testing }
TUAReconstructorActions >> extractPackageNameFromAnnouncement: anAnnouncement [
	^ ((((anAnnouncement at: 'package') substrings: '(') at: 2) substrings: ')') at: 1
]

{ #category : #testing }
TUAReconstructorActions >> isApplicableForAction: aKindOfModification [
	self subclassResponsibility 
]

{ #category : #testing }
TUAReconstructorActions >> methodName: snapshot [
	| completeMethodName methodNameWord |
	completeMethodName := ''.
	methodNameWord := (snapshot lineNumber: 1) substrings: ' '.
	methodNameWord size = 1
		ifTrue: [ completeMethodName := completeMethodName ,( methodNameWord at: 1) ]
		ifFalse: [ (methodNameWord select: [ :a | a matchesRegex: '.*\:' ]) do: [ :aWord | completeMethodName := completeMethodName , aWord ] ].
	^ completeMethodName
]
