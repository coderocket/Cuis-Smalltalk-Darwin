'From Cuis7.1 [latest update: #6676] on 29 January 2025 at 9:54:35 pm'!
'Description '!
!provides: 'Tavor' 1 563!
!requires: 'Bidi' 1 0 nil!
!requires: 'Neo-CSV-Core' 1 1 nil!
!requires: 'Table' 1 0 nil!
!requires: 'MenuBar' 1 0 nil!
!requires: 'UI-Mold' 1 30 nil!
!requires: 'LayoutAlgebra' 1 11 nil!
SystemOrganization addCategory: #'Tavor-Model'!
SystemOrganization addCategory: #'Tavor-Morphic'!
SystemOrganization addCategory: #Tavor!
SystemOrganization addCategory: #'Tavor-AcademicProgram'!
SystemOrganization addCategory: #'Tavor-Campus'!
SystemOrganization addCategory: #'Tavor-Application'!
SystemOrganization addCategory: #'Tavor-Stencil'!
SystemOrganization addCategory: #'Tavor-School'!
SystemOrganization addCategory: #'Tavor-Resource'!


!classDefinition: #TavorError category: #'Tavor-Model'!
Error subclass: #TavorError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'TavorError class' category: #'Tavor-Model'!
TavorError class
	instanceVariableNames: ''!

!classDefinition: #TavorTableCell category: #'Tavor-Morphic'!
TableCell subclass: #TavorTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TavorTableCell class' category: #'Tavor-Morphic'!
TavorTableCell class
	instanceVariableNames: ''!

!classDefinition: #ClassroomTableCell category: #'Tavor-Campus'!
TavorTableCell subclass: #ClassroomTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Campus'!
!classDefinition: 'ClassroomTableCell class' category: #'Tavor-Campus'!
ClassroomTableCell class
	instanceVariableNames: ''!

!classDefinition: #LecturerTableCell category: #'Tavor-School'!
TavorTableCell subclass: #LecturerTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-School'!
!classDefinition: 'LecturerTableCell class' category: #'Tavor-School'!
LecturerTableCell class
	instanceVariableNames: ''!

!classDefinition: #AssignmentTableCell category: #'Tavor-Stencil'!
TavorTableCell subclass: #AssignmentTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Stencil'!
!classDefinition: 'AssignmentTableCell class' category: #'Tavor-Stencil'!
AssignmentTableCell class
	instanceVariableNames: ''!

!classDefinition: #WeeklyTimeTableCell category: #'Tavor-Stencil'!
TavorTableCell subclass: #WeeklyTimeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Stencil'!
!classDefinition: 'WeeklyTimeTableCell class' category: #'Tavor-Stencil'!
WeeklyTimeTableCell class
	instanceVariableNames: ''!

!classDefinition: #ResourceTimeTableCell category: #'Tavor-Resource'!
WeeklyTimeTableCell subclass: #ResourceTimeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Resource'!
!classDefinition: 'ResourceTimeTableCell class' category: #'Tavor-Resource'!
ResourceTimeTableCell class
	instanceVariableNames: ''!

!classDefinition: #TavorTableCellItem category: #'Tavor-Morphic'!
TableCellItem subclass: #TavorTableCellItem
	instanceVariableNames: 'selectedColor notSelectedColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TavorTableCellItem class' category: #'Tavor-Morphic'!
TavorTableCellItem class
	instanceVariableNames: ''!

!classDefinition: #ClassroomMorph category: #'Tavor-Campus'!
TavorTableCellItem subclass: #ClassroomMorph
	instanceVariableNames: 'assignment room'
	classVariableNames: 'ClassroomImage'
	poolDictionaries: ''
	category: 'Tavor-Campus'!
!classDefinition: 'ClassroomMorph class' category: #'Tavor-Campus'!
ClassroomMorph class
	instanceVariableNames: ''!

!classDefinition: #LecturerMorph category: #'Tavor-School'!
TavorTableCellItem subclass: #LecturerMorph
	instanceVariableNames: 'lecturer'
	classVariableNames: 'LecturerImage'
	poolDictionaries: ''
	category: 'Tavor-School'!
!classDefinition: 'LecturerMorph class' category: #'Tavor-School'!
LecturerMorph class
	instanceVariableNames: ''!

!classDefinition: #AssignmentMorph category: #'Tavor-Stencil'!
TavorTableCellItem subclass: #AssignmentMorph
	instanceVariableNames: 'model index collision enableGrabbing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Stencil'!
!classDefinition: 'AssignmentMorph class' category: #'Tavor-Stencil'!
AssignmentMorph class
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

!classDefinition: #StencilLabel category: #'Tavor-Stencil'!
NarrowLabelMorph subclass: #StencilLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Stencil'!
!classDefinition: 'StencilLabel class' category: #'Tavor-Stencil'!
StencilLabel class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgramBrowser category: #'Tavor-AcademicProgram'!
BidiSystemWindow subclass: #AcademicProgramBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex selectedYears selectedSemesters unitIndex electiveIndex selectedElectives'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-AcademicProgram'!
!classDefinition: 'AcademicProgramBrowser class' category: #'Tavor-AcademicProgram'!
AcademicProgramBrowser class
	instanceVariableNames: ''!

!classDefinition: #ModuleBrowser category: #'Tavor-AcademicProgram'!
BidiSystemWindow subclass: #ModuleBrowser
	instanceVariableNames: 'mold theProgram'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-AcademicProgram'!
!classDefinition: 'ModuleBrowser class' category: #'Tavor-AcademicProgram'!
ModuleBrowser class
	instanceVariableNames: ''!

!classDefinition: #CampusBrowser category: #'Tavor-Campus'!
BidiSystemWindow subclass: #CampusBrowser
	instanceVariableNames: 'campusIndex floorIndex selectedFloors selectedRoomIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Campus'!
!classDefinition: 'CampusBrowser class' category: #'Tavor-Campus'!
CampusBrowser class
	instanceVariableNames: ''!

!classDefinition: #ResourceTimeTable category: #'Tavor-Resource'!
BidiSystemWindow subclass: #ResourceTimeTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Resource'!
!classDefinition: 'ResourceTimeTable class' category: #'Tavor-Resource'!
ResourceTimeTable class
	instanceVariableNames: ''!

!classDefinition: #LecturerBrowser category: #'Tavor-School'!
BidiSystemWindow subclass: #LecturerBrowser
	instanceVariableNames: 'mold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-School'!
!classDefinition: 'LecturerBrowser class' category: #'Tavor-School'!
LecturerBrowser class
	instanceVariableNames: ''!

!classDefinition: #SchoolBrowser category: #'Tavor-School'!
BidiSystemWindow subclass: #SchoolBrowser
	instanceVariableNames: 'selectedSchools schoolIndex rankIndex selectedRanks selectedLecturerIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-School'!
!classDefinition: 'SchoolBrowser class' category: #'Tavor-School'!
SchoolBrowser class
	instanceVariableNames: ''!

!classDefinition: #StencilBrowser category: #'Tavor-Stencil'!
BidiSystemWindow subclass: #StencilBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex stencilIndex theAssignment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Stencil'!
!classDefinition: 'StencilBrowser class' category: #'Tavor-Stencil'!
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

!classDefinition: #TavorApplication category: #'Tavor-Application'!
Object subclass: #TavorApplication
	instanceVariableNames: 'model lastImportDirectory'
	classVariableNames: 'TheApplication'
	poolDictionaries: ''
	category: 'Tavor-Application'!
!classDefinition: 'TavorApplication class' category: #'Tavor-Application'!
TavorApplication class
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

!classDefinition: #AcademicResource category: #'Tavor-Model'!
Object subclass: #AcademicResource
	instanceVariableNames: 'assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicResource class' category: #'Tavor-Model'!
AcademicResource class
	instanceVariableNames: ''!

!classDefinition: #Classroom category: #'Tavor-Model'!
AcademicResource subclass: #Classroom
	instanceVariableNames: 'campus capacity code floor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Classroom class' category: #'Tavor-Model'!
Classroom class
	instanceVariableNames: ''!

!classDefinition: #Lecturer category: #'Tavor-Model'!
AcademicResource subclass: #Lecturer
	instanceVariableNames: 'school rank units description code quota'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Lecturer class' category: #'Tavor-Model'!
Lecturer class
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
	instanceVariableNames: 'rooms day hour unit stencil lecturers'
	classVariableNames: 'DayHebrewNames'
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Assignment class' category: #'Tavor-Model'!
Assignment class
	instanceVariableNames: ''!

!classDefinition: #AssignmentRule category: #'Tavor-Model'!
Object subclass: #AssignmentRule
	instanceVariableNames: 'violations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AssignmentRule class' category: #'Tavor-Model'!
AssignmentRule class
	instanceVariableNames: ''!

!classDefinition: #ResourceRule category: #'Tavor-Model'!
AssignmentRule subclass: #ResourceRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'ResourceRule class' category: #'Tavor-Model'!
ResourceRule class
	instanceVariableNames: ''!

!classDefinition: #StencilRule category: #'Tavor-Model'!
AssignmentRule subclass: #StencilRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'StencilRule class' category: #'Tavor-Model'!
StencilRule class
	instanceVariableNames: ''!

!classDefinition: #Campus category: #'Tavor-Model'!
Object subclass: #Campus
	instanceVariableNames: 'rooms college description firstFloor lastFloor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Campus class' category: #'Tavor-Model'!
