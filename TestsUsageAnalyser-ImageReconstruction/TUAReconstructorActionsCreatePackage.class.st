Class {
	#name : #TUAReconstructorActionsCreatePackage,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsCreatePackage >> apply: anAnnouncement [
	RPackageOrganizer default createPackageNamed: (self extractPackageNameFromAnnouncement: anAnnouncement )
]

{ #category : #testing }
TUAReconstructorActionsCreatePackage >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #mcWorkingCopyCreated:
]
