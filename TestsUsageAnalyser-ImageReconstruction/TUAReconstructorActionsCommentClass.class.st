Class {
	#name : #TUAReconstructorActionsCommentClass,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsCommentClass >> apply: anAnnouncement [
	(Smalltalk globals classNamed: (anAnnouncement at: #affectedObject))
		comment: (anAnnouncement at: 'snapshot')
]

{ #category : #testing }
TUAReconstructorActionsCommentClass >> isApplicableForAction: aKindOfModification [
	^ #classCommented = aKindOfModification 	
]
