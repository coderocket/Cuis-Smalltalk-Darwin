'From Cuis7.1 [latest update: #6676] on 9 November 2024 at 8:40:45 pm'!
'Description '!
!provides: 'Darwin' 1 249!
!requires: 'LayoutAlgebra' 1 10 nil!
!requires: 'Regex-Core' 1 9 nil!
!requires: 'Xray' 1 26 nil!
!requires: 'OSProcess' 1 36 nil!
SystemOrganization addCategory: #Darwin!


!classDefinition: #GenieBrowserModel category: #Darwin!
Object subclass: #GenieBrowserModel
	instanceVariableNames: 'consoleOutput programText parser ast codeGenerator genieProcess programIndex programName selection configuration solutions selectedSolution scanner'
	classVariableNames: 'CommentRegex InitialProgramTemplate KeywordsRegex Programs SectionHeadersRegex'
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

!classDefinition: #GenieException category: #Darwin!
Exception subclass: #GenieException
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieException class' category: #Darwin!
GenieException class
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

!classDefinition: #GenieSolutionBrowser category: #Darwin!
SystemWindow subclass: #GenieSolutionBrowser
	instanceVariableNames: 'scores program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieSolutionBrowser class' category: #Darwin!
GenieSolutionBrowser class
	instanceVariableNames: ''!

!classDefinition: #GenieScanner category: #Darwin!
XrayScanner subclass: #GenieScanner
	instanceVariableNames: 'workingDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GenieScanner class' category: #Darwin!
GenieScanner class
	instanceVariableNames: ''!


