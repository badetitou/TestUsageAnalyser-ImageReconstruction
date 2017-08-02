testing
isApplicableForAction: aKindOfModification
	^ aKindOfModification = #behaviorAdded or: ((aKindOfModification = #behaviorModified) or: (aKindOfModification = #classRecategorized)).