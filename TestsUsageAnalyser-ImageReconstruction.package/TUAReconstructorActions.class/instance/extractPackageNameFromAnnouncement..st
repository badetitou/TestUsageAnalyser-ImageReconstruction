testing
extractPackageNameFromAnnouncement: anAnnouncement
	^ ((((anAnnouncement at: 'package') substrings: '(') at: 2) substrings: ')') at: 1