Class {
	#name : #TUAReconstructorActionsAddMethod,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsAddMethod >> apply: anAnnouncement [
	(Smalltalk globals classNamed: (anAnnouncement at: #affectedObject)) compile: (anAnnouncement at: 'snapshot')
]

{ #category : #testing }
TUAReconstructorActionsAddMethod >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #methodAdded or: (aKindOfModification = #methodModified)
]
