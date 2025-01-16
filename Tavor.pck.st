'From Cuis7.1 [latest update: #6676] on 16 January 2025 at 10:46:41 pm'!
'Description '!
!provides: 'Tavor' 1 355!
!requires: 'Bidi' 1 0 nil!
!requires: 'Neo-CSV-Core' 1 1 nil!
!requires: 'Table' 1 0 nil!
!requires: 'MenuBar' 1 0 nil!
!requires: 'UI-Mold' 1 30 nil!
!requires: 'LayoutAlgebra' 1 11 nil!
SystemOrganization addCategory: #'Tavor-Model'!
SystemOrganization addCategory: #'Tavor-Morphic'!
SystemOrganization addCategory: #Tavor!


!classDefinition: #TavorError category: #'Tavor-Model'!
Error subclass: #TavorError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'TavorError class' category: #'Tavor-Model'!
TavorError class
	instanceVariableNames: ''!

!classDefinition: #AssignmentTableCell category: #'Tavor-Morphic'!
TableCell subclass: #AssignmentTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'AssignmentTableCell class' category: #'Tavor-Morphic'!
AssignmentTableCell class
	instanceVariableNames: ''!

!classDefinition: #LecturerTableCell category: #'Tavor-Morphic'!
TableCell subclass: #LecturerTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LecturerTableCell class' category: #'Tavor-Morphic'!
LecturerTableCell class
	instanceVariableNames: ''!

!classDefinition: #AssignmentMorph category: #'Tavor-Morphic'!
TableCellItem subclass: #AssignmentMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'AssignmentMorph class' category: #'Tavor-Morphic'!
AssignmentMorph class
	instanceVariableNames: ''!

!classDefinition: #LecturerMorph category: #'Tavor-Morphic'!
TableCellItem subclass: #LecturerMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LecturerMorph class' category: #'Tavor-Morphic'!
LecturerMorph class
	instanceVariableNames: ''!

!classDefinition: #TextFieldSentence category: #'Tavor-Morphic'!
LayoutMorph subclass: #TextFieldSentence
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TextFieldSentence class' category: #'Tavor-Morphic'!
TextFieldSentence class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgramBrowser category: #'Tavor-Morphic'!
BidiSystemWindow subclass: #AcademicProgramBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex selectedYears selectedSemesters unitIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'AcademicProgramBrowser class' category: #'Tavor-Morphic'!
AcademicProgramBrowser class
	instanceVariableNames: ''!

!classDefinition: #LecturerBrowser category: #'Tavor-Morphic'!
BidiSystemWindow subclass: #LecturerBrowser
	instanceVariableNames: 'selectedSchools schoolIndex rankIndex selectedRanks'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LecturerBrowser class' category: #'Tavor-Morphic'!
LecturerBrowser class
	instanceVariableNames: ''!

!classDefinition: #ModuleBrowser category: #'Tavor-Morphic'!
BidiSystemWindow subclass: #ModuleBrowser
	instanceVariableNames: 'mold theProgram'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'ModuleBrowser class' category: #'Tavor-Morphic'!
ModuleBrowser class
	instanceVariableNames: ''!

!classDefinition: #StencilBrowser category: #'Tavor-Morphic'!
BidiSystemWindow subclass: #StencilBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex stencilIndex theAssignment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'StencilBrowser class' category: #'Tavor-Morphic'!
StencilBrowser class
	instanceVariableNames: ''!

!classDefinition: #OpenFileDialog category: #'Tavor-Morphic'!
SystemWindow subclass: #OpenFileDialog
	instanceVariableNames: 'directory currentDirectoryEntryMorph theEntryIndex showHiddenFiles sortBy selectFileEntryAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'OpenFileDialog class' category: #'Tavor-Morphic'!
OpenFileDialog class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgram category: #'Tavor-Model'!
Object subclass: #AcademicProgram
	instanceVariableNames: 'tracks description college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicProgram class' category: #'Tavor-Model'!
AcademicProgram class
	instanceVariableNames: ''!

!classDefinition: #AcademicTrack category: #'Tavor-Model'!
Object subclass: #AcademicTrack
	instanceVariableNames: 'academicYears description program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicTrack class' category: #'Tavor-Model'!
AcademicTrack class
	instanceVariableNames: ''!

!classDefinition: #AcademicUnit category: #'Tavor-Model'!
Object subclass: #AcademicUnit
	instanceVariableNames: 'module lecturers duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicUnit class' category: #'Tavor-Model'!
AcademicUnit class
	instanceVariableNames: ''!

!classDefinition: #Laboratory category: #'Tavor-Model'!
AcademicUnit subclass: #Laboratory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Laboratory class' category: #'Tavor-Model'!
Laboratory class
	instanceVariableNames: ''!

!classDefinition: #Lecture category: #'Tavor-Model'!
AcademicUnit subclass: #Lecture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Lecture class' category: #'Tavor-Model'!
Lecture class
	instanceVariableNames: ''!

!classDefinition: #Recitation category: #'Tavor-Model'!
AcademicUnit subclass: #Recitation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Recitation class' category: #'Tavor-Model'!
Recitation class
	instanceVariableNames: ''!

!classDefinition: #AcademicYear category: #'Tavor-Model'!
Object subclass: #AcademicYear
	instanceVariableNames: 'semesters description track'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicYear class' category: #'Tavor-Model'!
AcademicYear class
	instanceVariableNames: ''!

!classDefinition: #Assignment category: #'Tavor-Model'!
Object subclass: #Assignment
	instanceVariableNames: 'room day hour unit stencil lecturers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Assignment class' category: #'Tavor-Model'!
Assignment class
	instanceVariableNames: ''!

!classDefinition: #Campus category: #'Tavor-Model'!
Object subclass: #Campus
	instanceVariableNames: 'rooms college description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Campus class' category: #'Tavor-Model'!
Campus class
	instanceVariableNames: ''!

!classDefinition: #Classroom category: #'Tavor-Model'!
Object subclass: #Classroom
	instanceVariableNames: 'campus capacity code'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Classroom class' category: #'Tavor-Model'!
Classroom class
	instanceVariableNames: ''!

!classDefinition: #College category: #'Tavor-Model'!
Object subclass: #College
	instanceVariableNames: 'campuses modules lecturers programs description schools'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'College class' category: #'Tavor-Model'!
College class
	instanceVariableNames: ''!

!classDefinition: #CollegeModel category: #'Tavor-Model'!
Object subclass: #CollegeModel
	instanceVariableNames: 'college theProgram theYear selectedYears theTrack theSemester selectedSemesters latestNewModule theSchool selectedSchools theEmployment selectedEmployments theUnit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'CollegeModel class' category: #'Tavor-Model'!
CollegeModel class
	instanceVariableNames: ''!

!classDefinition: #Lecturer category: #'Tavor-Model'!
Object subclass: #Lecturer
	instanceVariableNames: 'school rank units description assignments code quota'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Lecturer class' category: #'Tavor-Model'!
Lecturer class
	instanceVariableNames: ''!

!classDefinition: #Module category: #'Tavor-Model'!
Object subclass: #Module
	instanceVariableNames: 'college units code description semesters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Module class' category: #'Tavor-Model'!
Module class
	instanceVariableNames: ''!

!classDefinition: #School category: #'Tavor-Model'!
Object subclass: #School
	instanceVariableNames: 'college lecturers description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'School class' category: #'Tavor-Model'!
School class
	instanceVariableNames: ''!

!classDefinition: #Semester category: #'Tavor-Model'!
Object subclass: #Semester
	instanceVariableNames: 'academicYear description stencils modules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Semester class' category: #'Tavor-Model'!
Semester class
	instanceVariableNames: ''!

!classDefinition: #Stencil category: #'Tavor-Model'!
Object subclass: #Stencil
	instanceVariableNames: 'semester description assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Stencil class' category: #'Tavor-Model'!
Stencil class
	instanceVariableNames: ''!

!classDefinition: #TavorExample category: #'Tavor-Model'!
Object subclass: #TavorExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'TavorExample class' category: #'Tavor-Model'!
TavorExample class
	instanceVariableNames: ''!

!classDefinition: #AssignmentProxy category: #'Tavor-Morphic'!
Object subclass: #AssignmentProxy
	instanceVariableNames: 'assignment expanded index collision'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'AssignmentProxy class' category: #'Tavor-Morphic'!
AssignmentProxy class
	instanceVariableNames: ''!

!classDefinition: #LecturerProxy category: #'Tavor-Morphic'!
Object subclass: #LecturerProxy
	instanceVariableNames: 'lecturer expanded index collision'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LecturerProxy class' category: #'Tavor-Morphic'!
LecturerProxy class
	instanceVariableNames: ''!

!classDefinition: #TavorApplication category: #'Tavor-Morphic'!
Object subclass: #TavorApplication
	instanceVariableNames: 'model lastImportDirectory'
	classVariableNames: 'TheApplication'
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TavorApplication class' category: #'Tavor-Morphic'!
TavorApplication class
	instanceVariableNames: ''!


!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 18:06:13'!
aboutToGrab: submorph

	| aDuplicateMorph |
	
	submorph isKindOf: AssignmentMorph 
		:: ifFalse:[^nil].
	
	submorph color: Color transparent.
	
	aDuplicateMorph := submorph duplicate model: submorph model ; expand ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:40:19'!
allowsMorphDrop
	^row ~= 1 ! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 21:59:04'!
allowsSubmorphDrag
	^row ~= 1 ! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:40:37'!
wantsDroppedMorph: aMorph event: evt
	
	^ aMorph isKindOf: LecturerMorph 
! !

!LecturerTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:29:00'!
aboutToGrab: submorph

	| aDuplicateMorph |
	
	submorph isKindOf: LecturerMorph 
		:: ifFalse:[^nil].
	
	submorph color: Color transparent.
	
	aDuplicateMorph := submorph duplicate model: submorph model ; expand ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!LecturerTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:28:39'!
allowsSubmorphDrag
	^row ~= 1 ! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 19:22:51'!
