accessing
classListIndex: anInteger
	selectedClass := ((self classesInTheSelectedPackage
		sorted: [ :a :b | a name <= b name ])
		at: anInteger).
	self clearMessageAndProtoclSelection.
	self changed: #classListIndex