'From Cuis7.3 [latest update: #6895] on 11 February 2025 at 3:55:25 pm'!
'Description '!
!provides: 'BrocadePlanner' 1 64!
!requires: 'Bidi' 1 54 nil!
!requires: 'Table' 1 66 nil!
!requires: 'UndoRedo' 1 9 nil!
!requires: 'Neo-CSV-Core' 1 1 nil!
!requires: 'YAXO' 1 28 nil!
!requires: 'LayoutAlgebra' 1 12 nil!
SystemOrganization addCategory: #'BrocadePlanner-Model'!
SystemOrganization addCategory: #BrocadePlanner!
SystemOrganization addCategory: #'BrocadePlanner-Morphic'!
SystemOrganization addCategory: #'BrocadePlanner-UndoRedo'!


!classDefinition: #AcademicProgram category: #'BrocadePlanner-Model'!
Object subclass: #AcademicProgram
	instanceVariableNames: 'tracks description college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicProgram class' category: #'BrocadePlanner-Model'!
AcademicProgram class
	instanceVariableNames: ''!

!classDefinition: #AcademicTrack category: #'BrocadePlanner-Model'!
Object subclass: #AcademicTrack
	instanceVariableNames: 'academicYears description program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicTrack class' category: #'BrocadePlanner-Model'!
AcademicTrack class
	instanceVariableNames: ''!

!classDefinition: #AcademicUnit category: #'BrocadePlanner-Model'!
Object subclass: #AcademicUnit
	instanceVariableNames: 'module lecturers duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicUnit class' category: #'BrocadePlanner-Model'!
AcademicUnit class
	instanceVariableNames: ''!

!classDefinition: #Laboratory category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Laboratory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Laboratory class' category: #'BrocadePlanner-Model'!
Laboratory class
	instanceVariableNames: ''!

!classDefinition: #Lecture category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Lecture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Lecture class' category: #'BrocadePlanner-Model'!
Lecture class
	instanceVariableNames: ''!

!classDefinition: #Recitation category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Recitation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Recitation class' category: #'BrocadePlanner-Model'!
Recitation class
	instanceVariableNames: ''!

!classDefinition: #AcademicYear category: #'BrocadePlanner-Model'!
Object subclass: #AcademicYear
	instanceVariableNames: 'semesters description track'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicYear class' category: #'BrocadePlanner-Model'!
AcademicYear class
	instanceVariableNames: ''!

!classDefinition: #College category: #'BrocadePlanner-Model'!
Object subclass: #College
	instanceVariableNames: 'campuses modules programs description schools'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'College class' category: #'BrocadePlanner-Model'!
College class
	instanceVariableNames: ''!

!classDefinition: #Module category: #'BrocadePlanner-Model'!
Object subclass: #Module
	instanceVariableNames: 'college units code description semesters elective'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Module class' category: #'BrocadePlanner-Model'!
Module class
	instanceVariableNames: ''!

!classDefinition: #Semester category: #'BrocadePlanner-Model'!
Object subclass: #Semester
	instanceVariableNames: 'academicYear description stencils modules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Semester class' category: #'BrocadePlanner-Model'!
Semester class
	instanceVariableNames: ''!

!classDefinition: #BrocadeError category: #'BrocadePlanner-Model'!
Error subclass: #BrocadeError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'BrocadeError class' category: #'BrocadePlanner-Model'!
BrocadeError class
	instanceVariableNames: ''!

!classDefinition: #QuietTheme category: #'BrocadePlanner-Morphic'!
Theme subclass: #QuietTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'QuietTheme class' category: #'BrocadePlanner-Morphic'!
QuietTheme class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCell category: #'BrocadePlanner-Morphic'!
TableCell subclass: #BrocadeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'BrocadeTableCell class' category: #'BrocadePlanner-Morphic'!
BrocadeTableCell class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCellItem category: #'BrocadePlanner-Morphic'!
TableCellItem subclass: #BrocadeTableCellItem
	instanceVariableNames: 'selectedColor notSelectedColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'BrocadeTableCellItem class' category: #'BrocadePlanner-Morphic'!
BrocadeTableCellItem class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgramBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #AcademicProgramBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex selectedYears selectedSemesters unitIndex electiveIndex selectedElectives'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'AcademicProgramBrowser class' category: #'BrocadePlanner-Morphic'!
AcademicProgramBrowser class
	instanceVariableNames: ''!

!classDefinition: #ModuleBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #ModuleBrowser
	instanceVariableNames: 'mold theProgram'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'ModuleBrowser class' category: #'BrocadePlanner-Morphic'!
ModuleBrowser class
	instanceVariableNames: ''!

!classDefinition: #OpenFileDialog category: #'BrocadePlanner-Morphic'!
SystemWindow subclass: #OpenFileDialog
	instanceVariableNames: 'directory currentDirectoryEntryMorph theEntryIndex showHiddenFiles sortBy selectFileEntryAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'OpenFileDialog class' category: #'BrocadePlanner-Morphic'!
OpenFileDialog class
	instanceVariableNames: ''!

!classDefinition: #BrocadeCommandHistory category: #'BrocadePlanner-UndoRedo'!
CommandHistory subclass: #BrocadeCommandHistory
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'BrocadeCommandHistory class' category: #'BrocadePlanner-UndoRedo'!
BrocadeCommandHistory class
	instanceVariableNames: ''!

!classDefinition: #AddAcademicProgramCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddAcademicProgramCommand
	instanceVariableNames: 'programName duration dayTrack eveningTrack college program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddAcademicProgramCommand class' category: #'BrocadePlanner-UndoRedo'!
AddAcademicProgramCommand class
	instanceVariableNames: ''!

!classDefinition: #AddModuleCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddModuleCommand
	instanceVariableNames: 'semester code college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
AddModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveModuleCommand category: #'BrocadePlanner-UndoRedo'!
AddModuleCommand subclass: #RemoveModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #ModuleCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #ModuleCommand
	instanceVariableNames: 'code description lectureDuration recitationDuration labDuration elective college module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'ModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
ModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #EditModuleCommand category: #'BrocadePlanner-UndoRedo'!
ModuleCommand subclass: #EditModuleCommand
	instanceVariableNames: 'backup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'EditModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
EditModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #NewModuleCommand category: #'BrocadePlanner-UndoRedo'!
ModuleCommand subclass: #NewModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'NewModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
NewModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #DeleteModuleCommand category: #'BrocadePlanner-UndoRedo'!
NewModuleCommand subclass: #DeleteModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'DeleteModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
DeleteModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveProgramCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #RemoveProgramCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveProgramCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveProgramCommand class
	instanceVariableNames: ''!


!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:25'!
addAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program isNil.
	
	self attachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack program: self.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:38'!
attachAcademicTrack: anAcademicTrack

	tracks add: anAcademicTrack ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:14:46'!
college 
	^college! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:50'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:27'!
description
	^description ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:17'!
description: aString
	description := aString! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:19'!
detach

	college := nil! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:55'!
detachAcademicTrack: anAcademicTrack

	tracks remove: anAcademicTrack ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 20:19:55'!
