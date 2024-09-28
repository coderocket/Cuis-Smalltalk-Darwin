'From Cuis7.1 [latest update: #6676] on 28 September 2024 at 3:53:31 pm'!
'Description '!
!provides: 'Darwin' 1 126!
SystemOrganization addCategory: #Darwin!


!classDefinition: #GenieCodeGenerator category: #Darwin!
Object subclass: #GenieCodeGenerator
	instanceVariableNames: 'codePath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieCodeGenerator class' category: #Darwin!
GenieCodeGenerator class
	instanceVariableNames: ''!

!classDefinition: #GenieCompiler category: #Darwin!
Object subclass: #GenieCompiler
	instanceVariableNames: 'defaults validFunctions defaultTypes'
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieCompiler class' category: #Darwin!
GenieCompiler class
	instanceVariableNames: ''!

!classDefinition: #GridModel category: #Darwin!
Object subclass: #GridModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GridModel class' category: #Darwin!
GridModel class
	instanceVariableNames: ''!

!classDefinition: #GenieUndefinedSymbolException category: #Darwin!
Exception subclass: #GenieUndefinedSymbolException
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieUndefinedSymbolException class' category: #Darwin!
GenieUndefinedSymbolException class
	instanceVariableNames: ''!

!classDefinition: #GridMorph category: #Darwin!
PluggableMorph subclass: #GridMorph
	instanceVariableNames: 'margin nRows nCols gridH gridW origin rowHeaders colHeaders'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GridMorph class' category: #Darwin!
GridMorph class
	instanceVariableNames: ''!


!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/26/2024 19:48:30'!
generateCode: anASTNode

	self generateConstants: (#params @ anASTNode) , (#schema @ anASTNode).
	self generateFunctions: #functions @ anASTNode.
	self generateTables: #tables @ anASTNode.
	self generateMutate: #mutate @ anASTNode.
	self generateFitness: #fitness @ anASTNode.
! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/25/2024 09:53:36'!
generateConstants: aString

	codePath asDirectoryEntry // 'generated_constants.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/25/2024 09:53:44'!
generateFitness: aString

	codePath asDirectoryEntry // 'generated_fitness.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/26/2024 19:48:14'!
generateFunctions: aString

	codePath asDirectoryEntry // 'generated_functions.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/25/2024 09:53:53'!
generateMutate: aString

	codePath asDirectoryEntry // 'generated_mutate.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 9/25/2024 09:53:59'!
generateTables: aString

	codePath asDirectoryEntry // 'generated_tables.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:54:26'!
codePath: aString
	codePath := aString! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 14:06:30'!
getSolutionKeys: anASTNode

	^(#attrs @ anASTNode).
	
	! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:54:13'!
initialize

	codePath := './'.


! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 9/24/2024 22:23:03'!
compileName: aString

	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 9/24/2024 22:23:55'!
compileSchema: anOrderedCollection

	| aStream i |
	
	aStream := WriteStream on:''.
	
	i := 0.
	
	anOrderedCollection do:[:each | aStream nextPutAll: 'const int ' ; nextPutAll: each ; nextPutAll: ' = ' ; nextPutAll: ('{1};' format: { i} ) ; nextPut: Character lf. i := i + 1. ].
	
	aStream nextPutAll: ('const int GENIE_GENE_SIZE = {1};' format: {i}) ; nextPut:Character lf.
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 9/24/2024 22:24:02'!
compileSchemaFunctionName: aString inTables: aSet

	aSet includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText: 'Undefined function: ', aString ; signal ].

	^'genie_', aString ! !

!GenieCompiler methodsFor: 'compiling parameters' stamp: 'DF 9/28/2024 15:53:12'!
compileParameters: names values: values types: types

	| aStream params |

	names includes: 'GENIE_GENES' :: ifFalse:[self error: 'genes is not defined'].

	params := defaults copy.
	
	1 to: names size do:[:i | params at: (names at:i) put: { (types at:i) . (values at:i)  } ].		
	
	aStream := WriteStream on:''.
	
	params keysAndValuesDo: [:key :value | aStream nextPutAll: 'const ' ; nextPutAll: value first ; nextPutAll: key ; nextPutAll: ' = ' ; nextPutAll: value second ; nextPutAll:';' ; nextPut: Character lf.  ].
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:23:13'!
compileRuleExpr: aString kind: anInteger

	^'b->fitness {1}= sum(b->gene, b->gene+CHROMOSOME_SIZE, [](const gene_t* each) \{ return {2}; \});' format:{ (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aString }.
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:23:19'!
compileRuleGroupByKeys: anOrderedCollection expr: aString kind: anInteger

	| aStream  |
	
	aStream := WriteStream on: ''. 
	
	anOrderedCollection do:[:each | aStream nextPutAll: each asUppercase ] separatedBy:[ aStream nextPutAll: ', ' ].
	
	^ '\{ int keys[] = \{{1}\}; 

b->fitness {4}= group_by(b, keys,{2},[](gene_t** b, gene_t** e) 
	\{ return {3}; \}); \}' format:{ aStream contents  . anOrderedCollection size . aString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 18:09:18'!
compileRuleInnerCall: aString args: anOrderedCollection

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: each ] separatedBy:[ aWriteStream nextPutAll: ', '].
	
	^'genie_{1}({2})' format: { aString . aWriteStream contents }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:23:27'!
