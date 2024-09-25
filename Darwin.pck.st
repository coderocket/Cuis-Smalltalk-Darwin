'From Cuis7.1 [latest update: #6668] on 25 September 2024 at 10:15:38 am'!
'Description '!
!provides: 'Darwin' 1 101!
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
	instanceVariableNames: 'defaults validFunctions'
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

!classDefinition: #PluggableGridBrowserModel category: #Darwin!
GridModel subclass: #PluggableGridBrowserModel
	instanceVariableNames: 'selection dictionary indices topic'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'PluggableGridBrowserModel class' category: #Darwin!
PluggableGridBrowserModel class
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
	instanceVariableNames: 'margin nRows nCols gridH gridW origin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GridMorph class' category: #Darwin!
GridMorph class
	instanceVariableNames: ''!


!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:54:26'!
codePath: aString
	codePath := aString! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:53:28'!
generateCode: anASTNode

	self generateConstants: (#params @ anASTNode) , (#schema @ anASTNode).
	self generateTables: #functions @ anASTNode.
	self generateMutate: #mutate @ anASTNode.
	self generateFitness: #fitness @ anASTNode.
! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:53:36'!
generateConstants: aString

	codePath asDirectoryEntry // 'generated_constants.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:53:44'!
generateFitness: aString

	codePath asDirectoryEntry // 'generated_fitness.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:53:53'!
generateMutate: aString

	codePath asDirectoryEntry // 'generated_mutate.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 09:53:59'!
generateTables: aString

	codePath asDirectoryEntry // 'generated_tables.h' fileContents: aString.! !

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

!GenieCompiler methodsFor: 'compiling parameters' stamp: 'DF 9/24/2024 22:26:16'!
compileParameters: names values: values

	| aStream params |

	names includes: 'GENIE_GENES' :: ifFalse:[self error: 'genes is not defined'].

	params := defaults copy.
	
	1 to: names size do:[:i | params at: (names at:i) put: (values at:i) ].		
	
	aStream := WriteStream on:''.
	
	params keysAndValuesDo: [:key :value | aStream nextPutAll: 'const int ' ; nextPutAll: key ; nextPutAll: ' = ' ; nextPutAll: value ; nextPutAll:';' ; nextPut: Character lf.  ].
	
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

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:23:27'!
compileRuleName: aString isMemberIn: aSet

	aSet includes: aString :: ifFalse:[
		
		GenieUndefinedSymbolException new messageText: 'Undefined attribute: ', aString ; signal ].

	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:26:59'!
compileRulePrimitiveCallName: aString expr: anotherString

	validFunctions includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined function ', aString ; signal].

	^ 'genie_{1}(b,e,[](const gene_t* each) \{ return {2}; \})' format:{aString . anotherString } 
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/24/2024 22:23:49'!
compileRuleVariable: aString in: aSet

	aSet includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined attribute ', aString ; signal].
	
	^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 9/24/2024 22:24:06'!
compileTable: anOrderedCollection name: aString

	| aStream |
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: 'int genie_' ; nextPutAll: aString ; nextPutAll: '(int arg) {'; nextPut: Character lf.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPut: Character lf].
	
	aStream nextPut: Character lf.
	
	aStream nextPutAll: '{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_' ; nextPutAll: aString ; nextPutAll:'" ; throw invalid_argument(err_msg.str()); }'; nextPut: Character lf; nextPutAll:'}'; nextPut: Character lf.
	
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

!GenieCompiler methodsFor: 'initialization' stamp: 'DF 9/25/2024 09:55:09'!
initialize

	defaults := { 'GENIE_EPOCHS' -> '15' . 'GENIE_GENERATIONS' -> '100'. 'GENIE_THREADS' -> '1'. 'GENIE_MUTATIONP' -> '1e-3' . 'GENIE_INVERSIONP' -> '1e-2' . 'GENIE_POPULATION' -> '1000'  } asDictionary.
	
	validFunctions := { 'sum' . 'overlap' . 'maxgap' . 'mingap' }.

! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 10:13:02'!
instance

	Instance ifNil:[Instance := self new].
	
	^Instance! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:08:56'!
at: row at: column

	^ row @ column :: asString! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:56'!
nCols
	^3! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:52'!
nRows
	^4
	! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:32:07'!
title
	^'Title'! !

!GridModel class methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 12:54:40'!
rows: nrows cols: ncols data: aDictionary

	! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 16:49:10'!
at: row at: col

	| index |
	
	selection = 0 ifTrue:[^''].
	
	index := indices at: selection.
	
	^ (dictionary at: index) at: (row @ col) ifAbsent:[''] :: asString! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/24/2024 22:44:01'!
