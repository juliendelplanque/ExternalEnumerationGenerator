generation
generateEnumDecl
	| selector |
	selector := (Smalltalk at: self targetClassName) class
						compile: self generateSourceCode.
	(Smalltalk at: self targetClassName) class >> selector
		protocol: 'enum declaration'