aboutToBeGrabbedBy: aHand

	^model index = 0 
		ifTrue:[self] ifFalse:[nil]! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:58:22'!
build

	| aLabelMorph |
	
	self removeAllMorphs.
	
	self beColumn.
	
	aLabelMorph := NarrowLabelMorph contents: model description.
	
	aLabelMorph layoutSpec proportionalHeight: 1.0.
	
	aLabelMorph layoutSpec proportionalWidth: 1.0.
	
	self color: (model expanded			 
		ifTrue:[
			model collision
				ifTrue:[Color red alpha: 0.3]
				ifFalse:[ Color fromHexString: '#c7dbff' :: alpha:0.3] 		]
		ifFalse:[Color transparent]).	
	
	self addMorph: aLabelMorph! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 22:23:32'!
clipsSubmorphs
	^true! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:50:58'!
expand

	| code |
	
	code := '{1}' format:{model assignment unit module code} :: reverse.
	
	self submorphs first contents: ('{1} {2} {3}' format:{ code . model assignment unit module description . model assignment unit description }).
	
	self color: (Color fromHexString: '#c7dbff' :: alpha:0.25)! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 18:02:08'!
handlesMouseOver: aMorphicEvent
	^true! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:20:50'!
justDroppedInto: newOwnerMorph event: anEvent 

	self assert: model index = 0.
	
	newOwnerMorph isWorldMorph 
		ifTrue:[
			anEvent formerOwner isKindOf: WeeklyTimeTableCell
				::ifTrue:[ 
					model unassign].
			^self delete ].
	
	newOwnerMorph 	isKindOf: WeeklyTimeTableCell 
		:: ifTrue:[ 
			model assignDay: 7 - newOwnerMorph column hour: newOwnerMorph row + 6			 ]! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 19:15:41'!
justGrabbedFrom: formerOwner

	| rows |
	
	self assert: model index = 0.
	
	formerOwner isKindOf: WeeklyTimeTableCell :: 
		ifFalse:[^self].
		
	rows := formerOwner owner submorphs.

	0 to: model duration - 2 	do:[:index |
		
		rows at: rows size - (formerOwner row + index) :: submorphs first delete ].
	
	color := 	color alpha: 0.5.
! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:39:17'!
model
	^model! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:29:31'!
model: anAssignment
	model := anAssignment! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 18:07:33'!
mouseEnter: evt
	self color: (Color fromHexString: '#c7dbff' :: alpha:0.15)! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 18:02:37'!
mouseLeave: evt
	self color: Color transparent! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 19:08:52'!
rightToLeft: aBoolean

	submorphs first rightToLeft: aBoolean! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:20:10'!
aboutToBeGrabbedBy: aHand

	^self! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:43:43'!
build

	| aLabelMorph |
	
	self removeAllMorphs.
	
	self beColumn.
	
	aLabelMorph := NarrowLabelMorph contents: (model ifNil:['לא משובץ'] ifNotNil:[model description]).
	
	aLabelMorph layoutSpec proportionalHeight: 1.0.
	
	aLabelMorph layoutSpec proportionalWidth: 1.0.
	
	self color: (model expanded			 
		ifTrue:[
			model collision
				ifTrue:[Color red alpha: 0.3]
				ifFalse:[ Color fromHexString: '#c7dbff' :: alpha:0.3] 		]
		ifFalse:[Color transparent]).	
	
	self addMorph: aLabelMorph! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:20:37'!
expand

	self color: (Color fromHexString: '#c7dbff' :: alpha:0.25)! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
handlesMouseOver: aMorphicEvent
	^true! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:26:04'!
justDroppedInto: newOwnerMorph event: anEvent 

	self assert: model index = 0.
	
	newOwnerMorph isWorldMorph 
		ifTrue:[
			anEvent formerOwner isKindOf: AssignmentTableCell
				::ifTrue:[ 
					model unassign].
			^self delete ].
	
	newOwnerMorph 	isKindOf: AssignmentTableCell 
		:: ifTrue:[ 
			self halt.  ]! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
justGrabbedFrom: formerOwner

	| rows |
	
	self assert: model index = 0.
	
	formerOwner isKindOf: WeeklyTimeTableCell :: 
		ifFalse:[^self].
		
	rows := formerOwner owner submorphs.

	0 to: model duration - 2 	do:[:index |
		
		rows at: rows size - (formerOwner row + index) :: submorphs first delete ].
	
	color := 	color alpha: 0.5.
! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
model
	^model! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
model: anAssignment
	model := anAssignment! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
mouseEnter: evt
	self color: (Color fromHexString: '#c7dbff' :: alpha:0.15)! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
mouseLeave: evt
	self color: Color transparent! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:19:24'!
rightToLeft: aBoolean

	submorphs first rightToLeft: aBoolean! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 21:10:29'!
build: aStringTemplate

	| index labelText morphs |
	
	self removeAllMorphs.
	
	morphs := OrderedCollection new.
	
	index := 1.
	
	aStringTemplate allRangesOfRegexMatches: '<[a-z]+>' :: do:[:each | 
	
		labelText := aStringTemplate copyFrom: index to: each first - 1.
		
		rightToLeft ifTrue:[labelText := labelText reverse].
		
		morphs add:		 (LabelMorph contents: labelText).
		
		morphs add: (TextEntryMorph contents: (aStringTemplate copyFrom: each first + 1 to: each last - 1)).
		
		index := each last + 1].
	
	labelText := aStringTemplate copyFrom: index to: aStringTemplate size.
	
	rightToLeft ifTrue:[labelText := labelText reverse].
	
	morphs add: (LabelMorph contents: labelText).
	
	rightToLeft ifFalse:[morphs := morphs reverse].
	
	self addAllMorphs: morphs.! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:57:50'!
initialize
	super initialize.
	rightToLeft := false! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:54:58'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:51:13'!
initialExtent
	^ 1000 @ 620! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:02:31'!
update: aSymbol
	self changed: aSymbol! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 16:46:00'!
programIndex
	
	^ programIndex! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 16:47:25'!
programIndex: anIndex

	programIndex := anIndex.

	self changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #summary ; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/10/2025 18:07:02'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 16:46:08'!
trackIndex
	
	^ trackIndex! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 16:49:01'!
trackIndex: anIndex

	trackIndex := anIndex.
	
	self changed: #yearNames; changed: #semesterNames	 ; changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/10/2025 18:07:33'!
trackNames

	^self tracks collect:[:each | each description] ! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/14/2025 22:01:12'!
tracks
	
	| programs |
	
	programIndex 	= 0 ifTrue:[^{}].
	
	programs := self programs.
	
	programs ifEmpty:[^{}].
		
	^programs at: programIndex :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 16:46:21'!
semesterIndex
	
	^ semesterIndex! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 16:46:21'!
semesterIndex: anIndex

	semesterIndex := anIndex! !

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

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:04:52'!
semesters
	
	| semesters years |
	
	semesters := Set new.
	
	years := self years.
	
	selectedYears do:[:index | 
		index <= years size 
			ifTrue:[	semesters addAll: (years at:index) semesters ] ].
	
	^ semesters 
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/12/2025 17:10:44'!
selectEntitiesIn: aTuple 

	" { a Semester . an AcademicYear . anAcademicTrack . an AcademicProgram } "
	
	programIndex := self programs find: (aTuple at: 4).
	
	trackIndex := self tracks find: (aTuple at:3). 
	
	yearIndex := self years find: (aTuple at:2).
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := self semesters asOrderedCollection sort:[:x :y | x description <= y description] :: find:(aTuple at:1).
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/12/2025 17:12:21'!
selectFirstEntitiesIn: aProgram

	programIndex := self programs find: aProgram.
	
	trackIndex := 1. 
	
	yearIndex := 1.
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := 1.
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
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

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/12/2025 17:35:56'!
units

	| selectedNames semesterNames semesters units |

	units := OrderedCollection new.

	semesterNames := self semesterNames.
	
	selectedNames := 	selectedSemesters select:[:index | index <= semesterNames size ] :: collect:[:index |
semesterNames at: index ].
	
	semesters := self semesters select:[:eachSemester | selectedNames includes: eachSemester description].
	
	semesters do:[:eachSemester |	
		eachSemester modules asOrderedCollection sort:[:x :y | x code <= y code ] :: do:[:eachModule |
			eachModule units asOrderedCollection sort:[:x :y | x description <= y description] :: do:[:eachUnit |
				units add: { eachUnit . eachSemester  } ] ] ].
	
	^units
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/12/2025 19:30:19'!
unitsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	self units do:[:eachTuple | | unit semester year |
		unit := eachTuple at:1.
		semester := eachTuple at:2.
		year := semester academicYear.
		table add: { 
			{ '{1}' format:{unit points} :: reverse } .  
			{ '{1}' format:{unit duration} :: reverse } . 
			{ unit description } . 
			{ unit module description } . 
			{ '{1}' format: {unit module code} :: reverse } .
			{ semester description }  . 
			{ year description } } ] .
	
	^table
! !

!AcademicProgramBrowser methodsFor: 'initialization' stamp: 'DF 1/16/2025 21:22:26'!
initialize

	super initialize.
	
	programIndex := 0.
	
	yearIndex := 0.
	
	selectedYears := Set new.
	
	trackIndex := 0.
	
	semesterIndex:= 0.
	
	selectedSemesters := Set new.
	
	unitIndex := nil.
	! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:46:14'!
yearIndex
	
	^ yearIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:46:14'!
yearIndex: anIndex

	yearIndex := anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:50:11'!
yearNames

	^self years collect:[:each | each description ] ! !

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

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/10/2025 18:52:22'!
addModuleToAcademicProgram: fields

	| anIntegerCode programName aModule semesterName yearName trackName academicYear track program semester |
	
	anIntegerCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.
	
	semesterName := fields at:5 :: value.
	
	aModule := model moduleAt: anIntegerCode.
	
	program := model programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
				
	semester addModule: aModule.
	
	aModule changed: #programs.
	
	self changed: #unitsTable.
	 
	
	! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/10/2025 18:53:13'!
