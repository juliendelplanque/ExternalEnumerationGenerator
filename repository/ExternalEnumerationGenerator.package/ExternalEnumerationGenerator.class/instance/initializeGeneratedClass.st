generation
initializeGeneratedClass
	(Smalltalk at: self targetClassName)
		rebuildEnumAccessors;
		initialize