Class {
	#name : #TUAReconstructorActionsRenameClass,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsRenameClass >> apply: anAnnouncement [
	Smalltalk globals renameClassNamed: (anAnnouncement at: #affectedObject) as: (anAnnouncement at: 'snapshot')
]

{ #category : #testing }
TUAReconstructorActionsRenameClass >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #classRenamed
]