compileRuleName: aString isMemberIn: aSet

	aSet includes: aString :: ifFalse:[
		
		GenieUndefinedSymbolException new messageText: 'Undefined attribute: ', aString ; signal ].

	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 17:39:36'!
compileRulePrimitiveCallName: aString expr: anotherString

	validFunctions includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined function ', aString asString ; signal].

	^ 'genie_{1}(b,e,[](const gene_t* each) \{ return {2}; \})' format:{aString . anotherString } 
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 22:38:09'!
compileRuleVariable: aString attrs: attrsSet locals: localsSet

	localsSet includes: aString :: ifTrue:[^ aString ].
	
	attrsSet includes: aString :: ifTrue:[^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }].
	
	GenieUndefinedSymbolException new messageText:'Undefined variable ', aString ; signal.
	
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 22:31:43'!
compileRuleVariable: aString in: aSet

	aSet includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined attribute ', aString ; signal].
	
	^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 23:34:31'!
compileTableExpr: tableName index: indexName key: firstKey key: secondKey expr: exprString kind: anInteger

^ 'b->fitness {6}= sum(b->gene, b->gene+CHROMOSOME_SIZE, [](const gene_t* each) \{ 
	return genie_table_iterate(genie_{1}, (*each)[GENIE_{2}], (*each)[GENIE_{3}], [each](const interval_t& {4}) \{ return {5} \; \}); \});' format: { tableName value asString . firstKey value asString asUppercase. secondKey value asString asUppercase . indexName . exprString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 21:55:12'!
compileTableExpr: aString keys: anOrderedCollection expr: exprString

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: ('(*each)[{1}]'format: {each}) ] separatedBy: [aWriteStream nextPutAll: ', '].

^ 

'b->fitness += sum(b->gene, b->gene+CHROMOSOME_SIZE, [](const gene_t* each) \{ 
	genie_table_iterate({1}, {2}, [](const interval_t& interval) \{ return {3} \; \});' format: { aString . aWriteStream contents . exprString }! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:24:06'!
compileTable: anOrderedCollection name: aString

	| aStream |
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: 'int genie_' ; nextPutAll: aString ; nextPutAll: '(int arg) {'; nextPut: Character lf.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPut: Character lf].
	
	aStream nextPut: Character lf.
	
	aStream nextPutAll: '{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_' ; nextPutAll: aString ; nextPutAll:'" ; throw invalid_argument(err_msg.str()); }'; nextPut: Character lf; nextPutAll:'}'; nextPut: Character lf.
	
	^aStream contents ! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/26/2024 19:25:06'!
compileTriple: arg1 and: arg2 range: aString

	^' \{ \{ {1} , {2} \} , {3} \}' format:{ arg1 . arg2 . aString }
! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/26/2024 19:33:54'!
compileTripleTable: anOrderedCollection name: aString

	| aStream |
	
	aStream := WriteStream on:''.

	aStream nextPutAll: ('std::multimap< std::array<int, 2>, interval_t> genie_{1} \{
' format: { aString }).
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPutAll: ',
'].
	
	aStream nextPutAll: '
};
'.
		
	^aStream contents ! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:24:11'!
compileTuple: anOrderedCollection range: aString

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return ({2}).at_random(); \}' format:{ each . aString }) ] separatedBy:[ aStream nextPut: Character lf].

	^aStream contents! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:27:37'!
compileTuple: anOrderedCollection seq: anotherCollection

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anotherCollection size = 1 
		ifTrue:[			
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return {2}; \}' format:{ each .  anotherCollection first }) ] separatedBy:[ aStream nextPut: Character lf] ] 
		ifFalse:[
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ vector<int> v(\{{2}\}); return v[random() % v.size()]; \}' format:{ each .  anotherCollection fold:[:acc :x | acc , ' , ' , x ] }) ] separatedBy:[ aStream nextPut: Character lf] ].

	^aStream contents! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:27:46'!
compileTupleRange: aString seq: anOrderedCollection

	^anOrderedCollection size = 1 
		ifTrue:[	'if ({1}.includes({2})) \{ return ({2}; \}' format:{ aString . anOrderedCollection first }]
		ifFalse:['if ({1}.includes({2})) \{ vector<int> v(\{{2}\}); return v[random() % v.size()]; \}' format:{ aString .  anOrderedCollection fold:[:acc :x | acc , ' , ' , x ] } ]! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:27:51'!
compileTupleRangeBegin: aString end: anotherString seq: anOrderedCollection

	^anOrderedCollection size = 1 
		ifTrue:[	'if ({1}<= arg && arg <= {2}) \{ return {3}; \}' format:{ aString . anotherString. anOrderedCollection first }]
		ifFalse:['if ({1}<= arg && arg <= {2}) \{ vector<int> v(\{{3}\}); return v[random() % v.size()]; \}' format:{ aString . anotherString . anOrderedCollection fold:[:acc :x | acc , ' , ' , x ] } ]! !

!GenieCompiler methodsFor: 'initialization' stamp: 'DF 9/28/2024 15:47:38'!
initialize

	defaults := { 
		'GENIE_EPOCHS' -> 							{ 'int' . '15' } . 
		'GENIE_GENERATIONS' -> 							{ 'int' . '100'} . 
		'GENIE_THREADS' -> 							{ 'int' . '1'} . 
		'GENIE_MUTATIONP' -> 							{ 'double' . '1e-3' }  . 
		'GENIE_INVERSIONP' -> 							{ 'double' . '1e-2' } . 
		'GENIE_POPULATION' -> 							{ 'int' . '1000'  } } asDictionary.
	
	validFunctions := { 'sum' . 'count' . 'overlap' . 'maxgap' . 'mingap' . 'overlap_with' }.

! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 10:13:02'!
instance

	Instance ifNil:[Instance := self new].
	
	^Instance! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:08:56'!
at: row at: column

	^ row @ column :: asString! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:28:33'!
columnsHeader

	^(1 to: self nCols) collect:[:i | '{1}' format:{i} ]
	
	! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:56'!
nCols
	^3! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:52'!
nRows
	^4
	! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 13:06:20'!
rowsHeader

	^(1 to: self nRows) collect:[:i | '{1}' format:{i-1} ]
	
	! !

!GridModel class methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 12:54:40'!
rows: nrows cols: ncols data: aDictionary

	! !

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 9/24/2024 20:10:58'!
defaultAction

	UnhandledError signalForException: self! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:36:40'!
columnHeaders: aBoolean
	colHeaders := aBoolean! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:27:57'!
