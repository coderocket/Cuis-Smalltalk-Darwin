'From Cuis7.1 [latest update: #6709] on 30 September 2024 at 3:55:48 pm'!
'Description '!
!provides: 'Darwin' 1 133!
SystemOrganization addCategory: #Darwin!


!classDefinition: #GenieBrowserModel category: #Darwin!
Object subclass: #GenieBrowserModel
	instanceVariableNames: 'consoleOutput'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieBrowserModel class' category: #Darwin!
GenieBrowserModel class
	instanceVariableNames: ''!

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

!classDefinition: #GenieBrowser category: #Darwin!
SystemWindow subclass: #GenieBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieBrowser class' category: #Darwin!
GenieBrowser class
	instanceVariableNames: ''!


!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:49:13'!
build

consoleOutput := 'davidf@mjolnir Cuis-Smalltalk-Darwin % make
g++-14 -c -O2 fitness.cc -o fitness.o
g++-14 -c -O2 genie.cc -o genie.o
g++-14 -c -O2 mutate.cc -o mutate.o
g++-14 -c -O2 breed.cc -o breed.o
g++-14 -c -O2 exprand.cc -o exprand.o
g++-14 -c -O2 crossover.cc -o crossover.o
g++-14 -c -O2 report.cc -o report.o
g++-14 -c -O2 invert.cc -o invert.o
g++-14 -O2 fitness.o genie.o mutate.o breed.o exprand.o crossover.o report.o invert.o -o genie'.

self changed: #console! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:55'!
console

^consoleOutput ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:44'!
initialize

	consoleOutput := ''! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:55:26'!
program
	^'Parameters

epochs: 			10 
generations: 20 
threads: 			1

population: 			3800
genes: 			30

mutationp :			8.0e-4
inversionp :			1.0e-2

Gene 

room : 			1..3
day : 			1 .. 5
hour : 			hour(day)
lecturer : 			lecturer (module)
frame : 			frame (locus)
module : 			module (locus)
duration :     duration (module)

Functions

hour

# day           hour

1                  8 .. 17
2                  8 .. 17
3                  8 .. 17
4                  8 .. 17
5                  8 .. 17
6                  8 .. 13

campus

# room         campus 
 
1..50 			1
51..100 			2

frame

# locus         frame

1 .. 5			1 			
6 .. 10			2
11 .. 15			3
15 .. 20			4
21 .. 25			5
26 .. 30			6

module

# locus         module

1 			1
2 			2
3 			3
4 			4
5 			5
6 			1
7 			2
8 			3
9 			4
10 			5
11 			1
12 			2
13 			3
14 			4
15 			5
16 			1
17 			2
18 			3
19 			4
20 			5
21 			1
22 			2
23 			3
24 			4
25 			5
26 			1
27 			2
28 			3
29 			4
30 			5

duration

# module    duration

1 			2
2			2
3			3
4			3
5			5

lecturer 

# module     suitable lecturers

1  			1 .. 5
2 			1 .. 5
3			1 .. 5
4			1 .. 5
5			1 .. 5

table timetable

# lecturer    day        cordoned hours

1			1		8 .. 17
	
Rules

bonus 10 ;

# a lecturer must not teach on days and hours that they have cordoned

# penalty for interval in timetable(lecturer, day) intersect(interval, hour .. hour + duration) ;

# a lecturer must not teach more than 5 hours on the same day
 
penalty group by (day, lecturer) sum(duration) - 5 max 0 ;

# gap between lectures on the same day for the same lecturer should not exceed 3 hours

penalty group by (day, lecturer) maxgap(hour .. hour + duration) - 3 max 0 ;

# lectures on the same day for the same lecturer should be separated by at least 1 hour 

penalty group by (day, lecturer) 1 - mingap(hour .. hour + duration) max 0 ;

# gap between lectures on the same day for the same frame should not exceed 3 hours

penalty group by (day, frame) maxgap(hour .. hour + duration) - 3 max 0 ;

# each frame must have one free day
 
penalty group by (frame) count(day) - 4 max 0 ;