displayStringOrText
	^description! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:17:41'!
initialize
	tracks := Set new! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:14:15'!
invariant

	tracks do:[:eachTrack | eachTrack invariant ].

	tracks do:[:eachTrack | eachTrack program == self ].
	! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:02:54'!
removeAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program == self.
	
	self detachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack detach.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:23:21'!
trackAt: aString

	^ tracks detect:[:eachTrack | eachTrack description = aString] ifFound:[:aTrack | aTrack] ifNone:[nil]! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:29:57'!
tracks
	^tracks! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:50:57'!
xmlOut: anXMLWriter
	
	anXMLWriter startElement: 'program' attributeList: {'description' -> description } asDictionary ; endTag.
	
	tracks do:[:each |
		each xmlOut: anXMLWriter ].
	
	anXMLWriter endTag:'program'.! !

!AcademicProgram class methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:06:46'!
newFrom: aSpec

	| anAcademicProgram |
	
	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: aSpec programName.
	
	aSpec dayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: aSpec duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	aSpec eveningTrack
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: aSpec duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	^anAcademicProgram.
! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:23:50'!
academicYearAt: aString

	^ academicYears detect:[:eachYear | eachYear description = aString] ifFound:[:aYear | aYear] ifNone:[nil]! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 22:01:58'!
academicYears
	^academicYears ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:17:54'!
addAcademicYear: anAcademicYear

	self assert: anAcademicYear academicTrack isNil.

	self attachAcademicYear: anAcademicYear.
	
	anAcademicYear attachAcademicTrack: self.! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:21:05'!
attachAcademicYear: anAcademicYear

	academicYears add: anAcademicYear ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:49:03'!
description
	^description! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:57'!
description: aString
	description := aString! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:21:17'!
detachAcademicYear: anAcademicYear

	academicYears remove: anAcademicYear ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:37'!
displayStringOrText
	^description! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:20:32'!
initialize

	academicYears := OrderedCollection new.! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:13:26'!
invariant

	academicYears do: [:anAcademicYear | anAcademicYear invariant ].
	
	academicYears do: [:anAcademicYear | self assert: anAcademicYear academicTrack == self ].! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:52:30'!
program
	^program! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:52:16'!
program: aProgram

	self assert: program isNil.
	
	program := aProgram! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:53:55'!
removeAcademicYear: anAcademicYear

	self assert: anAcademicYear academicTrack == self.
	
	anAcademicYear detach.
	
	self detachAcademicYear: anAcademicYear.
	
	! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:50:52'!
xmlOut: anXMLWriter
	
	anXMLWriter startElement: 'track' attributeList: {'description' -> description } asDictionary ; endTag.
	
	academicYears do:[:each |
		each xmlOut: anXMLWriter ].
	
	anXMLWriter endTag:'track'.! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:15:20'!
addLecturer: aLecturer

	self attachLecturer: aLecturer.
	
	aLecturer attachAcademicUnit: self.
	
	! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:12:49'!
attachLecturer: aLecturer

	lecturers add: aLecturer! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:50:35'!
description

	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:12'!
detach

	module := nil.! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:00'!
detachLecturer: aLecturer

	lecturers remove: aLecturer! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:58'!
displayStringOrText
	^self description ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:45:10'!
duration
	^duration! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:45:05'!
duration: anInteger
	duration := anInteger! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:37:09'!
initialize

	lecturers := Set new! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:02:58'!
invariant
	^true! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:27:11'!
module
	^module! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:43:15'!
module: aModule

	self assert: module isNil.
	
	module := aModule! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:06'!
points
	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:15:50'!
removeLecturer: aLecturer

	self detachLecturer: aLecturer.
	
	aLecturer detachAcademicUnit: self.! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:45:57'!
setDurationIn: aModuleFactory
	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:40:11'!
xmlOut: anXMLWriter

	anXMLWriter startElement: self description attributeList: { 'duration' -> duration asString } asDictionary ; endEmptyTag: self description.! !

!AcademicUnit class methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:33:44'!
newFrom: aString

	| aFactory |
	
	aFactory := { 'הרצאה' -> Lecture . 'תרגול' -> Recitation . 'מעבדה' -> Laboratory } asDictionary.
	
	^ aFactory at: aString ifPresent:[:creator | creator new ] ifAbsent:[BrocadeError new messageText:('יחידה אקדמית לא מוכרת {1}' format:{aString}) reverse ; signal ].
! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:00'!
description

	self assert: module notNil.
	
	^ 'מעבדה'! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:20'!
points
	^ 0.7 * duration! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:16'!
setDurationIn: aModuleFactory
	aModuleFactory labDuration: duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:51:55'!
description

	self assert: module notNil.
	
	^ 'הרצאה'! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:30'!
points
	^ duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:24'!
setDurationIn: aModuleFactory
	aModuleFactory lectureDuration: duration! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:07'!
description

	self assert: module notNil.
	
	^ 'תרגול' ! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:36:41'!
points
	^  duration * 0.5! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:38'!
setDurationIn: aModuleFactory
	aModuleFactory recitationDuration: duration! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:55:09'!
academicTrack
	^track! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:46:06'!
addSemester: aSemester

	self attachSemester: aSemester.
	
	aSemester attachAcademicYear: self.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:55:40'!
attachAcademicTrack: anAcademicTrack

	self assert: track isNil.
	
	track := anAcademicTrack ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:45:42'!
attachSemester: aSemester

	semesters add: aSemester.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:29'!
description
	^description! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:22'!
description: aString
	description := aString! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:30'!
detach
	
	track := nil.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:44:47'!
detachSemester: aSemester

	semesters remove: aSemester.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:32:04'!
displayStringOrText
	^description! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:09:36'!
initialize

	semesters := OrderedCollection new. ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:06'!
invariant

	semesters do: [:aSemester | aSemester invariant ].

	semesters do: [:aSemester | self assert: aSemester academicYear == self ].
	! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:24:28'!
semesterAt: aString

	^ semesters detect:[:eachSemester | eachSemester description = aString] ifFound:[:aSemester | aSemester] ifNone:[nil]! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:05:06'!
semesters
	^semesters! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:50:27'!
xmlOut: anXMLWriter
	
	anXMLWriter startElement: 'year' attributeList: {'description' -> description } asDictionary; endTag.
	
	semesters do:[:each |
		each xmlOut: anXMLWriter ].
	
	anXMLWriter endTag:'year'.! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:17:06'!
addAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college isNil.
	
	anAcademicProgram college: self.
	
	programs add: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:18:51'!
detachAcademicProgram: anAcademicProgram

	programs remove: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 12/29/2024 20:21:54'!
programAt: aString

	^programs detect:[:eachProgram | eachProgram description = aString] ifFound:[:aProgram | aProgram] ifNone:[nil]! !

!College methodsFor: 'programs' stamp: 'DF 12/29/2024 20:45:55'!
programNames

	^programs collect:[:each | each description ] :: asOrderedCollection sort
! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 18:15:20'!
programs
	^programs! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:19:24'!
removeAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college == self.
	
	anAcademicProgram detach.
	
	self detachAcademicProgram: anAcademicProgram.! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 20:01:06'!