Campus class
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

!classDefinition: #Module category: #'Tavor-Model'!
Object subclass: #Module
	instanceVariableNames: 'college units code description semesters elective'
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

!classDefinition: #Violation category: #'Tavor-Model'!
Object subclass: #Violation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Violation class' category: #'Tavor-Model'!
Violation class
	instanceVariableNames: ''!

!classDefinition: #FreeDayViolation category: #'Tavor-Model'!
Violation subclass: #FreeDayViolation
	instanceVariableNames: 'stencil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'FreeDayViolation class' category: #'Tavor-Model'!
FreeDayViolation class
	instanceVariableNames: ''!

!classDefinition: #OverlapViolation category: #'Tavor-Model'!
Violation subclass: #OverlapViolation
	instanceVariableNames: 'assignments overlap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'OverlapViolation class' category: #'Tavor-Model'!
OverlapViolation class
	instanceVariableNames: ''!


!TavorTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 20:27:44'!
aboutToGrab: submorph

	submorph isKindOf: TavorTableCellItem 
		:: ifFalse:[ 		^nil]. 
	
	^submorph  ! !

!TavorTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:04'!
aboutToGrabAssignment: anAssignmentMorph

	self subclassResponsibility ! !

!TavorTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:39:20'!
aboutToGrabClassroom: aClassroomMorph

	self subclassResponsibility ! !

!TavorTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:25'!
aboutToGrabLecturer: aLecturerMorph

	self subclassResponsibility ! !

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 17:52:08'!
aboutToGrabClassroom: aClassroomMorph

	| aDuplicateMorph |
	
	aClassroomMorph color: Color transparent.
	
	aDuplicateMorph := aClassroomMorph duplicate room: aClassroomMorph room ; assignment: aClassroomMorph assignment ; expand ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 20:04:55'!
allowsSubmorphDrag
	^row ~= 1 ! !

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:24:09'!
minimumExtent
	^`0@78`! !

!LecturerTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 19:20:00'!
aboutToGrabAssignment: anAssignmentMorph

	self assert: (anAssignmentMorph isKindOf: AssignmentMorph).
	
	anAssignmentMorph model unassign.
	
	^anAssignmentMorph ! !

!LecturerTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 19:09:02'!
aboutToGrabLecturer: aLecturerMorph

	| aDuplicateMorph |
	
	aLecturerMorph color: Color transparent.
	
	aDuplicateMorph := aLecturerMorph duplicate lecturer: aLecturerMorph lecturer ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!LecturerTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/16/2025 22:28:39'!
allowsSubmorphDrag
	^row ~= 1 ! !

!LecturerTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 20:09:14'!
minimumExtent
	^`0@78`! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 09:22:49'!
assignmentInRow

	| aColumn |
	
	aColumn := self owner owner submorphs at: 1 :: submorphs.
	
	^aColumn at: aColumn size - row + 1 :: submorphs at:1 :: model  ! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:27:25'!
minimumExtent
	^`0@78`! !

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 20:15:06'!
wantsDroppedMorph: aMorph event: evt
	
	^ aMorph isKindOf: TavorTableCellItem
! !

!AssignmentTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/17/2025 20:08:44'!
aboutToGrabAssignment: anAssignmentMorph

	| aDuplicateMorph |

	self assert: (anAssignmentMorph isKindOf: AssignmentMorph).
	
	aDuplicateMorph := anAssignmentMorph duplicate model: anAssignmentMorph model ; expand ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!AssignmentTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 19:20:15'!
aboutToGrabClassroom: aClassroomMorph

	self assert: (aClassroomMorph isKindOf: ClassroomMorph).

	aClassroomMorph room ifNil:[^nil].
	
	aClassroomMorph unassign: self assignmentInRow.
	
	^aClassroomMorph ! !

!AssignmentTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 19:05:03'!
aboutToGrabLecturer: aLecturerMorph

	self assert: (aLecturerMorph isKindOf: LecturerMorph).

	aLecturerMorph lecturer ifNil:[^nil].
	
	aLecturerMorph unassign: self assignmentInRow.
	
	^aLecturerMorph ! !

!AssignmentTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/16/2025 22:40:19'!
allowsMorphDrop
	^row ~= 1 ! !

!AssignmentTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/11/2025 21:59:04'!
allowsSubmorphDrag
	^row ~= 1 ! !

!WeeklyTimeTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/20/2025 23:13:56'!
aboutToGrabAssignment: anAssignmentMorph

	self assert: (anAssignmentMorph isKindOf: AssignmentMorph).

	anAssignmentMorph unassign.
	
	^anAssignmentMorph ! !

!WeeklyTimeTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/11/2025 21:52:54'!
acceptDroppingMorph: aMorph event: evt
	
	aMorph morphExtent: self morphExtent.
	
	self addMorph: aMorph proportionalWidth: 1.0.! !

!WeeklyTimeTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/17/2025 20:32:39'!
allowsMorphDrop
	^column ~= 7 and: 	[row ~= 1] ! !

!WeeklyTimeTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/11/2025 21:52:32'!
allowsSubmorphDrag
	^row ~= 1 and:[column ~= 7]! !

!WeeklyTimeTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/17/2025 20:32:31'!
wantsDroppedMorph: aMorph event: evt
	
	^aMorph isKindOf: AssignmentMorph 
! !

!ResourceTimeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:24:57'!
allowsMorphDrop
	^false! !

!ResourceTimeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:25:11'!
allowsSubmorphDrag
	^false! !

!TavorTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:36:58'!
handlesMouseOver: aMorphicEvent
	^true! !

!TavorTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:43'!
mouseEnter: evt
	self color: selectedColor! !

!TavorTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:47'!
mouseLeave: evt
	self color: notSelectedColor! !

!TavorTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 21:32:20'!
rightToLeft: aBoolean

	submorphs first rightToLeft: aBoolean! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:19:26'!
