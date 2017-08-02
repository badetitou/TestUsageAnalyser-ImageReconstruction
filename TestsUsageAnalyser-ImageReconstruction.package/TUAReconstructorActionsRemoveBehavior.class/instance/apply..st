testing
apply: anAnnouncement
	Smalltalk globals removeClassNamed: (anAnnouncement at: #affectedObject)
	