addSchool: aSchool

	self assert: aSchool college isNil.
	
	aSchool college: self.
	
	schools add: aSchool! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 20:00:09'!
detachSchool: aSchool

	schools remove: aSchool ! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 20:34:07'!
lecturerAt: anIntegerCode

	^schools detect:[:eachSchool | 		eachSchool lecturerAt: anIntegerCode :: notNil ] 
		ifFound:[:aSchool | 			aSchool lecturerAt: anIntegerCode ]
		ifNone:[nil]! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 20:00:38'!
removeSchool: aSchool

	self assert: aSchool college == self.
	
	aSchool detach.
	
	self detachSchool: aSchool.! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 19:57:19'!
schoolAt: aString

	^schools detect:[:eachLecturer | eachLecturer description = aString ] ifFound:[:aLecturer | aLecturer] ifNone:[nil]! !

!College methodsFor: 'schools' stamp: 'DF 1/16/2025 20:25:55'!
schools
	^schools! !

!College methodsFor: 'campuses' stamp: 'DF 1/31/2025 19:45:15'!
addCampus: aCampus

	self assert: aCampus college isNil.
	
	aCampus college: self.
	
	campuses add: aCampus.
! !

!College methodsFor: 'campuses' stamp: 'DF 1/18/2025 16:16:26'!
campusAt: aString

	^campuses detect:[:eachCampus | eachCampus description = aString ] ifFound:[:aCampus | aCampus] ifNone:[nil]! !

!College methodsFor: 'campuses' stamp: 'DF 1/18/2025 16:33:29'!
campuses
	^campuses! !

!College methodsFor: 'campuses' stamp: 'DF 12/25/2024 22:35:02'!
detachCampus: aCampus

	campuses remove: aCampus! !

!College methodsFor: 'campuses' stamp: 'DF 12/27/2024 15:13:36'!
removeCampus: aCampus

	self assert: aCampus college == self.
	
	aCampus detach.
	
	self detachCampus: aCampus.! !

!College methodsFor: 'modules' stamp: 'DF 12/27/2024 15:18:08'!
addModule: aModule

	self assert: aModule college isNil.
	
	aModule college: self.
	
	modules add: aModule! !

!College methodsFor: 'modules' stamp: 'DF 1/31/2025 22:07:44'!
addNewModule: aModuleSpec

	| program track academicYear semester aModule |
	
	program := self programAt: aModuleSpec program. 
		
	track := program trackAt: aModuleSpec track.
		
	academicYear := track academicYearAt: aModuleSpec year. 
			
	semester := academicYear semesterAt: aModuleSpec semester.
	
	aModule := Module newFrom: aModuleSpec.
	
	semester addModule: aModule.
	
! !

!College methodsFor: 'modules' stamp: 'DF 12/25/2024 22:38:09'!
detachModule: aModule

	modules remove: aModule! !

!College methodsFor: 'modules' stamp: 'DF 1/26/2025 18:55:09'!
electiveNames
	^{'חובה' . 'בחירה' }! !