# lectures cannot be assigned to the same room on the same day and hours

penalty group by (day, room) overlap(hour .. hour + duration) ;

# lectures cannot be assigned to the same lecturer on the same day and hours

penalty group by (day, lecturer) overlap(hour .. hour + duration) ;

# lectures must not be held on wednesday at 1pm
 
penalty (day = 4) * (hour <= 13) *(13 <= hour + duration);

# lectures must end by 17

penalty hour + duration - 17 max 0 ;

# lectures cannot be assigned to the same group on the same day and hours

penalty group by (day, frame) overlap(hour .. hour + duration) ;

# lectures on the same day for the same frame should be separated by at least 1 hour 

penalty group by (day, frame) 1 - mingap(hour .. hour + duration) max 0 ;'! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:18'!
run! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:19'!
stop! !

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

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2024 18:41:34'!
drawModelDataOn: aCanvas

	| aFont dataOrigin dw dh canvas form nc nr |
	
	aFont := FontFamily defaultFamilyAndPointSize.
	
	dw := gridW / nCols.
	dh := gridH / nRows.

	form := Form extent: (dw - 4) @ (dh - 2) depth: Display depth.

	canvas := MorphicCanvas 		onForm: form.
	
	dataOrigin := origin.
	
	nc := nCols.
	
	colHeaders ifTrue:[dataOrigin := dataOrigin + (0@dh). nc := nc - 1. ].
	
	nr := nRows.
	
	rowHeaders ifTrue:[dataOrigin := dataOrigin + (dw@0). nr := nr - 1 ].
	
	0 to: nr - 1 do:[:row | 

		0 to: nc - 1 do:[:col | | p t  | 
		
			p := dataOrigin + (((col * (dw)) @ (row * (dh) ) )).
		
			t := model at: row at: col + 1.
		
			form fillWhite.
			
			canvas drawString: t at: 2@2 font: aFont color: Color black.
			
			aCanvas image: form at: (p + (1@1))  ] ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:35:20'!
drawModelHeadersOn: aCanvas

	self drawModelColumnHeadersOn: aCanvas ; drawModelRowHeadersOn: aCanvas.			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 12:32:47'!
drawModelOn: aCanvas

	self drawModelHeadersOn: aCanvas ; drawModelDataOn: aCanvas	
			 ! !

<<<<<<< HEAD
!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2024 21:12:13'!
drawModelRowHeadersOn: aCanvas

	| rowh dh delta font |

	font := FontFamily defaultFamilyAndPointSize.
	
	rowHeaders ifFalse:[^self].
	
	dh := gridH/nRows.

	delta := colHeaders ifTrue:[0@dh] ifFalse:[0@0].
	
	delta := delta - (0 @ (font ascent / 2)).
	
	rowh := model rowsHeader.
	
	0 to: rowh size - 1 do:[:row | | p |
		
		p := origin + delta + (0 @ (row * dh) ).
	
		"aCanvas fillRectangle: (p extent: 2 @ font ascent) color: Color black."
>>>>>>> 859b8bf4ee5de39d96848b5cb9b1db5352b6a9a9
		aCanvas drawString: (rowh at: row + 1) at: p font: font color: Color black  ].
	
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

!GenieBrowser methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:54:52'!
buildMorphicWindow

	| program console buildButton  |
	
	program := TextModelMorph

			textProvider: model
			textGetter: #program
			textSetter: nil
			selectionGetter: nil :: - (1/2)p | 1p.
	
	buildButton := PluggableButtonMorph model: model stateGetter: nil action: #build.
	buildButton label: 'Build'.

	console :=  TextModelMorph 
			textProvider: model
			textGetter: #console
			textSetter: nil
			selectionGetter: nil :: - 1p | 1p.
	
	
	self layoutMorph addMorph:
({ 'college ' . 'bits' . 'bumpy' } morph | 1p - (1/6) p) <+> program <+> ((((buildButton + 'Run' button + 'Stop' button) | 32f) / console) - (1/3)p) 
! !
