testing
apply: anAnnouncement
	(Smalltalk globals classNamed: (anAnnouncement at: #affectedObject))
		comment: (anAnnouncement at: 'snapshot')