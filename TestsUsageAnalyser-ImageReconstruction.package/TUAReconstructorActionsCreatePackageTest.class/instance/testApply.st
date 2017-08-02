tests-testing
testApply
	| tuar packageName packageRealName |
	tuar := TUAReconstructor new.
	packageName := 'some stuff(Middle-earth)'.
	packageRealName := 'Middle-earth'.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #mcWorkingCopyCreated:).
			'package' -> packageName} asDictionary.
	self assert: (RPackageOrganizer default includesPackageNamed: packageRealName).
	RPackageOrganizer default basicUnregisterPackageNamed: packageRealName