assign: anAssignment

	self assert: anAssignment notNil ; assert: room notNil.
	
	anAssignment addClassroom: room.
	
	anAssignment lecturers do:[:eachLecturer | eachLecturer changed: #assignmentsTable] .
	
	room campus college changed: #assignmentsTable.! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:21:33'!
build

	| aLabelMorph aString |
	
	self removeAllMorphs.
	
	aString := room ifNil:['לא משובץ'] ifNotNil:['{1}' format:{room code}].
	
	aLabelMorph := NarrowLabelMorph contents: aString asBidi.
	
	aLabelMorph morphWidth: aLabelMorph measureContents x.
	
	aLabelMorph layoutSpec offAxisEdgeWeight: 0.5.

	aLabelMorph layoutSpec proportionalHeight: 1.0.	 
	
	self addMorph: aLabelMorph.
	
	self axisEdgeWeight: 0.0.

	room ifNil:[
		aLabelMorph color: (Color fromHexString:'#cccccc')].
	
	self color: notSelectedColor.! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:08:07'!
drawOn: aCanvas

	| aForm |
	
	super drawOn: aCanvas.
	
	aForm := ClassroomImage magnifyBy: self morphHeight / 2 / ClassroomImage height.
	
	aCanvas image: aForm at: self morphExtent - aForm extent / 2 + (0@5).

	
	! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 17:54:08'!
expand

	| label |
	
	label := self submorphs first.
	
	label  contents: ('{1} {2}' format:{ room campus description . room code } :: asBidi).
	label morphWidth: label measureContents x.

! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:24:48'!
initialize

	super initialize.
	
	notSelectedColor := Color fromHexString: '#fcfcdc' :: alpha:0.3	.
	
	selectedColor := notSelectedColor darker.
! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 20:05:41'!
room
	^room! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 18:30:07'!
room: aClassroom
	room := aClassroom ! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:19:46'!
unassign: anAssignment

	self assert: room notNil.
	
	anAssignment removeClassroom: room.

	anAssignment lecturers do:[:eachLecturer | eachLecturer changed: #assignmentsTable] .
	
! !

!ClassroomMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/21/2025 22:38:54'!
aboutToBeGrabbedBy: aHand

	^owner aboutToGrabClassroom: self! !

!ClassroomMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/22/2025 22:02:11'!
justDroppedInto: newOwnerMorph event: anEvent 

	newOwnerMorph isWorldMorph 
		ifTrue:[
			room campus college changed: #assignmentsTable.
			^self delete ].
	
	(newOwnerMorph 	isKindOf: AssignmentTableCell) and:[newOwnerMorph column = 1] 		:: 
		ifTrue:[  
			self assign: newOwnerMorph assignmentInRow]
		ifFalse:[
			self delete]			 ! !

!ClassroomMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/23/2025 22:20:12'!
initialize

	"self initialize"

	| aFileEntry |
		
	aFileEntry := '/home/davidf/src/Cuis-Smalltalk-Darwin/classroom.png' asFileEntry.

	ClassroomImage := ImageReadWriter formFromFileEntry: aFileEntry.
! !

!ClassroomMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:25:31'!
new: aClassroom

	| aClassroomMorph |
	
	aClassroomMorph := self newColumn.
	
	aClassroomMorph room: aClassroom; build.

	aClassroom notNil ifTrue:[aClassroomMorph borderColor: (Color fromHexString: '#dddddd' ) ; borderWidth:2].
	
	^aClassroomMorph ! !

!LecturerMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/22/2025 20:13:04'!
aboutToBeGrabbedBy: aHand

	^owner aboutToGrabLecturer: self! !

!LecturerMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 18:44:46'!
justDroppedInto: newOwnerMorph event: anEvent 

	newOwnerMorph isWorldMorph 
		ifTrue:[
			lecturer school college changed: #assignmentsTable.
			^self delete ].
	
	newOwnerMorph 	isKindOf: AssignmentTableCell 		:: 
		ifTrue:[  
			self assign: newOwnerMorph assignmentInRow]
		ifFalse:[
			self delete]			 ! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:01:36'!
assign: anAssignment

	self assert: anAssignment notNil ; assert: lecturer notNil.
	
	anAssignment addLecturer: lecturer.
	
	lecturer changed: #assignmentsTable.
	
	lecturer school college changed: #assignmentsTable.
	
! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:17:32'!
build

	| aLabelMorph |
	
	self removeAllMorphs.
	
	aLabelMorph := NarrowLabelMorph contents: (lecturer ifNil:['לא משובץ' asBidi] ifNotNil:[lecturer description]).
	
	aLabelMorph morphExtent: aLabelMorph measureContents.
	
	aLabelMorph layoutSpec offAxisEdgeWeight: 0.5.
	
	lecturer ifNil:[
		aLabelMorph color: (Color fromHexString:'#cccccc')].
		
	self color: notSelectedColor.
	
	self addMorph: aLabelMorph.
	
	self axisEdgeWeight: 0.0.
	
	
! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:26:27'!
drawOn: aCanvas

	| aForm |
	
	super drawOn: aCanvas.
	
	self morphHeight < 64
		ifTrue:[ | h |
			h := self morphHeight * 0.8.
			aForm := LecturerImage magnifyTo: h @ h.
			aCanvas image: aForm at: 5@ (self morphHeight - h) / 2.
		]
		ifFalse:[
			aForm := LecturerImage magnifyBy: self morphHeight / 3 / LecturerImage height.
			aCanvas image: aForm at: self morphExtent - aForm extent / 2 + (0 @ 5).
		]
	
	! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 21:37:11'!
initialize

	super initialize.

	notSelectedColor := Color fromHexString: '#fcfcdc' :: alpha:0.3	.
	
	selectedColor := notSelectedColor darker.! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 23:26:37'!
lecturer
	^lecturer! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:44:39'!
lecturer: aLecturer
	lecturer := aLecturer! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:04:47'!
unassign: anAssignment

	self assert: lecturer notNil; assert: anAssignment notNil.
	
	anAssignment removeLecturer: lecturer.
	
	lecturer changed: #assignmentsTable.

! !

!LecturerMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/23/2025 21:44:51'!
initialize

	"self initialize"

	| aFileEntry |
		
	aFileEntry := '/home/davidf/src/Cuis-Smalltalk-Darwin/mortar.png' asFileEntry.

	LecturerImage := ImageReadWriter formFromFileEntry: aFileEntry.
! !

!LecturerMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:14:58'!
new: aLecturer

	| aLecturerMorph |
	
	aLecturerMorph := self newColumn.
	
	aLecturerMorph lecturer: aLecturer.
	
	aLecturerMorph build.
	
	aLecturer notNil ifTrue:[aLecturerMorph borderColor: (Color fromHexString: '#dddddd' ) ; borderWidth:2].
	
	^aLecturerMorph! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 21:53:07'!
assignDay: aDayInteger hour: anHourInteger

	| college interval hh tt |
	
	college := model unit module college.
	
	interval :=  college availableHoursForDay: aDayInteger.
	
	model unit duration > interval size ifTrue:[^self]. "don't assign if the duration cannot fit in the availabe hours for the given day"
	
	hh := anHourInteger max: interval first.
	
	self assert: hh >= interval first.
	
	hh := anHourInteger min: interval last.
	
	self assert: hh <= interval last.
	
	tt := hh + model unit duration - interval last max: 0.
	
	hh := hh - tt.
		
	model day: aDayInteger ; hour: hh.
	model unit module college changed: #assignmentsTable ! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:17:01'!
build

	| aLabelMorph |
	
	self removeAllMorphs.
	
	model 
		ifNotNil:[ 

			aLabelMorph := NarrowLabelMorph contents: ('{1}' format:{model unit module code}).
	
			self addMorph: aLabelMorph ].
	
	self updateColor.

	self axisEdgeWeight: 0.0! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 23:02:02'!
collision: aBoolean
	collision := aBoolean! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:42:53'!
expand

	| code label |
	
	model ifNil:[^self].
	
	code := '{1}' format:{model unit module code} :: asBidi.
	
	label := self submorphs first.
	
	label  contents: ('{1} {2} {3}' format:{ code . model unit module description . model unit description }).
	label morphWidth: label measureContents x.

! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:51:27'!
index
	^index! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:47:04'!
index: anInteger
	index := anInteger! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:23:17'!
initialize

	super initialize.
	
	index := 0.
	
	notSelectedColor := Color fromHexString: '#fcfcdc' :: alpha:0.3	..
	
	selectedColor := notSelectedColor darker.
	
	collision := false.
	
	enableGrabbing := true.
	
	borderColor := Color white.
	
	borderWidth := 1.
	
	self color: Color transparent.! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:39:17'!
model
	^model! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 20:29:31'!
model: anAssignment
	model := anAssignment! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 23:24:10'!
unassign

	model day: nil ;  hour: nil.	

! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:24:02'!
updateColor

	notSelectedColor := 
		model
			ifNil:[Color transparent]
			ifNotNil:[Color fromHexString: '#fcfcdc' :: alpha:0.3	].

	selectedColor := notSelectedColor darker.

	color := notSelectedColor.
	
	self redrawNeeded.
! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 23:02:23'!
widget
	| aMorph |
	
	aMorph := owner.
	
	[aMorph isNil or:[aMorph isKindOf: PluggableTableMorph ] ]
		whileFalse:[
			aMorph := aMorph owner
		].
	
	^aMorph! !

!AssignmentMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/27/2025 19:19:11'!
aboutToBeGrabbedBy: aHand
		
	index = 0 ifFalse:[^nil].
	
	model ifNil:[^nil].
	
	^owner aboutToGrabAssignment: self! !

!AssignmentMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/28/2025 23:03:03'!
justDroppedInto: newOwnerMorph event: anEvent 

	self assert: index = 0.
	
	newOwnerMorph isWorldMorph 
		ifTrue:[
			anEvent formerOwner isKindOf: WeeklyTimeTableCell
				::ifTrue:[ 
					model unit module college changed: #assignmentsTable ].
			^self delete ].
	
	newOwnerMorph 	isKindOf: WeeklyTimeTableCell :: and:[self widget model stencil = model stencil ] 
		:: ifTrue:[ 
			self assignDay: 7 - newOwnerMorph column hour: newOwnerMorph row + 6			 ]
		ifFalse:[
			self delete]			 ! !

!AssignmentMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:25:33'!
fromTuple: aTuple

	| anAssignmentMorph |
	
	anAssignmentMorph := self newColumn.

	aTuple 
		ifNotNil:[
			anAssignmentMorph index: (aTuple at:1); model: (aTuple at:2); collision: (aTuple at:3).
		].
	
	anAssignmentMorph build ; expand.

			
	^anAssignmentMorph ! !

!AssignmentMorph class methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 19:28:58'!
new: anAssignment

	| anAssignmentMorph |
	
	anAssignmentMorph := self newColumn.
	
	anAssignmentMorph index: 0.
	anAssignmentMorph model: anAssignment.
	anAssignmentMorph collision: false.
	
	anAssignmentMorph build.

	anAssignment notNil ifTrue:[anAssignmentMorph borderColor: (Color fromHexString: '#dddddd' ) ; borderWidth:2].
	
	^anAssignmentMorph ! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:01:45'!
build: aStringTemplate

	| index labelText morphs |
	
	self removeAllMorphs.
	
	morphs := OrderedCollection new.
	
	index := 1.
	
	aStringTemplate allRangesOfRegexMatches: '<[a-z]+>' :: do:[:each | 
	
		labelText := aStringTemplate copyFrom: index to: each first - 1.
		
		rightToLeft ifTrue:[labelText := labelText reverse].
		
		morphs add:		 (LabelMorph contents: labelText).
		
		morphs add: (BidiTextEntryMorph contents: (aStringTemplate copyFrom: each first + 1 to: each last - 1)).
		
		index := each last + 1].
	
	labelText := aStringTemplate copyFrom: index to: aStringTemplate size.
	
	rightToLeft ifTrue:[labelText := labelText reverse].
	
	morphs add: (BidiLabelMorph contents: labelText).
	
	rightToLeft ifFalse:[morphs := morphs reverse].
	
	self addAllMorphs: morphs.! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:57:50'!
initialize
	super initialize.
	rightToLeft := false! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:54:58'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!StencilLabel class methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 20:11:03'!
contents: anInteger

	| aLabel |			

	aLabel := anInteger 
		ifNil:[ 
			NarrowLabelMorph contents: 'לא משובץ' :: color: (Color fromHexString:'#cccccc'); yourself ] 
		ifNotNil:[
			NarrowLabelMorph contents:('{1}' format:{anInteger})].
	^aLabel ! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:12:08'!
initialExtent
	^ super initialExtent ! !

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

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/18/2025 21:22:44'!
selectEntitiesIn: aTuple 

	" { a Semester . an AcademicYear . anAcademicTrack . an AcademicProgram } "
	
	programIndex := self programs indexOf: (aTuple at: 4).
	
	trackIndex := self tracks indexOf: (aTuple at:3). 
	
	yearIndex := self years indexOf: (aTuple at:2).
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := self semesters asOrderedCollection sort:[:x :y | x description <= y description] :: indexOf: (aTuple at:1).
	
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

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/26/2025 19:07:09'!
units

	| selectedNames semesterNames selectedElectiveNames semesters units |

	selectedElectiveNames := selectedElectives collect:[:i | self electiveNames at:i].	

	units := OrderedCollection new.

	semesterNames := self semesterNames.
	
	selectedNames := 	selectedSemesters select:[:index | index <= semesterNames size ] :: collect:[:index |
semesterNames at: index ].
	
	semesters := self semesters select:[:eachSemester | selectedNames includes: eachSemester description].
	
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

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/26/2025 18:56:41'!
electiveSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedElectives add: anIndex ]
		ifFalse:[
			selectedElectives remove: anIndex ].
		
	self changed: #unitsTable ; changed: #summary ! !

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

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 1/26/2025 18:55:33'!
buildNavigationPanel

	|  electives semesters years tracks programs |

	electives := BidiPluggableListMorphOfMany withModel: self listGetter: #electiveNames primarySelectionGetter: #electiveIndex primarySelectionSetter: #electiveIndex: listSelectionGetter: #electiveSelectionAt: listSelectionSetter: #electiveSelectionAt:put:.
	
	semesters := BidiPluggableListMorphOfMany withModel: self listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	years := BidiPluggableListMorphOfMany withModel: self listGetter: #yearNames primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #trackNames indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	^(electives - (1/5)p | 1p) <+> (semesters - (1/5)p | 1p) <+> (years - (1/5)p | 1p) <+> (tracks - (1/5)p | 1p) <+> (programs - (1/5)p | 1p).
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:55:05'!
addModuleToAcademicProgramDialog
	
		TavorApplication instance addModuleToAcademicProgramDialog: model.! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 19:20:15'!
buildMorphicWindow

	| programsMorph right dialog button updateButton |
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #propertyValue of: (ValueHolder with: model code);
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
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
	(mold checkboxField)
		label: 'קורס בחירה';
		on: #propertyValue of: (ValueHolder with: model elective);
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

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:11:16'!
initialize

	super initialize.
	
	mold := BidiMold new.! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 21:07:55'!
moduleMenuSpec

^ #(
		#(0 		'תוכנית לימודים'						false)
		#(10		'הראה תוכנית לימודים' 						$g 	window 			openAcademicProgramBrowser 				)
		#(20		'-----' 		)
		#(30		'הסר מתוכנית הלימודים' 						$c 	window 			removeModuleFromSemester)
	).! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:54:42'!
openAcademicProgramBrowser

	| aCollegeBrowser |
	
	aCollegeBrowser := AcademicProgramBrowser open: model college label: 'תוכניות לימוד'.
	
	aCollegeBrowser selectEntitiesIn: theProgram.
	
	
	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 13:42:42'!
programs

	| table |
	
	table := OrderedCollection new.

	table add: { 'סמסטר' . 'שנה' . 'מסלול' . 'תוכנית' }.
	
	model programs do:[:eachTuple |
		table add: (eachTuple collect:[:each | { each description asBidi writingDirection:#rightToLeft } ]) ].
	
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

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 19:21:50'!
updateModuleDetails

	mold validate.
	mold isValid 
		ifTrue: [ | description lectureHours recitationHours labHours elective |
			
			mold save.

			description := mold fields at: 2 :: value.
			lectureHours := mold fields at:3 :: value.
			recitationHours := mold fields at:4 :: value.
			labHours := mold fields at:5 :: value.
			elective := mold fields at:6 :: value.

			model description: description.
			model elective: elective.
			
			model updateAcademicUnit: 'הרצאה' duration: 			lectureHours.
			model updateAcademicUnit: 'תרגול' duration: 			recitationHours.
			model updateAcademicUnit: 'מעבדה' duration: 			labHours.
			
			model college changed: #unitsTable ; changed: #summary.
		]! !

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/22/2025 22:10:51'!
buildMorphicWindow

	| navigationPanel roomsTable |

	navigationPanel := self buildNavigationPanel.
	
	roomsTable := self buildRoomsTable.
	
	self changed: #roomsTable.
	
	self layoutMorph addMorph: (navigationPanel -1.0p | 0.2p) </> (roomsTable -1.0p | 1.0p).
	! !

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/22/2025 22:08:30'!
buildNavigationPanel

	| floors campuses |

	campuses := BidiPluggableListMorph withModel: self listGetter: #campusNames indexGetter: #campusIndex indexSetter: #campusIndex: .
	
	floors := BidiPluggableListMorphOfMany withModel: self listGetter: #floorNames primarySelectionGetter: #floorIndex primarySelectionSetter: #floorIndex: listSelectionGetter: #floorSelectionAt: listSelectionSetter: #floorSelectionAt:put:.
	
	^ (floors - (1/2)p | 1p) <+> (campuses - (1/2)p | 1p) .
	
! !

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/25/2025 22:44:34'!
buildRoomsTable

	| roomsTable |

	roomsTable := PluggableTableMorph new.
	
	roomsTable model: self ; table: #roomsTable ; rightToLeft: true ; headerRow: true.

	roomsTable selectRowMessage: #selectClassroom:.
	
	roomsTable cellFactory: ClassroomTableCell.

	roomsTable menuFactory: BidiMenuMorph.

	roomsTable menuNshortcutsKey: #menuSpec.
	
	roomsTable columnFactory: { 
		2 -> (PluggableMorphFactory new formatter:[:aClassroom | aClassroom]; morphClass: ClassroomMorph ; factoryMessage: #new: yourself) } asDictionary.

	"
	roomsTable menuNshortcutsKey: #moduleMenuSpec.
	
	roomsTable selectRowMessage: #selectUnit:.
	
	roomsTable menuFactory: BidiMenuMorph.
	"
	^roomsTable	
! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:53:02'!
campusIndex

	^campusIndex ! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:13:31'!
campusIndex: anInteger

	campusIndex := anInteger.
	
	self changed: #floorNames! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 21:30:16'!
campusNames
	^self campuses collect:[:eachCampus | eachCampus description ]! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:52:34'!
campuses
	^model campuses asOrderedCollection sort:[:x :y | x description <= y description ]! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:57:31'!
floorIndex

	^floorIndex ! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:57:41'!
floorIndex: anInteger

	floorIndex := anInteger.! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 21:42:36'!
floorNames

	^self floors collect:[:eachFloor | ('{1}'  format:{eachFloor}) ].! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:14:55'!
floorSelectionAt: anIndex

	^selectedFloors includes: anIndex! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:15:10'!
floorSelectionAt:anIndex put: aBoolean

	aBoolean
		ifTrue:[
			selectedFloors add: anIndex]
		ifFalse:[
			selectedFloors remove: anIndex ].
		
	self changed: #roomsTable
		
		! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:17:46'!
floors

	| campus |
	
	campusIndex = 0 ifTrue:[^{}].
	
	campus := self campuses at: campusIndex.
	
	^ campus floors! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:40:30'!
initialize

	super initialize.
	
	campusIndex := 0.
	
	floorIndex := 0.
	
	selectedFloors := Set new.
	
	selectedRoomIndex := 0.! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:37:04'!
menuSpec

^ #(
		#(0 		'חדר'						false)
		#(10		'מערכת שעות' 						$g 	window 			openTimeTable 				)
		#(20		'ערוך פרטי חדר ...' 						$g 	window 			openEditDialog 				)
		#(30		'-----' 		)
		#(40		'הסר חדר' 						$c 	window 			removeRoom )
	).! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:42:37'!
openTimeTable

	| aRoom  |
	
	selectedRoomIndex <= 1 ifTrue:[^self].
	
	aRoom := 	self rooms at: selectedRoomIndex - 1.
	
	ResourceTimeTable open: aRoom label: ('מערכת שעות לחדר: {1} {2}' format:{ aRoom campus description . aRoom code} :: asBidi writingDirection:#rightToLeft ) .
	
	aRoom changed: nil
	
	! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 23:03:12'!
rooms

	| campus campusFloors floors |
	
	campusIndex = 0 ifTrue:[^{}].
	
	campus := self campuses at: campusIndex.
	
	campusFloors := campus floors.
	
	floors := Set new.
	
	selectedFloors do:[:eachIndex |
		floors add: (campusFloors at: eachIndex) ].
	
	^campus rooms select:[:eachRoom | floors includes: eachRoom floor ] :: asOrderedCollection sort:[:x :y | 
		x floor > y floor or:[x floor = y floor and:[x code <= y code] ] ].
	
	
	
	! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 18:24:20'!
roomsTable

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'קיבולת' . 'קוד' . 'קומה' . 'קמפוס' }.
	
	self rooms do:[:eachRoom |
		table add: {  
			{ '{1}' format:{eachRoom capacity}  } . 
			{ eachRoom } . 
			{ '{1}' format: { eachRoom floor }  } .
			{ eachRoom campus description  } } ] .
	
	^table
! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/25/2025 22:40:14'!
selectClassroom: anIndex

	selectedRoomIndex := anIndex! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:18:52'!
update: aSymbol

	self changed: aSymbol! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:22:50'!
buildMorphicWindow

	| timeTable |

	timeTable := self buildYearlyTimeTable.
	
	self layoutMorph addMorph: (timeTable -1.0p |1.0p).
! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:24:12'!
buildSemesterTimeTable: aSymbolSemesterMessage

	| semesterTimeTable semesterColumnFactory |

	semesterTimeTable := PluggableTableMorph new.
	
	semesterTimeTable model: self ; table: aSymbolSemesterMessage ; rightToLeft: true ; headerRow: true.

	semesterTimeTable cellFactory: ResourceTimeTableCell.
	
	semesterColumnFactory := Dictionary new.
	
	1 to:6 do:[:eachDay |
		semesterColumnFactory at:eachDay put:(PluggableMorphFactory new formatter:[:aTuple | aTuple] ; morphClass: AssignmentMorph ; factoryMessage: #fromTuple: ; yourself) ].
	
	semesterColumnFactory at: 7 put: (PluggableMorphFactory new formatter:[:anInteger | '{1}' format:{anInteger} :: asBidi ] ; morphClass: OffsetLabelMorph ; yourself).
	
	semesterTimeTable columnFactory: semesterColumnFactory.
	
	^semesterTimeTable 
! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:29:06'!
buildYearlyTimeTable

	| aTabbedGroup s1 s2 s3 |
	
	s1 := self buildSemesterTimeTable: #semesterTimeTable1.
	s2 := self buildSemesterTimeTable: #semesterTimeTable2.
	s3 := self buildSemesterTimeTable: #semesterTimeTable3.
	
	aTabbedGroup := TabbedGroup newColumn.

	aTabbedGroup build: { 'סמסטר קיץ' reverse -> s3 . 'סמסטר ב' reverse -> s2 . 'סמסטר א' reverse -> s1 }.

	aTabbedGroup color:Color white. 
	
	aTabbedGroup select:3.

	^aTabbedGroup ! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:23:17'!
semesterTimeTable: aStringSemesterName

	|  table |
	
	table := OrderedCollection new.
	
	table add: { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' . '' }.
	
	8 to:23 do:[:i | | aRow |
		
		aRow := OrderedCollection new.
		
		1 to:6 do:[:j |
			aRow add: OrderedCollection new ].
		
		aRow add: {i }.
		
		table add: aRow ].	
	
	model assignments select:[:eachAssignment | eachAssignment stencil semester description = aStringSemesterName ] :: do:[:eachAssignment | 
	
		eachAssignment day notNil and: [eachAssignment hour notNil] ::
			ifTrue:[ | cell | 
				0 to: eachAssignment unit duration -1 do:[:index | 
				
					cell := table at: 	eachAssignment hour + index - 6 :: at: 7 - eachAssignment day.
						
					cell add: { index . eachAssignment . cell notEmpty  } ] ] ].
	
	^table
	! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:24:36'!
semesterTimeTable1

	^self semesterTimeTable: 'סמסטר א'! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:24:43'!
semesterTimeTable2

	^self semesterTimeTable: 'סמסטר ב'! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 21:24:50'!
semesterTimeTable3

	^self semesterTimeTable: 'סמסטר קיץ'! !

!ResourceTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:29:36'!
update: aSymbol

	self changed: aSymbol! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 1/24/2025 21:58:58'!
buildAssignmentsTable

	| assignmentsTable  |
	
	assignmentsTable := PluggableTableMorph new.
	
	assignmentsTable  model: self ; table: #assignments ; rightToLeft: true ; headerRow: true.
	
	assignmentsTable menuNshortcutsKey: #assignmentMenuSpec.
	
	assignmentsTable selectRowMessage: #selectAssignment:.
	
	assignmentsTable menuFactory: BidiMenuMorph.
	
	assignmentsTable columnFactory: { 
		1 -> (PluggableMorphFactory new formatter:[:aClassroom |  aClassroom campus description , ' ' , aClassroom code  ] ; yourself) .
		5 -> (PluggableMorphFactory new formatter:[:aModule | aModule description ] ; yourself) .
	} asDictionary.
		
	^assignmentsTable 	
! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 1/26/2025 21:02:02'!
buildDetailsPanel

	| detailsPanel updateButton rankIndex |
	
	rankIndex := model school college lecturerRanks find: model rank.
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	(mold integerField)
		label: 'מזהה המרצה';
		on: #propertyValue of: (ValueHolder with: model code);
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
		label: 'שם המרצה';
		on: #propertyValue of: (ValueHolder with: model description);
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'מעמד מרצה';
		on: #listIndex of: (ListModel with: model school college lecturerRanks :: listIndex: rankIndex) ;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.		
	(mold integerField)
		label: 'שעות למשרה';
		on: #propertyValue of: (ValueHolder with: model quota);
		addCondition:[:input :value | value > 0 ]
		labeled: 'תן לנו לפחות שעה אחת.' ;
		beRequired.
	
	updateButton := PluggableButtonMorph model: self action:#updateLecturerDetails label:'עדכן פרטים' reverse.
	
	detailsPanel := LayoutMorph newColumn.
	
	detailsPanel addMorph: mold renderForms | 0.5p; addMorph: updateButton.
	
	^detailsPanel! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 1/22/2025 22:21:59'!
buildMorphicWindow

	| assignmentsTable detailsPanel dialog |
	
	detailsPanel := self buildDetailsPanel.
	
	assignmentsTable := self buildAssignmentsTable.
	
	self changed: #assignments.
	
	dialog := (assignmentsTable - 0.7p) <+> (detailsPanel - 0.3p).
	
	self addMorph: dialog.
	
! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/24/2025 21:53:41'!
assignments

	| table |
	
	table := OrderedCollection new.

	table add: { 'חדר' . 'שעה' . 'יום' . 'סוג' . 'שם קורס' . 'קוד קורס' }.

	model assignments do:[:eachAssignment | 
		
		table add: {
			eachAssignment rooms . 
			{ eachAssignment hour } . 
			{ eachAssignment dayHebrew } . 
			{ eachAssignment unit }  .
			{ eachAssignment unit module  } .
			{ eachAssignment unit module code } } ] .
	
	^table
! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:11:11'!
initialize

	super initialize.
	
	mold := BidiMold new.! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/24/2025 21:46:05'!
update: aSymbol

	self changed: #assignments
! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 13:45:52'!
updateLecturerDetails

	| description rank quota |

	mold validate.
	mold isValid ifFalse:[^self].
	
	mold save.
	
	description := mold fields at:2 :: value.
	
	rank := mold fields at:3 :: value.
	
	quota := mold fields at:4 :: value.
	
	model description: description; rank: rank; quota: quota.
	
	model changed: #assignments.
	
	model school college changed: #assignmentsTable.! !

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 1/16/2025 21:59:59'!
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

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 1/21/2025 08:58:54'!
lecturersTable

	| table |
	
	table := OrderedCollection new.
	
	table add: {'שעות משובצות' . 'שעות למשרה'  . 'שם' . 'קוד' . 'דרגה' . 'בית ספר' }.
	
	self lecturers  :: do:[:eachLecturer |
		table add: {  
			{ eachLecturer assignments sum:[:eachAssignment | eachAssignment unit duration] ifEmpty:[0] } .  
			{ eachLecturer quota } .  
			{ eachLecturer } . 
			{ eachLecturer code} . 
			{ eachLecturer rank } .
			{ eachLecturer school } } ] .
	
	^table
! !

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 1/18/2025 13:21:26'!
openEditLecturerDialog

	| aLecturer |
	
	selectedLecturerIndex <= 1 ifTrue:[^self].
	
	aLecturer := 	self lecturers at: selectedLecturerIndex - 1.
	
	LecturerBrowser open: aLecturer label: 'ערוך מרצה' 
	
	! !

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 1/28/2025 22:28:51'!
openTimeTable

	| aLecturer |
	
	selectedLecturerIndex <= 1 ifTrue:[^self].
	
	aLecturer := 	self lecturers at: selectedLecturerIndex - 1.
	
	ResourceTimeTable open: aLecturer label: 'מערכת שעות למרצה: ', aLecturer description.
	
	aLecturer changed: nil
	
	! !

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 1/28/2025 22:36:39'!
selectLecturer: anIntegerIndex

	| aLecturer |
	
	selectedLecturerIndex := anIntegerIndex.
	
	selectedLecturerIndex <= 1 ifTrue:[^self].
	
	aLecturer := 	self lecturers at: selectedLecturerIndex - 1.
	
	self setLabel: 'מרצה: ', aLecturer description.
	
	! !

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:02'!
rankIndex
	^rankIndex! !

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:10'!
rankIndex: anInteger
	rankIndex := anInteger! !

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:10:00'!
rankSelectionAt: anIndex

	^selectedRanks includes: anIndex.! !

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:10:20'!
rankSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedRanks add: anIndex ]
		ifFalse:[
			selectedRanks remove: anIndex ].
		
	self changed: #lecturersTable! !

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 1/16/2025 21:09:42'!
ranks
	^model lecturerRanks! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:08:08'!
schoolIndex
	^schoolIndex! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:08:18'!
schoolIndex: anIndex
	schoolIndex := anIndex! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:05:06'!
schoolNames

	^self schools collect:[:eachSchool | eachSchool description ]! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:06:12'!
schoolSelectionAt: anIndex

	^selectedSchools includes: anIndex.! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:07:13'!
schoolSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedSchools add: anIndex ]
		ifFalse:[
			selectedSchools remove: anIndex ].
		
	self changed: #lecturersTable! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:04:47'!
schools

	^model schools asOrderedCollection sort:[:x :y | x description <= y description ]! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:58:50'!
selectedRanks

	| result ranks |
	
	result := OrderedCollection new.
	
	ranks := self ranks.
	
	selectedRanks do:[:index | 
		index <= ranks size 
			ifTrue:[	result add: (ranks at:index)] ].
			
	^result.

	
! !

!SchoolBrowser methodsFor: 'schools' stamp: 'DF 1/16/2025 21:58:24'!
selectedSchools

	| result schools |
	
	result := OrderedCollection new.
	
	schools := self schools.
	
	selectedSchools do:[:index | 
		index <= schools size 
			ifTrue:[	result add: (schools at:index)] ].
			
	^result.

	
! !

!SchoolBrowser methodsFor: 'menu' stamp: 'DF 1/25/2025 21:40:42'!
lecturerMenuSpec

^ #(
		#(0 		'מרצה'						false)
		#(10		'מערכת שעות' 						$g 	window 			openTimeTable 				)
		#(20		'ערוך פרטי מרצה ...' 						$g 	window 			openEditLecturerDialog 				)
		#(30		'-----' 		)
		#(40		'הסר מרצה' 						$c 	window 			removeLecturer )
	).! !

!SchoolBrowser methodsFor: 'initialization' stamp: 'DF 1/18/2025 12:59:33'!
initialize

	super initialize.
	
	selectedSchools := Set new.
	
	selectedRanks := Set new.
	
	schoolIndex := 0.
	
	rankIndex := 0.
	
	selectedLecturerIndex := 0.
	
	! !

!SchoolBrowser methodsFor: 'updating' stamp: 'DF 1/17/2025 22:02:05'!
update: aSymbol
	self changed: aSymbol! !

!SchoolBrowser methodsFor: 'GUI building' stamp: 'DF 1/26/2025 20:17:07'!
buildMorphicWindow

	| topPanel lecturersTable schools employment |
	
	schools := BidiPluggableListMorphOfMany withModel: self listGetter: #schoolNames primarySelectionGetter: #schoolIndex primarySelectionSetter: #schoolIndex: listSelectionGetter: #schoolSelectionAt: listSelectionSetter: #schoolSelectionAt:put:.
	
	employment := BidiPluggableListMorphOfMany withModel: self listGetter: #ranks primarySelectionGetter: #rankIndex primarySelectionSetter: #rankIndex: listSelectionGetter: #rankSelectionAt: listSelectionSetter: #rankSelectionAt:put:.
	
	topPanel := (employment - (1/2)p | 1p) <+> (schools - (1/2)p | 1p) .
	
	lecturersTable := PluggableTableMorph new.
	
	lecturersTable model: self ; table: #lecturersTable ; rightToLeft: true ; headerRow: true.
	
	lecturersTable cellFactory: LecturerTableCell.
	
	lecturersTable menuNshortcutsKey: #lecturerMenuSpec.
	
	lecturersTable menuFactory: BidiMenuMorph.
	
	lecturersTable selectRowMessage: #selectLecturer:.
	
	lecturersTable columnFactory: {
		1 -> (PluggableMorphFactory new formatter:[:aNumber | '{1}' format:{aNumber} ] ; yourself) .
		2 -> (PluggableMorphFactory new formatter:[:aNumber | '{1}' format:{aNumber} ] ; yourself) .
		3 ->  (PluggableMorphFactory new formatter:[:aLecturer | aLecturer ] ; morphClass: LecturerMorph ; factoryMessage: #new:; yourself) .
		4 -> (PluggableMorphFactory new formatter:[:anInteger | '{1}' format:{anInteger} ] ; yourself) .
		5 -> (PluggableMorphFactory new) .
		6 -> (PluggableMorphFactory new formatter:[:aSchool | aSchool description ] ; yourself) } asDictionary.

	self layoutMorph addMorph: (topPanel -1.0p | 0.3p </> (lecturersTable -1.0p | 0.7p)).
	
	self changed: #lecturersTable.! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:13:10'!
initialExtent
	^ super initialExtent! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:00:51'!
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

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/27/2025 21:52:32'!
assignments

	| stencil |
	
	stencil := self stencil.
	
	stencil ifNil:[^{}].
	
	^stencil assignments asOrderedCollection sort:[:x :y | x before:y ].
! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/27/2025 21:48:52'!
assignmentsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'חדר' . 'שעה' . 'יום' . 'מרצה' . 'סוג' . 'שם קורס' . 'קוד קורס' }.

	self assignments do:[:eachAssignment | 
		
		table add: {
			 eachAssignment rooms			 . 
			{ eachAssignment hour } . 
			{ eachAssignment dayHebrew  } . 
			eachAssignment lecturers .
			{ eachAssignment unit } .
			{ eachAssignment unit module } .
			{ eachAssignment } 
		} ] .
	
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

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/27/2025 21:35:05'!
stencil

	| stencils |
	
	stencilIndex = 0 ifTrue:[^nil].
	
	stencils := self stencils asOrderedCollection sort:[:x :y | x description <= y description ].
	
	stencils ifEmpty:[^nil].
	
	^stencils at: stencilIndex 
! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/27/2025 21:55:32'!
stencilTimeTable

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' . '' }.
	
	8 to:23 do:[:i | | aRow |
		
		aRow := OrderedCollection new.
		
		1 to:6 do:[:j |
			aRow add: OrderedCollection new ].
		
		aRow add: {i }.
		
		table add: aRow ].	
	
	self assignments do:[:eachAssignment | 
	
		eachAssignment day notNil and: [eachAssignment hour notNil] ::
			ifTrue:[ | cell | 
				0 to: eachAssignment unit duration -1 do:[:index | 
				
					cell := table at: 	eachAssignment hour + index - 6 :: at: 7 - eachAssignment day.
						
					cell add: { index . eachAssignment . cell notEmpty } ] ] ].
	
	^table
	! !

!StencilBrowser methodsFor: 'assignments' stamp: 'DF 1/27/2025 22:10:55'!
stencilViolations

	| stencil violations |
	
	stencil := self stencil.
	
	stencil ifNil:[^{}].
	
	violations := stencil check.
	
	^ violations collect:[:each | each overlap translatedBy: (-6@ -7) :: scaledBy: (1@-1) ]! !

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

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 1/29/2025 20:11:38'!
buildAssignmentsTable

	| assignmentsTable |
	
	assignmentsTable := PluggableTableMorph new.
	
	assignmentsTable model: self ; table: #assignmentsTable ; rightToLeft: true ; headerRow: true.
	
	"assignmentsMorph menuNshortcutsKey: #assignmentMenuSpec."
	
	assignmentsTable selectRowMessage: #selectAssignment:.
	
	assignmentsTable menuFactory: BidiMenuMorph.
	
	assignmentsTable cellFactory: AssignmentTableCell.

	assignmentsTable columnFactory: { 
		1 -> (PluggableMorphFactory new formatter:[:aClassroom | aClassroom]; morphClass: ClassroomMorph ; factoryMessage: #new: yourself) .
		2 -> (PluggableMorphFactory new formatter:[:anInteger | anInteger]; morphClass:StencilLabel; yourself) .
		3 -> (PluggableMorphFactory new formatter:[:aDay | aDay ]; morphClass: StencilLabel; yourself) .
		4 -> (PluggableMorphFactory new formatter:[:aLecturer  | aLecturer ] ; morphClass: LecturerMorph ; factoryMessage: #new: ; yourself) .
		5 -> (PluggableMorphFactory new formatter:[:aUnit | aUnit description ] ; yourself) .
		6 -> (PluggableMorphFactory new formatter:[:aModule | aModule description ] ; yourself) .
		7 -> (PluggableMorphFactory new formatter:[:anAssignment | anAssignment ] ; morphClass: AssignmentMorph ; factoryMessage: #new: ; yourself)
		} asDictionary.
		
	^assignmentsTable ! !

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 1/27/2025 21:51:17'!
buildMorphicWindow

	| navigationPanel assignmentsTable aTabbedGroup semesterTimeTable |
	
	navigationPanel := self buildNavigationPanel.
	
	assignmentsTable := self buildAssignmentsTable.
			
	self changed: #assignmentsTable.

	semesterTimeTable := self buildStencilTimeTable.
	
	aTabbedGroup := TabbedGroup newColumn.

	aTabbedGroup build: { 'מערכת' reverse -> semesterTimeTable . 'רשימה' reverse -> assignmentsTable }.

	aTabbedGroup color:Color white. 
	
	aTabbedGroup select:2.
	
	self layoutMorph addMorph: (navigationPanel -1.0p | 0.2p </> ( (aTabbedGroup -1.0p | 1.0p) | 0.8p)).
	! !

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 1/22/2025 22:23:01'!
buildNavigationPanel

	| stencils semesters years tracks programs |
	
	stencils := BidiPluggableListMorph withModel: self listGetter: #stencilNames indexGetter: #stencilIndex indexSetter: #stencilIndex:.
	
	semesters := BidiPluggableListMorph withModel: self listGetter: #semesterNames indexGetter: #semesterIndex indexSetter: #semesterIndex:.
	
	years := BidiPluggableListMorph withModel: self listGetter: #yearNames indexGetter: #yearIndex indexSetter: #yearIndex:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #trackNames indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	^(stencils - (1/5)p | 1p) <+> (semesters - (1/5)p | 1p) <+> (years - (1/5)p | 1p) <+> (tracks - (1/5)p | 1p) <+> (programs - (1/5)p | 1p).
! !

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 1/27/2025 22:22:25'!
buildStencilTimeTable

	| stencilTimeTable stencilColumnFactory |

	stencilTimeTable := PluggableTableMorph new.
	
	stencilTimeTable model: self ; table: #stencilTimeTable ; rightToLeft: true ; headerRow: true.

	stencilTimeTable cellFactory: WeeklyTimeTableCell.
	
	stencilTimeTable markers: #stencilViolations.
	
	stencilColumnFactory := Dictionary new.
	
	1 to:6 do:[:eachDay |
		stencilColumnFactory at:eachDay put:(PluggableMorphFactory new formatter:[:aTuple | aTuple] ; morphClass: AssignmentMorph ; factoryMessage: #fromTuple: ; yourself) ].
	
	stencilColumnFactory at: 7 put: (PluggableMorphFactory new formatter:[:anInteger | '{1}' format:{anInteger} :: asBidi ] ; morphClass: OffsetLabelMorph ; yourself).
	
	stencilTimeTable columnFactory: stencilColumnFactory.
	
	^stencilTimeTable ! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:21:32'!
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:43:52'!
entryNames

	^self entries collect:[:eachEntry | 
		eachEntry name asUnicodeString asBidi reorderBidiFileName , 		(eachEntry isDirectory 			ifTrue:[ '/' ] ifFalse:['']) ]
	
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

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/19/2025 19:14:13'!
addModuleToAcademicProgramDialog: aModule

	| mold programs tracks years semesters aDialog position |
	
	mold := BidiMold new.
	
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
		
	(mold selectField)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
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

!TavorApplication methodsFor: 'modules' stamp: 'DF 1/26/2025 13:38:45'!
addNewModuleDialog

	| mold programs tracks years semesters aDialog position |

	programs := ListMultiModel with: model programNames.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם הקורס';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input | model moduleNameAt: input :: isNil ] 
		labeled: 'קיים קורס עם שם זה.';
		beRequired.
	(mold integerField)
		label: 'קוד הקורס';
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
	(mold selectField)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | |program |
			program := model programAt: (mold fields at: 6) value.
			program notNil and:[ program trackAt: value :: notNil ] ]
		labeled: 'לא קיים מסלול כזה בתוכנית הלימודים שבחרת.';
		beRequired.
	(mold selectField)
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track |
			program := 		model programAt: (mold fields at: 6) value.
			track := program ifNil:[nil] ifNotNil:[program trackAt: (mold fields at:7 ) value].
			track notNil and: [track academicYearAt: value :: notNil ] ] 
		labeled: 'שנת לימוד זו לא קיימת במסלול שבחרת.';
		beRequired.
	(mold selectField)
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track year |
			program := 		model programAt: (mold fields at: 6) value.
			track := program ifNil:[nil] ifNotNil:[program trackAt: (mold fields at:7 ) value].
			year := track ifNil:[nil] ifNotNil:[track academicYearAt: (mold fields at:8) value].
			year notNil and:[year semesterAt: value :: notNil ] ] 
		labeled: 'סמסטר זה לא קיים במסלול שבחרת.';
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

!TavorApplication methodsFor: 'programs' stamp: 'DF 1/19/2025 19:05:41'!
addNewAcademicProgramDialog

	| mold position aDialog |
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
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

!TavorApplication methodsFor: 'stencils' stamp: 'DF 1/19/2025 19:54:04'!
addNewStencilDialog

	| mold position aDialog programs tracks years semesters |
	
	mold := BidiMold new.

	programs := ListMultiModel with: model programNames.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.	

	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד התבנית' ;
		on: #propertyValue of: ValueHolder new;
		beRequired.
		
	(mold selectField)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | model programAt: (mold fields at: 2) value :: trackAt: value :: notNil ] 
		labeled: 'לא קיים מסלול כזה בתוכנית הלימודים שבחרת.';
		beRequired.
	(mold selectField)
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
	(mold selectField)
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

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/26/2025 13:50:08'!
addNewLecturerDialog

	| schools mold position aDialog |
	
	mold := BidiMold new.
	
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
	
	(mold stringField)
		label: 'שם המרצה';
		on: #propertyValue of: ValueHolder new;
		beRequired.

	(mold fields add: BidiSelectField new)
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

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/19/2025 19:06:50'!
addNewSchoolDialog

	| mold position aDialog |
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
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

!TavorApplication methodsFor: 'schools' stamp: 'DF 1/18/2025 13:06:12'!
openSchoolBrowser

	SchoolBrowser open: model label: 'מרצים'.
! !

!TavorApplication methodsFor: 'campuses' stamp: 'DF 1/18/2025 18:28:51'!
addNewCampus: fields

	| campusName aCampus lastFloor firstFloor |
	
	campusName := fields at:1 :: value.
	
	lastFloor := fields at:2 :: value.
	
	firstFloor := fields at:3 :: value.
	
	aCampus := Campus new.
	
	aCampus description: campusName ; lastFloor: lastFloor ; firstFloor: firstFloor.
	
	model addCampus: aCampus.
	
	model changed: #campusNames.! !

!TavorApplication methodsFor: 'campuses' stamp: 'DF 1/19/2025 19:05:52'!
addNewCampusDialog

	| mold position aDialog |
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם הקמפוס';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input | model campusAt: input :: isNil ]  
		labeled: 'קיים קמפוס בשם זה.' ;
		beRequired.
	(mold integerField)
		label: 'קומה עליונה';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold integerField)
		label: 'קומה תחתונה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | | lastFloor |
			lastFloor := mold fields at: 2 :: value.
			value <= lastFloor
			]  
		labeled: 'קומה תחתונה גדולה מקומה עליונה.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קמפוס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewCampus: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'campuses' stamp: 'DF 1/18/2025 18:29:25'!
addNewRoom: fields

	| campus roomName aRoom floor capacity |
		
	campus := fields at:1 :: value.

	roomName := fields at:2 :: value.
	
	floor := fields at:3 :: value.
	
	capacity := fields at:4 :: value.
	
	aRoom := Classroom new.
	
	aRoom code: roomName ; floor: floor ; capacity: capacity.
	
	campus addClassroom: aRoom.
	
	model changed: #roomsTable
	! !

!TavorApplication methodsFor: 'campuses' stamp: 'DF 1/19/2025 19:52:23'!
addNewRoomDialog

	| mold campuses aDialog position |

	campuses := ListModel with: (model campuses asOrderedCollection sort:[:x :y | x description <= y description]).
	
	mold := BidiMold new. 
	
	mold rightToLeft: true.

	(mold selectField)
		label: 'קמפוס';
		on: #listIndex of: campuses;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold stringField)
		label: 'מזהה החדר';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input | | campus |
			campus := mold fields at: 1 :: value. 
			campus roomAt: input :: isNil ]  
		labeled: 'קיים חדר עם מזהה זה.';
		beRequired.
	(mold integerField)
		label: 'קומה';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | | campus |
			campus := mold fields at: 1 :: value. 
			(campus firstFloor <= value) and:[value <= campus lastFloor] ] 
		labeled: 'לא קיימת קומה כזו בקמפוס.';
		beRequired.
	(mold integerField)
		label: 'קיבולת';
		on: #propertyValue of: ValueHolder new;
		addCondition:[:input :value | 
			value > 0 ] 
		labeled: 'כיתה חייבת להכיל לפחות סטודנט אחד.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קורס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewRoom: to: self with: mold fields.
	
! !

!TavorApplication methodsFor: 'campuses' stamp: 'DF 1/18/2025 17:09:12'!
openCampusBrowser

	CampusBrowser open: model label: 'קמפוסים'.
! !

!TavorApplication methodsFor: 'menu' stamp: 'DF 1/26/2025 14:27:55'!
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
		{'יבא תוכניות לימודים ...' . self . #openImportAcademicProgramDialog } .
		{'יבא סגל אקדמי ...' . self . #openImportAcademicStaffDialog } .
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
		{ 'הצג מרצים' . self .#openSchoolBrowser } .
		{ 'מרצה חדשה ...' . self . #addNewLecturerDialog } 
		 } } .
	{ 'חדר' . {
		{'הצג קמפוסים וחדרים' . self . #openCampusBrowser } .
		{ 'קמפוס חדש ...' . self . #addNewCampusDialog } .
		{ 'חדר חדש ...' . self . #addNewRoomDialog } 
		 } } .
	{ 'תבנית' . {
		{ 'הצג תבניות' . self . #openStencilBrowser } .
		{ 'תבנית חדשה ...' . self . #addNewStencilDialog } 
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!TavorApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:15:09'!
importAcademicProgram: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicProgram: aFileEntry.
	
"	CollegeBrowser open: model label: 'תוכניות לימוד'."
	
	! !

!TavorApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:25'!
importAcademicStaff: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicStaff: aFileEntry.
	

	
	! !

!TavorApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:44'!
openImportAcademicProgramDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicProgram: label:'Select File'! !

!TavorApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:55'!
openImportAcademicStaffDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicStaff: label:'Select File'! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 18:15:10'!
open

	| aCollege |
	
	aCollege := College new.

	aCollege invariant.

	model := aCollege.
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

!AcademicResource methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:49:26'!
assignments
	^assignments! !

!AcademicResource methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:49:33'!
attachAssignment: anAssignment

	assignments add: anAssignment! !

!AcademicResource methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:49:40'!
detachAssignment: anAssignment

	assignments remove: anAssignment! !

!AcademicResource methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:50:20'!
initialize

	assignments := Set new.! !

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

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:30:27'!
floor
	^floor! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:30:22'!
floor: anInteger
	floor := anInteger! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 12:50:58'!
initialize

	super initialize.
! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:03:14'!
invariant
	^true! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self attachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit attachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:36'!
attachAcademicUnit: anAcademicUnit

	units add: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:53:14'!
detach

	school ifNil:[^self].
	
	school detachLecturer: self.
	
	school := nil. ! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:14:23'!
detachAcademicUnit: anAcademicUnit

	units remove: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 14:31:00'!
initialize

	super initialize.
	
	units := Set new.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:08:05'!
invariant
	true! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 14:38:26'!
morph

	^ LecturerMorph newRow model:self ; build ; yourself.
! !

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

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 20:34:28'!
code
	^code! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 20:34:23'!
code: anInteger
	code := anInteger! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:41:34'!
description
	^description! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:41:27'!
description: aString
	description := aString! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 21:18:11'!
quota
	^quota! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 21:18:05'!
quota: anInteger
	quota := anInteger! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 21:15:03'!
rank
	^rank! !

!Lecturer methodsFor: 'accessing' stamp: 'DF 1/16/2025 21:14:58'!
rank: aString
	rank := aString! !

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

!Assignment methodsFor: 'lecturers' stamp: 'DF 1/11/2025 19:43:28'!
addLecturer: aLecturer

	aLecturer attachAssignment: self.
	
	self attachLecturer: aLecturer.! !

!Assignment methodsFor: 'lecturers' stamp: 'DF 1/11/2025 19:16:56'!
attachLecturer: aLecturer
	lecturers add: aLecturer ! !

!Assignment methodsFor: 'lecturers' stamp: 'DF 1/11/2025 19:17:10'!
detachLecturer: aLecturer
	lecturers remove: aLecturer ! !

!Assignment methodsFor: 'lecturers' stamp: 'DF 1/11/2025 19:16:38'!
lecturers
	^lecturers! !

!Assignment methodsFor: 'lecturers' stamp: 'DF 1/11/2025 19:43:35'!
removeLecturer: aLecturer

	aLecturer detachAssignment: self.
	
	self detachLecturer: aLecturer.! !

!Assignment methodsFor: 'rooms' stamp: 'DF 1/22/2025 20:28:29'!
addClassroom: aClassroom

	aClassroom attachAssignment: self.
	
	self attachClassroom: aClassroom.! !

!Assignment methodsFor: 'rooms' stamp: 'DF 1/22/2025 20:29:05'!
attachClassroom: aClassroom
	rooms add: aClassroom ! !

!Assignment methodsFor: 'rooms' stamp: 'DF 1/22/2025 20:28:48'!
detachClassroom: aClassroom
	rooms remove: aClassroom ! !

!Assignment methodsFor: 'rooms' stamp: 'DF 1/22/2025 20:30:50'!
removeClassroom: aClassroom

	aClassroom detachAssignment: self.
	
	self detachClassroom: aClassroom.! !

!Assignment methodsFor: 'rooms' stamp: 'DF 1/22/2025 20:32:35'!
rooms
	^rooms! !

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

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:03:21'!
dayHebrew

	day ifNil:[^nil].
	
	^DayHebrewNames at: day! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:34'!
detach

	stencil := nil.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 18:36:50'!
hour
	^hour! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 17:32:16'!
hour: anInteger
	hour := anInteger
	! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 20:27:31'!
initialize

	lecturers := Set new.
	
	rooms := Set new.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:03:33'!
interval

	self assert: hour notNil.
	
	^hour to: hour + unit duration! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:58:38'!
invariant

	lecturer units includes: unit.! !

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

!Assignment class methodsFor: 'as yet unclassified' stamp: 'DF 1/24/2025 21:52:57'!
initialize

	"self initialize"
	
	DayHebrewNames := { 'א' . 'ב' . 'ג' . 'ד' . 'ה' . 'ו' . 'שבת' asBidi }.! !

!AssignmentRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:15:10'!
check: anObject

	self subclassResponsibility ! !

!AssignmentRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:10:42'!
description
	self subclassResponsibility ! !

!AssignmentRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:31:24'!
initialize

	violations := Set new.! !

!AssignmentRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:31:18'!
violations
	^violations! !

!ResourceRule methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 21:37:36'!
check: aResource

	violations removeAll.
	
	self checkOverlap: aResource.! !

!ResourceRule methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 23:14:22'!
checkOverlap: aResource

	aResource assignments 
		reject:[:eachAssignment | eachAssignment day isNil] :: 
		groupBy:[:anAssignment | anAssignment day ] :: 
		do:[:eachDay | 		| dailyAssignments |
		
			dailyAssignments := eachDay asOrderedCollection.
		
			1 to: dailyAssignments size do:[:i |
				i+1 to: dailyAssignments size do:[:j |
					| x y overlap |
				
					x := dailyAssignments at:i. 
					y := dailyAssignments at:j.
				
					overlap := x interval intersect: y interval.
					
					overlap isEmptySet ifFalse: [ 
						violations add: (OverlapViolation overlap: (overlap first @ x day corner: overlap last - 1 @ x day) between: x and: y) ] ] ] ]. 
! !

!ResourceRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:38:37'!
description
	^'חריגות בשיבוץ משאבים )מרצים או חדרים('! !

!StencilRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:38:02'!
check: aStencil

	violations removeAll.
	
	self checkFreeDay: aStencil.! !

!StencilRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:29:42'!
checkFreeDay: aStencil

	| assignedDays |

	assignedDays := 
		aStencil assignments 
			remove:[:eachAssignment | eachAssignment day isNil] :: 
			collect:[:eachAssignment | eachAssignment day ].
			
	1 to: 5 :: asSet includesAllOf: assignedDays
		:: ifTrue:[
			violations add: (FreeDayViolation new stencil: aStencil ; yourself) ].
		
! !

!StencilRule methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:32:59'!
description
	^'חריגות בשיבוץ תבניות'! !

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

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:46:00'!
displayStringOrText
	^self description ! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:27:51'!
firstFloor
	^firstFloor! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:27:31'!
firstFloor: anInteger
	firstFloor := anInteger! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:04:52'!
floors

	^firstFloor to: lastFloor :: collect:[:i | i] :: reverse! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:28:12'!
initialize

	rooms := Set new.
	
	college := nil.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:17'!
invariant

	rooms do: [:aRoom | aRoom invariant ].

	rooms do: [:aRoom | self assert: aRoom campus == self ].
	! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:27:56'!
lastFloor
	^lastFloor! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:27:40'!
lastFloor: anInteger
	lastFloor := anInteger! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:25:26'!
removeClassroom: aClassroom
	
	self assert: aClassroom campus == self.
	
	aClassroom detach.
	
	self detachClassroom: aClassroom.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:32:52'!
roomAt: aString

	^rooms detect:[:eachRoom | eachRoom code = aString ] ifFound:[:aRoom | aRoom] ifNone:[nil]! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:05:38'!
rooms
	^rooms! !

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

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 20:55:21'!
addModule: aModule

	aModule attachSemester: self.
	
	self attachModule: aModule.
	
	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 						| anAssignment |
				
				eachStencil assignments do:[:x | 					self assert: (x unit ~= eachUnit) ].

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

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 21:01:12'!
removeModule: aModule

	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 					
				
				eachStencil assignments select:[:eachAssignment | 					eachAssignment unit = eachUnit ] ::
					do:[:eachAssignment |
						eachStencil removeAssignment: eachAssignment ]				 ] ].

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

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 21:59:25'!
check

	| aResourceRule |
	
	aResourceRule := ResourceRule new.
	
	aResourceRule check: self.
	
	^aResourceRule violations.! !

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

!FreeDayViolation methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:26:32'!
stencil: aStencil
	stencil := aStencil! !

!OverlapViolation methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 18:09:13'!
assignments: aSet 
	assignments := aSet ! !

!OverlapViolation methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 22:00:04'!
overlap
	^overlap! !

!OverlapViolation methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 20:38:32'!
overlap: anInterval
	overlap := anInterval! !

!OverlapViolation class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 20:41:11'!
overlap: aRectangle between: anAssignment and: anotherAssignment

	| anOverlapViolation |
	
	anOverlapViolation := self new.
	
	anOverlapViolation assignments: (Set with: anAssignment with: anotherAssignment).
	
	anOverlapViolation overlap: aRectangle.
	
	^anOverlapViolation ! !

!Interval methodsFor: '*Tavor-sets' stamp: 'DF 1/28/2025 23:09:31'!
intersect: anInterval
	
	^(start max: anInterval first) to: (stop min: anInterval last)! !

!Interval methodsFor: '*Tavor-sets' stamp: 'DF 1/28/2025 23:15:25'!
isEmptySet
	^stop <= start! !

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
ClassroomMorph initialize!
LecturerMorph initialize!
Assignment initialize!
