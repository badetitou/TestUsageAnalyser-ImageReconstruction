Class {
	#name : #TUAReconstructorActionsRemoveBehavior,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsRemoveBehavior >> apply: anAnnouncement [
	Smalltalk globals removeClassNamed: (anAnnouncement at: #affectedObject)
	
]

{ #category : #testing }
TUAReconstructorActionsRemoveBehavior >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #behaviorRemoved
]