!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 10:01:29'!
addProgram

	StringRequestMorph 
		request: 'New program name'
		initialAnswer: ''
		verifying: [:aString |
			aString notEmpty and:[ (Programs includesKey: aString) not ] ] 
		do: [ :aString | 
				Programs at: aString put: InitialProgramTemplate. 
				self selectProgram: (Programs keys sort findFirst:[:key | key = aString ]).
				self program: self program.
				self changed: #programs ; changed: #program ]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/22/2024 11:09:14'!
build

	| succ |
	
	consoleOutput := ''. 

	succ := self compile.
	
	succ ifTrue:[
		self make ].! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 11/9/2024 20:40:06'!
compile

	| result |
	
	result := false. 
	
	programIndex = 0 ifTrue:[consoleOutput := 'No program selected.'. self changed: #console. ^ result].
	
	[ | outcome |

		selection := 0 to: 0.
		
		consoleOutput := 'Compilation failed.'.
		
		programText removeAttributes: { TextColor red . TextBackgroundColor yellow } from: 1 to: programText size.
		outcome := parser parse: programText.
		outcome second 
			ifNotEmpty:[ | fileEntry terminal |
				
				consoleOutput := consoleOutput, ' Syntax error.'. 

				terminal := outcome second first.
								
				fileEntry := scanner fileEntryFor: parser terminalIndex.
							
				fileEntry 
					ifNil:[				
						programText addAttribute: TextColor red from: terminal start + 1 to: programText size. selection := 	terminal start + 1 to: terminal start ]
					ifNotNil:[ | text model morph window |
						text := fileEntry asFileEntry fileContents asText.
						text addAttribute: TextColor red from: terminal start + 1 to: text size.
						model := TextModel new.
						window := SystemWindow new.
						window model: model.
						window setLabel: ('Text Editor: {1}' format:{ fileEntry}).
						morph := (TextModelMorph withModel: model) 			wrapFlag: true.
						window layoutMorph addMorph: morph proportionalHeight: 1.
						window openInWorld.
						model actualContents: text.
						morph selectFrom: terminal start+1 to: terminal start.
						window forceSaveContentsTo: fileEntry asFileEntry.
					] ].
		outcome second 
			ifEmpty:[
				ast := outcome first second.
				self generate.
				consoleOutput := 'C++ code generated successfully.
Compiling ...
'. 	
				result := true ]
	]
	on: XraySyntaxError do:[:anXraySyntaxError | 
	
		selection := 	anXraySyntaxError position + 1 to: anXraySyntaxError position.
		
		programText addAttribute: TextColor red from: anXraySyntaxError position + 1 to: programText size ]
	
	on: GenieException do:[:aGenieException |
		
		selection := aGenieException start to: aGenieException end. 
		
		programText addAttribute: TextColor red from: aGenieException start to: aGenieException end.
		consoleOutput := aGenieException messageText 		].
	
	self changed: #program ; changed:#console. 		

	^result
	! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2024 15:48:55'!
console

^consoleOutput ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/13/2024 18:51:47'!
consoleEnd
	^ consoleOutput size +1 to: consoleOutput size ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 18:29:16'!
fileOutProgram

	| aString aFileEntry |
		
	programIndex ifNil:[^self].
	
	programIndex = 0 ifTrue:[^self].

	aString := programName, '.genie'.
	
	aFileEntry := codeGenerator codePath // aString.

	aFileEntry fileContents: programText asString.
! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2024 17:49:28'!
generate

	self assert: ast notNil.
	
	codeGenerator generateCode: ast programName: programName ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 11/8/2024 13:05:40'!
initialize

	consoleOutput := ''.
	
	programText := ''.
	
	configuration := 'openmp'. "release"

	codeGenerator := GenieCodeGenerator new.
	
	scanner := GenieScanner new.

	scanner workingDirectory: codeGenerator codePath.
		
	parser := Language parserFor: 'Genie' withScanner: scanner.

	ast := nil.		

	programIndex := 0.

	selection := 0 to:0.
	
	selectedSolution := 0.! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/22/2024 11:20:39'!
isNotRunning
	^genieProcess isNil or: [genieProcess isComplete]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 11:24:38'!
isRunning
	^genieProcess notNil and: [genieProcess isRunning]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 20:15:22'!
load

	| aFileEntry aReadStream json problemName |

	aFileEntry := codeGenerator codePath // 'solutions.json'.

	aFileEntry exists ifFalse:[
			consoleOutput := 'Cannot load. Solution file {1} does not exit.' format:{ 'solutions.json' }. self changed:#console . ^self ].		
		
	aReadStream := ReadStream on: aFileEntry fileContents.

	json := Json readFrom: aReadStream.

	problemName := json at:'problem' ifAbsent:[			consoleOutput := 'Cannot load. Json file {1} is not a genie solution.' format:{ 'solutions.json' }. self changed:#console . ^self ].
	
	problemName = programName 
		ifFalse:[
			consoleOutput := 'Cannot load. Solution {1} does not fit problem {2}.' format:{ problemName . programName}. self changed:#console . ^self ].
		
	solutions := json at: 'solutions'.
	
	consoleOutput := 'Solution loaded.'. self changed:#console ; changed: #solutions.! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/22/2024 11:08:59'!
make

	| workingDirectory fifoName commandName aProcess aReadStream model result |
	
	workingDirectory := codeGenerator codePath / configuration.
	
	fifoName := 'make.fifo'.
	
	commandName := 'cd {1}  && /usr/bin/make > {2} 2>&1' format: { workingDirectory . fifoName }.
	
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

	aReadStream close. 
	
	consoleOutput := consoleOutput, '
Build complete.'. model changed: #console. ] fork
	! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 20:43:23'!
penalties
	"answer penalties of selected solution"
	
	selectedSolution = 0 ifTrue:[^{}].
	
	^solutions at: selectedSolution :: at: 'score'! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2024 19:48:35'!
program
	^ programText! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 12:32:59'!
program: aText

	aText removeAttributesThat: [:attr | attr isTextColor ].
	
	programText := SectionHeadersRegex copy:aText  translatingMatchesUsing:[:each | each color: Color blue  ].
	
	programText := KeywordsRegex copy: programText translatingMatchesUsing:[:each | each color: (Color r: 0.380 g: 0.0 b: 0.235) ].
	
	programText := CommentRegex copy:programText translatingMatchesUsing:[:each | each color: Color green darker darker darker ].
	
	Programs at: programName put: programText.
	
	^true! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:12:22'!
programs
	^ Programs keys sort ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 09:53:27'!
removeProgram

	| result |
	
	programName ifNil:[^self].
	
	result := self confirm: ('Are you sure you want to remove the program {1}?' format:{programName}).
	
	result ifTrue:[
		Programs removeKey: programName. programName := nil. programIndex := 0. self changed: #programs ; changed: #program ]
	! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2024 17:45:46'!
renameProgram

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

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/12/2024 17:28:31'!
run

	| workingDirectory fifoName commandName model aReadStream result |
	workingDirectory := codeGenerator codePath.
	
	fifoName := 'run.fifo'.
	
	commandName := 'cd {1}  && exec ./{2}/genie -file 2> {3}' format: { workingDirectory . configuration . fifoName }.
	
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

	[ | bytes start finish duration |
	
	start := Time now.
	
	Delay forSeconds: 1 :: wait.
	
	bytes := aReadStream nextBytes:20.

	[bytes size > 0] whileTrue:[
	
		consoleOutput := consoleOutput , bytes asString. model changed: #console.
		
		Processor yield.
		
		bytes := aReadStream nextBytes:20.
	].

	aReadStream close. 
	
	[genieProcess isRunning ] whileTrue:[
		Delay forSeconds: 1 :: wait ].
	
	finish := Time now.
	
	duration := finish - start.
	
	consoleOutput := consoleOutput, ('
Run complete. Execution took {1} hours, {2} minutes, and {3} seconds.' format:{ duration hours . duration minutes . duration seconds}) . model changed: #console. ] fork
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

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 20:50:15'!
selectSolution: anIndex

	selectedSolution := anIndex.

	self changed: #selectSolution: ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/4/2024 21:15:56'!
selectedProgram

	^programIndex! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 20:18:37'!
selectedSolution
	
	selectedSolution ifNil:[^0].
	
	^selectedSolution ! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 22:14:29'!
selection: anInterval

	selection := anInterval.
	
	self changed: #selectProgramText! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 11/8/2024 13:06:18'!
setWorkingDirectory

	StringRequestMorph 
		request: 'Working directory'
		initialAnswer: codeGenerator codePath asString
		verifying: [:aString |
			aString notEmpty and:[ aString asDirectoryEntry isDirectory] ] 
		do: [ :aString | 
			codeGenerator codePath: aString asDirectoryEntry.
			scanner workingDirectory: codeGenerator codePath ]! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:27:55'!
solutionAt: anIndex
	^solutions at: anIndex :: at: 'solution'! !

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 21:32:12'!
solutions

	solutions ifNil:[^{}].
	
	^solutions collect:[:each | each at: 'score' :: collect:[:pair | pair at:3 ] :: sum ]! !

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

!GenieBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 11/8/2024 16:22:59'!
wd: aString
	
	codeGenerator codePath: aString asDirectoryEntry. scanner workingDirectory: aString asDirectoryEntry ! !

!GenieBrowserModel class methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 12:39:25'!
initialize

	"self initialize"

	| aWriteStream keywords sectionHeaders |

	
	CommentRegex := '#:^isLineSeparator:*:isLineSeparator:' asRegex.

	keywords := {'sum' . 'count' . 'overlap' . 'maxgap' . 'mingap' . 'overlap_with' . 'max' . 'for' . 'in' . 'on' . 'penalty' . 'bonus' }.
	
	sectionHeaders := { 	'Parameters'.  'Schema'.  'Functions'.  'Keys'.  'Rules' }.

	aWriteStream := WriteStream on:''.

	sectionHeaders do:[:each | aWriteStream nextPutAll:('\\<{1}\\>' format: {each }) ] separatedBy:[ aWriteStream nextPutAll: '|'].
	
	SectionHeadersRegex := aWriteStream contents asRegex.

	aWriteStream := WriteStream on:''.
	
	keywords do:[:each | aWriteStream nextPutAll:('\\<{1}\\>' format: {each }) ] separatedBy:[ aWriteStream nextPutAll: '|'].
	
	KeywordsRegex := aWriteStream contents asRegex.

	Programs := Dictionary new.

	InitialProgramTemplate := '
Parameters

epochs: 			30 
generations: 20 

population: 			3000
instances: 			100

mutationp :			1.0e-3
inversionp :			2.0e-1

Schema 
 
bit: 0..1

Functions

dummy 

0 1
1 0

Keys

notused : dummy(bit)

Rules

bonus 10 ;

# a comment

penalty bit = 0;
' asText! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/27/2024 16:24:09'!
generateCode: anASTNode programName: aString

	| programName |
	
	programName := 'const char GENIE_PROBLEM_NAME[]="{1}";
' format: { aString }.

	self generateConstants: programName, (#numrules @ anASTNode), String lfString, (#params @ anASTNode) , (#schema @ anASTNode), (#keyconsts @ anASTNode).
	self generateFunctions: #functions @ anASTNode.
	self generateFunctionDecls: #fdecl @ anASTNode.
	self generateTables: #tables @ anASTNode.
	self generateTableHeaders: #tnames @ anASTNode.
	self generateMutate: #mutate @ anASTNode.
	self generateFitness: #fitness @ anASTNode.
	self generateKeys: #keycode @ anASTNode.
! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:16'!
generateConstants: aString

	codePath / 'src' // 'generated_constants.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:26'!
generateFitness: aString

	codePath  / 'src' // 'generated_fitness.cc' fileContents: aString. ! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:30'!
generateFunctionDecls: aString

	codePath  / 'src' // 'generated_functions.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:34'!
generateFunctions: aString

	codePath  / 'src' // 'generated_functions.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:38'!
generateKeys: aString

	codePath / 'src' // 'generated_keys.cc' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/11/2024 22:19:43'!
generateMutate: aString

	codePath / 'src' // 'generated_attribute_layout.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/27/2024 16:23:46'!
generateTableHeaders: aString

	codePath / 'src' // 'generated_tables.h' fileContents: aString.! !

!GenieCodeGenerator methodsFor: 'cpp code generation' stamp: 'DF 10/27/2024 16:23:35'!
generateTables: aString

	codePath / 'src' // 'generated_tables.cc' fileContents: aString.! !

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

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/27/2024 14:15:48'!
compileName: aTerminal env: aCollection

	| aString |
	
	aString := aTerminal value asString.

	aString = 'id' or: [aCollection includes: aString] :: ifFalse:[
		GenieException new messageText: 'Undefined attribute: ', aString ; start: aTerminal start; end: aTerminal end; signal ]. 
	
	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/28/2024 12:01:29'!
compileNonDeterministicCall: aString type: functInfo location: aToken

	| type |
	
	type := functInfo at:1.
	
	{ 'vector<int>' . 'interval_t' } includes: type :: ifFalse:[
		GenieException new messageText: ('Type mismatch: {1}, expecting an interval or a set.' format:{  type }) ; start: aToken start ; end: aToken end ; signal ].
	
	^'select_at_random({1})' format: {aString }
	
	! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/1/2024 17:37:17'!
compileSchema: anOrderedCollection

	| aStream i |
	
	aStream := WriteStream on:''.
	
	i := 0.
	
	anOrderedCollection do:[:each | aStream nextPutAll: 'const int ' ; nextPutAll: each ; nextPutAll: ' = ' ; nextPutAll: ('{1};' format: { i} ) ; nextPut: Character lf. i := i + 1. ].
	
	aStream nextPutAll: ('const int GENIE_SCHEMA_SIZE = {1};' format: {i}) ; nextPut:Character lf.
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling schema' stamp: 'DF 10/27/2024 14:16:07'!
compileSchemaFunctionName: aTerminal inTables: aDictionary

	| aString |
	
	aString := aTerminal value asString.
	
	aDictionary includesKey: aString :: ifFalse:[GenieException new messageText: 'Undefined function: ', aString ; start: aTerminal start; end: aTerminal end; signal ].

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

!GenieCompiler methodsFor: 'compiling parameters' stamp: 'DF 10/11/2024 22:26:11'!
compileParameters: names values: values types: types 
	| aStream params |

	names includes: 'GENIE_INSTANCES' :: ifFalse:[self error: 'genes is not defined'].

	params := defaults copy.
	
	1 to: names size do:[:i | params at: (names at:i) put: { (types at:i) . (values at:i)  } ].		
	
	aStream := WriteStream on:''.
	
	params keysAndValuesDo: [:key :value | aStream nextPutAll: 'const ' ; nextPutAll: value first ; nextPutAll: ' '; nextPutAll: key ; nextPutAll: ' = ' ; nextPutAll: value second ; nextPutAll:';' ; nextPut: Character lf.  ].
	
	^aStream contents! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/28/2024 11:57:19'!
compileDeterministicCall: aString value: anotherString type: funcInfo location: aToken

	| type |
	
	type  := funcInfo at:1.
	
	'int' = type  :: ifFalse:[
		GenieException new messageText: ('Type mismatch: {1}, expecting an integer.' format:{  type  }) ; start: aToken start ; end: aToken end ; signal ].

	^'an_instance[{1}] = {2};' format: { self compileName: aString . anotherString }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/28/2024 12:11:56'!
compileFunctionEnum: functionName finfo: funInfo keys: anOrderedCollection expr: aString kind: anInteger position: anotherInteger location: aToken

	| aStream  min max  |

	min := funInfo at:2.
	
	max := funInfo at:3.
	
	aStream := WriteStream on: ''. 
	
	anOrderedCollection do:[:each | aStream nextPutAll: each asUppercase ] separatedBy:[ aStream nextPutAll: ', ' ].
	
	^'\{ int keys[] = \{{1}\}; 

rule_location[{2}] = {6};
score[{2}] = 0;
for(int ii = {8}; ii <= {9} ; ++ii) \{
	vector<int> gid = genie_{7}(ii);
	instance_t* group = (instance_t*)alloca(gid.size()*sizeof(instance_t));
	int jj;
	for(jj = 0 ; jj < gid.size(); ++jj)
		group[jj] = an_instance[gid[jj]];
		
	score[{2}] {5}= group_by(group, group+jj, keys,{3},[](instance_t** b, instance_t** e) 
		\{ return {4}; \}); 
	\}
\}' format:{ aStream contents  . anotherInteger . anOrderedCollection size . aString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aToken start . functionName . min . max }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/21/2024 21:10:34'!
compileRuleExpr: aString kind: anInteger position: anotherInteger location: aToken

	^'
rule_location[{1}] = {4};
score[{1}] = 0;
score[{1}] {2}= sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) \{ return {3}; \});' format:{ anotherInteger . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aString . aToken start }.
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/28/2024 12:12:09'!
compileRuleGroupByKeys: anOrderedCollection expr: aString kind: anInteger position: anotherInteger location: aToken

	| aStream  |

	aStream := WriteStream on: ''. 
	
	anOrderedCollection do:[:each | aStream nextPutAll: each asUppercase ] separatedBy:[ aStream nextPutAll: ', ' ].
	
	^ '\{ int keys[] = \{{1}\}; 

rule_location[{2}] = {6};
score[{2}] = 0;
score[{2}] {5}= group_by(an_instance, an_instance+GENIE_N_INSTANCES, keys,{3},[](instance_t** b, instance_t** e) 
	\{ return {4}; \}); \}' format:{ aStream contents  . anotherInteger . anOrderedCollection size . aString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aToken start }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 9/26/2024 18:09:18'!
compileRuleInnerCall: aString args: anOrderedCollection

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: each ] separatedBy:[ aWriteStream nextPutAll: ', '].
	
	^'genie_{1}({2})' format: { aString . aWriteStream contents }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/27/2024 14:15:51'!
compileRuleName: aString isMemberIn: aSet location: aToken

	aSet includes: aString :: ifFalse:[
		
		GenieException new messageText: 'Undefined attribute: ', aString ; start: aToken start; end: aToken end; signal ].

	^'GENIE_', aString asUppercase! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/27/2024 14:15:55'!
compileRulePrimitiveCallName: aString expr: anotherString group: anInteger

	^ anInteger = 1 
		ifTrue:[
	
		validFunctions includes: aString :: ifFalse:[GenieException new messageText:'Undefined function ', aString asString ; signal].

	'genie_{1}(b,e,[](const instance_t* each) \{ return {2}; \})' format:{aString . anotherString } ]

		ifFalse:[
			'genie_{1}({2})' format:{aString . anotherString } ]
			


	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/27/2024 14:15:58'!
compileRuleVariable: aTerminal attrs: attrsSet locals: localsSet

	| aString |
	
	aString := aTerminal value asString.
	
	localsSet includes: aString :: ifTrue:[^ aString ].
	
	attrsSet includes: aString :: ifTrue:[^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }].
	
	aString = 'id' ifTrue:[^'(*each)[GENIE_SCHEMA_SIZE]' ].
	
	GenieException new messageText:'Undefined variable ', aString ; start: aTerminal start; end: aTerminal end; signal.
	
	! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/27/2024 14:16:03'!
compileRuleVariable: aString in: aSet

	aSet includes: aString :: ifFalse:[GenieException new messageText:'Undefined attribute ', aString ; signal].
	
	^'(*each)[{1}]' format:{ 'GENIE_', aString asUppercase }! !

!GenieCompiler methodsFor: 'compiling rules' stamp: 'DF 10/27/2024 15:43:39'!
compileTableExpr: tableName index: indexName key: firstKey key: secondKey expr: exprString kind: anInteger position: anotherInteger location: aToken

^ 'rule_location[{1}] = {8};
score[{1}] = 0;
score[{1}] {7}= sum(an_instance, an_instance+GENIE_N_INSTANCES, [](const instance_t* each) \{ 
	return genie_table_iterate(genie_{2}, (*each)[GENIE_{3}], (*each)[GENIE_{4}], [each](const interval_t& {5}) \{ return {6} \; \}); \});' format: { anotherInteger . tableName value asString . firstKey value asString asUppercase. secondKey value asString asUppercase . indexName . exprString . (anInteger = 1) ifTrue:['+'] ifFalse:['-'] . aToken start }! !

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

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 11/8/2024 13:35:39'!
compileFunctionType: aCollection location: aToken

	| types |
	
	types := aCollection asSet.
	
	types size = 1 ifFalse:[ | aWriteStream |
		
		aWriteStream := WriteStream on: ''.
		
		types do:[:each | aWriteStream nextPutAll: each ] separatedBy:[ aWriteStream nextPutAll: ' ,' ].
		
		GenieException new messageText: ('Type mismatch: {1}' format:{  aWriteStream contents }) ; start: aToken start ; end: aToken end ; signal ].
	
	^types anyOne
	

	! !

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/27/2024 16:22:48'!
compileTableDecls: anOrderedCollection

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aWriteStream nextPutAll: ('extern std::multimap< std::array<int, 2>, interval_t> genie_{1};
' format: { each })].

	^ aWriteStream contents.! !

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

!GenieCompiler methodsFor: 'compiling tables' stamp: 'DF 10/11/2024 22:06:09'!
compileTupleRangeBegin: b1 end: e1 begin: b2 end: e2

		^'if ({1}<= arg && arg <= {2}) \{ return interval_t({3}, {4}); \}' format:{ b1 . e1 . b2 . e2 } ! !

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

!GenieException methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 12:54:30'!
defaultAction

	UnhandledError signalForException: self! !

!GenieException methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 12:54:36'!
end
	^end! !

!GenieException methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 12:54:42'!
end: anInteger
	end := anInteger ! !

!GenieException methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 12:54:48'!
start
	^start! !

!GenieException methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2024 12:54:53'!
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

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:19:02'!
drawModelDataOn: aCanvas

	| aFont dataOrigin dw dh canvas form nc nr |
	
	aFont := FontFamily defaultFamilyPointSize: 9.
	
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

!GenieBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/22/2024 11:22:23'!
buildMorphicWindow

	| programs program console  loadButton buildButton runButton stopButton resetButton |
	
	programs := PluggableListMorph withModel: model listGetter: #programs indexGetter: #selectedProgram indexSetter: #selectProgram: :: menuNshortcutsKey: #programsMenuSpec.
	
	program := TextModelMorph

			textProvider: model
			textGetter: #program
			textSetter: #program:
			selectionGetter: #selectProgramText :: - (1/2)p | 1p.
	
	buildButton := PluggableButtonMorph model: model stateGetter: nil action: #build ::enableSelector: #isNotRunning.
	buildButton label: 'Build'.

	runButton := PluggableButtonMorph model: model stateGetter: nil action: #run :: enableSelector: #isNotRunning.
	runButton label: 'Run'.

	stopButton := PluggableButtonMorph model: model stateGetter: nil action: #stop :: enableSelector: #isRunning.
	stopButton label: 'Stop'.

	loadButton := PluggableButtonMorph model: model stateGetter: nil action: #load :: enableSelector: #isNotRunning.
	loadButton label: 'Load'.

	resetButton := PluggableButtonMorph model: model stateGetter: nil action: #reset :: enableSelector: #isNotRunning.
	resetButton label: 'Reset'.

	console :=  TextModelMorph 
			textProvider: model
			textGetter: #console
			textSetter: nil
			selectionGetter: #consoleEnd :: - 1p | 1p.
	
	
	self layoutMorph addMorph:
(programs | 1p - (1/6) p) <+> program <+> (((( (buildButton - 1p) + (runButton -1p) + (stopButton -1p) +  (loadButton -1p) + (resetButton -1p)) | 32f) / console) - (1/3)p) 
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

!GenieSolutionBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 20:47:23'!
buildMorphicWindow

	| programs scoresScroller solutions |
	
	programs := PluggableListMorph withModel: model listGetter: #programs indexGetter: #selectedProgram indexSetter: #selectProgram: :: menuNshortcutsKey: #programsMenuSpec.
	
	scores := BoxedMorph new borderWidth:0 ; color: Color transparent ; yourself.

	scoresScroller := PluggableScrollPane new scroller: scores ; hideScrollBarsIndefinitely ; yourself.

	program := TextModelMorph

			textProvider: model
			textGetter: #program
			textSetter: nil
			selectionGetter: #selectProgramText.

	program disableEditing.
	
	program when: #vScrollBarValue: evaluate:[:value | scoresScroller vScrollBarValue: value  ].

	scoresScroller when: #vScrollBarValue: evaluate:[:value | program vScrollBarValue: value. program verticalScrollBar scrollValue: program scrollerOffset y / program vLeftoverScrollRange ].

	solutions := PluggableListMorph withModel: model listGetter: #solutions indexGetter: #selectedSolution indexSetter: #selectSolution:. ":: menuNshortcutsKey: #programsMenuSpec."
	
	model addDependent: self. 
		
	self layoutMorph addMorph:
 (solutions | 1p -(1/3)p) <+> (scoresScroller | 1p - 48 f) + (program - (1/2)p | 1p) <+> (programs | 1p - (1/6) p) .

		
! !

!GenieSolutionBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 22:02:06'!
calculateRulePositions

	| penalties hh tt ti ii yy xx n font ww result |

	penalties := model penalties. 
	
	"each element in penalties is a 3-tuple [index text-location score]"
	
	font := FontFamily defaultFamilyAndPointSize.
	hh := font lineSpacing.
	ww := program morphWidth.
	tt := model program.		
	n := penalties size.

	" only these change during the algorithm's execution "
	
	ti := 1.
	ii := 1.
	yy := hh.
	xx := 0.
	result := OrderedCollection new.
	
	[ii <=  n] whileTrue:[
		[ti < (penalties at:ii :: at:2) ] whileTrue:[
			xx := xx + (font widthOf: (tt at:ti)).
			xx > ww or: (tt at:ti) isNewLine :: ifTrue:[
				xx := 0.
				yy := yy + hh ].
			ti := ti + 1]	.
		result add: { yy . penalties at: ii :: at:3 }.
		ii := ii + 1 ].
	
	^result! !

!GenieSolutionBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 11:29:40'!
someSubmorphPositionOrExtentChanged

	program ifNil:[^self].
	
	program isLayoutNeeded ifTrue:[
		scores morphExtent: scores morphExtent x @ program scroller morphExtent y]! !

!GenieSolutionBrowser methodsFor: 'as yet unclassified' stamp: 'DF 10/21/2024 22:33:23'!
update: aSymbol

	| linespace ptsize hh pos |

	aSymbol = #selectSolution: ifFalse:[^self].
	
	scores removeAllMorphs.
	
	model selectedSolution = 0 ifTrue:[^self].
	
	pos := self calculateRulePositions.
			
	linespace := FontFamily defaultFamilyAndPointSize ascent.
			
	ptsize := 9.

	hh := FontFamily defaultFamilyPointSize: ptsize :: ascent.

	pos  do:[:each | | text y |		
		
		text := '{1}' format: { each at:2 }.
		
		y := (linespace - hh) + (each at:1).
		
		scores addMorph: (LabelMorph contents:text :: borderWidth:0 ; borderColor: Color red; font: (FontFamily defaultFamilyPointSize: ptsize); yourself) position: 0@ y ].

	model penalties ifNotEmpty:[ | lastPenalty | lastPenalty := (model penalties last at:2) . model selection: (lastPenalty to: lastPenalty - 1). ].
	
	program triggerEvent: #vScrollBarValue: with: program scrollerOffset y / program vLeftoverScrollRange.
	! !

!GenieScanner methodsFor: 'as yet unclassified' stamp: 'DF 11/9/2024 13:25:21'!
load: aString

	| result matcher |
	
	matcher := 'load +([[:alpha:][:digit:].]+)' asRegex.
	
	result := matcher matches: aString.
	
	self assert: result.
	
	self stream: (workingDirectory // (matcher subexpression: 2) asString) readStream.
	
	^self nextTerminal ! !

!GenieScanner methodsFor: 'as yet unclassified' stamp: 'DF 11/8/2024 12:48:14'!
workingDirectory: aString
	
	workingDirectory := aString asDirectoryEntry.! !
GenieBrowserModel initialize!
