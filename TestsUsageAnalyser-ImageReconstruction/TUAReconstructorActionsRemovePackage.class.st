Class {
	#name : #TUAReconstructorActionsRemovePackage,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsRemovePackage >> apply: anAnnouncement [
	RPackageOrganizer default basicUnregisterPackageNamed: (self extractPackageNameFromAnnouncement: anAnnouncement)
]

{ #category : #testing }
TUAReconstructorActionsRemovePackage >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #mcWorkingCopyDeleted:
]