drawGridOn: aCanvas
	
	0 to: nRows do:[:row | | start finish |
		
		start := origin + (0 @ (row * (gridH / nRows) ) ).
		finish := origin + (gridW @ (row * (gridH / nRows) ) ).
		
		aCanvas line: start to: finish width:1 color: Color lightBlue ].
	
	0 to: nCols do:[:col | | start finish |
		
		start := origin + ((col * (gridW / nCols)) @ 0).
		finish := origin + ((col * (gridW / nCols)) @ gridH).
		
		aCanvas line: start  to: finish width:1 color: Color lightBlue ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 13:01:06'!
drawModelColumnHeadersOn: aCanvas

	| colh dw delta font |
	
	font := FontFamily defaultFamilyAndPointSize.
	
	colHeaders ifFalse:[^self].

	dw := gridW / nCols.
	
	delta := rowHeaders ifTrue: [dw@0] ifFalse:[0@0].
	
	colh := model columnsHeader.
	
	0 to: colh size - 1 do:[:col| | p str strlen |
		
		p := origin + delta + ((col*dw) @ 0 ).
		
		str := (colh at: col + 1).
		
		strlen := font widthOfString: str.
		
		aCanvas drawString: str at: p + (((dw - strlen) / 2) @ 0) font: font color: Color black  ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 15:17:39'!
drawModelDataOn: aCanvas

	| aFont dataOrigin dw dh |
	
	aFont := FontFamily defaultFamilyAndPointSize.
	
	dw := gridW / nCols.
	dh := gridH / nRows.
	
	dataOrigin := origin.
	
	colHeaders ifTrue:[dataOrigin := dataOrigin + (0@dh)].
	rowHeaders ifTrue:[dataOrigin := dataOrigin + (dw@0)].
	
	0 to: nRows - 1 do:[:row | 

		0 to: nCols - 1 do:[:col | | p t  | 
		
			p := dataOrigin + (((col * (dw)) @ (row * (dh) ) )).
		
			t := model at: row at: col + 1.
		
		aCanvas drawString: t at: p font: aFont color: Color black  ] ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:35:20'!
drawModelHeadersOn: aCanvas

	self drawModelColumnHeadersOn: aCanvas ; drawModelRowHeadersOn: aCanvas.			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:32:47'!
drawModelOn: aCanvas

	self drawModelHeadersOn: aCanvas ; drawModelDataOn: aCanvas	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:55:56'!
drawModelRowHeadersOn: aCanvas

	| rowh dh delta |

	rowHeaders ifFalse:[^self].
	
	dh := gridH/nRows.

	delta := colHeaders ifTrue:[0@dh] ifFalse:[0@0].
	
	delta := delta - (0 @ (FontFamily defaultFamilyAndPointSize lineSpacing / 2)).
	
	rowh := model rowsHeader.
	
	0 to: rowh size - 1 do:[:row | | p |
		
		p := origin + delta + (0 @ (row * dh) ).
		
		aCanvas drawString: (rowh at: row + 1) at: p font: FontFamily defaultFamilyAndPointSize color: Color black  ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 13:02:56'!
drawOn: aCanvas

	nRows := model ifNil:[1] ifNotNil:[model nRows].
	colHeaders ifTrue:[nRows := nRows + 1].
	
	nCols := model ifNil:[1] ifNotNil:[model nCols].
	rowHeaders ifTrue:[nCols := nCols + 1].
		
	gridH := self localBounds insetBy:margin :: height.
	gridW := self localBounds insetBy:margin :: width.

	origin := (margin / 2) @ ( (margin /  2) ).
	
	self drawGridOn: aCanvas.
	
	model ifNotNil:[
		self drawModelOn: aCanvas
	].! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:36:54'!
initialize
	
	super initialize .
	
	margin := 4.
	
	rowHeaders := true.
	
	colHeaders := true.
! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:03:02'!
margin: aNumber
	margin := aNumber ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:36:32'!
rowHeaders: aBoolean
	rowHeaders := aBoolean! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 15:36:32'!
update: aSymbol

	self redrawNeeded ! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/25/2024 13:58:54'!
toDictionaryUsing: keys

	| result |
	
	result := Dictionary new.
	
	1 to: self size do:[:index | result at: (keys at:index) put: (self at:index) ].
	
	^result! !

!Dictionary methodsFor: '*Darwin' stamp: 'DF 9/25/2024 17:00:04'!
project: keys

	| result |
	
	result := self class new.
	
	self keysAndValuesDo: [:key :value | keys includes: key :: ifTrue:[ result at:key put: value ] ].
	
	^result! !
