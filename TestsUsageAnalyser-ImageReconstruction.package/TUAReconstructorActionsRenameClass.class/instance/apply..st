testing
apply: anAnnouncement
	Smalltalk globals renameClassNamed: (anAnnouncement at: #affectedObject) as: (anAnnouncement at: 'snapshot')