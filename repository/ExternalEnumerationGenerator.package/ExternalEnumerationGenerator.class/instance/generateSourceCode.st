generation
generateSourceCode
	| stream |
	stream := WriteStream on: String new.
	stream << 'enumDecl
	^{
'.
	((self enumerationString
			copyWithoutAll: { Character space . Character lf . Character cr . ${ . $} })
				splitOn: $,) collect: [ :str |
					| splitted |
					splitted := str splitOn: $=.
					stream
						<< Character tab;
						<< $#;
						<< splitted first;
						<< ' -> ';
						<< ((splitted second beginsWith: '0x')
								ifTrue: [ '16r',(splitted second copyFrom: 3 to: splitted second size) ]
								ifFalse: [ splitted second ]);
						<< $.;
						cr ].
	stream
		<< Character tab;
		<< '} asDictionary'.
	^ stream contents