addNewAcademicProgram: fields

	| programName duration withDayTrack withEveningTrack anAcademicProgram |
	
	programName := fields at:1 :: value.
	
	duration := fields at:2 :: value.
	
	withDayTrack := fields at:3 :: value.
	
	withEveningTrack := fields at:4 :: value.
	
	model programAt: programName :: notNil
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור תוכנית אקדמית עם שם קיים.' ; signal].

	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: programName.
	
	withDayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	withEveningTrack 
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	model addAcademicProgram: anAcademicProgram.
	
	self changed: #programs ; changed: #trackNames; changed: #yearNames; changed:#semesterNames ; changed: #summary.
	! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/12/2025 16:46:21'!
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
	
	model changed: #programs ; changed: #trackNames ; changed: #yearNames ; changed: #semesterNames; changed: #unitsTable; changed: #summary.
	
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 12:57:58'!
moduleMenuSpec

^ #(
		#(0 		'קורס'						false)
		#(10		'ערוך קורס ...' 						$g 	window 			openEditModuleDialog 				)
		#(20		'-----' 		)
		#(30		'הסר קורס' 						$c 	window 			removeModuleFromSemester )
	).! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/16/2025 21:22:26'!
openEditModuleDialog

	unitIndex ifNil:[^self].
	
	ModuleBrowser open: self selectedUnit module label: 'ערוך קורס' ! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/16/2025 21:22:26'!
removeModuleFromSemester

	| aModule |
	
	unitIndex ifNil:[^self].
	
	aModule := (unitIndex at:1) module.
	
	unitIndex at:2 :: removeModule: aModule.
	
	aModule changed: #programs.
		
	model changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 1/12/2025 19:38:33'!
buildMorphicWindow

	| topPanel semesters years tracks programs unitsMorph status |
	
	semesters := BidiPluggableListMorphOfMany withModel: self listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	years := BidiPluggableListMorphOfMany withModel: self listGetter: #yearNames primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #trackNames indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	topPanel := (semesters - (1/4)p | 1p) <+> (years - (1/4)p | 1p) <+> (tracks - (1/4)p | 1p) <+> (programs - (1/4)p | 1p).
	
	status := TextModelMorph textProvider: self textGetter: #summary.
	
	unitsMorph := PluggableTableMorph new.
	
	unitsMorph model: self ; table: #unitsTable ; rightToLeft: true ; headerRow: true.
	
	unitsMorph menuNshortcutsKey: #moduleMenuSpec.
	
	unitsMorph selectRowMessage: #selectUnit:.
	
	unitsMorph menuFactory: BidiMenuMorph.
	
	self changed: #unitsTable.
	
	self layoutMorph addMorph: (topPanel -1.0p | 0.2p </> ( (status - 1.0p | 48f) </> (unitsMorph -1.0p | 1.0p) | 0.8p)).
	! !

!LecturerBrowser methodsFor: 'lecturers' stamp: 'DF 1/16/2025 21:59:59'!
lecturers

	| lecturers ranks schools |
	
	lecturers := Set new.
	
	schools := self selectedSchools.
	
	ranks := self selectedRanks.

	schools do:[:eachSchool |
		lecturers addAll:
			(eachSchool lecturers select:[:eachLecturer | ranks includes: eachLecturer rank ]) ].
		
	^lecturers asOrderedCollection sort:[:x :y | x description <= y description ]
			! !

!LecturerBrowser methodsFor: 'lecturers' stamp: 'DF 1/16/2025 22:27:22'!
lecturersTable

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'שעות למשרה'  . 'שם' . 'קוד' . 'דרגה' . 'בית ספר' }.
	
	self lecturers  :: do:[:eachLecturer |
		table add: {  
			{ '{1}' format:{eachLecturer quota} :: reverse } .  
			{ LecturerProxy new lecturer: eachLecturer ; yourself } . 
			{ '{1}' format:{ eachLecturer code } :: reverse } . 
			{ eachLecturer rank } .
			{ eachLecturer school description } } ] .
	
	^table
! !

!LecturerBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:02'!
rankIndex
	^rankIndex! !

!LecturerBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:10'!
rankIndex: anInteger
	rankIndex := anInteger! !

!LecturerBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:10:00'!
rankSelectionAt: anIndex

	^selectedRanks includes: anIndex.! !

!LecturerBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:10:20'!
rankSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedRanks add: anIndex ]
		ifFalse:[
			selectedRanks remove: anIndex ].
		
	self changed: #lecturersTable! !

!LecturerBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:42'!
ranks
	^model lecturerRanks! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:08:08'!
schoolIndex
	^schoolIndex! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:08:18'!
schoolIndex: anIndex
	schoolIndex := anIndex! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:05:06'!
schoolNames

	^self schools collect:[:eachSchool | eachSchool description ]! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:06:12'!
schoolSelectionAt: anIndex

	^selectedSchools includes: anIndex.! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:07:13'!
schoolSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedSchools add: anIndex ]
		ifFalse:[
			selectedSchools remove: anIndex ].
		
	self changed: #lecturersTable! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:04:47'!
schools

	^model schools asOrderedCollection sort:[:x :y | x description <= y description ]! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:58:50'!
selectedRanks

	| result ranks |
	
	result := OrderedCollection new.
	
	ranks := self ranks.
	
	selectedRanks do:[:index | 
		index <= ranks size 
			ifTrue:[	result add: (ranks at:index)] ].
			
	^result.

	
! !

!LecturerBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:58:24'!
selectedSchools

	| result schools |
	
	result := OrderedCollection new.
	
	schools := self schools.
	
	selectedSchools do:[:index | 
		index <= schools size 
			ifTrue:[	result add: (schools at:index)] ].
			
	^result.

	
! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:30:27'!
buildMorphicWindow

	| topPanel lecturersMorph schools employment |
	
	schools := BidiPluggableListMorphOfMany withModel: self listGetter: #schoolNames primarySelectionGetter: #schoolIndex primarySelectionSetter: #schoolIndex: listSelectionGetter: #schoolSelectionAt: listSelectionSetter: #schoolSelectionAt:put:.
	
	employment := BidiPluggableListMorphOfMany withModel: self listGetter: #ranks primarySelectionGetter: #rankIndex primarySelectionSetter: #rankIndex: listSelectionGetter: #rankSelectionAt: listSelectionSetter: #rankSelectionAt:put:.
	
	topPanel := (employment - (1/2)p | 1p) <+> (schools - (1/2)p | 1p) .
	
	lecturersMorph := PluggableTableMorph new.
	
	lecturersMorph model: self ; table: #lecturersTable ; rightToLeft: true ; headerRow: true.
	
	lecturersMorph cellFactory: LecturerTableCell.

	self layoutMorph addMorph: (topPanel -1.0p | 0.3p </> (lecturersMorph -1.0p | 0.7p)).
	
	self changed: #lecturersTable.! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:22:51'!
initialize

	super initialize.
	
	selectedSchools := Set new.
	
	selectedRanks := Set new.
	
	schoolIndex := 0.
	
	rankIndex := 0.
	
	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:55:05'!
addModuleToAcademicProgramDialog
	
		TavorApplication instance addModuleToAcademicProgramDialog: model.! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 16:52:33'!
buildMorphicWindow

	| programsMorph right dialog button updateButton |
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	(mold integerField)
		label: 'קוד הקורס:';
		on: #propertyValue of: (ValueHolder with: model code);
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold rtolStringField)
		label: 'שם הקורס';
		on: #propertyValue of: (ValueHolder with: model description);
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #propertyValue of: (ValueHolder with: (model unitAt: 'הרצאה' :: ifNil:[0] ifNotNil:[:unit | unit duration]));
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #propertyValue of: (ValueHolder with: (model unitAt: 'תרגול' :: ifNil:[0] ifNotNil:[:unit | unit duration]));
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #propertyValue of: (ValueHolder with: (model unitAt: 'מעבדה' :: ifNil:[0] ifNotNil:[:unit | unit duration]));
		beRequired.
	
	updateButton := PluggableButtonMorph model: self action:#updateModuleDetails label:'עדכן פרטים' reverse.
	
	right := LayoutMorph newColumn.
	
	right addMorph: mold renderForms | 0.5p; addMorph: updateButton.
	
	programsMorph := PluggableTableMorph new.
	
	programsMorph  model: self ; table: #programs ; rightToLeft: true ; headerRow: true.
	
	programsMorph menuNshortcutsKey: #moduleMenuSpec.
	
	programsMorph selectRowMessage: #selectProgram:.
	
	programsMorph menuFactory: BidiMenuMorph.
	
	button := PluggableButtonMorph model: self action: #addModuleToAcademicProgramDialog label:'+ הוסף שורה' reverse.
	
	self changed: #programs.
	
	dialog := (programsMorph - 0.8p / (button align:1.0)) <+> (right - 0.2p).
	
	self addMorph: dialog.
	
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:40:19'!
initialize

	super initialize.
	
	mold := Mold new.! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:54:42'!
moduleMenuSpec

^ #(
		#(0 		'תוכנית לימודים'						false)
		#(10		'הראה תוכנית לימודים' 						$g 	window 			openCollegeBrowser 				)
		#(20		'-----' 		)
		#(30		'הסר מתוכנית הלימודים' 						$c 	window 			removeModuleFromSemester)
	).! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:54:42'!
openAcademicProgramBrowser

	| aCollegeBrowser |
	
	aCollegeBrowser := AcademicProgramBrowser open: model college label: 'תוכניות לימוד'.
	
	aCollegeBrowser selectEntitiesIn: theProgram.
	
	
	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:14:30'!
