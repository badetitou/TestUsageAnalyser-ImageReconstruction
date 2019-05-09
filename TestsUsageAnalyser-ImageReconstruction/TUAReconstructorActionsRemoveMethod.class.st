Class {
	#name : #TUAReconstructorActionsRemoveMethod,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsRemoveMethod >> apply: anAnnouncement [
	((Smalltalk globals classNamed: (anAnnouncement at: #affectedObject))
		>> (self methodName: (anAnnouncement at: 'snapshot')) asSymbol )removeFromSystem
]

{ #category : #testing }
TUAReconstructorActionsRemoveMethod >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #methodRemoved
]