!College methodsFor: 'modules' stamp: 'DF 12/29/2024 18:20:44'!
moduleAt: aCodeInteger

	^modules detect:[:eachModule | eachModule code = aCodeInteger ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!College methodsFor: 'modules' stamp: 'DF 1/11/2025 13:54:15'!
moduleNameAt: aString

	^modules detect:[:eachModule | eachModule description = aString ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!College methodsFor: 'modules' stamp: 'DF 1/9/2025 21:08:51'!
removeModule: aModule

	self assert: aModule college == self.
	
	aModule semesters do:[:eachSemester | eachSemester removeModule: aModule ].
	
	aModule detach.
	
	self detachModule: aModule.! !

!College methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:40:20'!
description
	^description! !

!College methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:40:15'!
description: aString
	description := aString! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:35:18'!
academicYearNames

	^{ 'שנה 1' . 'שנה 2' . 'שנה 3' . 'שנה 4' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 20:52:31'!
availableHoursForDay: aDayInteger

	self assert: aDayInteger >=1 ; assert: aDayInteger <=6.
	
	aDayInteger = 6
		ifTrue:[^ 8 to: 14 ]
		ifFalse:[^ 8 to: 23 ]
	
	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 14:16:29'!
importAcademicProgram: aFileEntry

	| aReadStream aCSVReader headers programIndex trackIndex academicYearIndex semesterIndex moduleCodeIndex moduleDescriptionIndex moduleLectureIndex moduleRecitationIndex moduleLabIndex  |

	aReadStream := aFileEntry readStream.
	
	aCSVReader := NeoCSVReader on: aReadStream.
	
	headers := Dictionary new.
	
	aCSVReader next withIndexDo:[:eachName :eachIndex | headers at: eachName put: eachIndex].
	
	programIndex := headers at: 'תוכנית לימודים'.

	trackIndex := headers at: 'מסלול'.
	
	academicYearIndex := headers at: 'שנה'.
	
	semesterIndex := headers at: 'סמסטר'.
	
	moduleCodeIndex := headers at: 'קוד קורס'.
	
	moduleDescriptionIndex := headers at: 'שם קורס'.
	
	moduleLectureIndex := headers at: 'הרצאה'.
	
	moduleRecitationIndex := headers at: 'תרגול'.
	
	moduleLabIndex := headers at: 'מעבדה'.
	
	aCSVReader do:[:eachRow | | aProgram aTrack aYear aSemester aModule lectureDuration recitationDuration labDuration |
		
		aProgram := self programAt: (eachRow at: programIndex).
		
		aTrack := aProgram trackAt: ('מסלול {1}' format: {eachRow at: trackIndex }).
		
		aYear := aTrack academicYearAt: ('שנה {1}' format: {eachRow at: academicYearIndex}).
		
		aSemester := aYear semesterAt: ('סמסטר {1}' format:{eachRow at: semesterIndex}).
		
		aModule := Module new.
		
		aModule code: (Number readFrom: (eachRow at: moduleCodeIndex)) ; description: (eachRow at: moduleDescriptionIndex).
		
		lectureDuration := Number readFrom: (eachRow at: moduleLectureIndex).
		
		recitationDuration := Number readFrom: (eachRow at: moduleRecitationIndex).
		
		labDuration := Number readFrom: (eachRow at: moduleLabIndex).
		
		lectureDuration > 0 ifTrue:[ | aLecture |
			aLecture := Lecture new.
			
			aLecture duration: lectureDuration.
			
			aModule addAcademicUnit: aLecture ].
		
		recitationDuration > 0 ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			
			aRecitation duration: recitationDuration.
			
			aModule addAcademicUnit: aRecitation ].

		labDuration > 0 ifTrue:[ | aLab |
			aLab := Laboratory new.
			
			aLab duration: labDuration.
			
			aModule addAcademicUnit: aLab ].
		
		aSemester addModule: aModule.
		
		self addModule: aModule ]
		! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 14:24:49'!
importAcademicStaff: aFileEntry

	| aReadStream aCSVReader headers  schoolIndex lecturerCodeIndex firstNameIndex familyNameIndex rankIndex quotaIndex |

	aReadStream := aFileEntry readStream.
	
	aCSVReader := NeoCSVReader on: aReadStream.
	
	headers := Dictionary new.
	
	aCSVReader next withIndexDo:[:eachName :eachIndex | headers at: eachName put: eachIndex].
	
	schoolIndex := headers at: 'בית ספר'.

	lecturerCodeIndex := headers at: 'קוד מרצה'.
	
	firstNameIndex := headers at: 'שם פרטי'.
	
	familyNameIndex := headers at: 'שם משפחה'.
	
	rankIndex := headers at: 'דרגה'.
	
	quotaIndex := headers at: 'שעות למשרה'.
	
	aCSVReader do:[:eachRow | | aSchool aLecturer |
		
		aSchool := self schoolAt: (eachRow at: schoolIndex).
		
		aLecturer := Lecturer new.
			
		aLecturer 
			code: (Number readFrom: (eachRow at: lecturerCodeIndex)) ; 
			description: ('{1} {2}' format:{ eachRow at: firstNameIndex . eachRow at: familyNameIndex }) ;
			rank: (eachRow at: rankIndex );
			quota: (Number readFrom: (eachRow at: quotaIndex )).
			
		aSchool addLecturer: aLecturer.
		
	]
		! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:56:53'!
initialize

	campuses := Set new.
	
	modules := Set new.
	
	schools := Set new.
	
	programs := Set new.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:03:21'!
invariant

	programs do: [:anAcademicProgram | anAcademicProgram invariant ].

	programs do: [:anAcademicProgram | self assert: anAcademicProgram college == self ].
	
	campuses do: [:aCampus | aCampus invariant ].

	campuses do: [:aCampus | self assert: aCampus college == self ].

	modules do: [:aModule | aModule invariant ].

	modules do: [:aModule | self assert: aModule college == self ].

	schools do: [:aSchool | aSchool invariant ].

	schools do: [:aSchool | self assert: aSchool college == self ].
	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 14:36:53'!
lecturerRanks

	^`{'סגל בכיר' . 'סגל זוטר' . 'מרצה מן החוץ' }` asOrderedCollection! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:34:54'!
semesterNames

	^{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:38:50'!
trackNames

	^{ 'מסלול יום' . 'מסלול ערב' . 'מסלול משולב' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:49:30'!
xmlOut: anXMLWriter
	
	anXMLWriter startElement: 'college' attributeList: {'description' -> description } asDictionary ; endTag.
	
	anXMLWriter startTag: 'campuses' ; endTag.
	campuses do:[:each |
		each xmlOut: anXMLWriter].
	anXMLWriter endTag: 'campuses'.
	
	anXMLWriter startTag: 'modules' ; endTag.
	modules do:[:each |
		each xmlOut: anXMLWriter ].
	anXMLWriter endTag: 'modules'.
	
	anXMLWriter startTag: 'programs' ; endTag.
	programs do:[:each |
		each xmlOut: anXMLWriter ].
	anXMLWriter endTag: 'programs'.
	
	anXMLWriter endTag: 'college'.! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module isNil.
	
	anAcademicUnit module: self.
	
	units add: anAcademicUnit ! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:54:17'!
attachAcademicUnit: aUnit

	units add: aUnit! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:53:58'!
attachSemester: aSemester

	semesters add: aSemester! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:15:08'!
code
	^code! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:14:59'!
code: anInteger
	code := anInteger! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:14:26'!
college
	^college! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:54:48'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:53:46'!
description
	^description! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:53:38'!
description: aString
	description := aString! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 21:08:31'!
detach

	college := nil.! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:44:35'!
detachAcademicUnit: aUnit

	units remove: aUnit! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:54:16'!
detachSemester: aSemester

	semesters remove: aSemester! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:42:31'!
elective
	^elective
	! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:41:22'!
elective: aBoolean
	elective := aBoolean! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:41:31'!
initialize

	college := nil.
	
	units := Set new.
	
	semesters := Set new.
	
	elective := false.! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:52'!
invariant

	units do: [:aUnit | aUnit invariant ].

	units do: [:aUnit | self assert: aUnit module == self ].
	! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:51:54'!
programs

	| table |
	
	table := OrderedCollection new.

	semesters do:[:eachSemester |
		table add: { eachSemester  . eachSemester academicYear  . eachSemester academicYear academicTrack  . eachSemester academicYear academicTrack program  } ].
	
	^table
! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:54:40'!
removeAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module == self.
	
	anAcademicUnit detach.
	
	self detachAcademicUnit: anAcademicUnit 
	
	"TODO: remove all the assignments for this unit"! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:57:28'!
semesters
	^semesters ! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:20:32'!
unitAt: aString
	^ units detect:[:eachUnit | eachUnit description = aString ] ifNone:[nil]! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:51:51'!
units
	^units! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:35:19'!
updateAcademicUnit: aString duration: anInteger

	| aUnit |
	
	self assert: anInteger >= 0.
		
	aUnit := self unitAt: aString.
	
	aUnit isNil and:[ anInteger = 0] 
		::ifTrue:[ ^self].
		
	aUnit 
		ifNil:[
			aUnit := AcademicUnit newFrom: aString.
			self addAcademicUnit: aUnit].
	
	anInteger = 0
		ifTrue:[
			self removeAcademicUnit: aUnit ]
		ifFalse:[
			aUnit duration: anInteger ].! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:51:18'!
xmlOut: anXMLWriter

	anXMLWriter startElement: 'module' attributeList: {'code' -> code asString . 'description' -> description . 'elective' -> elective asString } asDictionary ; endTag.
	
	units do:[:eachUnit |
		eachUnit xmlOut: anXMLWriter ].
	
	anXMLWriter endTag:'module'.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:00:11'!
academicYear
	^academicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:39:48'!
addModule: aModule

	aModule attachSemester: self.
	
	self attachModule: aModule.
	
	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 	| anAssignment |
				
				eachStencil assignments do:[:x | self assert: (x unit ~= eachUnit) ].

				anAssignment := Assignment new.
		
				anAssignment unit: eachUnit.
			
				eachStencil addAssignment: anAssignment ] ].
		! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:31:03'!
addStencil: aStencil
	
	self assert: aStencil semester isNil.
	
	aStencil attachSemester: self.
	
	self attachStencil: aStencil. ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:43:56'!
attachAcademicYear: anAcademicYear

	self assert: academicYear isNil.
	
	academicYear := anAcademicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:20'!
attachModule: aModule

	modules add: aModule! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:31:50'!
attachStencil: aStencil

	stencils add: aStencil! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:37'!
description
	^description! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:42'!
description: aString
	description := aString! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:56:05'!
detach

	academicYear := nil.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:55:00'!
detachModule: aModule

	modules remove: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:32:27'!
detachStencil: aStencil

	stencils remove: aStencil! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 20:20:23'!
displayStringOrText
	^description! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:55'!
initialize

	stencils := Set new.
	
	modules := Set new.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:07:02'!
invariant

	stencils do: [:aStencil | aStencil invariant ].

	stencils do: [:aStencil | self assert: aStencil semester == self ].
	! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:31:36'!
modules
	^modules! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:33:03'!
removeModule: aModule

	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 					
				eachStencil assignments select:[:eachAssignment | 	eachAssignment unit = eachUnit ] ::
					do:[:eachAssignment |
						eachStencil removeAssignment: eachAssignment ] ] ].

	aModule detachSemester: self.
	
	self detachModule: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:32:58'!