programs

	| table |
	
	table := OrderedCollection new.

	table add: { 'סמסטר' . 'שנה' . 'מסלול' . 'תוכנית' }.
	
	model programs do:[:eachTuple |
		table add: (eachTuple collect:[:each | { each description } ]) ].
	
	^table
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:05:41'!
removeModuleFromSemester
	
	theProgram ifNil:[^self].
	
	theProgram at:1 :: removeModule: model.
	
	model changed: #programs.
		
	model college changed: #unitsTable! !

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

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:55:43'!
updateModuleDetails

	mold validate.
	mold isValid 
		ifTrue: [ | description lectureHours recitationHours labHours |
			
			mold save.

			description := mold fields at: 2 :: value.
			lectureHours := mold fields at:3 :: value.
			recitationHours := mold fields at:4 :: value.
			labHours := mold fields at:5 :: value.

			model description: description.
			
			model updateAcademicUnit: 'הרצאה' duration: 			lectureHours.
			model updateAcademicUnit: 'תרגול' duration: 			recitationHours.
			model updateAcademicUnit: 'מעבדה' duration: 			labHours.
			
			model college changed: #unitsTable ; changed: #summary.
		]! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:51:26'!
initialExtent
	^ 1000 @ 620! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:53:57'!
update: aSymbol
	self changed: aSymbol! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 17:54:23'!
programIndex
	
	^ programIndex! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 17:54:23'!
programIndex: anIndex

	programIndex := anIndex.

	self changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #stencilNames ; changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 1/11/2025 17:53:57'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 17:54:53'!
trackIndex
	
	^ trackIndex! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 17:54:53'!
trackIndex: anIndex

	trackIndex := anIndex.
	
	self changed: #yearNames; changed: #semesterNames	 ; changed: #stencilNames; changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/11/2025 17:53:57'!
trackNames

	^self tracks collect:[:each | each description] ! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 17:54:23'!
tracks
	
	programIndex 	= 0 ifTrue:[^{}].
		
	^self programs at: programIndex :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:58:20'!
semesterIndex
	
	^ semesterIndex! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:58:20'!
semesterIndex: anIndex

	semesterIndex := anIndex.
	
	self changed: #stencilNames; changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:57:57'!
semesterNames

	^ self semesters collect:[:each | each description ] :: asOrderedCollection sort
! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 20:19:53'!
semesters
	
	| years |
	
	yearIndex = 0 ifTrue:[^{}].
	
	years := self years.
	
	years ifEmpty:[^{}].
	
	^ years at: yearIndex ifAbsent:[years last] :: semesters ! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/12/2025 18:21:58'!
assignments

	| stencils |
	
	stencilIndex = 0 ifTrue:[^{}].
	
	stencils := self stencils asOrderedCollection sort:[:x :y | x description <= y description ].
	
	stencils ifEmpty:[^{}].
	
	^stencils at: stencilIndex :: assignments asOrderedCollection sort:[:x :y | x before:y ].
! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/16/2025 22:45:52'!
assignmentsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'חדר' . 'שעה' . 'יום' . 'מרצה' . 'סוג' . 'שם קורס' . 'קוד קורס' }.

	self assignments do:[:eachAssignment | 
		
		table add: {
			{ eachAssignment room 
				ifNil:['לא משובץ'] 
				ifNotNil:[:room | room description] } . 
			{ eachAssignment hour 
				ifNil:['לא משובץ'] 
				ifNotNil:[:hour | '{1}' format:{hour} :: reverse] } . 
			{ eachAssignment day 
				ifNil:['לא משובץ'] 
				ifNotNil:[:day | '{1}' format:{day} :: reverse ] } . 
			eachAssignment lecturers 
				collect:[:eachLecturer | 						LecturerProxy new lecturer: eachLecturer ]   .
			{ eachAssignment unit description } .
			{ eachAssignment unit module description } .
			{ AssignmentProxy new assignment: eachAssignment ; yourself } } ] .
	
	^table
! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/16/2025 17:43:49'!
autumnWeekly

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' . '' }.
	
	8 to:23 do:[:i | | aRow |
		
		aRow := OrderedCollection new.
		
		1 to:6 do:[:j |
			aRow add: OrderedCollection new ].
		
		aRow add: {MorphProvider new object: ('{1}' format:{i} :: reverse) ; morphClass: OffsetLabelMorph ;objectSetterMessage: #contents: ; yourself }.
		
		table add: aRow ].	
	
	self assignments do:[:eachAssignment | 
	
		eachAssignment day notNil and: [eachAssignment hour notNil] ::
			ifTrue:[ | cell | 
				0 to: eachAssignment unit duration -1 do:[:index | | proxy |
				
					cell := table at: 	eachAssignment hour + index - 6 :: at: 7 - eachAssignment day.
					proxy := AssignmentProxy new index:index ; assignment: eachAssignment ; expand ; yourself.
					cell notEmpty
						ifTrue:[proxy collision: true].
						
					cell add: proxy ] ] ].
	
	^table
	! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/11/2025 18:07:32'!
selectAssignment: aUnitIndex

	aUnitIndex <= 1 
		ifTrue:[
			theAssignment := nil.
			^self].
	
	theAssignment := self assignments at: aUnitIndex - 1 . "minus 1 to account for the header, see unitsTable"
	
	! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/12/2025 17:58:20'!
selectEntitiesIn: aTuple 

	" { a Stencil. a Semester . an AcademicYear . anAcademicTrack . an AcademicProgram } "
	
	programIndex := self programs find: (aTuple at: 5).
	
	trackIndex := self tracks find: (aTuple at:4). 
	
	yearIndex := self years sort:[:x :y | x description <= y description ] :: find: (aTuple at:3).
	
	semesterIndex := self semesters asOrderedCollection sort:[:x :y | x description <= y description] :: find:(aTuple at: 2).
		
	self changed: #programs ; changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #stencilNames ; changed: #assignmentsTable.
	
	! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/12/2025 17:59:40'!
selectFirstEntitiesIn: aProgram

	programIndex := self programs find: aProgram.
	
	trackIndex := 1. 
	
	yearIndex := 1.
	
	semesterIndex := 1.

	stencilIndex := 1.
		
	self changed: #programs ; changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #stencilNames ; changed: #assignmentsTable.
	
	! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/11/2025 18:07:59'!
selectedAssignment
	^theAssignment at:1! !

!StencilBrowser methodsFor: 'initialization' stamp: 'DF 1/12/2025 17:59:40'!
initialize

	super initialize.
	
	programIndex := 0.
	
	yearIndex := 0.
	
	trackIndex := 0.
	
	semesterIndex:= 0.
	
	stencilIndex := 0.
	! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 1/12/2025 17:59:40'!
stencilIndex
	^stencilIndex! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 1/12/2025 17:59:40'!
stencilIndex: anInteger

	stencilIndex := anInteger.
	
	self changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 1/11/2025 18:31:51'!
stencilNames

	^self stencils collect:[:each | each description]  :: asOrderedCollection sort! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 1/12/2025 20:20:05'!
stencils
		
	| semesters |
	
	semesterIndex = 0 ifTrue:[^{}].
	
	semesters := self semesters.
	
	semesters ifEmpty:[^{}].
	
	^semesters at: semesterIndex ifAbsent:[semesters last] :: stencils 
! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 17:56:34'!
yearIndex
	
	^ yearIndex! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 18:00:16'!
yearIndex: anIndex

	yearIndex := anIndex.
	
	self changed: #semesterNames	 ; changed: #stencilNames; changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 17:55:45'!
yearNames

	^self years collect:[:each | each description ] ! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 20:19:39'!
years
	
	| tracks |
		
	trackIndex = 0 ifTrue:[^{}].
	
	tracks := self tracks.
	
	tracks ifEmpty:[^{}].
	
	^tracks at: trackIndex ifAbsent:[tracks last] :: academicYears :: asOrderedCollection sort:[:x :y | x description <= y description ]
! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 18:11:43'!
addModuleToAcademicProgram: fields

	| anIntegerCode programName aModule semesterName yearName trackName academicYear track program semester |
	
	anIntegerCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.
	
	semesterName := fields at:5 :: value.
	
	aModule := model moduleAt: anIntegerCode.
	
	program := model programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
				
	semester addModule: aModule.
	
	aModule changed: #programs.
	
	self changed: #assignmentsTable.
	 
	
	! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 17:53:57'!
addNewAcademicProgram: fields

	| programName duration withDayTrack withEveningTrack anAcademicProgram |
	
	programName := fields at:1 :: value.
	
	duration := fields at:2 :: value.
	
	withDayTrack := fields at:3 :: value.
	
	withEveningTrack := fields at:4 :: value.
	
	model programAt: programName :: notNil
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור תוכנית אקדמית עם שם קיים.' ; signal].

	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: programName.
	
	withDayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	withEveningTrack 
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	model addAcademicProgram: anAcademicProgram.
	
	self changed: #programs ; changed: #trackNames; changed: #yearNames; changed:#semesterNames ; changed: #summary.
	! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/12/2025 17:58:20'!
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
	
	model changed: #programs ; changed: #trackNames ; changed: #yearNames ; changed: #semesterNames; changed: #assignmentsTable; changed: #summary.
	
! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 17:53:57'!
moduleMenuSpec

^ #(
		#(0 		'קורס'						false)
		#(10		'ערוך קורס ...' 						$g 	window 			openEditModuleDialog 				)
		#(20		'-----' 		)
		#(30		'הסר קורס' 						$c 	window 			removeModuleFromSemester )
	).! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 18:07:53'!
openEditModuleDialog

	theUnit ifNil:[^self].
	
	ModuleBrowser open: self selectedAssignment module label: 'ערוך קורס' ! !

!StencilBrowser methodsFor: 'menus' stamp: 'DF 1/11/2025 18:11:43'!
removeModuleFromSemester

	| aModule |
	
	theUnit ifNil:[^self].
	
	aModule := (theUnit at:1) module.
	
	theUnit at:2 :: removeModule: aModule.
	
	aModule changed: #programs.
		
	model changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 1/12/2025 23:29:04'!
