'From Cuis7.1 [latest update: #6676] on 6 October 2024 at 10:58:22 pm'!
'Description '!
!provides: 'Darwin' 1 181!
!requires: 'LayoutAlgebra' 1 10 nil!
!requires: 'Regex-Core' 1 9 nil!
!requires: 'Xray' 1 26 nil!
!requires: 'OSProcess' 1 36 nil!
SystemOrganization addCategory: #Darwin!


!classDefinition: #GenieBrowserModel category: #Darwin!
Object subclass: #GenieBrowserModel
	instanceVariableNames: 'consoleOutput programText parser ast codeGenerator genieProcess programIndex programName selection'
	classVariableNames: 'Programs'
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
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieUndefinedSymbolException class' category: #Darwin!
GenieUndefinedSymbolException class
	instanceVariableNames: 'start'!

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


!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 22:17:50'!
addProgram

	StringRequestMorph 
		request: 'New program name'
		initialAnswer: ''
		verifying: [:aString |
			aString notEmpty and:[ (Programs includesKey: aString) not ] ] 
		do: [ :aString | 
				Programs at: aString put:'Empty for now'.
				self changed: #programs ; changed: #program ]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/3/2024 23:47:11'!
build
	self make! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 21:32:55'!
compile

	[ | outcome |
		
		selection := 0 to: 0.
		
		consoleOutput := 'Compilation failed.'.
		
		programText removeAttributes: { TextColor red . TextBackgroundColor yellow } from: 1 to: programText size.
		outcome := parser parse: programText.
		outcome second 
			ifNotEmpty:[programText addAttribute: TextColor red from: outcome second first start + 1 to: programText size ].
		outcome second 
			ifEmpty:[
				ast := outcome first second.
				self generate.
				consoleOutput := 'Compilation successful.'. 	]
	]
	on: XraySyntaxError do:[:anXraySyntaxError | 
		
		programText addAttribute: TextColor red from: anXraySyntaxError position + 1 to: programText size ]
	
	on: GenieUndefinedSymbolException do:[:aGenieUndefinedSymbolException |
		
		selection := aGenieUndefinedSymbolException start to: aGenieUndefinedSymbolException end. 
		
		programText addAttribute: TextColor red from: aGenieUndefinedSymbolException start to: aGenieUndefinedSymbolException end.
		consoleOutput := aGenieUndefinedSymbolException messageText 		].
	
	self changed: #program ; changed:#console. 		
! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:55'!
console

^consoleOutput ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:29:16'!
fileOutProgram

	| aString aFileEntry |
		
	programIndex ifNil:[^self].
	
	programIndex = 0 ifTrue:[^self].

	aString := programName, '.genie'.
	
	aFileEntry := codeGenerator codePath // aString.

	aFileEntry fileContents: programText asString.
! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/3/2024 23:35:12'!
generate

	self assert: ast notNil.
	
	codeGenerator generateCode: ast! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 21:28:46'!
initialize

	consoleOutput := ''.
	
	programText := ''.
	
	parser := Language parserFor: 'Genie'.

	ast := nil.	
	
	codeGenerator := GenieCodeGenerator new.

	programIndex := 0.

	selection := 0 to:0.! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/3/2024 23:54:19'!
make

	| workingDirectory fifoName commandName aProcess aReadStream model result |
	
	workingDirectory := codeGenerator codePath.
	
	fifoName := 'make.fifo'.
	
	commandName := 'cd {1}  && /usr/bin/make > {2} 2>&1' format: { workingDirectory . fifoName }.
	
	consoleOutput := ''. self changed:#console. 

	model := self.
			
	aProcess := OSProcess command: commandName.

	[aProcess isNotYetRunning ] whileTrue:[ Processor yield ].
	
	aReadStream := UniFileStream new.

	result := aReadStream open: ('{1}/{2}' format: { workingDirectory . fifoName }) forWrite: false.
	
	result ifNil:[
		consoleOutput := 'Could not run {1}.' format:{ commandName }. model changed: #console. ^self ].

	aReadStream disableReadBuffering .

	[ | bytes |
		
	Delay forSeconds: 1 :: wait.
	
	bytes := aReadStream nextBytes:20.

	[bytes size > 0] whileTrue:[
	
		consoleOutput := consoleOutput , bytes asString. model changed: #console.
		
		Processor yield.
		
		bytes := aReadStream nextBytes:20.
	].

	aReadStream close. ] fork
	! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 19:48:35'!
program
	^ programText! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 22:36:44'!
program: aText

	programText := 'Parameters|Schema|Functions|Keys|Rules' asRegex copy:aText  translatingMatchesUsing:[:each | each color: Color blue  ].
		
	programText := '#:^isLineSeparator:*:isLineSeparator:' asRegex copy:programText translatingMatchesUsing:[:each | each color: Color green darker darker darker ].
	
	Programs at: programName put: programText.
	
	^true! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:12:22'!
programs
	^ Programs keys sort ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:45:03'!
renameProgram

	programIndex ifNil:[^self].
	
	programIndex = 0 ifTrue:[^self].
	
	StringRequestMorph 
		request: 'Rename program'
		initialAnswer: programName
		verifying: [:aString |
			aString notEmpty and:[ (Programs includesKey: aString) not ] ] 
		do: [ :aString | 
				Programs removeKey: programName.
				Programs at: aString put: programText.
				programName := aString.
				
				programIndex := Programs keys sort findBinaryIndex: [:arg | arg <programName ifTrue:[1] ifFalse:[ arg > programName ifTrue:[-1] ifFalse:[0] ]].
				
				self changed: #programs ]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 12:27:01'!
reset

	| workingDirectory |
	
	self assert: (genieProcess isNil or:[genieProcess isRunning not]).
	
	workingDirectory := codeGenerator codePath.

	workingDirectory asDirectoryEntry // 'population.gimage' :: delete.
	
	consoleOutput := 'deleted population.gimage file'. self changed: #console.
	! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 12:10:14'!
run

	| workingDirectory fifoName commandName model aReadStream result |
	workingDirectory := codeGenerator codePath.
	
	fifoName := 'run.fifo'.
	
	commandName := 'cd {1}  && exec ./genie -file 2> {2}' format: { workingDirectory . fifoName }.
	
	consoleOutput := ''. self changed:#console. 

	model := self.
			
	genieProcess := OSProcess command: commandName.

	[genieProcess isNotYetRunning ] whileTrue:[ Processor yield ].
	
	aReadStream := UniFileStream new.

	result := aReadStream open: ('{1}/{2}' format: { workingDirectory . fifoName }) forWrite: false.
	
	result ifNil:[
		consoleOutput := 'Could not run {1}.' format:{ commandName }. model changed: #console. ^self ].

	aReadStream disableReadBuffering .
	
	OSProcess accessor setNonBlocking: aReadStream fileID.

	[ | bytes |
		
	Delay forSeconds: 1 :: wait.
	
	bytes := aReadStream nextBytes:20.

	[bytes size > 0] whileTrue:[
	
		consoleOutput := consoleOutput , bytes asString. model changed: #console.
		
		Processor yield.
		
		bytes := aReadStream nextBytes:20.
	].

	aReadStream close. ] fork
! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:20:56'!
selectProgram: anInteger

	programIndex := anInteger.
	
	anInteger = 0 ifTrue:[^self].
	
	programName := Programs keys sort at: programIndex.
	
	programText := Programs at: programName.
	
	self changed: #program! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 21:28:31'!
selectProgramText
	^ selection! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:15:56'!
selectedProgram

	^programIndex! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:21:40'!
setWorkingDirectory

	StringRequestMorph 
		request: 'Working directory'
		initialAnswer: codeGenerator codePath asString
		verifying: [:aString |
			aString notEmpty and:[ aString asDirectoryEntry isDirectory] ] 
		do: [ :aString | 
			codeGenerator codePath: aString asDirectoryEntry ]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 12:14:29'!
stop

	| model |
	
	genieProcess ifNil:[^self].
	
	genieProcess  terminate.
	
	consoleOutput := 'Stoping ... '. self changed: #console.
	
	model := self.
	
	[
		[genieProcess isRunning ] whileTrue:[ Processor yield ]. 
		
		consoleOutput := consoleOutput , ' stopped.'. 
		
		model changed: #console ] fork.! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 20:14:57'!
wd: aString
	
	codeGenerator codePath: aString asDirectoryEntry.! !

!GenieBrowserModel class methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:04:10'!
initialize

	"self initialize"
	
	Programs := Dictionary new.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/2/2024 16:56:23'!
generateCode: anASTNode

	self generateConstants: (#params @ anASTNode) , (#schema @ anASTNode), (#keyconsts @ anASTNode).
	self generateFunctions: #functions @ anASTNode.
	self generateFunctionDecls: #fdecl @ anASTNode.
	self generateTables: #tables @ anASTNode.
	self generateMutate: #mutate @ anASTNode.
	self generateFitness: #fitness @ anASTNode.
	self generateKeys: #keycode @ anASTNode.
! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:18:40'!
generateConstants: aString

	codePath // 'generated_constants.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:18:46'!
generateFitness: aString

	codePath  // 'generated_fitness.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:18:50'!
generateFunctionDecls: aString

	codePath  // 'generated_functions.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:18:54'!
generateFunctions: aString

	codePath  // 'generated_functions.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:18:59'!
generateKeys: aString

	codePath  // 'generated_keys.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:19:04'!
generateMutate: aString

	codePath  // 'generated_attribute_layout.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/6/2024 18:19:09'!
generateTables: aString

	codePath  // 'generated_tables.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 10/3/2024 23:39:07'!
codePath
	^codePath! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:18:29'!
codePath: aDirectoryEntry
	codePath := aDirectoryEntry! !

!GenieCodeGenerator methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:19:19'!
initialize

	codePath := DirectoryEntry currentDirectory 


! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/2/2024 12:32:39'!
compileAttributeLayout: anOrderedCollection

	| aWriteStream |
	
	aWriteStream := WriteStream on:''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: each] separatedBy:[ aWriteStream nextPutAll: '
' ].

	^ aWriteStream contents! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/2/2024 16:28:26'!
compileMutateName: aString value: anotherString
	^'case {1}:
	an_instance[{1}] = {2}; break;
' format: { self compileName: aString . anotherString }! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 9/24/2024 22:23:03'!
compileName: aString

	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/6/2024 21:14:08'!
compileName: aTerminal env: aCollection

	| aString |
	
	aString := aTerminal value asString.

	aString = 'id' or: [aCollection includes: aString] :: ifFalse:[
		GenieUndefinedSymbolException new messageText: 'Undefined attribute: ', aString ; start: aTerminal start; end: aTerminal end; signal ]. 
	
	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/1/2024 17:37:17'!
compileSchema: anOrderedCollection

	| aStream i |
	
	aStream := WriteStream on:''.
	
	i := 0.
	
	anOrderedCollection do:[:each | aStream nextPutAll: 'const int ' ; nextPutAll: each ; nextPutAll: ' = ' ; nextPutAll: ('{1};' format: { i} ) ; nextPut: Character lf. i := i + 1. ].
	
	aStream nextPutAll: ('const int GENIE_SCHEMA_SIZE = {1};' format: {i}) ; nextPut:Character lf.
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/6/2024 20:26:48'!
compileSchemaFunctionName: aTerminal inTables: aSet

	| aString |
	
	aString := aTerminal value asString.
	
	aSet includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText: 'Undefined function: ', aString ; start: aTerminal start; end: aTerminal end; signal ].

	^'genie_', aString ! !

!GenieCompiler methodsFor: 'compiling parameters' stamp: 'DF 10/2/2024 17:26:46'!
compileKeyConstants: keys offset: anInteger

	| aStream i |
	
	aStream := WriteStream on:''.
	
	i := anInteger .
	
	keys do: [:each | aStream nextPutAll: ('const int {1} = {2};
' format: {self compileName: each . i }). i := i + 1 ].

	aStream nextPutAll: ('const int 	GENIE_KEY_SIZE = {1};
' format:{ i - anInteger }).

	^aStream contents! !

!GenieCompiler methodsFor: 'compiling parameters' stamp: 'DF 10/2/2024 16:16:49'!
compileParameters: names values: values types: types 
	| aStream params |

	names includes: 'GENIE_INSTANCES' :: ifFalse:[self error: 'genes is not defined'].

	params := defaults copy.
	
	1 to: names size do:[:i | params at: (names at:i) put: { (types at:i) . (values at:i)  } ].		
	
	aStream := WriteStream on:''.
	
	params keysAndValuesDo: [:key :value | aStream nextPutAll: 'const ' ; nextPutAll: value first ; nextPutAll: key ; nextPutAll: ' = ' ; nextPutAll: value second ; nextPutAll:';' ; nextPut: Character lf.  ].
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/2/2024 15:04:36'!
compileKey: aString value: anotherString

	^'an_instance[{1}] = {2};' format: { self compileName: aString . anotherString }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/1/2024 18:14:26'!
compileRuleExpr: aString kind: anInteger

	^'b->fitness {1}= sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) \{ return {2}; \});' format:{ (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aString }.
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/1/2024 18:05:51'!
compileRuleGroupByKeys: anOrderedCollection expr: aString kind: anInteger

	| aStream  |
	
	aStream := WriteStream on: ''. 
	
	anOrderedCollection do:[:each | aStream nextPutAll: each asUppercase ] separatedBy:[ aStream nextPutAll: ', ' ].
	
	^ '\{ int keys[] = \{{1}\}; 

b->fitness {4}= group_by(an_instance, keys,{2},[](instance_t** b, instance_t** e) 
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

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/1/2024 18:05:57'!
compileRulePrimitiveCallName: aString expr: anotherString group: anInteger

	^ anInteger = 1 
		ifTrue:[
	
		validFunctions includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined function ', aString asString ; signal].

	'genie_{1}(b,e,[](const instance_t* each) \{ return {2}; \})' format:{aString . anotherString } ]

		ifFalse:[
			'genie_{1}({2})' format:{aString . anotherString } ]
			


	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/6/2024 20:08:44'!
compileRuleVariable: aTerminal attrs: attrsSet locals: localsSet

	| aString |
	
	aString := aTerminal value asString.
	
	localsSet includes: aString :: ifTrue:[^ aString ].
	
	attrsSet includes: aString :: ifTrue:[^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }].
	
	aString = 'id' ifTrue:[^'(*each)[GENIE_SCHEMA_SIZE]' ].
	
	GenieUndefinedSymbolException new messageText:'Undefined variable ', aString ; start: aTerminal start; end: aTerminal end; signal.
	
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 22:31:43'!
compileRuleVariable: aString in: aSet

	aSet includes: aString :: ifFalse:[GenieUndefinedSymbolException new messageText:'Undefined attribute ', aString ; signal].
	
	^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/1/2024 18:14:43'!
compileTableExpr: tableName index: indexName key: firstKey key: secondKey expr: exprString kind: anInteger

^ 'b->fitness {6}= sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) \{ 
	return genie_table_iterate(genie_{1}, (*each)[GENIE_{2}], (*each)[GENIE_{3}], [each](const interval_t& {4}) \{ return {5} \; \}); \});' format: { tableName value asString . firstKey value asString asUppercase. secondKey value asString asUppercase . indexName . exprString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/1/2024 18:14:47'!
compileTableExpr: aString keys: anOrderedCollection expr: exprString

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: ('(*each)[{1}]'format: {each}) ] separatedBy: [aWriteStream nextPutAll: ', '].

^ 

'b->fitness += sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) \{ 
	genie_table_iterate({1}, {2}, [](const interval_t& interval) \{ return {3} \; \});' format: { aString . aWriteStream contents . exprString }! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/1/2024 08:12:32'!
compileFunction: anOrderedCollection name: aString type: aCollection

	| aStream cppType |
	
	aCollection asSet size = 1 ifFalse:[self error: ('function {1} returns multiple types' format: {aString})].
	
	cppType := aCollection first.
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: ('{1} genie_{2}(int arg) \{' format:{ cppType . aString }) ; nextPut: Character lf.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPut: Character lf].
	
	aStream nextPut: Character lf.
	
	aStream nextPutAll: '{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_' ; nextPutAll: aString ; nextPutAll:'" ; throw invalid_argument(err_msg.str()); }'; nextPut: Character lf; nextPutAll:'}'; nextPut: Character lf.
	
	^aStream contents ! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/2/2024 16:50:13'!
compileFunctionDeclaration: anOrderedCollection name: aString type: aCollection

	| aStream cppType |
	
	aCollection asSet size = 1 ifFalse:[self error: ('function {1} returns multiple types' format: {aString})].
	
	cppType := aCollection first.
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: ('{1} genie_{2}(int arg) \{' format:{ cppType . aString }) ; nextPut: Character lf.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPut: Character lf].
	
	aStream nextPut: Character lf.
	
	aStream nextPutAll: '{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_' ; nextPutAll: aString ; nextPutAll:'" ; throw invalid_argument(err_msg.str()); }'; nextPut: Character lf; nextPutAll:'}'; nextPut: Character lf.
	
	^aStream contents ! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/2/2024 16:51:25'!
compileFunctionDeclaration: aString type: aCollection

	| aStream cppType |
	
	aCollection asSet size = 1 ifFalse:[self error: ('function {1} returns multiple types' format: {aString})].
	
	cppType := aCollection first.
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: ('{1} genie_{2}(int arg);' format:{ cppType . aString }) ; nextPut: Character lf.
	
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

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/1/2024 07:50:23'!
compileTuple: anOrderedCollection range: aString

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return ({2}); \}' format:{ each . aString }) ] separatedBy:[ aStream nextPut: Character lf].

	^aStream contents! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/1/2024 08:01:29'!
compileTuple: anOrderedCollection seq: anotherCollection

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anotherCollection size = 1 
		ifTrue:[			
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return {2}; \}' format:{ each .  anotherCollection first }) ] separatedBy:[ aStream nextPut: Character lf] ] 
		ifFalse:[
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return vector<int> (\{{2}\});  \}' format:{ each .  anotherCollection fold:[:acc :x | acc , ' , ' , x ] }) ] separatedBy:[ aStream nextPut: Character lf] ].

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

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 10/1/2024 08:05:20'!
numberType
	^'int'! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 10/1/2024 08:05:35'!
rangeType
	^'interval_t'! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 10/1/2024 08:05:29'!
seqType
	^'vector<int>'! !

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

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 20:08:29'!
end
	^end! !

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 20:08:21'!
end: anInteger
	end := anInteger ! !

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 20:08:27'!
start
	^start! !

!GenieUndefinedSymbolException methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 20:08:11'!
start: anInteger
	start := anInteger! !

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

!GenieBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 21:25:28'!
buildMorphicWindow

	| programs program console  compileButton buildButton runButton stopButton resetButton |
	
	programs := PluggableListMorph withModel: model listGetter: #programs indexGetter: #selectedProgram indexSetter: #selectProgram: :: menuNshortcutsKey: #programsMenuSpec.
	
	program := TextModelMorph

			textProvider: model
			textGetter: #program
			textSetter: #program:
			selectionGetter: #selectProgramText :: - (1/2)p | 1p.
	
	compileButton := PluggableButtonMorph model: model stateGetter: nil action: #compile.
	compileButton label: 'Compile'.

	buildButton := PluggableButtonMorph model: model stateGetter: nil action: #build.
	buildButton label: 'Build'.

	runButton := PluggableButtonMorph model: model stateGetter: nil action: #run.
	runButton label: 'Run'.

	stopButton := PluggableButtonMorph model: model stateGetter: nil action: #stop.
	stopButton label: 'Stop'.

	resetButton := PluggableButtonMorph model: model stateGetter: nil action: #reset.
	resetButton label: 'Reset'.

	console :=  TextModelMorph 
			textProvider: model
			textGetter: #console
			textSetter: nil
			selectionGetter: nil :: - 1p | 1p.
	
	
	self layoutMorph addMorph:
(programs | 1p - (1/6) p) <+> program <+> ((((compileButton - 1p + (buildButton - 1p) + (runButton -1p) + (stopButton -1p) + (resetButton -1p)) | 32f) / console) - (1/3)p) 
! !

!GenieBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:20:37'!
programsMenuSpec

	^# (
		#(0 		'Genie Programs' 					false)
		
		#(10 		'add program... (a)'			 $a model addProgram nil 'add a new program')
		#(20 		'rename ... (r)' $r model renameProgram nil 'rename the selected program')
		#(30 		'remove'  nil model removeProgram nil 'remove the selected program')
		#(40 		'-----')
		#(50 		'file out (f)' $f model fileOutProgram nil 'write the program to an external file')
		#(60 'set working directory ... (w)' $f model setWorkingDirectory nil 'set the directory into which programs will file out')
	)! !
GenieBrowserModel initialize!
