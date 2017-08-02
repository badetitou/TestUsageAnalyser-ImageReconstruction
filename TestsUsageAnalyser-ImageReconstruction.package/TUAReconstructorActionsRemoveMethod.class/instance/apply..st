testing
apply: anAnnouncement
	((Smalltalk globals classNamed: (anAnnouncement at: #affectedObject))
		>> (self methodName: (anAnnouncement at: 'snapshot')) asSymbol )removeFromSystem