buildMorphicWindow

	| topPanel stencils semesters years tracks programs assignmentsMorph aTabbedGroup autumn spring |
	
	stencils := BidiPluggableListMorph withModel: self listGetter: #stencilNames indexGetter: #stencilIndex indexSetter: #stencilIndex:.
	
	semesters := BidiPluggableListMorph withModel: self listGetter: #semesterNames indexGetter: #semesterIndex indexSetter: #semesterIndex:.
	
	years := BidiPluggableListMorph withModel: self listGetter: #yearNames indexGetter: #yearIndex indexSetter: #yearIndex:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #trackNames indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	topPanel := (stencils - (1/5)p | 1p) <+> (semesters - (1/5)p | 1p) <+> (years - (1/5)p | 1p) <+> (tracks - (1/5)p | 1p) <+> (programs - (1/5)p | 1p).
	
	assignmentsMorph := PluggableTableMorph new.
	
	assignmentsMorph model: self ; table: #assignmentsTable ; rightToLeft: true ; headerRow: true.
	
	assignmentsMorph menuNshortcutsKey: #assignmentMenuSpec.
	
	assignmentsMorph selectRowMessage: #selectAssignment:.
	
	assignmentsMorph menuFactory: BidiMenuMorph.
	
	assignmentsMorph cellFactory: AssignmentTableCell.

	self changed: #assignmentsTable.

	autumn := PluggableTableMorph new.
	
	autumn model: self ; table: #autumnWeekly ; rightToLeft: true ; headerRow: true.

	autumn cellFactory: WeeklyTimeTableCell.
	
	spring := WeeklyTimeTable new.
	
	aTabbedGroup := TabbedGroup newColumn.

	aTabbedGroup build: { 'מערכת סמסטר ב' reverse -> spring . 'מערכת סמסטר א' reverse -> autumn . 'רשימה' reverse -> assignmentsMorph }.

	aTabbedGroup color:Color white. 
	
	aTabbedGroup select:3.
	
	self layoutMorph addMorph: (topPanel -1.0p | 0.2p </> ( (aTabbedGroup -1.0p | 1.0p) | 0.8p)).
	! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 17:28:37'!
buildMorphicWindow

	|  top entries openButton cancelButton buttons dialog backButton upButton |
	
	backButton := PluggableButtonMorph model: nil action: nil.
	backButton iconDrawSelector: #drawLeftIcon.
	upButton := PluggableButtonMorph model: self action: #goUp.
	upButton iconDrawSelector: #drawUpIcon.

	currentDirectoryEntryMorph := directory pathName edit.
	
	currentDirectoryEntryMorph crAction: [ | dd |
		dd := currentDirectoryEntryMorph contents asDirectoryEntry.
		dd exists
			ifTrue:[
				directory := dd.
				self changed: #entryNames ]
			ifFalse:[
				currentDirectoryEntryMorph contents: directory pathName ] ].
	
	top := ((backButton + upButton) - 128f @ (16@0) align:0) + currentDirectoryEntryMorph  |48f.
	
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:42:48'!
entryNames

	^self entries collect:[:eachEntry | 
		eachEntry name , 		(eachEntry isDirectory 			ifTrue:[ '/' ] ifFalse:['']) ]
	
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:31'!
recurse

	| child |
	
	theEntryIndex = 0 ifTrue:[^self].

	child := self entries at: theEntryIndex.

	child isDirectory 
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

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:30'!
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

!AcademicUnit class methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:31:40'!
newFrom: aString

	| aFactory |
	
	aFactory := { 'הרצאה' -> Lecture . 'תרגול' -> Recitation . 'מעבדה' -> Laboratory } asDictionary.
	
	^ aFactory at: aString ifPresent:[:creator | creator new ] ifAbsent:[TavorError new messageText:('יחידה אקדמית לא מוכרת {1}' format:{aString}) reverse ; signal ].
! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:00'!
description

	self assert: module notNil.
	
	^ 'מעבדה'! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:20'!
points
	^ 0.7 * duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:51:55'!
description

	self assert: module notNil.
	
	^ 'הרצאה'! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:30'!
points
	^ duration! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:07'!
description

	self assert: module notNil.
	
	^ 'תרגול' ! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:36:41'!
points
	^  duration * 0.5! !

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

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:43:28'!
addLecturer: aLecturer

	aLecturer attachAssignment: self.
	
	self attachLecturer: aLecturer.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:16:56'!
attachLecturer: aLecturer
	lecturers add: aLecturer ! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 18:23:07'!
before: anAssignment

	^ unit module description < anAssignment unit module description 
	or: [ unit module description = anAssignment unit module description 
			and: [unit description <= anAssignment unit description ] ]! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:14:03'!
day
	^day! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:32:06'!
day: anInteger
	day := anInteger ! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:34'!
detach

	stencil := nil.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:17:10'!
detachLecturer: aLecturer
	lecturers remove: aLecturer ! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:36:50'!
hour
	^hour! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:32:16'!
hour: anInteger
	hour := anInteger
	! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:22:42'!
initialize

	lecturers := Set new.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:58:38'!
invariant

	lecturer units includes: unit.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:16:38'!
lecturers
	^lecturers! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:43:35'!
removeLecturer: aLecturer

	aLecturer detachAssignment: self.
	
	self detachLecturer: aLecturer.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:13:32'!
room
	^room! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:10:47'!
room: aClassroom
	room := aClassroom! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:20'!
stencil
	^stencil! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:11:44'!
stencil: aStencil

	self assert: stencil isNil.
	
	stencil := aStencil.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:47:12'!
unit
	^unit! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:11:06'!
unit: anAcademicUnit
	unit := anAcademicUnit ! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:20:37'!
addClassroom: aClassroom

	self assert: aClassroom campus isNil.
	
	aClassroom campus: self.
	
	rooms add: aClassroom.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:13:13'!
college
	^college! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:11:57'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:55:32'!
description
	^description! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:55:24'!
description: aString
	description := aString! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:39'!
detach

	college := nil.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:33:35'!
detachClassroom: aClassroom
	
	rooms remove: aClassroom.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:28:12'!
initialize

	rooms := Set new.
	
	college := nil.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:17'!
invariant

	rooms do: [:aRoom | aRoom invariant ].

	rooms do: [:aRoom | self assert: aRoom campus == self ].
	! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:25:26'!
removeClassroom: aClassroom
	
	self assert: aClassroom campus == self.
	
	aClassroom detach.
	
	self detachClassroom: aClassroom.! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:20:48'!
campus
	^campus! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:32'!
campus: aCampus
	campus := aCampus! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:11'!
capacity
	^capacity! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:00:58'!
capacity: anInteger
	capacity := anInteger! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:07'!
code
	^code! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:00:44'!
code: aString
	code := aString! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:43'!
detach

	campus := nil.! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:03:14'!
invariant
	^true! !

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

!College methodsFor: 'campuses' stamp: 'DF 12/27/2024 15:17:40'!
addCampus: aCampus

	self assert: aCampus college isNil.
	
	aCampus college: self.
	
	campuses add: aCampus! !

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

!College methodsFor: 'modules' stamp: 'DF 12/25/2024 22:38:09'!
detachModule: aModule

	modules remove: aModule! !

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:35:52'!
import: aFileEntry

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:41:13'!
lecturerRanks

	^`{'סגל בכיר' . 'סגל זוטר' . 'מורה מן החוץ' }` ! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:34:54'!
semesterNames

	^{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:38:50'!
trackNames

	^{ 'מסלול יום' . 'מסלול ערב' . 'מסלול משולב' }! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:19'!
yearIndex
	
	^ theYear! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:07'!
yearIndex: anIndex

	theYear := anIndex! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/4/2025 19:52:04'!
yearNames

	^self years collect:[:each | each description ] :: asSet asOrderedCollection sort! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 22:09:51'!
yearSelectionAt: anIndex
	
	| yearDescription |
	
	yearDescription := self yearNames at: anIndex ifAbsent:[^false].

	^ selectedYears anySatisfy:[:aYear | aYear description = yearDescription ]! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/5/2025 18:53:40'!
yearSelectionAt: anIndex put: aBoolean

	| years yearDescription |
	
	yearDescription := self yearNames at: anIndex ifAbsent:[^self].
	
	years := self years select:[:eachYear | eachYear description = yearDescription ].
	
	aBoolean 
		ifTrue:[
			selectedYears addAll: years ]
		ifFalse:[
			selectedYears removeAll: years ].
	
	theSemester := 0.
	
	selectedSemesters removeAll.
		
	self changed: #semesterNames; changed: #modules ; changed: #summary! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/4/2025 19:38:53'!
years
		
	theTrack = 0 ifTrue:[^{}].
	
	^self tracks at: theTrack :: academicYears 
! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 19:00:21'!
programIndex
	
	^ theProgram! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 1/4/2025 22:04:49'!
programIndex: anIndex

	theProgram := anIndex.

	theTrack := 0.
	
	theYear := 0.
	
	theSemester := 0.
	
	selectedYears removeAll.
	
	selectedSemesters removeAll.
		
	self changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #summary! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 21:35:41'!
programs

	^ college programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/27/2024 19:17:17'!
trackIndex
	
	^ theTrack! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 22:04:56'!
trackIndex: anIndex

	theTrack := anIndex.
	
	theYear := 0.
	
	theSemester := 0.
	
	selectedYears removeAll.
	
	selectedSemesters removeAll.	
	
	self changed: #yearNames; changed: #semesterNames	 ; changed: #summary! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 19:41:57'!
trackNames

	^self tracks collect:[:each | each description] ! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 19:42:18'!
tracks
	
	theProgram 	= 0 ifTrue:[^{}].
		
	^self programs at: theProgram :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/27/2024 19:20:49'!
semesterIndex
	
	^ theSemester! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/27/2024 19:21:29'!
semesterIndex: anIndex

	theSemester := anIndex! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:04:29'!
semesterNames

	^ self semesters collect:[:each | each description ] :: asSet asOrderedCollection sort
! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:39:28'!
semesterSelectionAt: anIndex
	
	| semesterDescription |
	
	semesterDescription := self semesterNames at: anIndex ifAbsent:[^false].

	^ selectedSemesters anySatisfy:[:aSemester | aSemester description = semesterDescription ]! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 1/4/2025 22:05:06'!
semesterSelectionAt: anIndex put: aBoolean

	| semesters semesterDescription |
	
	semesterDescription := self semesterNames at: anIndex ifAbsent:[^self].
	
	semesters := self semesters select:[:eachSemester | eachSemester description = semesterDescription ].
	
	aBoolean 
		ifTrue:[
			selectedSemesters addAll: semesters ]
		ifFalse:[
			selectedSemesters removeAll: semesters ].
		
	self changed: #modules ; changed: #summary! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 1/8/2025 20:18:25'!
semesters
	
	| semesters   |
	
	semesters := Set new.
	
	selectedYears do:[:eachYear | 
		semesters addAll: eachYear semesters ].
	
	^ semesters
! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 1/9/2025 21:14:20'!
selectUnit: aUnitIndex

	aUnitIndex <= 1 
		ifTrue:[
			theUnit := nil.
			^self].
	
	theUnit := self units at: aUnitIndex - 1 . "minus 1 to account for the header, see unitsTable"
	
	! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 1/9/2025 21:14:26'!
selectedUnit
	^theUnit at:1! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 1/7/2025 17:45:05'!
units

	| units |

	units := OrderedCollection new.
	
	selectedYears asOrderedCollection sort:[:x :y | x description <= y description ] :: 
	do:	[:eachYear |		
		eachYear semesters select:[:each | selectedSemesters includes:each ] :: asOrderedCollection sort:[:x :y | x description <= y description ] :: 
	do:[:eachSemester | 
		eachSemester modules asOrderedCollection sort:[:x :y | x code <= y code ] :: 
	do:[:eachModule |
			eachModule units asOrderedCollection sort:[:x :y | x description <= y description] :: 
	do:[:eachUnit |
		units add: { eachUnit . eachSemester . eachYear } ] ] ] ].
	
	^units
! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 1/7/2025 17:46:06'!
unitsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	self units do:[:eachTuple | | unit semester year |
		unit := eachTuple at:1.
		semester := eachTuple at:2.
		year := eachTuple at:3.
		table add: {unit points . unit duration . unit description . unit module description . '{1}' format:{ unit module  code } :: reverse . semester description  . year description } ] .
	
	^table
! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/29/2024 20:45:03'!
college
	^college! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/27/2024 18:12:46'!
college: aCollege

	college := aCollege! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/29/2024 21:26:30'!
latestNewModule

	^latestNewModule ! !

!CollegeModel methodsFor: 'initialization' stamp: 'DF 1/7/2025 18:05:37'!
initialize

	theProgram := 0.
	
	theYear := 0.
	
	selectedYears := Set new.
	
	theTrack := 0.
	
	theSemester:= 0.
	
	selectedSemesters := Set new.
	
	theSchool := 0.
	
	selectedSchools := Set new.
	
	theEmployment := 0.
	
	selectedEmployments := Set new.
	
	theUnit := nil.
	! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 21:33:46'!
addModuleToAcademicProgram: fields

	| anIntegerCode programName aModule semesterName yearName trackName academicYear track program semester |
	
	anIntegerCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.
	
	semesterName := fields at:5 :: value.
	
	aModule := college moduleAt: anIntegerCode.
	
	program := college programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
				
	semester addModule: aModule.
	
	aModule changed: #programs.
	
	self changed: #units.
	 
	
	! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:54:11'!
addNewAcademicProgram: fields

	| programName duration withDayTrack withEveningTrack anAcademicProgram |
	
	programName := fields at:1 :: value.
	
	duration := fields at:2 :: value.
	
	withDayTrack := fields at:3 :: value.
	
	withEveningTrack := fields at:4 :: value.
	
	college programAt: programName :: notNil
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור תוכנית אקדמית עם שם קיים.' ; signal].

	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: programName.
	
	withDayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	withEveningTrack 
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	college addAcademicProgram: anAcademicProgram.
	
	AcademicProgramBrowser open: self label: 'תוכניות לימוד'.
	
	self changed: #programs ; changed: #trackNames; changed: #yearNames; changed:#semesterNames.
	! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 22:06:43'!
addNewModule: fields

	| aModule aLabDurationInteger aLectureDurationInteger aRecitationDurationInteger aStringDescription anIntegerCode programNames semesterNames yearNames trackNames |
	
	aStringDescription := fields at:1 :: value.

	anIntegerCode := fields at:2 :: value.
	
	aLectureDurationInteger := fields at:3 :: value.
	
	aRecitationDurationInteger := fields at:4 :: value.
	
	aLabDurationInteger := fields at:5 :: value.

	programNames := fields at:6 :: value.

	trackNames := fields at:7 :: value.
	
	yearNames := fields at:8 :: value.
	
	semesterNames := fields at:9 :: value.
	
	college moduleAt: anIntegerCode :: notNil 
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור קורס עם קוד קיים.' ; signal].
		
	aModule := Module new.
	
	aModule code: anIntegerCode ; description: aStringDescription.
	
	aLectureDurationInteger > 0
		ifTrue:[ | aLecture |
			aLecture := Lecture new.
			aLecture duration: aLectureDurationInteger.
			aModule addAcademicUnit: aLecture ].

	aRecitationDurationInteger > 0
		ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			aRecitation duration: aRecitationDurationInteger.
			aModule addAcademicUnit: aRecitation ].

	aLabDurationInteger > 0
		ifTrue:[ | aLaboratory |
			aLaboratory := Laboratory new.
			aLaboratory duration: aLabDurationInteger.
			aModule addAcademicUnit: aLaboratory ].
		
	college addModule: aModule.
	
	self addModuleToAcademicProgram: { anIntegerCode . programNames . trackNames . yearNames . semesterNames }.
	
	self changed: #modules.
	
	latestNewModule := aModule.
	
	^aModule
		! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 22:00:20'!
employmentIndex

	^ theEmployment ! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:40:39'!
employmentIndex: anIndex

	theEmployment := anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:34:21'!
employmentNames
	^{ 'סגל בכיר' . 'סגל זוטר' . 'מרצה מן החוץ' }! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:40:55'!
employmentSelectionAt: anIndex
	
	^ selectedEmployments includes: anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:41:13'!
employmentSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[selectedEmployments add: anIndex]
		ifFalse:[selectedEmployments remove: anIndex]

! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 21:50:17'!
import: aFileEntry

	college import: aFileEntry.
	
	self programs notEmpty
		ifTrue:[theProgram := 1].
	
	self tracks notEmpty
		ifTrue:[theTrack := 1 ].
		
	selectedYears removeAll.
	
	selectedYears addAll: self years.
	
	theYear := selectedYears ifEmpty:[0] ifNotEmpty:[1].
	
	selectedSemesters addAll: self semesters.
	
	theSemester := selectedSemesters ifEmpty:[0] ifNotEmpty: [1].
	
	self changed: #programs ; changed: #trackNames ; changed: #yearNames ; changed: #semesterNames; changed: #units.
	
! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:57:10'!
lecturers

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'שעות משובצות' . 'אחוזי משרה' . 'שעות למשרה' . 'מעמד' . 'שם' }.
	
	college lecturers asOrderedCollection sort:[:x :y | x description <= y description ] :: do:[:eachLecturer |
		table add: { '{1}' format:{18} :: reverse . '{1}%' format:{80} :: reverse . '24' reverse . 'מרצה מן החוץ' . eachLecturer description } ] .
	
	^table
! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:35:21'!
schoolIndex

	^ theSchool! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:35:46'!
schoolIndex: anIndex

	theSchool := anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:33:43'!
schoolNames
	^{ 'בית הספר להנדסת תוכנה' . 'בית הספר להנדסה מכאנית' . 'בית הספר להנדסת תעשיה וניהול' . 'בית הספר להנדסת חשמל' . 'בית הספר להנדסה רפואית'  . 'היחידה למתמטיקה' . 'היחידה לפיזיקה' }! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:36:58'!
schoolSelectionAt: anIndex
	
	^ selectedSchools includes: anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:38:14'!
schoolSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[selectedSchools add: anIndex]
		ifFalse:[selectedSchools remove: anIndex]

! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:07:23'!
summary

	| hours points units |
	
	units := self units collect:[:eachTuple | eachTuple at:1].
	
	units ifEmpty:[^''] .
	
	hours := units inject: 0 into:[:acc :eachUnit | acc + eachUnit duration ].
		
	points := units inject: 0 into:[:acc :eachUnit | acc + eachUnit points ].
	
	^'סך הכול {1} שעות, {2} נקודות זכות.' format: { hours printString reverse . points printStringFractionDigits:1 :: reverse } :: reverse! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self attachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit attachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:36'!
attachAcademicUnit: anAcademicUnit

	units add: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:41:54'!
attachAssignment: anAssignment

	assignments add: anAssignment! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:34:28'!
code
	^code! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:34:23'!
code: anInteger
	code := anInteger! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:41:34'!
description
	^description! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:41:27'!
description: aString
	description := aString! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:53:14'!
detach

	school ifNil:[^self].
	
	school detachLecturer: self.
	
	school := nil. ! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:14:23'!
detachAcademicUnit: anAcademicUnit

	units remove: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:42:05'!
detachAssignment: anAssignment

	assignments remove: anAssignment! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:42:18'!
initialize

	units := Set new.
	
	assignments := Set new.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:08:05'!
invariant
	true! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:18:11'!
quota
	^quota! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:18:05'!
quota: anInteger
	quota := anInteger! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:15:03'!
rank
	^rank! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:14:58'!
rank: aString
	rank := aString! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:14:42'!
removeUnit: anAcademicUnit

	self detachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit detachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:52:40'!
school
	^school! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:53:01'!
school: aSchool

	self assert: school isNil.
	
	school := aSchool! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:58:00'!
units
	^units! !

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

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:51:07'!
initialize

	college := nil.
	
	units := Set new.
	
	semesters := Set new.! !

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

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:44:21'!
removeAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module == self.
	
	anAcademicUnit detach.
	
	self detachAcademicUnit: anAcademicUnit ! !

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

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:11:27'!
addLecturer: aLecturer

	self assert: aLecturer school isNil.
	
	self attachLecturer: aLecturer. 
	
	aLecturer school: self.! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:50:34'!
