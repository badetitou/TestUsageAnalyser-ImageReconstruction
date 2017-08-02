testing
apply: anAnnouncement
	(Smalltalk globals classNamed: (anAnnouncement at: #affectedObject)) compile: (anAnnouncement at: 'snapshot')