removeStencil: aStencil

	self assert: aStencil semester == self.
	
	aStencil detach.
	
	self detachStencil: aStencil.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:02:44'!
stencils
	^stencils! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 15:52:11'!
xmlOut: anXMLWriter
	
	anXMLWriter startElement: 'semester' attributeList: {'description' -> description } asDictionary ; endTag.
	
	modules do:[:eachModule |
		anXMLWriter startElement: 'module' attributeList: { 'code' -> eachModule code asString } asDictionary ; endEmptyTag: 'module' ].
	
	anXMLWriter endTag:'semester'.! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:15:58'!
background
	^ `Color fromHexString:'#aaaaaa'`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 20:18:53'!
defaultWindowColor
	^ `Color fromHexString:'#bbbbbb'`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:20:41'!
embossedButtonLabels
	"Currently only apply to rounded buttons!!"

	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:20:51'!
embossedTitles
	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:18:16'!
menu
	^ `Color white`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:39:35'!
paneBackgroundFrom: aColor
	^ Color white! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:37:21'!
textPane
	^ `Color white`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:21:26'!
useTaskbar
	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:35:20'!
useUniformColors
	^true! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:35:21'!
aboutToGrab: submorph

	submorph isKindOf: BrocadeTableCellItem 
		:: ifFalse:[ 		^nil]. 
	
	^submorph  ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:04'!
aboutToGrabAssignment: anAssignmentMorph

	self subclassResponsibility ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:39:20'!
aboutToGrabClassroom: aClassroomMorph

	self subclassResponsibility ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:25'!
aboutToGrabLecturer: aLecturerMorph

	self subclassResponsibility ! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:36:58'!
handlesMouseOver: aMorphicEvent
	^true! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:43'!
mouseEnter: evt
	self color: selectedColor! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:47'!
mouseLeave: evt
	self color: notSelectedColor! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 21:32:20'!
rightToLeft: aBoolean

	submorphs first rightToLeft: aBoolean! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:12:08'!
initialExtent
	^ super initialExtent ! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:02:31'!
update: aSymbol
	self changed: aSymbol! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 16:46:00'!
programIndex
	
	^ programIndex! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 2/3/2025 09:22:25'!
programIndex: anIndex

	programIndex := anIndex.

	self updateLabel.
	
	self changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/10/2025 18:07:02'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 16:46:08'!
trackIndex
	
	^ trackIndex! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 09:20:53'!
trackIndex: anIndex

	trackIndex := anIndex.
	
	self updateLabel.
	
	self changed: #years; changed: #semesterNames; changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 19:26:34'!
tracks
	
	| programs index |
	
	programIndex = 0 ifTrue:[^{}].
	
	programs := self programs.
	
	programs ifEmpty:[^{}].
	
	index := programIndex min: programs size.
		
	^programs at: index :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 09:23:14'!
updateLabel

	trackIndex = 0 or: [programIndex = 0] ::
		ifTrue:[
			self setLabel: 'תוכניות לימודים'.
			]
		ifFalse:[
			| programName trackName |

			programName := self programs at: programIndex :: description.
	
			trackName := self tracks at: trackIndex :: description.
	
			self setLabel: ('תוכנית לימודים: {1} {2}' format:{ programName . trackName }) asBidi.
			]	
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 2/1/2025 15:06:32'!
selectedSemesters

	| semesterNames selectedNames |
	
	semesterNames := self semesterNames.
	
	selectedNames := selectedSemesters select:[:index | index <= semesterNames size ] :: collect:[:index |
semesterNames at: index ].
	
	^self semesters select:[:eachSemester | selectedNames includes: eachSemester description].
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 16:46:21'!
semesterIndex
	
	^ semesterIndex! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/31/2025 20:32:24'!
semesterIndex: anIndex

	semesterIndex := anIndex.
	
	self changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:05:24'!
semesterNames

	^ self semesters collect:[:each | each description ] :: asOrderedCollection sort
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:06:58'!
semesterSelectionAt: anIndex
	
	^ selectedSemesters includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:07:21'!
semesterSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedSemesters add: anIndex ]
		ifFalse:[
			selectedSemesters remove: anIndex ].
		
	self changed: #unitsTable ; changed: #summary! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/31/2025 20:35:55'!
semesters
	
	| semesters years |
	
	semesters := Set new.
	
	years := self years.
	
	selectedYears do:[:index | 
		index <= years size 
			ifTrue:[	semesters addAll: (years at:index) semesters ] ].
	
	^ semesters 
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/31/2025 20:38:21'!
selectEntitiesIn: aTuple 

	" { a Semester . an AcademicYear . anAcademicTrack . an AcademicProgram } "
	
	programIndex := self programs indexOf: (aTuple at: 4).
	
	trackIndex := self tracks indexOf: (aTuple at:3). 
	
	yearIndex := self years indexOf: (aTuple at:2).
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := self semesters asOrderedCollection sort:[:x :y | x description <= y description] :: indexOf: (aTuple at:1).
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/31/2025 20:38:29'!
selectFirstEntitiesIn: aProgram

	programIndex := self programs find: aProgram.
	
	trackIndex := 1. 
	
	yearIndex := 1.
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := 1.
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/16/2025 21:22:26'!
selectUnit: aUnitIndex

	aUnitIndex <= 1 
		ifTrue:[
			unitIndex := nil.
			^self].
	
	unitIndex := self units at: aUnitIndex - 1 . "minus 1 to account for the header, see unitsTable"
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/16/2025 21:22:26'!
selectedUnit
	^unitIndex at:1! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/10/2025 18:11:13'!
summary

	| hours points units |
	
	units := self units collect:[:eachTuple | eachTuple at:1].
	
	units ifEmpty:[^''] .
	
	hours := units inject: 0 into:[:acc :eachUnit | acc + eachUnit duration ].
		
	points := units inject: 0 into:[:acc :eachUnit | acc + eachUnit points ].
	
	^'סך הכול {1} שעות, {2} נקודות זכות.' format: { hours printString reverse . points printStringFractionDigits:1 :: reverse } :: reverse! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 2/1/2025 15:07:08'!
units

	| selectedElectiveNames semesters units |

	selectedElectiveNames := selectedElectives collect:[:i | self electiveNames at:i].	

	units := OrderedCollection new.

	semesters := self selectedSemesters .
	
	semesters asOrderedCollection sort:[:x :y | x academicYear description < y academicYear description or:[x academicYear description = y academicYear description and: [x description <= y description] ] ] ::
	
	do:[:eachSemester |	 | modules |
		modules := 		eachSemester modules select:[:eachModule |
			(eachModule elective and:[selectedElectiveNames includes: 'בחירה']) 			or:
			[eachModule elective not and:[selectedElectiveNames includes: 'חובה'] ] ].
		
		modules asOrderedCollection sort:[:x :y | x code <= y code ] :: do:[:eachModule |
			eachModule units asOrderedCollection sort:[:x :y | x description <= y description] :: do:[:eachUnit |
				units add: { eachUnit . eachSemester  } ] ] ].
	
	^units
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/26/2025 13:24:47'!
unitsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	self units do:[:eachTuple | | unit semester year |
		unit := eachTuple at:1.
		semester := eachTuple at:2.
		year := semester academicYear.
		table add: { 
			{ unit points } .  
			{ unit duration } . 
			{ unit description } . 
			{ unit module description } . 
			{ unit module code } .
			{ semester description }  . 
			{ year  } } ] .
	
	^table