attachLecturer: aLecturer

	lecturers add: aLecturer ! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:02'!
college 
	^college! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:48:40'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege.! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:26'!
description
	^description ! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:37'!
description: aString
	description := aString! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:41'!
detach

	college := nil! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:51:03'!
detachLecturer: aLecturer

	lecturers remove: aLecturer ! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:48'!
displayStringOrText
	^description! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:49:57'!
initialize
	lecturers := Set new! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:13:55'!
invariant

	lecturers do:[:eachTrack | eachTrack invariant ].

	lecturers do:[:eachTrack | eachTrack school == self ].
	! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:12:02'!
lecturerAt: anInteger

		^lecturers detect:[:eachLecturer | eachLecturer code = anInteger] ifFound:[:aLecturer | aLecturer] ifNone:[nil]! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 21:23:12'!
lecturers
	^lecturers! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:54:47'!
removeLecturer: aLecturer

	self assert: aLecturer school == self.
	
	self detachLecturer: aLecturer.
	
	aLecturer detach.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:00:11'!
academicYear
	^academicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:05'!
addModule: aModule

	aModule attachSemester: self.
	
	self attachModule: aModule.! !

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

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:54:47'!
removeModule: aModule

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

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:14:28'!
addAssignment: anAssignment

	self assert: anAssignment stencil isNil.
	
	self attachAssignment: anAssignment.
	
	anAssignment stencil: self.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:22:50'!
assignments
	^assignments! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:14:40'!
attachAssignment: anAssignment

	assignments add: anAssignment ! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:30:48'!
attachSemester: aSemester

	semester := aSemester ! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:34:25'!
description
	^description! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:34:34'!
description: aString
	description := aString! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:56:10'!
detach

	semester := nil.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:24'!
detachAssignment: anAssignment

	self assert: anAssignment stencil == self.
	
	assignments remove: anAssignment
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:32'!
initialize

	assignments := Set new! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:07:18'!
invariant

	assignments do: [:anAssignment | anAssignment invariant ].

	assignments do: [:anAssignment | self assert: anAssignment stencil == self ].
	
	assignments do: [:anAssignment | self assert: anAssignment unit module semesters includes: semester  ].
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:46:47'!
removeAssignment: anAssignment

	self assert: anAssignment stencil == self.
	
	anAssignment detach.
	
	self detachAssignment: anAssignment
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:30:57'!
semester
	^semester! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:18:58'!
assignDay: aDayInteger hour: anHourInteger

	assignment day: aDayInteger ; hour: anHourInteger.
	assignment unit module college changed: #assignmentsTable ! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:11:26'!
assignment
	^assignment! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 19:31:41'!
assignment: anAssignment
	assignment := anAssignment ! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 20:23:28'!
collision
	^collision! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 20:22:33'!
collision: aBoolean
	collision := true! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:28:12'!
description

	| code |
	
	code := '{1}' format:{ assignment unit module code } :: reverse.
	
	^expanded
		ifTrue:[
			'{1} {2} {3}' format:{ code . assignment unit module description . assignment unit description } ]
		ifFalse:[
			code].
	
! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 19:07:51'!
duration
	^assignment unit duration! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 23:37:38'!
expand
	expanded := true! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:11:49'!
expanded
	^expanded! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:11:21'!
index
	^index! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:09:28'!
index: anInteger
	index := anInteger! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 20:22:41'!
initialize

	expanded := false.
	
	index := 0.
	
	collision := false.! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:12:39'!
morph

	| anAssignmentMorph |
	
	anAssignmentMorph := AssignmentMorph newRow model:self ; build ; yourself.
	
	"expanded 
		ifTrue:[anAssignmentMorph expand]."
		
	^anAssignmentMorph 
	
	! !

!AssignmentProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:17:13'!
unassign

	assignment day: nil ;  hour: nil.	
	assignment unit module college changed: #assignmentsTable.! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
collision
	^collision! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
collision: aBoolean
	collision := true! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:18:28'!
description

	^lecturer description! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
expand
	expanded := true! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
expanded
	^expanded! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
index
	^index! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
index: anInteger
	index := anInteger! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:19'!
initialize

	expanded := false.
	
	index := 0.
	
	collision := false.! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:53'!
lecturer
	^lecturer! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:17:09'!
lecturer: aLecturer
	lecturer := aLecturer ! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:26:27'!
morph

	| aLecturerMorph |
	
	aLecturerMorph := LecturerMorph newRow model:self ; build ; yourself.
		
	^aLecturerMorph 
	
	! !

!LecturerProxy methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:13:42'!
unassign

	lecturer day: nil ;  hour: nil.	
	lecturer unit module college changed: #assignmentsTable.! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/10/2025 21:02:31'!
addModuleToAcademicProgram: fields

	| anIntegerCode programName aModule semesterName yearName trackName academicYear track program semester |
	
	anIntegerCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.
	
	semesterName := fields at:5 :: value.
	
	aModule := model moduleAt: anIntegerCode.
	
	program := model programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
				
	semester addModule: aModule.
	
	aModule changed: #programs.
	
	model changed: #unitsTable.
	 
	
	! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:43:11'!
addModuleToAcademicProgramDialog

	self addModuleToAcademicProgramDialog: nil.
	
! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/10/2025 19:37:05'!
addModuleToAcademicProgramDialog: aModule

	| mold programs tracks years semesters aDialog position |
	
	mold := Mold new.
	
	programs := ListMultiModel with: model  programNames.

	tracks := ListMultiModel with: model  trackNames.
	
	years := ListMultiModel with: model  academicYearNames.

	semesters := ListMultiModel with: model semesterNames.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #propertyValue of: (ValueHolder new propertyValue: (aModule ifNil:[nil] ifNotNil:[aModule code]) ; yourself);
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' ;
		beRequired.
	(mold fields add: BidiSelectField new)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: BidiSelectField new)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: BidiSelectField new)
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: BidiSelectField new)
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addModuleToAcademicProgram: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/10/2025 19:12:57'!
addNewModule: fields

	| aModule aLabDurationInteger aLectureDurationInteger aRecitationDurationInteger aStringDescription anIntegerCode programNames semesterNames yearNames trackNames |
	
	aStringDescription := fields at:1 :: value.

	anIntegerCode := fields at:2 :: value.
	
	aLectureDurationInteger := fields at:3 :: value.
	
	aRecitationDurationInteger := fields at:4 :: value.
	
	aLabDurationInteger := fields at:5 :: value.

	programNames := fields at:6 :: value.

	trackNames := fields at:7 :: value.
	
	yearNames := fields at:8 :: value.
	
	semesterNames := fields at:9 :: value.
	
	model moduleAt: anIntegerCode :: notNil 
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור קורס עם קוד קיים.' ; signal].
		
	aModule := Module new.
	
	aModule code: anIntegerCode ; description: aStringDescription.
	
	aLectureDurationInteger > 0
		ifTrue:[ | aLecture |
			aLecture := Lecture new.
			aLecture duration: aLectureDurationInteger.
			aModule addAcademicUnit: aLecture ].

	aRecitationDurationInteger > 0
		ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			aRecitation duration: aRecitationDurationInteger.
			aModule addAcademicUnit: aRecitation ].

	aLabDurationInteger > 0
		ifTrue:[ | aLaboratory |
			aLaboratory := Laboratory new.
			aLaboratory duration: aLabDurationInteger.
			aModule addAcademicUnit: aLaboratory ].
		
	model addModule: aModule.
	
	self addModuleToAcademicProgram: { anIntegerCode . programNames . trackNames . yearNames . semesterNames }.
	
	model changed: #unitsTable.
	
	^aModule
		! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:15:36'!
addNewModuleDialog

	| mold programs tracks years semesters aDialog position |

	programs := ListMultiModel with: model programNames.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם הקורס';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input | model moduleNameAt: input :: isNil ] 
		labeled: 'קיים קורס עם שם זה.';
		beRequired.
	(mold integerField)
		label: 'קוד הקורס:';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | model moduleAt: value :: isNil ] 
		labeled: 'קיים קורס עם קוד זה.';
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		addCondition:[:input :value | | lec rec lab |
			lec := mold fields at:3 :: value.
			rec := mold fields at:4 :: value.
			lab := value.
			lec + rec + lab > 0  ]
		labeled: 'קורס ללא שעות.' ;
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | model programAt: (mold fields at: 6) value :: trackAt: value :: notNil ] 
		labeled: 'לא קיים מסלול כזה בתוכנית הלימודים שבחרת.';
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track |
			program := 		model programAt: (mold fields at: 6) value.
			track := program trackAt: (mold fields at:7 ) value.
			track notNil and: [track academicYearAt: value :: notNil ] ] 
		labeled: 'שנת לימוד זו לא קיימת במסלול שבחרת.';
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track year |
			program := 		model programAt: (mold fields at: 6) value.
			track := program trackAt: (mold fields at:7 ) value.
			year := track isNil ifTrue:[nil] ifFalse:[track academicYearAt: (mold fields at:8) value].
			track notNil and: [year notNil] and:[year semesterAt: value :: notNil ] ] 
		labeled: 'סמסטר זה לא קיימת במסלול שבחרת.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קורס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewModule: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:55:59'!
openSearchModuleDialog

! !

!TavorApplication methodsFor: 'programs' stamp: 'DF 1/12/2025 20:01:27'!
addNewAcademicProgram: fields

	| programName duration withDayTrack withEveningTrack anAcademicProgram aCollegeBrowser |
	
	programName := fields at:1 :: value.
	
	duration := fields at:2 :: value.
	
	withDayTrack := fields at:3 :: value.
	
	withEveningTrack := fields at:4 :: value.
	
	model programAt: programName :: notNil
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור תוכנית אקדמית עם שם קיים.' ; signal].

	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: programName.
	
	withDayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	withEveningTrack 
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	model addAcademicProgram: anAcademicProgram.
	
	aCollegeBrowser := AcademicProgramBrowser open: model label: 'תוכניות לימוד'.
	
	aCollegeBrowser selectFirstEntitiesIn: anAcademicProgram.
	
	model changed: #programs.
	! !

