generation
createClass
	FFIExternalEnumeration subclass: (self targetClassName ifNil: [ self error: 'Please specify the name of the class to generate.' ])
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		package: (self packageName ifNil: [ self error: 'Please specify the name of the package to generate the class in.' ])