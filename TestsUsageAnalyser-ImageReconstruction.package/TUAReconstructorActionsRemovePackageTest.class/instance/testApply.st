tests-testing
testApply
	| tuar packageName packageRealName |
	tuar := TUAReconstructor new.
	packageName := 'some stuff(Middle-earth)'.
	packageRealName := 'Middle-earth'.
	RPackageOrganizer default createPackageNamed: packageRealName.
	tuar
		parseChangeDictionnary:
			{('actionType' -> #mcWorkingCopyDeleted:).
			'package' -> packageName} asDictionary.
	self deny: (RPackageOrganizer default includesPackageNamed: packageRealName).