!TavorApplication methodsFor: 'programs' stamp: 'DF 1/11/2025 13:43:36'!
addNewAcademicProgramDialog

	| mold position aDialog |
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם התוכנית';
		on: #propertyValue of: ValueHolder new;
		addCondition: [:input| model programAt: input :: isNil ]  
		labeled: 'כבר קיימת תוכנית עם שם זה.';
		beRequired.

	(mold integerField)
		label: 'שנות לימוד';
		on: #propertyValue of: (ValueHolder with:4);
		addCondition:[:input :value | value > 0 ]
		labeled: 'תוכנית לימודים חייבת לפחות שנת לימוד אחת.';
		beRequired.

	(mold checkboxField )
		label: 'מסלול יום' ;
		on: #propertyValue of: (ValueHolder with: true).
	
	(mold checkboxField )
		label: 'מסלול ערב' ;
		on: #propertyValue of: (ValueHolder with: true).
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תוכנית לימודים חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewAcademicProgram: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'programs' stamp: 'DF 1/12/2025 20:51:36'!
openAcademicProgramBrowser

	AcademicProgramBrowser open: model label: 'תוכניות לימוד' 
! !

!TavorApplication methodsFor: 'stencils' stamp: 'DF 1/12/2025 20:23:03'!
addNewStencil: fields

	| stencilCode programName trackName yearName semesterName aStencil program track year semester |
	
	stencilCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.

	semesterName := fields at:5 :: value.
	
	program := model programAt: programName.	

	track := program trackAt: trackName.
	
	year := track academicYearAt: yearName.

	semester := year semesterAt: semesterName.
		
	aStencil := Stencil new.
	
	aStencil description: ('תבנית {1}' format:{stencilCode}).
	
	semester modules do:[:eachModule | 
		
			eachModule units do:[:eachUnit | | anAssignment |
		
			anAssignment := Assignment new.
		
			anAssignment unit: eachUnit.
			
		aStencil addAssignment: anAssignment. ] ].

	semester addStencil: aStencil.
	
	
	model changed: #stencilNames		 
			
		! !

!TavorApplication methodsFor: 'stencils' stamp: 'DF 1/12/2025 20:15:10'!
addNewStencilDialog

	| mold position aDialog programs tracks years semesters |
	
	mold := Mold new.

	programs := ListMultiModel with: model programNames.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.	

	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד התבנית' ;
		on: #propertyValue of: ValueHolder new;
		beRequired.
		
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | model programAt: (mold fields at: 2) value :: trackAt: value :: notNil ] 
		labeled: 'לא קיים מסלול כזה בתוכנית הלימודים שבחרת.';
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track |
			program := 		model programAt: (mold fields at: 2) value.
			track := program trackAt: (mold fields at:3 ) value.
			track notNil and: [track academicYearAt: value :: notNil ] ] 
		labeled: 'שנת לימוד זו לא קיימת במסלול שבחרת.';
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track year |
			program := 		model programAt: (mold fields at: 2) value.
			track := program trackAt: (mold fields at:3 ) value.
			year := track isNil ifTrue:[nil] ifFalse:[track academicYearAt: (mold fields at:4) value].
			track notNil and: [year notNil] and:[year semesterAt: value :: notNil ] ] 
		labeled: 'סמסטר זה לא קיימת במסלול שבחרת.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תבנית חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewStencil: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'stencils' stamp: 'DF 1/11/2025 18:19:19'!
openStencilBrowser

	StencilBrowser open: model label: 'תבניות'.
! !

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/16/2025 21:47:43'!
addNewLecturer: fields

	| schoolName school lecturerName lecturerCode quota rank aLecturer |
	
	schoolName := fields at:1 :: value.
	
	school := model schoolAt: schoolName.
	
	lecturerCode := fields at:2 :: value.
	
	lecturerName := fields at:3 :: value.
	
	rank := fields at:4 :: value.
	
	quota := fields at:5 :: value.
	
	aLecturer := Lecturer new.
	
	aLecturer description: lecturerName ; code: lecturerCode ; rank: rank; quota: quota.
	
	school addLecturer: aLecturer.
	
	! !

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/16/2025 21:42:51'!
addNewLecturerDialog

	| schools mold position aDialog |
	
	mold := Mold new.
	
	mold rightToLeft: true.

	schools := ListModel with: (model schools collect:[:eachSchool | eachSchool description] :: asOrderedCollection sort).
	
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'בית ספר';
		on: #listIndex of: schools;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.

	(mold integerField)
		label: 'מזהה מרצה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | model lecturerAt: value :: isNil ]
		labeled: 'קיים מרצה עם מזהה זה.' ;
		beRequired.
	
	(mold rtolStringField)
		rightToLeft: true;
		label: 'שם המרצה';
		on: #propertyValue of: ValueHolder new;
		beRequired.

	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'מעמד מרצה';
		on: #listIndex of: (ListModel with: model lecturerRanks :: listIndex: 1) ;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
		
	(mold integerField)
		label: 'שעות למשרה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תן לנו לפחות שעה אחת.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'מרצה חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewLecturer: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/16/2025 20:23:23'!
addNewSchool: fields

	| schoolName aSchool |
	
	schoolName := fields at:1 :: value.
	
	aSchool := School new.
	
	aSchool description: schoolName.
	
	model addSchool: aSchool.
	
	! !

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/16/2025 20:22:41'!
addNewSchoolDialog

	| mold position aDialog |
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם בית הספר';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input | model schoolAt: input :: isNil ] 
		labeled: 'קיים בית ספר בשם זה.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'בית ספר חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewSchool: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:50:18'!
import: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model import: aFileEntry.
	
"	CollegeBrowser open: model label: 'תוכניות לימוד'."
	
	! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 20:20:07'!
menuBar

	| aMenuBar |
	
	aMenuBar := MenuBar new.

	aMenuBar menusRightToLeft: { 
	{ 'קובץ' . { 
		{ 'חדש' . self . #newAction }  . 
		{ 'פתח ...' . self . #openAction } . 
		{ 'שמור' . self . #saveAction } . 
		{ 'שמור בשם ...' . self . #saveAsAction } .
		$| .
		{'יבא תוכניות לימודים ...' . self . #openImportDialog } .
		{'יצא תוכנית לימודים ...' . self . #exportAction } .
		$| .
		{ 'סגור' . self . #exitAction } } } .  
	{ 'עריכה' . {
		{ 'ביטול' . self . #undoAction } .
		{ 'ביצוע מחדש'. self . #redoAction } .
		$| .
		{ 'גזור' . self . #cutAction } .
		{ 'העתק' . self . #copyAction } .
		{ 'הדבק' . self . #pasteAction } } } .
	{ 'תוכנית לימוד' . {
		{'הצג תוכניות לימודים' . self . #openAcademicProgramBrowser } .
		{ 'תוכנית לימוד חדשה ...' . self . #addNewAcademicProgramDialog } 
		 } } .
	{ 'קורס' . {
		{ 'קורס חדש ...' . self . #addNewModuleDialog } .
		{ 'הוסף קורס לתוכניות לימודים ...' . self . #addModuleToAcademicProgramDialog } .
		{ 'הוסף קורס לרפרטואר מרצה ...' . self . #cutAction } 
		 } } .
	{ 'בית ספר' . {
		{ 'הצג בתי ספר' . self . #openSchoolBrowser } .
		{ 'בית ספר חדש ...' . self . #addNewSchoolDialog } .
		$| .	
		{ 'הצג מרצים' . self .#openLecturerBrowser } .
		{ 'מרצה חדשה ...' . self . #addNewLecturerDialog } 
		 } } .
	{ 'חדר' . {
		{ 'קמפוס חדש ...' . self . #cutAction } .
		{ 'חדר חדש ...' . self . #cutAction } 
		 } } .
	{ 'תבנית' . {
		{ 'הצג תבניות' . self . #openStencilBrowser } .
		{ 'תבנית חדשה ...' . self . #addNewStencilDialog } 
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 18:15:10'!
open

	| aCollege |
	
	aCollege := College new.

	aCollege invariant.

	model := aCollege.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:57:08'!
openImportDialog

	OpenFileDialog open:self start: lastImportDirectory action: #import: label:'Select File'! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:58:25'!
openLecturerBrowser

	LecturerBrowser open: model label: 'מרצים'.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 16:38:15'!
showCollapsedWindows

	| windows menu |
	
	windows := UISupervisor ui submorphs select:[:each | each isKindOf: SystemWindow :: and: [each isCollapsed ] ].
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	windows do:[:eachWindow | 
		(menu add: eachWindow label reverse target: eachWindow action: #show) color: Theme current buttonLabel ].
	
	^menu! !

!TavorApplication class methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:24:09'!
instance

	TheApplication 
		ifNil:[
			TheApplication := self new.
			TheApplication menuBar.
		].
	
	^TheApplication
	
! !

!TavorApplication class methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:24:42'!
open

	self instance menuBar ; open.	
! !

!MenuMorph methodsFor: '*Tavor' stamp: 'DF 1/7/2025 16:17:39'!
rtolAdd: aString action: aSymbol

	self rtolAdd: aString target: defaultTarget action: aSymbol  argumentList: #()! !

!MenuMorph methodsFor: '*Tavor' stamp: 'DF 1/11/2025 12:52:03'!
rtolAdd: aString target: target action: aSymbol argumentList: argList
	"Append a menu item with the given label. If the item is selected, it will send the given selector to the target object with the given arguments. If the selector takes one more argument than the number of arguments in the given list, then the triggering event is supplied as as the last argument.  Answer the appended menu item."

	| item |
	item := BidiMenuItemMorph new
		contents: aString;
		target: target selector: aSymbol arguments: argList asArray.
	self addMorphBack: item.
	^ item! !
