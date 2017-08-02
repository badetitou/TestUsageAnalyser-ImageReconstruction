testing
isApplicableForAction: aKindOfModification
	^ aKindOfModification = #methodAdded or: (aKindOfModification = #methodModified)