! !

!AcademicProgramBrowser methodsFor: 'initialization' stamp: 'DF 1/26/2025 18:56:53'!
initialize

	super initialize.
	
	programIndex := 0.
	
	yearIndex := 0.
	
	selectedYears := Set new.
	
	trackIndex := 0.
	
	semesterIndex:= 0.
	
	selectedSemesters := Set new.
	
	unitIndex := nil.
	
	electiveIndex := 0.
	
	selectedElectives := Set new.
	
	! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 1/26/2025 18:49:33'!
electiveIndex
	
	^ electiveIndex! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 1/26/2025 18:50:04'!
electiveIndex: anIndex

	electiveIndex := anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/26/2025 18:55:21'!
electiveNames

	^model electiveNames ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/26/2025 18:56:12'!
electiveSelectionAt: anIndex
	
	^ selectedElectives includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 2/11/2025 11:21:28'!
electiveSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedElectives add: anIndex ]
		ifFalse:[
			selectedElectives remove: anIndex ifAbsent:[nil] ].
		
	self changed: #unitsTable ; changed: #summary ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:46:14'!
yearIndex
	
	^ yearIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/31/2025 20:36:21'!
yearIndex: anIndex

	yearIndex := anIndex.
	
	self changed: #semesterNames; changed: #summary; changed: #unitsTable
	! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 17:13:46'!
yearSelectionAt: anIndex
	
	^ selectedYears includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:52:03'!
yearSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedYears add: anIndex ]
		ifFalse:[
			selectedYears remove: anIndex ].
		
	self changed: #semesterNames; changed: #unitsTable ; changed: #summary ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/14/2025 22:01:33'!
