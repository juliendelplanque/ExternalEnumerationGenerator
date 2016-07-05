accessing
targetClassName: aSymbol
	Smalltalk
		at: aSymbol
		ifPresent: [ self error: ('{1} class already exists in the system.' format: { aSymbol }) ].
	targetClassName := aSymbol