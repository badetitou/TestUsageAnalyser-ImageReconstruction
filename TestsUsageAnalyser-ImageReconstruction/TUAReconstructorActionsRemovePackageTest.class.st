"
A TUAReconstructorActionsRemovePackageTest is a test class for testing the behavior of TUAReconstructorActionsRemovePackage
"
Class {
	#name : #TUAReconstructorActionsRemovePackageTest,
	#superclass : #TestCase,
	#category : 'TestsUsageAnalyser-ImageReconstruction-Tests'
}

{ #category : #'tests-testing' }
TUAReconstructorActionsRemovePackageTest >> testApply [
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
]
