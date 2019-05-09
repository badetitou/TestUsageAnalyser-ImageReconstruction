Class {
	#name : #TUAReconstructorActionsAddBehavior,
	#superclass : #TUAReconstructorActions,
	#category : 'TestsUsageAnalyser-ImageReconstruction'
}

{ #category : #testing }
TUAReconstructorActionsAddBehavior >> apply: anAnnouncement [
	Object subclass: (anAnnouncement at: #affectedObject)
	instanceVariableNames: ''
	classVariableNames: ''
	package: 'TestsUsageAnalyser-ImageReconstruction-ConstructZone'
	
]

{ #category : #testing }
TUAReconstructorActionsAddBehavior >> isApplicableForAction: aKindOfModification [
	^ aKindOfModification = #behaviorAdded or: ((aKindOfModification = #behaviorModified) or: (aKindOfModification = #classRecategorized)).
]