years
	
	| tracks |
		
	trackIndex = 0 ifTrue:[^{}].
	
	tracks := self tracks.
	
	tracks ifEmpty:[^{}].
	
	^tracks at: trackIndex ifAbsent:[tracks last] :: academicYears :: asOrderedCollection sort:[:x :y | x description <= y description ]
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/31/2025 20:38:12'!
import: aFileEntry

	model import: aFileEntry.
	
	self programs notEmpty
		ifTrue:[programIndex := 1].
	
	self tracks notEmpty
		ifTrue:[trackIndex := 1 ].
		
	selectedYears removeAll.
	
	selectedYears addAll: self years.
	
	yearIndex := selectedYears ifEmpty:[0] ifNotEmpty:[1].
	
	selectedSemesters addAll: self semesters.
	
	semesterIndex := selectedSemesters ifEmpty:[0] ifNotEmpty: [1].
	
	model changed: #programs ; changed: #tracks ; changed: #years ; changed: #semesterNames; changed: #unitsTable; changed: #summary.
	
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/3/2025 21:41:59'!
moduleMenuSpec

	| addModuleMessage editModuleMessage removeModuleMessage |
	
	editModuleMessage := unitIndex ifNil:[nil] ifNotNil:[#openEditModuleDialog].
	
	addModuleMessage := self selectedSemesters size = 1 ifFalse:[nil] ifTrue:[#openAddModuleDialog].
	
	removeModuleMessage := unitIndex notNil and: [self selectedSemesters size = 1] :: 
		ifFalse:[nil] ifTrue:[#openRemoveModuleDialog].
	
^ {
		{ 0 .	'קורס' .				false } .
		{ 10 .	'ערוך קורס ...' . 		$e .	#window .	editModuleMessage }.
		{ 20 .	'הוסף קורס ...' .		$a . #window .	addModuleMessage } .
		{ 30 .	'-----' } .
		{ 40 .	'הסר קורס' . 			$c .	#window . 	removeModuleMessage }
	}.! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/11/2025 11:17:48'!
openAddModuleDialog

	| semesters mold aCommand aDialog position |
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].
	
	aCommand := AddModuleCommand new college: model; semester: semesters anyOne; yourself.
		
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand ;
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' asBidi ;
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/16/2025 21:22:26'!
openEditModuleDialog

	unitIndex ifNil:[^self].
	
	ModuleBrowser open: self selectedUnit module label: 'ערוך קורס' ! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/3/2025 21:17:32'!
removeModuleFromSemester

	| aModule semesters aCommand |
	
	unitIndex ifNil:[^self].
	
	aModule := self selectedUnit module.
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].
	
	aCommand := RemoveModuleCommand new module: aModule ; semester: semesters anyOne ; yourself.
	
	BrocadeCommandHistory instance do: aCommand.
! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 1/26/2025 18:45:48'!
buildAcademicUnitsTable

	| unitsTable |
	
	unitsTable := PluggableTableMorph new.
	
	unitsTable model: self ; table: #unitsTable ; rightToLeft: true ; headerRow: true.
	
	unitsTable menuNshortcutsKey: #moduleMenuSpec.
	
	unitsTable selectRowMessage: #selectUnit:.
	
	unitsTable menuFactory: BidiMenuMorph.
	
	unitsTable columnFactory: {
		7 -> (PluggableMorphFactory new formatter:[:aYear |  aYear description asBidi writingDirection: #rightToLeft  ] ; yourself) } asDictionary.
		
	^unitsTable ! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 1/26/2025 18:46:11'!
buildMorphicWindow

	| topPanel unitsMorph status |
	
	topPanel := self buildNavigationPanel.
	
	status := TextModelMorph textProvider: self textGetter: #summary.
	
	unitsMorph := self buildAcademicUnitsTable.
		
	self changed: #unitsTable.
	
	self layoutMorph addMorph: (topPanel -1.0p | 0.2p </> ( (status - 1.0p | 48f) </> (unitsMorph -1.0p | 1.0p) | 0.8p)).
	! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 1/31/2025 20:36:04'!
buildNavigationPanel

	|  electives semesters years tracks programs |

	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #tracks indexGetter: #trackIndex indexSetter: #trackIndex: .

	years := BidiPluggableListMorphOfMany withModel: self listGetter: #years primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.

	semesters := BidiPluggableListMorphOfMany withModel: self listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	electives := BidiPluggableListMorphOfMany withModel: self listGetter: #electiveNames primarySelectionGetter: #electiveIndex primarySelectionSetter: #electiveIndex: listSelectionGetter: #electiveSelectionAt: listSelectionSetter: #electiveSelectionAt:put:.
		
	
	^(electives - (1/5)p | 1p) <+> (semesters - (1/5)p | 1p) <+> (years - (1/5)p | 1p) <+> (tracks - (1/5)p | 1p) <+> (programs - (1/5)p | 1p).
! !

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:10:43'!
addAcademicProgramDialog: model

	| mold position aCommand aDialog |
	
	aCommand := AddAcademicProgramCommand new.
	
	aCommand college: model.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם התוכנית';
		on: #programName of: aCommand;
		addCondition: [:input| model programAt: input :: isNil ]  
		labeled: 'כבר קיימת תוכנית עם שם זה.';
		beRequired.

	(mold integerField)
		label: 'שנות לימוד';
		on: #duration of: aCommand;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תוכנית לימודים חייבת לפחות שנת לימוד אחת.';
		beRequired.

	(mold checkboxField )
		label: 'מסלול יום' ;
		on: #dayTrack of: aCommand.
	
	(mold checkboxField )
		label: 'מסלול ערב' ;
		on: #eveningTrack of: aCommand.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תוכנית לימודים חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
! !

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 17:57:37'!
addNewModuleDialog: model

	| mold aDialog position aCommand |

	aCommand := NewModuleCommand new college: model ; yourself.

	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand;
		addCondition:[:input :value | model moduleAt: value :: isNil ] 
		labeled: 'קיים קורס עם קוד זה.';
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: aCommand;
		addCondition:[:input | model moduleNameAt: input :: isNil ] 
		labeled: 'קיים קורס עם שם זה.';
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		addCondition:[:input :value | | lec rec lab |
			lec := mold fields at:3 :: value.
			rec := mold fields at:4 :: value.
			lab := value.
			lec + rec + lab > 0  ]
		labeled: 'קורס ללא שעות.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קורס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand  
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/3/2025 19:56:16'!
buildDetailsPane

	| detailsPane anEditModuleCommand aPane |
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	anEditModuleCommand := EditModuleCommand from: model.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: anEditModuleCommand;
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: anEditModuleCommand;
		beRequired.
	(mold checkboxField)
		label: 'קורס בחירה';
		on: #elective of: anEditModuleCommand;
		beRequired.
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: anEditModuleCommand.
	
	aPane := mold newPane.
	
	aPane buttonLabel:'עדכן פרטים' asBidi.
	
	detailsPane := LayoutMorph newColumn.
	
	detailsPane  axisEdgeWeight: #columnTop.
	
	detailsPane addMorph: aPane buildMorphicWindow.
	
	^detailsPane
	! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 19:22:36'!
buildMorphicWindow

	| programsMorph detailsPane dialog |
	
	mold rightToLeft: true.
		
	programsMorph := self buildProgramsTable.
	
	detailsPane := self buildDetailsPane.
		
	dialog := (programsMorph - 0.8p) <+> (detailsPane - 0.2p).
	
	self addMorph: dialog.
	
	self changed: #programs.
	
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 19:20:49'!
buildProgramsTable

	| programsTable |
	
		
	programsTable := PluggableTableMorph new.
	
	programsTable  model: self ; table: #programs ; rightToLeft: true ; headerRow: true.
	
	programsTable menuNshortcutsKey: #moduleMenuSpec.
	
	programsTable selectRowMessage: #selectProgram:.
	
	programsTable menuFactory: BidiMenuMorph.
	
	^programsTable	
	
! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 1/18/2025 21:07:55'!
moduleMenuSpec

^ #(
		#(0 		'תוכנית לימודים'						false)
		#(10		'הראה תוכנית לימודים' 						$g 	window 			openAcademicProgramBrowser 				)
		#(20		'-----' 		)
		#(30		'הסר מתוכנית הלימודים' 						$c 	window 			removeModuleFromSemester)
	).! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 1/11/2025 17:54:42'!
openAcademicProgramBrowser

	| aCollegeBrowser |
	
	aCollegeBrowser := AcademicProgramBrowser open: model college label: 'תוכניות לימוד'.
	
	aCollegeBrowser selectEntitiesIn: theProgram.
	
	
	! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 1/11/2025 17:05:41'!
removeModuleFromSemester
	
	theProgram ifNil:[^self].
	
	theProgram at:1 :: removeModule: model.
	
	model changed: #programs.
		
	model college changed: #unitsTable! !

!ModuleBrowser methodsFor: 'initialization' stamp: 'DF 1/19/2025 19:11:16'!
initialize

	super initialize.
	
	mold := BidiMold new.! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 13:42:42'!
programs

	| table |
	
	table := OrderedCollection new.

	table add: { 'סמסטר' . 'שנה' . 'מסלול' . 'תוכנית' }.
	
	model programs do:[:eachTuple |
		table add: (eachTuple collect:[:each | { each description asBidi writingDirection:#rightToLeft } ]) ].
	
	^table
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:59:43'!
selectProgram: aProgramIndex

	aProgramIndex <= 1 
		ifTrue:[
			theProgram := nil.
			^self].
	
	theProgram := model programs at: aProgramIndex - 1 . "minus 1 to account for the header"
	
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 20:59:06'!
update: aSymbol

	self changed: aSymbol! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:24:30'!
buildMorphicWindow

	|  top entries openButton cancelButton buttons dialog backButton upButton |
	
	backButton := PluggableButtonMorph model: nil action: nil.
	backButton iconDrawSelector: #drawLeftIcon.
	upButton := PluggableButtonMorph model: self action: #goUp.
	upButton iconDrawSelector: #drawUpIcon.

	currentDirectoryEntryMorph := directory pathName asBidi edit.
	
	currentDirectoryEntryMorph crAction: [ | dd |
		dd := currentDirectoryEntryMorph contents asDirectoryEntry.
		dd exists
			ifTrue:[
				directory := dd.
				self changed: #entryNames ]
			ifFalse:[
				currentDirectoryEntryMorph contents: directory pathName ] ].
	
	top := ((backButton + upButton) - 128f @ (16@0) align:0) + (currentDirectoryEntryMorph - 800f) | 48f.
	
	entries :=  PluggableListMorph withModel: self listGetter: #entryNames indexGetter: #entryIndex indexSetter: #entryIndex:.
	
	entries doubleClickSelector: #recurse.
	
	openButton := PluggableButtonMorph model: self action: #selectFileEntry label: 'Open'.
	cancelButton := PluggableButtonMorph model: self action: #delete label: 'Cancel'.
	
	buttons := openButton - 96f / (cancelButton - 96f).
	
	dialog := top </> ( (entries -1p |1p ) + (buttons | 64f - 0.3p) ).
	
	self addMorph: dialog
	! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:55:18'!
directory: aDirectoryEntry

	directory := aDirectoryEntry ifNil:[DirectoryEntry currentDirectory].
	
	currentDirectoryEntryMorph contents: directory pathName	.
	
	self changed: #entryNames! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:42:58'!
entries

	^directory children select: showHiddenFiles :: sort: sortBy 
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:20:15'!
entryIndex
	^theEntryIndex ! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:23:43'!
entryIndex: anInteger

	theEntryIndex := anInteger.
	
	theEntryIndex = 0 ifTrue:[^self].
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:25:40'!
entryNames

	^self entries collect:[:eachEntry | 
		eachEntry name asUnicodeString asBidi reorderBidiFileName , 		(eachEntry isDirectoryEntry 			ifTrue:[ '/' ] ifFalse:['']) ]
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:51'!
goUp

	directory parent ifNil:[^self].
	
	directory := directory parent. 
	
	currentDirectoryEntryMorph contents: directory pathName.
	
	self changed: #entryNames! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:00'!
initialize

	super initialize.
	
	directory := DirectoryEntry currentDirectory.
	
	theEntryIndex := 0.
	
	showHiddenFiles := [:x | x name size = 0 or: [ x name first ~= $.] ].
	
	sortBy := [:x :y | x name <= y name ].! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:27:37'!
recurse

	| child |
	
	theEntryIndex = 0 ifTrue:[^self].

	child := self entries at: theEntryIndex.

	child isDirectoryEntry 
		ifTrue:[
			directory := child.
			currentDirectoryEntryMorph contents: directory pathName.
			self changed: #entryNames ]! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:46:21'!
selectFileEntry

	theEntryIndex = 0 ifTrue:[^self].
	
	model perform: selectFileEntryAction with: (self entries at: theEntryIndex).
	
	self delete.
	! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:46:35'!
selectFileEntryAction: aSymbol
	selectFileEntryAction := aSymbol! !

!OpenFileDialog class methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:48:34'!
open: model start: aDirectoryEntry action: aSymbol label: aString

	| window |
	
	window := super open: model label: aString.
	
	window directory: aDirectoryEntry.
	
	window selectFileEntryAction: aSymbol.
	
	^window! !

!BrocadeCommandHistory class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:24:36'!
initialize

	"self initialize"
	
	Instance := self new.
! !

!BrocadeCommandHistory class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:24:49'!
instance

	^Instance! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:06:24'!
college: aCollege
	college := aCollege! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:10'!
dayTrack
	^dayTrack! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:06'!
dayTrack: aBoolean
	dayTrack := aBoolean ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:23:11'!
doIt

	program := AcademicProgram newFrom: self.
	
	college addAcademicProgram: program.
	
	college changed: #programs.
! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:19'!
duration
	^duration! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:16'!
duration: anInteger
	duration := anInteger ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:33'!
eveningTrack
	^eveningTrack ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:28'!
eveningTrack: aBoolean
	eveningTrack := aBoolean ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:02:21'!
initialize

	duration := 4.
	
	dayTrack := true.
	
	eveningTrack := true.! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:08'!
programName
	^programName! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:00'!
programName: aString
	programName := aString! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:17'!
title
	^ 'הוספת תוכנית לימודים חדשה'! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:17:44'!
undo

	college removeAcademicProgram: program.
	
	program := nil.
	
	college changed: #programs.
! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 11:16:28'!
code
	^code! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:35:39'!
code: anInteger
	code := anInteger! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:37:36'!
college: aCollege
	college := aCollege! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 11:19:15'!
doIt

	| module |
	
	module := college moduleAt: code.
	
	semester addModule: module.
		
	module changed: #programs.
	
	module college changed: #unitsTable ; changed: #summary.
! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:41:02'!
semester: aSemester
	semester := aSemester! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:29'!
title
	^'הוספת קורס לתוכנית לימודים'! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:37:56'!
undo

	| module |
	
	module := college moduleAt: code.

	semester removeModule: module.
	
	module changed: #programs.
	
	module college changed: #unitsTable.
! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:06:40'!
doIt
	
	| module |
	
	module := college moduleAt: code.
	
	self assert: (module semesters allSatisfy:[:aSemester | aSemester stencils isEmpty ]).
		
	super undo! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:08:38'!
title
	^'הסרת קורס מתוכנית לימודים'! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:08:58'!
undo
	super doIt! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:08:13'!
code
	^code! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:08:17'!
code: anInteger
	code := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:52'!
college: aCollege
	college := aCollege! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:44:55'!
description
	^description ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:01'!
description: aString
	description := aString! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:06'!
elective
	^elective! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:12'!
elective: aBoolean
	elective := aBoolean! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:16'!
labDuration
	^labDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:23'!
labDuration: anInteger
	labDuration := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:27'!
lectureDuration
	^lectureDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:33'!
lectureDuration: anInteger
	lectureDuration := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:38'!
recitationDuration
	^recitationDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:43'!
recitationDuration: anInteger
	recitationDuration := anInteger ! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:52:05'!
doIt

	self assert: code = module code.
	
	backup := self copy. 
	
	module description: description.
	module elective: elective.
	
	module updateAcademicUnit: 'הרצאה' duration: lectureDuration.
	module updateAcademicUnit: 'תרגול' duration: recitationDuration.
	module updateAcademicUnit: 'מעבדה' duration: labDuration.

	module college changed: #unitsTable.

	module college with: #summary.
! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:49:04'!
module: aModule
	module := aModule! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:54'!
title
	^'עריכת פרטי קורס'! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:52:53'!
undo

	self assert: code = module code.
	
	module description: backup description.
	module elective: backup elective.
	
	module updateAcademicUnit: 'הרצאה' duration: backup lectureDuration.
	module updateAcademicUnit: 'תרגול' duration: backup recitationDuration.
	module updateAcademicUnit: 'מעבדה' duration: backup labDuration.

	module college changed: #unitsTable.

	module college with: #summary.
! !

!EditModuleCommand class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:47:16'!
from: aModule

	| anEditModuleCommand |
	
	anEditModuleCommand := self new.
	
	anEditModuleCommand 
		code: aModule code ;
		description: aModule description ;
		elective: aModule elective.
		
	aModule units do:[:eachUnit | 
		eachUnit setDurationIn: anEditModuleCommand ].
	
	^anEditModuleCommand! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 17:58:38'!
doIt

	module := self makeModule! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 17:59:22'!
makeModule
	
	| aModule |
		
	aModule := Module new.
	
	aModule code: code ; description: description.
	
	lectureDuration > 0
		ifTrue:[ | aLecture |
			aLecture := Lecture new. 
			aLecture duration: lectureDuration.
			aModule addAcademicUnit: aLecture ].

	recitationDuration > 0
		ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			aRecitation duration: recitationDuration.
			aModule addAcademicUnit: aRecitation ].

	labDuration > 0 
		ifTrue:[ | aLaboratory |
			aLaboratory := Laboratory new.
			aLaboratory duration: labDuration.
			aModule addAcademicUnit: aLaboratory ].
	
	college addModule: aModule.

	^aModule! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:42:07'!
title
	^'הוספת קורס חדש' ! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:34:36'!
undo

	self assert: module notNil.
	
	college removeModule: module.
	
	module := nil.! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 21:59:58'!
doIt
	
	self assert: module semesters isEmpty.
	
	super undo! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:40'!
title
	^'הסרת קורס מהמערכת'! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:46:28'!
undo

	super doIt! !

!SequenceableCollection methodsFor: '*BrocadePlanner-accessing' stamp: 'DF 2/3/2025 10:14:17'!
at: anIndex ifPresent: aBlock

	anIndex > 0 and:[anIndex <= self size] ::
		ifTrue:[aBlock value: (self at: anIndex) ]
		! !
BrocadeCommandHistory initialize!