fromJson: aJson forKey: keyIndex

	| days hours template legend |
	
	legend := Dictionary new.
	
	legend at: 1 put: 'R' ; at: 4 put: 'M'; at: 5 put: 'L'.
	
	template := Dictionary new.
	
	days := (1 to:6) collect: [:i | 1@(i+1) -> i asString ] :: asDictionary.
	
	hours := (1 to:23) collect: [:i | (i+1)@1 -> i asString ] :: asDictionary.
	
	template addAll: days ; addAll: hours.
	
	dictionary := Dictionary new.

	aJson do:[:eachInstance | | tuple key |
		
		tuple := eachInstance at:2.
		
		key := tuple at: keyIndex.

		dictionary at:key put: template copy ]. "prepare a dictionary for each key"
	
	aJson do:[:eachInstance | | tuple day hour duration key ii aStream |
		
		tuple := eachInstance at:2.
		
		" always used "
				
		day := tuple at: 2.
		hour := tuple at: 3.
		duration := tuple at:6.
		
		" used as keys 
		
		room := tuple at: 1.
		module := tuple at: 4.
		lecturer := tuple at:5. "
		
		key := tuple at: keyIndex.
	
		ii := { 1 . 4 . 5 } asOrderedCollection remove: keyIndex ; yourself.
		
		aStream := WriteStream on:''.
		
		ii do:[:j | aStream nextPutAll: (legend at: j); nextPutAll: (tuple at: j) asString ] separatedBy:[ aStream nextPutAll:';'].
		
		(0 to: duration - 1) do:[:i | dictionary at: key :: at: (hour + i + 1@ day + 1) put: (aStream contents)  ] ].

	indices := dictionary keys sort.! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 18:12:00'!
initialize

	selection := 1.
	
	topic := 'No Topic'.! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 16:48:35'!
nCols
	^6! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 16:48:35'!
nRows
	^24! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 16:48:35'!
select: anIndex
	selection := anIndex.
	
	self changed: #select:! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 16:48:35'!
selection
	^selection ! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 18:11:34'!
topic: aString
	topic := aString! !

!PluggableGridBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 18:11:46'!
topics
	^indices collect:[:each | '{1} {2}' format:{topic . each}]! !

!PluggableGridBrowserModel class methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 18:13:22'!
morph: aJson key: keyIndex topic: aString

	| aCollegeSolution aListMorph |
	
	aCollegeSolution := self new.
	
	aCollegeSolution topic: aString; fromJson: aJson forKey: keyIndex.

	aListMorph := PluggableListMorph withModel: aCollegeSolution listGetter: #topics indexGetter: #selection indexSetter: #select:.

	aListMorph | 1.0p  <+> ((GridMorph new model: aCollegeSolution)  | 1.0 p - 1.0p ) :: morphExtent: 900@600  :: embeddedInMorphicWindowLabeled: ('{1} Browser' format:{aString}) :: openInWorld 

! !

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 9/24/2024 20:10:58'!
defaultAction

	UnhandledError signalForException: self! !

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

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:27:15'!
drawModelOn: aCanvas

	0 to: nRows - 1 do:[:row | 

		0 to: nCols - 1 do:[:col | | p t  | 
		
			p := origin + (((col * (gridW / nCols)) @ (row * (gridH / nRows) ) )).
		
			t := model at: row + 1 at: col + 1.
		
		aCanvas drawString: t at: p font: FontFamily defaultFamilyAndPointSize color: Color black  ] ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:33:30'!
drawOn: aCanvas

	| fontHeight title |
	
	nRows := model ifNil:[1] ifNotNil:[model nRows]. 
	nCols := model ifNil:[1] ifNotNil:[model nCols].
		
	gridH := self localBounds insetBy:margin :: height.
	gridW := self localBounds insetBy:margin :: width.
	
	fontHeight := FontFamily defaultFamilyAndPointSize lineSpacing.
	
	gridH := gridH - fontHeight.

	origin := margin / 2 @ (fontHeight + (margin /  2) ).

	title := model ifNil:['Title'] ifNotNil:[model title].
	
	aCanvas drawString: title at: (margin / 2) @ (margin / 2) font: FontFamily defaultFamilyAndPointSize color: Color black.
	
	self drawGridOn: aCanvas.
	
	model ifNotNil:[
		self drawModelOn: aCanvas
	].! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:32:59'!
initialize
	
	super initialize .
	
	margin := 4.
! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:03:02'!
margin: aNumber
	margin := aNumber ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 15:36:32'!
update: aSymbol

	self redrawNeeded ! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 18:14:08'!
maxgap: aBlock

	| intervals b e |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	intervals ifEmpty: [^0].
	
	intervals sort:[:x :y | x first <= y first ].
	
	b := 1.
	e := 1.	
		
	"invariant: b .. e -1 is the maximal gap upto interval i "
	
	1 to: intervals size - 1 do:[ :i | | j k |
		j := intervals at: i :: last.
		k := intervals at:i + 1 :: first.
		j < k ifTrue:[
			(k - j) > (e - b) ifTrue:[e := k . b := j ] ] ].
	
	^ e - b
				

	! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 18:20:38'!
mingap: aBlock

	| intervals b e |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	intervals ifEmpty: [^ SmallInteger maxVal].
	
	intervals sort:[:x :y | x first <= y first ].
	
	b := 0.
	e := SmallInteger maxVal.	
		
	"invariant: b .. e -1 is the minimal gap upto interval i "
	
	1 to: intervals size - 1 do:[ :i | | j k |
		j := intervals at: i :: last.
		k := intervals at:i + 1 :: first.
		j <= k ifTrue:[
			(k - j) < (e - b) ifTrue:[e := k . b := j ] ] ].
	
	^ e - b
				

	! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 15:23:50'!
overlap: aBlock

	| intervals result |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	result := OrderedCollection new.
	
	1 to: intervals size do:[:i |
		i+1 to: intervals size do:[:j |
			result add: ((intervals at: i) intersection: (intervals at:j)) size ] ].
	
	^result sum: [:each | each] ifEmpty:0! !
