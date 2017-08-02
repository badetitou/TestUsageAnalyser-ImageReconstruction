initialization
initialize
	moveActions := {(#methodAdded -> #addMethod:).
	(#behaviorModified -> #modifyBehavior:).
	(#classRecategorized -> #recategorizeClass:inNewCategory:).
	(#methodModified -> #modifyMethod:by:).
	(#methodRecategorized -> #recategorizedMethod:inCategory:).
	(#methodRemoved -> #removeMethod:)} asDictionary