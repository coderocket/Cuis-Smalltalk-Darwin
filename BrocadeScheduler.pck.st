'From Cuis7.3 [latest update: #6895] on 8 March 2025 at 4:06:49 pm'!
'Description '!
!provides: 'BrocadeScheduler' 1 166!
!requires: 'BrocadePlanner' 1 57 nil!
!requires: 'MenuBar' 1 6 nil!
!requires: 'SpriteAtlas' 1 0 nil!
SystemOrganization addCategory: #'BrocadeScheduler-Model'!
SystemOrganization addCategory: #'BrocadeScheduler-StencilMorphic'!
SystemOrganization addCategory: #'BrocadeScheduler-CampusMorphic'!
SystemOrganization addCategory: #'BrocadeScheduler-SchoolMorphic'!
SystemOrganization addCategory: #'BrocadeScheduler-ResourceMorphic'!
SystemOrganization addCategory: #BrocadeScheduler!
SystemOrganization addCategory: #'BrocadeScheduler-Application'!
SystemOrganization addCategory: #'BrocadeScheduler-UndoRedo'!
SystemOrganization addCategory: #'BrocadeScheduler-SpriteAtlas'!


!classDefinition: #SchedulingCollege category: #'BrocadeScheduler-Model'!
College subclass: #SchedulingCollege
	instanceVariableNames: 'schools campuses'
	classVariableNames: 'ValidHours'
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'SchedulingCollege class' category: #'BrocadeScheduler-Model'!
SchedulingCollege class
	instanceVariableNames: ''!

!classDefinition: #SchedulingSemester category: #'BrocadeScheduler-Model'!
Semester subclass: #SchedulingSemester
	instanceVariableNames: 'stencils'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'SchedulingSemester class' category: #'BrocadeScheduler-Model'!
SchedulingSemester class
	instanceVariableNames: ''!

!classDefinition: #BrocadeApplication category: #'BrocadeScheduler-Application'!
Object subclass: #BrocadeApplication
	instanceVariableNames: 'model path lastImportDirectory homeDirectory'
	classVariableNames: 'TheApplication'
	poolDictionaries: ''
	category: 'BrocadeScheduler-Application'!
!classDefinition: 'BrocadeApplication class' category: #'BrocadeScheduler-Application'!
BrocadeApplication class
	instanceVariableNames: ''!

!classDefinition: #AcademicResource category: #'BrocadeScheduler-Model'!
Object subclass: #AcademicResource
	instanceVariableNames: 'assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'AcademicResource class' category: #'BrocadeScheduler-Model'!
AcademicResource class
	instanceVariableNames: ''!

!classDefinition: #Classroom category: #'BrocadeScheduler-Model'!
AcademicResource subclass: #Classroom
	instanceVariableNames: 'campus capacity code floor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Classroom class' category: #'BrocadeScheduler-Model'!
Classroom class
	instanceVariableNames: ''!

!classDefinition: #Lecturer category: #'BrocadeScheduler-Model'!
AcademicResource subclass: #Lecturer
	instanceVariableNames: 'school rank units description code quota blockedSlots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Lecturer class' category: #'BrocadeScheduler-Model'!
Lecturer class
	instanceVariableNames: ''!

!classDefinition: #Assignment category: #'BrocadeScheduler-Model'!
Object subclass: #Assignment
	instanceVariableNames: 'rooms day hour unit stencil lecturers'
	classVariableNames: 'DayHebrewNames'
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Assignment class' category: #'BrocadeScheduler-Model'!
Assignment class
	instanceVariableNames: ''!

!classDefinition: #AssignmentRule category: #'BrocadeScheduler-Model'!
Object subclass: #AssignmentRule
	instanceVariableNames: 'violations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'AssignmentRule class' category: #'BrocadeScheduler-Model'!
AssignmentRule class
	instanceVariableNames: ''!

!classDefinition: #ResourceRule category: #'BrocadeScheduler-Model'!
AssignmentRule subclass: #ResourceRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'ResourceRule class' category: #'BrocadeScheduler-Model'!
ResourceRule class
	instanceVariableNames: ''!

!classDefinition: #StencilRule category: #'BrocadeScheduler-Model'!
AssignmentRule subclass: #StencilRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'StencilRule class' category: #'BrocadeScheduler-Model'!
StencilRule class
	instanceVariableNames: ''!

!classDefinition: #Campus category: #'BrocadeScheduler-Model'!
Object subclass: #Campus
	instanceVariableNames: 'rooms college description firstFloor lastFloor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Campus class' category: #'BrocadeScheduler-Model'!
Campus class
	instanceVariableNames: ''!

!classDefinition: #School category: #'BrocadeScheduler-Model'!
Object subclass: #School
	instanceVariableNames: 'college lecturers description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'School class' category: #'BrocadeScheduler-Model'!
School class
	instanceVariableNames: ''!

!classDefinition: #Stencil category: #'BrocadeScheduler-Model'!
Object subclass: #Stencil
	instanceVariableNames: 'semester description assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Stencil class' category: #'BrocadeScheduler-Model'!
Stencil class
	instanceVariableNames: ''!

!classDefinition: #Violation category: #'BrocadeScheduler-Model'!
Object subclass: #Violation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'Violation class' category: #'BrocadeScheduler-Model'!
Violation class
	instanceVariableNames: ''!

!classDefinition: #FreeDayViolation category: #'BrocadeScheduler-Model'!
Violation subclass: #FreeDayViolation
	instanceVariableNames: 'stencil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'FreeDayViolation class' category: #'BrocadeScheduler-Model'!
FreeDayViolation class
	instanceVariableNames: ''!

!classDefinition: #OverlapViolation category: #'BrocadeScheduler-Model'!
Violation subclass: #OverlapViolation
	instanceVariableNames: 'assignments overlap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-Model'!
!classDefinition: 'OverlapViolation class' category: #'BrocadeScheduler-Model'!
OverlapViolation class
	instanceVariableNames: ''!

!classDefinition: #BlockedSlotTableCellFactory category: #'BrocadeScheduler-SchoolMorphic'!
Object subclass: #BlockedSlotTableCellFactory
	instanceVariableNames: 'lecturer semester'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'BlockedSlotTableCellFactory class' category: #'BrocadeScheduler-SchoolMorphic'!
BlockedSlotTableCellFactory class
	instanceVariableNames: ''!

!classDefinition: #TextFieldSentence category: #'BrocadeScheduler-StencilMorphic'!
LayoutMorph subclass: #TextFieldSentence
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'TextFieldSentence class' category: #'BrocadeScheduler-StencilMorphic'!
TextFieldSentence class
	instanceVariableNames: ''!

!classDefinition: #ClassroomTableCell category: #'BrocadeScheduler-CampusMorphic'!
BrocadeTableCell subclass: #ClassroomTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-CampusMorphic'!
!classDefinition: 'ClassroomTableCell class' category: #'BrocadeScheduler-CampusMorphic'!
ClassroomTableCell class
	instanceVariableNames: ''!

!classDefinition: #BlockedSlotTableCell category: #'BrocadeScheduler-SchoolMorphic'!
BrocadeTableCell subclass: #BlockedSlotTableCell
	instanceVariableNames: 'lecturer semester blocked'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'BlockedSlotTableCell class' category: #'BrocadeScheduler-SchoolMorphic'!
BlockedSlotTableCell class
	instanceVariableNames: ''!

!classDefinition: #LecturerTableCell category: #'BrocadeScheduler-SchoolMorphic'!
BrocadeTableCell subclass: #LecturerTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'LecturerTableCell class' category: #'BrocadeScheduler-SchoolMorphic'!
LecturerTableCell class
	instanceVariableNames: ''!

!classDefinition: #AssignmentTableCell category: #'BrocadeScheduler-StencilMorphic'!
BrocadeTableCell subclass: #AssignmentTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'AssignmentTableCell class' category: #'BrocadeScheduler-StencilMorphic'!
AssignmentTableCell class
	instanceVariableNames: ''!

!classDefinition: #WeeklyTimeTableCell category: #'BrocadeScheduler-StencilMorphic'!
BrocadeTableCell subclass: #WeeklyTimeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'WeeklyTimeTableCell class' category: #'BrocadeScheduler-StencilMorphic'!
WeeklyTimeTableCell class
	instanceVariableNames: ''!

!classDefinition: #ResourceTimeTableCell category: #'BrocadeScheduler-ResourceMorphic'!
WeeklyTimeTableCell subclass: #ResourceTimeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-ResourceMorphic'!
!classDefinition: 'ResourceTimeTableCell class' category: #'BrocadeScheduler-ResourceMorphic'!
ResourceTimeTableCell class
	instanceVariableNames: ''!

!classDefinition: #ClassroomMorph category: #'BrocadeScheduler-CampusMorphic'!
BrocadeTableCellItem subclass: #ClassroomMorph
	instanceVariableNames: 'room'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-CampusMorphic'!
!classDefinition: 'ClassroomMorph class' category: #'BrocadeScheduler-CampusMorphic'!
ClassroomMorph class
	instanceVariableNames: ''!

!classDefinition: #LecturerMorph category: #'BrocadeScheduler-SchoolMorphic'!
BrocadeTableCellItem subclass: #LecturerMorph
	instanceVariableNames: 'lecturer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'LecturerMorph class' category: #'BrocadeScheduler-SchoolMorphic'!
LecturerMorph class
	instanceVariableNames: ''!

!classDefinition: #AssignmentMorph category: #'BrocadeScheduler-StencilMorphic'!
BrocadeTableCellItem subclass: #AssignmentMorph
	instanceVariableNames: 'model index collision enableGrabbing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'AssignmentMorph class' category: #'BrocadeScheduler-StencilMorphic'!
AssignmentMorph class
	instanceVariableNames: ''!

!classDefinition: #StencilLabel category: #'BrocadeScheduler-StencilMorphic'!
NarrowLabelMorph subclass: #StencilLabel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'StencilLabel class' category: #'BrocadeScheduler-StencilMorphic'!
StencilLabel class
	instanceVariableNames: ''!

!classDefinition: #CampusBrowser category: #'BrocadeScheduler-CampusMorphic'!
BidiSystemWindow subclass: #CampusBrowser
	instanceVariableNames: 'campusIndex floorIndex selectedFloors selectedRoomIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-CampusMorphic'!
!classDefinition: 'CampusBrowser class' category: #'BrocadeScheduler-CampusMorphic'!
CampusBrowser class
	instanceVariableNames: ''!

!classDefinition: #ResourceTimeTable category: #'BrocadeScheduler-ResourceMorphic'!
BidiSystemWindow subclass: #ResourceTimeTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-ResourceMorphic'!
!classDefinition: 'ResourceTimeTable class' category: #'BrocadeScheduler-ResourceMorphic'!
ResourceTimeTable class
	instanceVariableNames: ''!

!classDefinition: #LecturerBrowser category: #'BrocadeScheduler-SchoolMorphic'!
BidiSystemWindow subclass: #LecturerBrowser
	instanceVariableNames: 'mold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'LecturerBrowser class' category: #'BrocadeScheduler-SchoolMorphic'!
LecturerBrowser class
	instanceVariableNames: ''!

!classDefinition: #SchoolBrowser category: #'BrocadeScheduler-SchoolMorphic'!
BidiSystemWindow subclass: #SchoolBrowser
	instanceVariableNames: 'selectedSchools schoolIndex rankIndex selectedRanks selectedLecturerIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-SchoolMorphic'!
!classDefinition: 'SchoolBrowser class' category: #'BrocadeScheduler-SchoolMorphic'!
SchoolBrowser class
	instanceVariableNames: ''!

!classDefinition: #StencilBrowser category: #'BrocadeScheduler-StencilMorphic'!
BidiSystemWindow subclass: #StencilBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex stencilIndex theAssignment views'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-StencilMorphic'!
!classDefinition: 'StencilBrowser class' category: #'BrocadeScheduler-StencilMorphic'!
StencilBrowser class
	instanceVariableNames: ''!

!classDefinition: #BrocadeSpriteAtlas category: #'BrocadeScheduler-SpriteAtlas'!
SpriteAtlas subclass: #BrocadeSpriteAtlas
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'BrocadeScheduler-SpriteAtlas'!
!classDefinition: 'BrocadeSpriteAtlas class' category: #'BrocadeScheduler-SpriteAtlas'!
BrocadeSpriteAtlas class
	instanceVariableNames: ''!

!classDefinition: #AddCampusCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AddCampusCommand
	instanceVariableNames: 'description campus college lastFloor firstFloor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AddCampusCommand class' category: #'BrocadeScheduler-UndoRedo'!
AddCampusCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveCampusCommand category: #'BrocadeScheduler-UndoRedo'!
AddCampusCommand subclass: #RemoveCampusCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'RemoveCampusCommand class' category: #'BrocadeScheduler-UndoRedo'!
RemoveCampusCommand class
	instanceVariableNames: ''!

!classDefinition: #AddClassroomCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AddClassroomCommand
	instanceVariableNames: 'campus code capacity floor classroom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AddClassroomCommand class' category: #'BrocadeScheduler-UndoRedo'!
AddClassroomCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveClassroomCommand category: #'BrocadeScheduler-UndoRedo'!
AddClassroomCommand subclass: #RemoveClassroomCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'RemoveClassroomCommand class' category: #'BrocadeScheduler-UndoRedo'!
RemoveClassroomCommand class
	instanceVariableNames: ''!

!classDefinition: #AddLecturerCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AddLecturerCommand
	instanceVariableNames: 'school code description rank quota'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AddLecturerCommand class' category: #'BrocadeScheduler-UndoRedo'!
AddLecturerCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveLecturerCommand category: #'BrocadeScheduler-UndoRedo'!
AddLecturerCommand subclass: #RemoveLecturerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'RemoveLecturerCommand class' category: #'BrocadeScheduler-UndoRedo'!
RemoveLecturerCommand class
	instanceVariableNames: ''!

!classDefinition: #AddSchoolCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AddSchoolCommand
	instanceVariableNames: 'description college school'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AddSchoolCommand class' category: #'BrocadeScheduler-UndoRedo'!
AddSchoolCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveSchoolCommand category: #'BrocadeScheduler-UndoRedo'!
AddSchoolCommand subclass: #RemoveSchoolCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'RemoveSchoolCommand class' category: #'BrocadeScheduler-UndoRedo'!
RemoveSchoolCommand class
	instanceVariableNames: ''!

!classDefinition: #AddStencilCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AddStencilCommand
	instanceVariableNames: 'description college stencil semester'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AddStencilCommand class' category: #'BrocadeScheduler-UndoRedo'!
AddStencilCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveStencilCommand category: #'BrocadeScheduler-UndoRedo'!
AddStencilCommand subclass: #RemoveStencilCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'RemoveStencilCommand class' category: #'BrocadeScheduler-UndoRedo'!
RemoveStencilCommand class
	instanceVariableNames: ''!

!classDefinition: #AssignClassroomCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AssignClassroomCommand
	instanceVariableNames: 'assignment room'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AssignClassroomCommand class' category: #'BrocadeScheduler-UndoRedo'!
AssignClassroomCommand class
	instanceVariableNames: ''!

!classDefinition: #UnassignClassroomCommand category: #'BrocadeScheduler-UndoRedo'!
AssignClassroomCommand subclass: #UnassignClassroomCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'UnassignClassroomCommand class' category: #'BrocadeScheduler-UndoRedo'!
UnassignClassroomCommand class
	instanceVariableNames: ''!

!classDefinition: #AssignLecturerCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AssignLecturerCommand
	instanceVariableNames: 'assignment lecturer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AssignLecturerCommand class' category: #'BrocadeScheduler-UndoRedo'!
AssignLecturerCommand class
	instanceVariableNames: ''!

!classDefinition: #UnassignLecturerCommand category: #'BrocadeScheduler-UndoRedo'!
AssignLecturerCommand subclass: #UnassignLecturerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'UnassignLecturerCommand class' category: #'BrocadeScheduler-UndoRedo'!
UnassignLecturerCommand class
	instanceVariableNames: ''!

!classDefinition: #AssignTimeSlotCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #AssignTimeSlotCommand
	instanceVariableNames: 'assignment day hour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'AssignTimeSlotCommand class' category: #'BrocadeScheduler-UndoRedo'!
AssignTimeSlotCommand class
	instanceVariableNames: ''!

!classDefinition: #UnassignTimeSlotCommand category: #'BrocadeScheduler-UndoRedo'!
AssignTimeSlotCommand subclass: #UnassignTimeSlotCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'UnassignTimeSlotCommand class' category: #'BrocadeScheduler-UndoRedo'!
UnassignTimeSlotCommand class
	instanceVariableNames: ''!

!classDefinition: #EditLecturerCommand category: #'BrocadeScheduler-UndoRedo'!
UndoRedoCommand subclass: #EditLecturerCommand
	instanceVariableNames: 'description rank quota lecturer backup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadeScheduler-UndoRedo'!
!classDefinition: 'EditLecturerCommand class' category: #'BrocadeScheduler-UndoRedo'!
EditLecturerCommand class
	instanceVariableNames: ''!


!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:38:48'!
addSchool: aSchool

	self assert: aSchool college isNil.
	
	aSchool college: self.
	
	schools add: aSchool! !

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:34:17'!
detachSchool: aSchool

	schools remove: aSchool ! !

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:37:17'!
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

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:38:12'!
lecturerAt: anIntegerCode

	^schools detect:[:eachSchool | eachSchool lecturerAt: anIntegerCode :: notNil ] 
		ifFound:[:aSchool | aSchool lecturerAt: anIntegerCode ]
		ifNone:[nil]! !

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:34:03'!
removeSchool: aSchool

	self assert: aSchool college == self.
	
	aSchool detach.
	
	self detachSchool: aSchool.! !

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:33:55'!
schoolAt: aString

	^schools detect:[:eachLecturer | eachLecturer description = aString ] ifFound:[:aLecturer | aLecturer] ifNone:[nil]! !

!SchedulingCollege methodsFor: 'schools' stamp: 'DF 2/11/2025 22:33:45'!
schools
	^schools! !

!SchedulingCollege methodsFor: 'campuses' stamp: 'DF 2/11/2025 22:34:28'!
addCampus: aCampus

	self assert: aCampus college isNil.
	
	aCampus college: self.
	
	campuses add: aCampus.
! !

!SchedulingCollege methodsFor: 'campuses' stamp: 'DF 2/11/2025 22:35:06'!
campusAt: aString

	^campuses detect:[:eachCampus | eachCampus description = aString ] ifFound:[:aCampus | aCampus] ifNone:[nil]! !

!SchedulingCollege methodsFor: 'campuses' stamp: 'DF 2/11/2025 22:35:14'!
campuses
	^campuses! !

!SchedulingCollege methodsFor: 'campuses' stamp: 'DF 2/11/2025 22:35:20'!
detachCampus: aCampus

	campuses remove: aCampus! !

!SchedulingCollege methodsFor: 'campuses' stamp: 'DF 2/11/2025 22:35:27'!
removeCampus: aCampus

	self assert: aCampus college == self.
	
	aCampus detach.
	
	self detachCampus: aCampus.! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 22:36:34'!
availableHoursForDay: aDayInteger

	self assert: aDayInteger >=1 ; assert: aDayInteger <=6.
	
	aDayInteger = 6
		ifTrue:[^ 8 to: 14 ]
		ifFalse:[^ 8 to: 23 ]
	
	! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 22:40:56'!
fromXML: anXMLElement

	super fromXML: anXMLElement.
			
	anXMLElement elementAt: 'campuses' :: elements do:[:eachElement | | aCampus |
		aCampus := Campus new.
		self addCampus: aCampus.
		aCampus fromXML: eachElement	].

	anXMLElement elementAt: 'schools' :: elements do:[:eachElement | | aSchool |
		aSchool := School new.
		self addSchool: aSchool.
		aSchool fromXML: eachElement	].

! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 22:30:03'!
initialize

	super initialize.
	
	campuses := Set new.
	
	schools := Set new.
! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 21:36:52'!
invariant

	super invariant.
	
	schools do: [:aSchool | aSchool invariant ].

	schools do: [:aSchool | self assert: aSchool college == self ].

	campuses do: [:aCampus | aCampus invariant ].

	campuses do: [:aCampus | self assert: aCampus college == self ].
! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/13/2025 21:06:00'!
newSemester
	^SchedulingSemester new! !

!SchedulingCollege methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:21:29'!
xmlElementsOut: anXMLWriter
	
	super xmlElementsOut: anXMLWriter.
	
	anXMLWriter startTag: 'campuses' ; endTag.
	campuses do:[:each |
		each toXML: anXMLWriter].
	anXMLWriter endTag: 'campuses'.

	anXMLWriter startTag: 'schools' ; endTag.
	schools do:[:each |
		each toXML: anXMLWriter].
	anXMLWriter endTag: 'schools'.
	
! !

!SchedulingCollege class methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 20:47:31'!
initialize

	"self initialize"
	
	ValidHours := 
		{ 	1 -> (8 to: 22) . 
		 	2 -> (8 to: 22) . 
		 	3 -> (8 to: 22) . 
		 	4 -> (8 to: 22) . 			
		 	5 -> (8 to: 22) . 
		 	6 -> (8 to: 12)  } asDictionary.
! !

!SchedulingCollege class methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 20:48:36'!
validHoursInDay: anInteger

	self assert: anInteger >= 1.
	self assert: anInteger <= 6.
	
	^ValidHours at: anInteger ! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:26:01'!
addModule: aModule

	super addModule: aModule.
	
	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 	| anAssignment |
				
				eachStencil assignments do:[:x | self assert: (x unit ~= eachUnit) ].

				anAssignment := Assignment new.
		
				anAssignment unit: eachUnit.
			
				eachStencil addAssignment: anAssignment ] ].
! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:23:34'!
addStencil: aStencil
	
	self assert: aStencil semester isNil.
	
	aStencil attachSemester: self.
	
	self attachStencil: aStencil. ! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:23:42'!
attachStencil: aStencil

	stencils add: aStencil! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:23:49'!
detachStencil: aStencil

	stencils remove: aStencil! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:40:22'!
fromXML: anXMLElement

	| college |
	
	super fromXML: anXMLElement.

	college := academicYear academicTrack program college.
	
	anXMLElement elementAt: 'stencils' :: elements do:[:eachElement | | aStencil |
	
		aStencil := Stencil new.
		
		self addStencil: aStencil.
		
		aStencil fromXML: eachElement ].
	! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:24:41'!
initialize

	super initialize.
	
	stencils := Set new.
	
! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:24:09'!
invariant

	stencils do: [:aStencil | aStencil invariant ].

	stencils do: [:aStencil | self assert: aStencil semester == self ].
	! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:26:27'!
removeModule: aModule

	stencils do:[:eachStencil |

			aModule units do:[:eachUnit | 					
				eachStencil assignments select:[:eachAssignment | 	eachAssignment unit = eachUnit ] ::
					do:[:eachAssignment |
						eachStencil removeAssignment: eachAssignment ] ] ].

	super removeModule: aModule.! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:24:16'!
removeStencil: aStencil

	self assert: aStencil semester == self.
	
	aStencil detach.
	
	self detachStencil: aStencil.! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:24:22'!
stencils
	^stencils! !

!SchedulingSemester methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:21:29'!
xmlElementsOut: anXMLWriter

	super xmlElementsOut: anXMLWriter.
	
	anXMLWriter startTag: 'stencils' ; endTag.
	
	stencils do:[:eachStencil |
		eachStencil toXML: anXMLWriter ].
	
	anXMLWriter endTag: 'stencils'.! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/31/2025 22:36:29'!
addNewModuleDialog

	AcademicProgramBrowser addNewModuleDialog: model! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 3/8/2025 15:54:59'!
openCollegeModuleBrowser

	EasyCollegeModulesBrowser open: model label: 'רשימת כל הקורסים'

! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:55:59'!
openSearchModuleDialog

! !

!BrocadeApplication methodsFor: 'programs' stamp: 'DF 1/31/2025 21:10:34'!
addAcademicProgramDialog

	AcademicProgramBrowser addAcademicProgramDialog: model! !

!BrocadeApplication methodsFor: 'programs' stamp: 'DF 1/12/2025 20:51:36'!
openAcademicProgramBrowser

	AcademicProgramBrowser open: model label: 'תוכניות לימוד' 
! !

!BrocadeApplication methodsFor: 'programs' stamp: 'DF 3/2/2025 15:40:20'!
openAcademicThemeBrowser
	EasyThemeBrowser open: model label: 'התמחויות'! !

!BrocadeApplication methodsFor: 'stencils' stamp: 'DF 1/11/2025 18:19:19'!
openStencilBrowser

	StencilBrowser open: model label: 'תבניות'.
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/31/2025 19:48:26'!
addLecturerDialog

	SchoolBrowser addLecturerDialog: model
	
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/31/2025 19:52:27'!
addSchoolDialog

	SchoolBrowser addSchoolDialog: model
	
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/18/2025 13:06:12'!
openSchoolBrowser

	SchoolBrowser open: model label: 'מרצים'.
! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/31/2025 17:03:12'!
addCampusDialog

	CampusBrowser addCampusDialog: model! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/31/2025 17:04:38'!
addClassroomDialog

	CampusBrowser addClassroomDialog: model ! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/18/2025 17:09:12'!
openCampusBrowser

	CampusBrowser open: model label: 'קמפוסים'.
! !

!BrocadeApplication methodsFor: 'menu' stamp: 'DF 2/3/2025 19:43:51'!
buildEditMenu

	| menu disableUndo disableRedo undoString |
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	
	disableUndo := BrocadeCommandHistory instance isAtBeginning.
	disableRedo := BrocadeCommandHistory instance isAtEnd.
	
	undoString := disableUndo ifFalse:['ביטול ', BrocadeCommandHistory instance currentTitle] ifTrue:['ביטול'].
	
	(menu add: (undoString asBidi writingDirection:#rightToLeft) target: self action: #undo) isEnabled: disableUndo not .
	(menu add: ('ביצוע מחדש' asBidi writingDirection:#rightToLeft) target: self action: #redo) isEnabled: disableRedo not .
	menu addLine.
	(menu add: ('גזור' asBidi writingDirection:#rightToLeft) target: self action: #cutToClipboard) color: Theme current buttonLabel.
	(menu add: ('העתק' asBidi writingDirection:#rightToLeft) target: self action: #copyToClipboard) color: Theme current buttonLabel.
	(menu add: ('הדבק' asBidi writingDirection:#rightToLeft) target: self action: #pasteFromClipboard) color: Theme current buttonLabel.
	
	^menu! !

!BrocadeApplication methodsFor: 'menu' stamp: 'DF 2/28/2025 18:38:38'!
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
		{'יבא תוכניות לימודים ...' . self . nil "#openImportAcademicProgramDialog" } .
		{'יבא סגל אקדמי ...' . self . #openImportAcademicStaffDialog } .
		{'יצא תוכנית לימודים ...' . self . #exportAction } .
		$| .
		{ 'הגדרות ...' . self . #settingsDialog } .
		$| .
		{ 'סגור' . self . #exitAction } } } .  
	{ 'עריכה' . #buildEditMenu . self } .
	{ 'תוכנית לימודים' . {
		{'הצג תוכניות לימודים' . self . #openAcademicProgramBrowser } .
		{ 'תוכנית לימוד חדשה ...' . self . #addAcademicProgramDialog } .
		$| .
		{ 'רשימת כל הקורסים' . self . #openCollegeModuleBrowser } .
		{ 'קורס חדש ...' . self . #addNewModuleDialog } .
		$| .
		{ 'הצג התמחויות' . self . #openAcademicThemeBrowser } 
		 } } .
	{ 'בית ספר' . {
		{ 'הצג בתי ספר' . self . #openSchoolBrowser } .
		{ 'בית ספר חדש ...' . self . #addSchoolDialog } .
		$| .	
		{ 'מרצה חדשה ...' . self . #addLecturerDialog } 
		 } } .
	{ 'חדר' . {
		{'הצג קמפוסים וחדרים' . self . #openCampusBrowser } .
		{ 'קמפוס חדש ...' . self . #addCampusDialog } .
		$| .	
		{ 'חדר חדש ...' . self . #addClassroomDialog } 
		 } } .
	{ 'תבנית' . {
		{ 'הצג תבניות' . self . #openStencilBrowser } .
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!BrocadeApplication methodsFor: 'menu' stamp: 'DF 2/28/2025 16:54:38'!
newAction

	| decision |
	
	decision :=
		BrocadeCommandHistory instance isDirty 
			ifTrue:[ 
				self confirm:'קיימים שינויים שלא נשמרו. להמשיך?' asBidi orCancel:[^self].
		 	]
			ifFalse:[
				false
			].
		
	decision 
		ifTrue:[
			self closeAllBrocadeWindows.
	
			BrocadeCommandHistory instance initialize.
			
			model := SchedulingCollege new.
	
			model description:'משבצת חדשה' ]! !

!BrocadeApplication methodsFor: 'menu' stamp: 'DF 2/28/2025 17:31:05'!
openAction

	| dialog |
	
	BrocadeCommandHistory instance isDirty 
		ifTrue:[ 
			self confirm:'קיימים שינויים שלא נשמרו. להמשיך?' asBidi orCancel:[^self] ].
		
	dialog := OpenFileDialog open:self start: lastImportDirectory action: #fromXML: label:'Select File'.
	
	dialog morphPosition: (dialog owner morphExtent - dialog morphExtent / 2).! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:15:09'!
importAcademicProgram: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicProgram: aFileEntry.
	
"	CollegeBrowser open: model label: 'תוכניות לימוד'."
	
	! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:25'!
importAcademicStaff: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicStaff: aFileEntry.
	

	
	! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:44'!
openImportAcademicProgramDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicProgram: label:'Select File'! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:55'!
openImportAcademicStaffDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicStaff: label:'Select File'! !

!BrocadeApplication methodsFor: 'undo/redo' stamp: 'DF 2/3/2025 16:39:31'!
redo
	BrocadeCommandHistory instance redo! !

!BrocadeApplication methodsFor: 'undo/redo' stamp: 'DF 2/3/2025 16:39:24'!
undo
	BrocadeCommandHistory instance undo! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 2/28/2025 17:25:47'!
fromXML: aFileEntry

	| aReadStream anXMLDocument aCollege |
	
	aReadStream := aFileEntry readStream.
	
	anXMLDocument := XMLDOMParser parseDocumentFrom: aReadStream.
	
	aCollege := SchedulingCollege new.
	
	aCollege fromXML: anXMLDocument elements first.
	
	aCollege invariant.
	
	self closeAllBrocadeWindows.

	BrocadeCommandHistory instance initialize.
	
	model := aCollege.
	
	self updateDocumentName. 

! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 2/16/2025 18:29:48'!
home
	^homeDirectory ! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 2/16/2025 18:26:00'!
home: aString
	homeDirectory := aString! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 3/3/2025 12:28:24'!
saveAction

	| anXMLWriter file |
	
	self assert: path notNil.
	
	file := path asFileEntry.

	[		
		anXMLWriter := XMLWriter on: file writeStream.
	
		anXMLWriter xmlDeclaration: '1.0' encoding: 'UTF-8'.
	
		model toXML: anXMLWriter.
		
		BrocadeCommandHistory instance save.
	]
	ensure:[
		anXMLWriter ifNotNil:[:w | w stream close ].
	]
! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 2/21/2025 14:32:55'!
saveAs: aString

	path := aString.
	
	self saveAction.! !

!BrocadeApplication methodsFor: 'filing' stamp: 'DF 2/21/2025 13:58:36'!
saveAsAction

	SaveFileDialog open: self start: lastImportDirectory action: #saveAs: label: 'Save As ...'
! !

!BrocadeApplication methodsFor: 'initialization' stamp: 'DF 2/28/2025 16:58:34'!
initialize

	super initialize.

	homeDirectory := DirectoryEntry userBaseDirectory asString.
	
	BrocadeCommandHistory instance when: #changed send: #updateDocumentName to: self.
	
	! !

!BrocadeApplication methodsFor: 'window management' stamp: 'DF 2/12/2025 19:32:21'!
closeAllBrocadeWindows

	UISupervisor ui submorphs select:[:each | each isKindOf: BidiSystemWindow ] :: do:[:each | each delete].! !

!BrocadeApplication methodsFor: 'window management' stamp: 'DF 1/31/2025 13:43:06'!
showCollapsedWindows

	| windows menu |
	
	windows := UISupervisor ui submorphs select:[:each | each isKindOf: SystemWindow :: and: [each isCollapsed ] ].
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	windows do:[:eachWindow | 
		(menu add: (eachWindow label asBidi writingDirection:#rightToLeft) target: eachWindow action: #show) color: Theme current buttonLabel ].
	
	^menu! !

!BrocadeApplication methodsFor: 'as yet unclassified' stamp: 'DF 2/16/2025 18:36:52'!
settingsDialog

	| mold position aDialog |
	
	mold := BidiMold new.
	
	(mold stringField)
		label: 'Brocade home directory';
		on: #home of: self ; 
		addCondition:[:input :value | value asDirectoryEntry exists ] ;
		beRequired .

	position := UISupervisor ui activeHand morphPosition.
		
	aDialog := mold openDialog: 'Brocade Settings'.
		
	aDialog morphPosition: position - (aDialog morphWidth@0).
! !

!BrocadeApplication methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:33:03'!
updateDocumentName

	| tag |
	
	tag := 
		BrocadeCommandHistory instance isDirty ifTrue:['*'] ifFalse:[''].
	
	DisplayScreen hostOSWindowTitle: model description , tag.
	! !

!BrocadeApplication class methodsFor: 'as yet unclassified' stamp: 'DF 3/3/2025 12:26:08'!
instance

	TheApplication 
		ifNil:[
			TheApplication := self new.
			BrocadeCommandHistory instance when: #changed send: #updateDocumentName
to: TheApplication.
			TheApplication menuBar.
		].
	
	^TheApplication
	
! !

!BrocadeApplication class methodsFor: 'as yet unclassified' stamp: 'DF 3/3/2025 12:23:44'!
open

	self instance menuBar.	
! !

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

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:21:29'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'room' attributeList: {'code' -> code asString . 'capacity' -> capacity asString . 'floor' -> floor asString } asDictionary ; endEmptyTag: 'room'.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self attachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit attachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:36'!
attachAcademicUnit: anAcademicUnit

	units add: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 19:13:46'!
blockedSlotsFromXML: anXMLElement

	anXMLElement elementAt: 'blocked-slots' :: elements do:[:eachSemester | | semesterOrdinal |
		
		self assert: eachSemester name = 'semester'.
		
		semesterOrdinal := Number readFrom: (eachSemester attributeAt: 'ordinal').
		
		eachSemester elements do:[:eachDay | | dayOrdinal |
		
			self assert: eachDay name = 'day'.
				
			dayOrdinal := Number readFrom: (eachDay attributeAt: 'ordinal').
			
			eachDay elements do:[:eachHour | | hourOrdinal |
				
				self assert: eachHour name = 'hour'.
				
				hourOrdinal := Number readFrom: (eachHour attributeAt: 'ordinal').
				
				blockedSlots at: semesterOrdinal :: at: dayOrdinal :: add: hourOrdinal ] ] ].
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

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 19:59:17'!
displayStringOrText
	^self description ! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 19:04:02'!
fromXML: anXMLElement

	self assert: anXMLElement name = 'lecturer'.

	code := Number readFrom:(anXMLElement attributeAt: 'code').

	description := anXMLElement attributeAt: 'description'.

	quota := Number readFrom:(anXMLElement attributeAt: 'quota').

	rank := anXMLElement attributeAt: 'rank'.
	
	self blockedSlotsFromXML: anXMLElement.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 20:57:08'!
initialize

	super initialize.
	
	units := Set new.
	
	blockedSlots := 
		(1 to:3) collect:[:eachSemester | eachSemester -> 
			((1 to:6) collect:[:eachDay | eachDay -> Set new] :: asDictionary) ] :: asDictionary
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

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:43:44'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'lecturer' attributeList: {'code' -> code asString . 'description' -> description. 'quota' -> quota asString . 'rank' -> rank } asDictionary ; endTag.
	
		anXMLWriter startTag: 'blocked-slots' ; endTag.
			(1 to:3) do:[:i | | semester |
				semester := blockedSlots at:i.
				anXMLWriter startElement: 'semester' attributeList: { 'ordinal' -> i asString} asDictionary; endTag.
					(1 to:6) do:[:day | | hours |
						anXMLWriter startElement: 'day' attributeList: { 'ordinal' -> day asString} asDictionary; endTag.
							hours := semester at:day.
							hours do:[:eachHour |
								anXMLWriter startElement: 'hour' attributeList: { 'ordinal' -> eachHour asString} asDictionary; endEmptyTag:'hour'.].
						anXMLWriter endTag: 'day'].
				anXMLWriter endTag: 'semester' ].
		anXMLWriter endTag: 'blocked-slots'.
	
	anXMLWriter endTag: 'lecturer'.! !

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

!Lecturer methodsFor: 'blocking' stamp: 'DF 3/1/2025 13:31:52'!
blockSemester: anIntegerSemester day: anIntegerDay hour: anIntegerHour

	self assert: anIntegerSemester <= 3.
	self assert: anIntegerSemester >= 1.
	self assert: anIntegerDay <= 6.
	self assert: anIntegerDay >= 1.
	
	self assert: (SchedulingCollege validHoursInDay: anIntegerDay :: includes: anIntegerHour).
	
	blockedSlots at: anIntegerSemester :: at: anIntegerDay :: add: anIntegerHour.! !

!Lecturer methodsFor: 'blocking' stamp: 'DF 2/28/2025 21:11:10'!
blockedSlots
	^blockedSlots ! !

!Lecturer methodsFor: 'blocking' stamp: 'DF 3/1/2025 14:25:45'!
isBlockedSemester: anIntegerSemester day: anIntegerDay hour: anIntegerHour

	self assert: anIntegerSemester <= 3.
	self assert: anIntegerSemester >= 1.
	self assert: anIntegerDay <= 6.
	self assert: anIntegerDay >= 1.
	
	SchedulingCollege validHoursInDay: anIntegerDay :: includes: anIntegerHour :: ifFalse:[^true].
	
	^ blockedSlots at: anIntegerSemester :: at: anIntegerDay :: includes: anIntegerHour ! !

!Lecturer methodsFor: 'blocking' stamp: 'DF 3/1/2025 14:56:52'!
toggleBlockedSemester: anIntegerSemester day: anIntegerDay hour: anIntegerHour

	| hours |
	
	self assert: anIntegerSemester <= 3.
	self assert: anIntegerSemester >= 1.
	self assert: anIntegerDay <= 6.
	self assert: anIntegerDay >= 1.
	
	self assert: (SchedulingCollege validHoursInDay: anIntegerDay :: includes: anIntegerHour).
	
	hours := blockedSlots at: anIntegerSemester :: at: anIntegerDay.
	
	hours includes: anIntegerHour ::
		ifTrue:[hours remove: anIntegerHour ]
		ifFalse:[hours add: anIntegerHour ].
		
	^hours includes: anIntegerHour ! !

!Lecturer methodsFor: 'blocking' stamp: 'DF 3/1/2025 13:32:00'!
unblockSemester: anIntegerSemester  day: anIntegerDay hour: anHour

	self assert: anIntegerSemester <= 3.
	self assert: anIntegerSemester >= 1.
	self assert: anIntegerDay <= 6.
	self assert: anIntegerDay >= 1.
	
	self assert: (SchedulingCollege validHoursInDay: anIntegerDay :: includes: anHour).
	
	blockedSlots at: anIntegerSemester :: at: anIntegerDay :: remove: anHour.! !

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

!Assignment methodsFor: 'xml' stamp: 'DF 2/13/2025 20:45:25'!
fromXML: anXMLElement

	| college |
	
	self assert: anXMLElement name = 'assignment'.

	college := stencil semester year academicTrack program college.
	
	day := anXMLElement attributeAt: 'day'.
	
	day ifNotNil:[day := Number readFrom: day].
	
	hour := anXMLElement attributeAt: 'hour'.
	
	hour ifNotNil:[hour := Number readFrom: hour].
		
	anXMLElement elementAt: 'lecturers' :: elements do:[:eachElement | | school lecturer |

		school := college schoolAt: (eachElement attributeAt: 'school').
		
		lecturer := school lecturerAt: (eachElement attributeAt: 'lecturer').
		
		lecturers add: lecturer ].
	
	anXMLElement elementAt: 'rooms' :: elements do:[:eachElement | | campus room |

		campus := college campusAt: (eachElement attributeAt: 'campus').
		
		room := campus roomAt: (eachElement attributeAt: 'room').
		
		rooms add: room ].
! !

!Assignment methodsFor: 'xml' stamp: 'DF 2/12/2025 17:51:45'!
lecturersXmlOut: anXMLWriter

	anXMLWriter startTag: 'lecturers' ; endTag.

	lecturers do:[:eachLecturer |
		anXMLWriter startElement: 'lecturer' attributeList: {'school' -> eachLecturer school description . 'code' -> eachLecturer code asString } asDictionary ; endEmptyTag: 'lecturer' ].
	
	anXMLWriter endTag:'lecturers'.		! !

!Assignment methodsFor: 'xml' stamp: 'DF 2/12/2025 17:51:50'!
roomsXmlOut: anXMLWriter

	anXMLWriter startTag: 'rooms' ; endTag.

	rooms do:[:eachRoom |
		anXMLWriter startElement: 'room' attributeList: { 'campus' -> eachRoom campus description . 'code' -> eachRoom code asString } asDictionary ; endEmptyTag: 'room' ].
	
	anXMLWriter endTag:'rooms'.	! !

!Assignment methodsFor: 'xml' stamp: 'DF 2/21/2025 13:21:29'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'assignment' attributeList: {'day' -> day asString . 'hour' -> hour asString .  } asDictionary ; endTag.

	self lecturersXmlOut: anXMLWriter. 
	self roomsXmlOut: anXMLWriter.
	
	anXMLWriter endTag:'assignment'.! !

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

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:21:29'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'campus' attributeList: {'description' -> description } asDictionary ; endTag.
	
	anXMLWriter startTag: 'rooms' ; endTag.
	rooms do:[:each |
		each toXML: anXMLWriter].
	anXMLWriter endTag: 'rooms'.
	
	anXMLWriter endTag: 'campus'.! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:16:10'!
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

!School methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:54:13'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'school'.

	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	self lecturersFromXML: anXMLElement.! !

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

!School methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:53:55'!
lecturersFromXML: anXMLElement

	anXMLElement elementAt: 'lecturers' :: elements do:[:eachElement | | aLecturer |
		aLecturer := Lecturer new.
		self addLecturer: aLecturer.
		aLecturer fromXML: eachElement	].
! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 19:54:47'!
removeLecturer: aLecturer

	self assert: aLecturer school == self.
	
	self detachLecturer: aLecturer.
	
	aLecturer detach.! !

!School methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:21:29'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'school' attributeList: {'description' -> description } asDictionary ; endTag.
	
	anXMLWriter startTag: 'lecturers' ; endTag.
	lecturers do:[:each |
		each toXML: anXMLWriter].
	anXMLWriter endTag: 'lecturers'.
	
	anXMLWriter endTag: 'school'.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:14:28'!
addAssignment: anAssignment

	self assert: anAssignment stencil isNil.
	
	self attachAssignment: anAssignment.
	
	anAssignment stencil: self.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:18:36'!
addNewStencil: aSemester

	aSemester modules do:[:eachModule | 
		
			eachModule units do:[:eachUnit | | anAssignment |
		
			anAssignment := Assignment new.
		
			anAssignment unit: eachUnit.
			
		self addAssignment: anAssignment. ] ].

	aSemester addStencil: self
! !

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

!Stencil methodsFor: 'xml' stamp: 'DF 2/12/2025 17:59:58'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'stencil'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	anXMLElement elements do:[:eachElement | | assignment |
		assignment := Assignment new.
		self addAssignment: assignment.
		assignment fromXML: eachElement ].
! !

!Stencil methodsFor: 'xml' stamp: 'DF 2/21/2025 13:21:29'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'stencil' attributeList: {'description' -> description } asDictionary ; endTag.

	assignments do:[:eachAssignment |
		eachAssignment toXML: anXMLWriter ].
	
	anXMLWriter endTag:'stencil'.! !

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

!BlockedSlotTableCellFactory methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 13:22:03'!
lecturer: aLecturer
	lecturer := aLecturer! !

!BlockedSlotTableCellFactory methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:14:44'!
row: anIntegerRow column: anIntegerColumn

	| aBlockedSlotTableCell |
	
	anIntegerRow = 1 or:[anIntegerColumn = 7] ::
		ifTrue:[^TableCell row: anIntegerRow column: anIntegerColumn].
	
	aBlockedSlotTableCell := BlockedSlotTableCell row: anIntegerRow column: anIntegerColumn.
	
	aBlockedSlotTableCell lecturer: lecturer ; semester: semester; updateColor .
	
	^aBlockedSlotTableCell ! !

!BlockedSlotTableCellFactory methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:13:50'!
semester: anInteger
	semester := anInteger ! !

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

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 22:48:34'!
aboutToGrabClassroom: aClassroomMorph

	| aDuplicateMorph |
	
	aClassroomMorph color: Color transparent.
	
	aDuplicateMorph := aClassroomMorph duplicate room: aClassroomMorph room ; expand ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph ! !

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/22/2025 20:04:55'!
allowsSubmorphDrag
	^row ~= 1 ! !

!ClassroomTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:24:09'!
minimumExtent
	^`0@78`! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 14:46:49'!
adoptWidgetsColor: paneColor
	"don't"! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:15:05'!
doubleClick: aMouseButtonEvent localPosition: localEventPosition

	| day hour |

	self assert: lecturer notNil.
		
	day := 7 - column.
	hour := row + 6.

	blocked := lecturer toggleBlockedSemester: semester day: day hour: hour.
	
	self updateColor ! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:06:54'!
drawOn: aCanvas

	super drawOn: aCanvas.
	
	blocked ifNil:[^self].
	
	blocked ifTrue:[
		aCanvas strokeWidth: 1.0 color: (Color fromHexString:'#A0A0A0') do: [ :canvas |
			canvas
				moveTo: 5@5;
				lineTo: self morphExtent - (5@5) ] ].
! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 22:06:38'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:15:38'!
lecturer: aLecturer

	lecturer := aLecturer.
	
! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 22:12:20'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	aMouseButtonEvent hand 
		waitForClicksOrDragOrSimulatedMouseButton2: self
		event: aMouseButtonEvent
		clkSel: nil
		clkNHalf: nil
		dblClkSel:  #doubleClick:localPosition:
		dblClkNHalfSel: nil
		tripleClkSel: nil
		dragSel: nil! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:14:30'!
semester: anInteger
	semester := anInteger! !

!BlockedSlotTableCell methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 15:15:28'!
updateColor

	"column 6 row 2 -> day 1 hour 8 
	
	day = 7 - column 
	hour = row + 6
	"
	| day hour |

	self assert: lecturer notNil.
		
	day := 7 - column.
	hour := row + 6.
	
	blocked := lecturer isBlockedSemester: semester day: day hour: hour.
	 
	blocked
		ifTrue:[self color: (Color fromHexString:'#ffbdbd') ]
		ifFalse:[self color: Color transparent].
		
	self redrawNeeded 
	
! !

!BlockedSlotTableCell class methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 21:50:00'!
from: aBoolean

	| aMorph color |
	
	aMorph := self new.
	
	color := aBoolean notNil and: [aBoolean] :: 
		ifTrue:[Color red] 
		ifFalse:[Color transparent].
	
	aMorph color: color.
	
	^aMorph
	
	! !

!LecturerTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 1/29/2025 19:20:00'!
aboutToGrabAssignment: anAssignmentMorph

	self assert: (anAssignmentMorph isKindOf: AssignmentMorph).
	
	anAssignmentMorph model unassign.
	
	^anAssignmentMorph ! !

!LecturerTableCell methodsFor: 'dropping/grabbing' stamp: 'DF 2/2/2025 20:13:34'!
aboutToGrabLecturer: aLecturerMorph

	| aDuplicateMorph |
	
	aDuplicateMorph := aLecturerMorph duplicate lecturer: aLecturerMorph lecturer ; yourself.
	
	self addMorph: aDuplicateMorph. "so that it will remember its previous owner"
	
	^aDuplicateMorph 
! !

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

!AssignmentTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:35:21'!
wantsDroppedMorph: aMorph event: evt
	
	^ aMorph isKindOf: BrocadeTableCellItem
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

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:30:06'!
assign: anAssignment

	| aCommand |

	self assert: anAssignment notNil ; assert: room notNil.	
	
	aCommand := AssignClassroomCommand new.
	aCommand assignment: anAssignment ; room: room.
	
	BrocadeCommandHistory instance do: aCommand. 	
! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 18:22:49'!
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
		aLabelMorph color: (Color fromHexString:'#cccccc').
		notSelectedColor := Color transparent.
		selectedColor := Color transparent ].
	
	self color: notSelectedColor.! !

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 21:14:28'!
drawOn: aCanvas

	| aForm |
	
	super drawOn: aCanvas.
	
	aForm := ClassroomMorph icon magnifyBy: self morphHeight / 2 / ClassroomMorph icon height.
	
	aCanvas image: aForm at: self morphExtent - aForm extent / 2 + (0@5).

	room
		ifNil:[
			aCanvas strokeWidth: 2 color: (Color fromHexString:'#cccccc') strokeDashArray: #(10 10) strokeDashArrayOffset: 0.0 do: [
				aCanvas roundRectangleMinX: 2 maxX: self morphWidth - 2 minY: 2 maxY: self morphHeight - 2 rx: 4 ry: 4
		] ]
		ifNotNil: [ | x0 y0 y1 |
			x0 := self morphWidth - 4. 
			y0 := 4.
			y1 := self morphHeight - 4.
			aCanvas 
				line: x0@y0 to: x0@y1 width:4 color: (Color fromHexString:'#cccccc');
				line: 8@y1  to:x0 @y1 width:4 color: (Color fromHexString:'#cccccc') 
		] 
	
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

!ClassroomMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:33:33'!
unassign: anAssignment

	| aCommand |

	self assert: room notNil.

	self assert: room notNil; assert: anAssignment notNil.	
	
	aCommand := UnassignClassroomCommand new. 
	aCommand assignment: anAssignment ; lecturer: room.
	
	BrocadeCommandHistory instance do: aCommand. 	
	
! !

!ClassroomMorph methodsFor: 'dropping/grabbing' stamp: 'DF 1/21/2025 22:38:54'!
aboutToBeGrabbedBy: aHand

	^owner aboutToGrabClassroom: self! !

!ClassroomMorph methodsFor: 'dropping/grabbing' stamp: 'DF 2/1/2025 21:26:03'!
justDroppedInto: newOwnerMorph event: anEvent 

	newOwnerMorph isWorldMorph 
		ifTrue:[
			room campus college changed: #assignmentsTable.
			self addAlarm: #delete after: 0. ].
	
	(newOwnerMorph isKindOf: AssignmentTableCell) and:[newOwnerMorph column = 1] :: 
		ifTrue:[  
			self assign: newOwnerMorph assignmentInRow]
		ifFalse:[
			self addAlarm: #delete after: 0.]! !

!ClassroomMorph class methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 21:14:05'!
icon
	^BrocadeSpriteAtlas instance spriteAt: 0 at:2! !

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

!LecturerMorph methodsFor: 'dropping/grabbing' stamp: 'DF 2/6/2025 22:24:37'!
justDroppedInto: newOwnerMorph event: anEvent 

	newOwnerMorph isWorldMorph 
		ifTrue:[
			self addAlarm: #delete after: 0.
			lecturer school college changed: #assignmentsTable. ].
	
	newOwnerMorph isKindOf: AssignmentTableCell 	:: 
		ifTrue:[ 
			self assign: newOwnerMorph assignmentInRow ]
		ifFalse:[
			self addAlarm: #delete after: 0.]
		! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:24:12'!
assign: anAssignment

	| aCommand |
	
	aCommand := AssignLecturerCommand new.
	aCommand assignment: anAssignment ; lecturer: lecturer.
	
	BrocadeCommandHistory instance do: aCommand. 	
! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 17:42:06'!
build

	| aLabelMorph |
	
	self removeAllMorphs.
	
	aLabelMorph := NarrowLabelMorph contents: (lecturer ifNil:['לא משובץ' asBidi] ifNotNil:[lecturer description]).
	
	aLabelMorph morphExtent: aLabelMorph measureContents.
	
	aLabelMorph layoutSpec offAxisEdgeWeight: 0.5.
	
	lecturer 
		ifNil:[
			aLabelMorph color: (Color fromHexString:'#cccccc').
			notSelectedColor := Color transparent.
			selectedColor := Color transparent.
		].
				
	self color: notSelectedColor.
	
	self addMorph: aLabelMorph.
	
	self axisEdgeWeight: 0.0.
	
	
! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 21:12:31'!
drawOn: aCanvas

	| aForm |
	
	super drawOn: aCanvas.
	
	self morphHeight < 64
		ifTrue:[ | h |
			h := self morphHeight * 0.8.
			aForm := LecturerMorph icon magnifyTo: h @ h.
			aCanvas image: aForm at: 5@ (self morphHeight - h) / 2.
		]
		ifFalse:[
			aForm := LecturerMorph icon magnifyBy: self morphHeight / 3 / LecturerMorph icon height.
			aCanvas image: aForm at: self morphExtent - aForm extent / 2 + (0 @ 5).
		].
	
	lecturer 
		ifNil:[
			aCanvas strokeWidth: 2 color: (Color fromHexString:'#cccccc') strokeDashArray: #(10 10) strokeDashArrayOffset: 0.0 do: [
				aCanvas roundRectangleMinX: 2 maxX: self morphWidth - 2  minY: 2 maxY: self morphHeight - 2 rx: 4 ry: 4
		] ]
		ifNotNil: [ | x0 y0 y1 |
			x0 := self morphWidth - 4. 
			y0 := 4.
			y1 := self morphHeight - 4.
			aCanvas 
				line: x0@y0 to: x0@y1 width:4 color: (Color fromHexString:'#cccccc');
				line: 8@y1  to:x0 @y1 width:4 color: (Color fromHexString:'#cccccc') 
		] 
	
	! !

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 22:20:37'!
expand

	self color: (Color fromHexString: '#c7dbff' :: alpha:0.25)! !

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

!LecturerMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:31:28'!
unassign: anAssignment

	| aCommand |

	self assert: lecturer notNil; assert: anAssignment notNil.	
	
	aCommand := UnassignLecturerCommand new.
	aCommand assignment: anAssignment ; lecturer: lecturer.
	
	BrocadeCommandHistory instance do: aCommand. 	

! !

!LecturerMorph class methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 21:10:09'!
icon
	^BrocadeSpriteAtlas instance spriteAt: 0 at: 5! !

!LecturerMorph class methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 17:54:06'!
new: aLecturer

	| aLecturerMorph |
	
	aLecturerMorph := self newColumn.
	
	aLecturerMorph lecturer: aLecturer.
	
	aLecturerMorph build.
	
	^aLecturerMorph! !

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:49:48'!
assignDay: aDayInteger hour: anHourInteger

	| aCommand |
	
	aCommand := AssignTimeSlotCommand new.
	
	aCommand day: aDayInteger ; hour: anHourInteger ; assignment: model.
	
	BrocadeCommandHistory instance do: aCommand.! !

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

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 20:15:56'!
drawOn: aCanvas

	| x0 y0 y1 |
	
	super drawOn: aCanvas.
	
	model ifNotNil:[
		x0 := self morphWidth - 4. 
		y0 := 4.
		y1 := self morphHeight - 4.
		aCanvas 
			line: x0@y0 to: x0@y1 width:4 color: (Color fromHexString:'#cccccc');
			line: 8@y1  to:x0 @y1 width:4 color: (Color fromHexString:'#cccccc') 
	]! !

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

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:51:02'!
unassign

	| aCommand |
	
	aCommand := UnassignTimeSlotCommand new.
	
	aCommand day: model day ; hour: model hour ; assignment: model.
	
	BrocadeCommandHistory instance do: aCommand.
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

!AssignmentMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 21:50:25'!
widget: morph

	| aMorph |
	
	aMorph := morph.
	
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

!AssignmentMorph methodsFor: 'dropping/grabbing' stamp: 'DF 2/1/2025 21:50:34'!
justDroppedInto: newOwnerMorph event: anEvent 

	self assert: index = 0.
	
	newOwnerMorph isWorldMorph 
		ifTrue:[
			anEvent formerOwner isKindOf: WeeklyTimeTableCell
				::ifTrue:[ 
					model unit module college changed: #assignmentsTable ].
			self addAlarm: #delete after: 0. ].
	
	newOwnerMorph isKindOf: WeeklyTimeTableCell :: and:[self widget: newOwnerMorph :: model stencil = model stencil ] 
		:: ifTrue:[ 
			self assignDay: 7 - newOwnerMorph column hour: newOwnerMorph row + 6]
		ifFalse:[
			self addAlarm: #delete after: 0.]! !

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

!StencilLabel class methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 20:11:03'!
contents: anInteger

	| aLabel |			

	aLabel := anInteger 
		ifNil:[ 
			NarrowLabelMorph contents: 'לא משובץ' :: color: (Color fromHexString:'#cccccc'); yourself ] 
		ifNotNil:[
			NarrowLabelMorph contents:('{1}' format:{anInteger})].
	^aLabel ! !

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/22/2025 22:10:51'!
buildMorphicWindow

	| navigationPanel roomsTable |

	navigationPanel := self buildNavigationPanel.
	
	roomsTable := self buildRoomsTable.
	
	self changed: #roomsTable.
	
	self layoutMorph addMorph: (navigationPanel -1.0p | 0.2p) </> (roomsTable -1.0p | 1.0p).
	! !

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/31/2025 16:28:45'!
buildNavigationPanel

	| floors campuses |

	campuses := BidiPluggableListMorph withModel: self listGetter: #campuses indexGetter: #campusIndex indexSetter: #campusIndex: .
	
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

!CampusBrowser methodsFor: 'GUI building' stamp: 'DF 1/31/2025 16:36:02'!
duplicateWindow

	| aBrowser |
	
	aBrowser := self class open: model label: 'קמפוסים וחדרים'.
	
	aBrowser campusIndex: campusIndex.
	
	aBrowser floorIndex: floorIndex.
	
	selectedFloors do:[:index |
		aBrowser floorSelectionAt:index put: true].

	aBrowser selectClassroom: selectedRoomIndex.
	
	model changed: #campuses; changed: #floors.! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 16:53:02'!
campusIndex

	^campusIndex ! !

!CampusBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/18/2025 17:13:31'!
campusIndex: anInteger

	campusIndex := anInteger.
	
	self changed: #floorNames! !

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

!CampusBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:21:27'!
addCampusDialog: model

	| mold position aDialog anAddCampusCommand |
	
	anAddCampusCommand := AddCampusCommand new.
	
	anAddCampusCommand college: model.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם הקמפוס';
		on: #description of: anAddCampusCommand;
		addCondition:[:input | model campusAt: input :: isNil ]  
		labeled: 'קיים קמפוס בשם זה.' ;
		beRequired.
	(mold integerField)
		label: 'קומה עליונה';
		on: #lastFloor of: anAddCampusCommand;
		beRequired.
	(mold integerField)
		label: 'קומה תחתונה';
		on: #firstFloor of: anAddCampusCommand;
		addCondition:[:input :value | | lastFloor |
			lastFloor := mold fields at: 2 :: value.
			value <= lastFloor
			]  
		labeled: 'קומה תחתונה גדולה מקומה עליונה.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קמפוס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: anAddCampusCommand.
	
! !

!CampusBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:56:01'!
addClassroomDialog: model

	| anAddClassroomCommand mold campuses aDialog position |

	campuses := ListModel with: (model campuses asOrderedCollection sort:[:x :y | x description <= y description]).
	
	anAddClassroomCommand := AddClassroomCommand new.
	
	mold := BidiMold new. 
	
	mold rightToLeft: true.

	(mold selectField)
		label: 'קמפוס';
		on: #listIndex of: campuses;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		callback:[:value | anAddClassroomCommand campus: (campuses at: value)];
		beRequired.
	(mold stringField)
		label: 'מזהה החדר';
		on: #code of: anAddClassroomCommand;
		addCondition:[:input | | campus |
			campus := mold fields at: 1 :: value. 
			campus roomAt: input :: isNil ]  
		labeled: 'קיים חדר עם מזהה זה.';
		beRequired.
	(mold integerField)
		label: 'קומה';
		on: #floor of: anAddClassroomCommand;
		addCondition:[:input :value | | campus |
			campus := mold fields at: 1 :: value. 
			(campus firstFloor <= value) and:[value <= campus lastFloor] ] 
		labeled: 'לא קיימת קומה כזו בקמפוס.';
		beRequired.
	(mold integerField)
		label: 'קיבולת';
		on: #capacity of: anAddClassroomCommand;
		addCondition:[:input :value | 
			value > 0 ] 
		labeled: 'כיתה חייבת להכיל לפחות סטודנט אחד.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'חדר חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: anAddClassroomCommand.! !

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

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 2/2/2025 17:32:08'!
buildAssignmentsTable

	| assignmentsTable  |
	
	assignmentsTable := PluggableTableMorph new.
	
	assignmentsTable  model: self ; table: #assignments ; rightToLeft: true ; headerRow: true.
	
	"assignmentsTable menuNshortcutsKey: #assignmentMenuSpec.
	
	assignmentsTable selectRowMessage: #selectAssignment:."
	
	assignmentsTable menuFactory: BidiMenuMorph.
	
	assignmentsTable columnFactory: { 
		1 -> (PluggableMorphFactory new formatter:[:aClassroom |  aClassroom campus description , ' ' , aClassroom code  ] ; yourself) .
		5 -> (PluggableMorphFactory new formatter:[:aModule | aModule description ] ; yourself) .
	} asDictionary.
		
	^assignmentsTable 	
! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 2/4/2025 18:04:42'!
buildDetailsPanel

	| detailsPane aPane rankIndex aCommand |
	
	rankIndex := model school college lecturerRanks find: model rank.
	
	aCommand := EditLecturerCommand new.
	
	aCommand lecturer: model ; description: model description; quota: model quota.
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	(mold integerField)
		label: 'מזהה המרצה';
		on: #code of: model;
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
		label: 'שם המרצה';
		on: #description of: aCommand;
		beRequired.
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'מעמד מרצה';
		on: #listIndex of: (ListModel with: model school college lecturerRanks :: listIndex: rankIndex) ;
		callback:[:value | aCommand rank: (model school college lecturerRanks at: value) ];
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.		
	(mold integerField)
		label: 'שעות למשרה';
		on: #quota of: aCommand;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תן לנו לפחות שעה אחת.' ;
		beRequired.

	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
	aPane := mold newPane.
	
	aPane buttonLabel:'עדכן פרטים' asBidi.
	
	detailsPane := LayoutMorph newColumn.
	
	detailsPane  axisEdgeWeight: #columnTop.
	
	detailsPane addMorph: aPane buildMorphicWindow.
	
	^detailsPane! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 3/1/2025 15:21:22'!
buildMorphicWindow

	| assignmentsTable group detailsPanel dialog |
	
	detailsPanel := self buildDetailsPanel.
	
	assignmentsTable := self buildAssignmentsTable.

	group := TabbedGroup newColumn.

	group build: { 'סמסטר קיץ' reverse -> (self buildTimeTable:3) . 'סמסטר ב' reverse -> (self buildTimeTable:2) . 'סמסטר א' reverse -> (self buildTimeTable:1) }.

	group color:Color white. 
	
	group select:3.
	
	self changed: #assignments.
	
	dialog := (assignmentsTable - 0.7p) / (group - 0.7p | 1.0p) <+> (detailsPanel - 0.3p).
	
	self addMorph: dialog.
	
! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 3/1/2025 15:17:44'!
buildTimeTable: anIntegerSemesterIndex

	| table columnFactory |
	
	table := PluggableTableMorph new.
	
	table  model: self ; table: #timeTable ; rightToLeft: true ; headerRow: true.

	columnFactory := Dictionary new.
	
	columnFactory at: 7 put: (PluggableMorphFactory new formatter:[:anInteger | '{1}' format:{anInteger} :: asBidi ] ; morphClass: OffsetLabelMorph ; yourself).
	
	table columnFactory: columnFactory.
	
	table cellFactory: (BlockedSlotTableCellFactory new lecturer: model ; semester: anIntegerSemesterIndex ; yourself).
	
	"assignmentsTable menuNshortcutsKey: #assignmentMenuSpec.
	
	assignmentsTable selectRowMessage: #selectAssignment:."
	"
	table menuFactory: BidiMenuMorph.
	
	"	
	^table 	
! !

!LecturerBrowser methodsFor: 'GUI building' stamp: 'DF 3/1/2025 15:16:49'!
timeTable

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' . '' }.
	
	8 to:23 do:[:i | | aRow |
		
		aRow := OrderedCollection new.
		
		1 to:6 do:[:j |
			aRow add: OrderedCollection new ].
		
		aRow add: {i }.
		
		table add: aRow ].	
	
	"
	model blockedSlots at: 1 :: keysAndValuesDo:[:day :hours |  | cell |
		hours do:[:hour | 
			cell := table at: hour - 6 :: at: 7 - day.
			cell add: true  ] ] ."
	
	^table
	! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/2/2025 20:32:14'!
assignments

	| table |
	
	table := OrderedCollection new.

	table add: { 'חדר' . 'שעה' . 'יום' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' }.

	model assignments asOrderedCollection
		sort:[:x :y | 
			x stencil semester description < y stencil semester description 
			or:[x stencil semester description = y stencil semester description 
				and: [x day < y day or:[x day = y day and: [x hour <= y hour ]  ] ] ] ]
	::	 do:[:eachAssignment | 
		
		table add: {
			eachAssignment rooms . 
			{ eachAssignment hour } . 
			{ eachAssignment dayHebrew } . 
			{ eachAssignment unit }  .
			{ eachAssignment unit module  } .
			{ eachAssignment unit module code } .
			{ eachAssignment stencil semester description } } ] .
	
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

!SchoolBrowser methodsFor: 'lecturers' stamp: 'DF 2/2/2025 20:26:36'!
openEditLecturerDialog

	| aLecturer |
	
	selectedLecturerIndex <= 1 ifTrue:[^self].
	
	aLecturer := self lecturers at: selectedLecturerIndex - 1.
	
	LecturerBrowser open: aLecturer label: 'ערוך מרצה: ', aLecturer description 
	
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

!SchoolBrowser methodsFor: 'ranks' stamp: 'DF 3/3/2025 12:13:15'!
rankSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedRanks add: anIndex ]
		ifFalse:[
			selectedRanks remove: anIndex ifAbsent:[] ].
		
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

!SchoolBrowser methodsFor: 'menu' stamp: 'DF 2/2/2025 20:21:13'!
lecturerMenuSpec

^ #(
		#(0 		'מרצה'						false)
		#(10		'מערכת שעות' 				$g 	window 			openTimeTable 			)
		#(20		'ערוך פרטי מרצה ...' 		$g 	window 			openEditLecturerDialog 	)
		#(30		'-----' 		)
		#(40		'הסר מרצה' 				$c 	window 			removeLecturer )
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

!SchoolBrowser methodsFor: 'GUI building' stamp: 'DF 1/31/2025 20:17:45'!
buildMorphicWindow

	| topPanel lecturersTable schools employment |
	
	schools := BidiPluggableListMorphOfMany withModel: self listGetter: #schools primarySelectionGetter: #schoolIndex primarySelectionSetter: #schoolIndex: listSelectionGetter: #schoolSelectionAt: listSelectionSetter: #schoolSelectionAt:put:.
	
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

!SchoolBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:15:49'!
addLecturerDialog: model

	| schools aCommand mold position aDialog |
	
	aCommand := AddLecturerCommand new.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.

	schools := ListModel with: (model schools asOrderedCollection sort:[:x :y | x description <= y description]).
	
	(mold fields add: BidiSelectField new)
		rightToLeft: true;
		label: 'בית ספר';
		on: #listIndex of: schools;
		callback:[:value | aCommand school: schools selectedItem ]; 
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.

	(mold integerField)
		label: 'מזהה מרצה';
		on: #code of: aCommand;
		addCondition:[:input :value | model lecturerAt: value :: isNil ]
		labeled: 'קיים מרצה עם מזהה זה.' ;
		beRequired.
	
	(mold stringField)
		label: 'שם המרצה';
		on: #description of: aCommand;
		beRequired.

	(mold fields add: BidiSelectField new)
		label: 'מעמד מרצה';
		on: #rank of: (ListModel with: model lecturerRanks :: listIndex: 1) ;
		callback: [:val | aCommand rank: (model lecturerRanks at:val) ] ;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
		
	(mold integerField)
		label: 'שעות למשרה';
		on: #quota of: aCommand;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תן לנו לפחות שעה אחת.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'מרצה חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
! !

!SchoolBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:06:13'!
addSchoolDialog: model

	| mold aCommand position aDialog |
	
	aCommand := AddSchoolCommand new.
	
	aCommand college: model.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם בית הספר';
		on: #description of: aCommand;
		addCondition:[:input | model schoolAt: input :: isNil ] 
		labeled: 'קיים בית ספר בשם זה.' ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'בית ספר חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:13:10'!
initialExtent
	^ super initialExtent! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:00:51'!
update: aSymbol

	self changed: aSymbol! !

!StencilBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 09:45:25'!
updateLabel

	| aWriteStream prefix titleString |
	
	aWriteStream := WriteStream on:''.

	self programs at: programIndex ifPresent:[:obj | aWriteStream nextPutAll: obj description; nextPutAll: ' '].
	self tracks at: trackIndex ifPresent:[:obj | aWriteStream nextPutAll: obj description; nextPutAll: ' '].
	self years at: yearIndex ifPresent:[:obj | aWriteStream nextPutAll: obj description; nextPutAll: ' '].
	self semesters at: semesterIndex ifPresent:[:obj | aWriteStream nextPutAll: obj description; nextPutAll: ' '].
	self stencils at: stencilIndex ifPresent:[:obj | aWriteStream nextPutAll: obj description].

	prefix := stencilIndex = 0 ifTrue:['תבניות: '] ifFalse:['תבנית: '].
	
	titleString := (prefix , aWriteStream contents) asBidi writingDirection: #rightToLeft.
	
	self setLabel: titleString.! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 17:54:23'!
programIndex
	
	^ programIndex! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 2/3/2025 09:31:48'!
programIndex: anIndex

	programIndex := anIndex.

	self updateLabel.
	
	self changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #stencilNames ; changed: #assignmentsTable ; changed: #summary! !

!StencilBrowser methodsFor: 'programs' stamp: 'DF 1/11/2025 17:53:57'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 17:54:53'!
trackIndex
	
	^ trackIndex! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 09:31:54'!
trackIndex: anIndex

	trackIndex := anIndex.

	self updateLabel.
	
	self changed: #yearNames; changed: #semesterNames	 ; changed: #stencilNames; changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/11/2025 17:53:57'!
trackNames

	^self tracks collect:[:each | each description] ! !

!StencilBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 17:54:23'!
tracks
	
	programIndex 	= 0 ifTrue:[^{}].
		
	^self programs at: programIndex :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 2/1/2025 17:57:55'!
selectedSemester

	| semesters |
	
	semesters := self semesters.
	
	semesters ifEmpty:[^nil].
	
	semesterIndex = 0 ifTrue:[^nil].
	
	^semesters at: semesterIndex 
! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:58:20'!
semesterIndex
	
	^ semesterIndex! !

!StencilBrowser methodsFor: 'semesters' stamp: 'DF 2/3/2025 09:32:07'!
semesterIndex: anIndex

	semesterIndex := anIndex.

	self updateLabel.
	
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

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 2/3/2025 09:32:13'!
stencilIndex: anInteger

	stencilIndex := anInteger.

	self updateLabel.
	
	self changed: #assignmentsTable! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 2/1/2025 18:16:13'!
stencilNames

	^self stencils collect:[:each | each description]  ! !

!StencilBrowser methodsFor: 'stencils' stamp: 'DF 2/1/2025 18:16:21'!
stencils
		
	| semesters |
	
	semesterIndex = 0 ifTrue:[^{}].
	
	semesters := self semesters.
	
	semesters ifEmpty:[^{}].
	
	^semesters at: semesterIndex ifAbsent:[semesters last] :: stencils asOrderedCollection sort:[:x :y | x description <= y description ]
! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 17:56:34'!
yearIndex
	
	^ yearIndex! !

!StencilBrowser methodsFor: 'years' stamp: 'DF 2/3/2025 09:32:00'!
yearIndex: anIndex

	yearIndex := anIndex.

	self updateLabel.
	
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

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 18:02:04'!
buildAssignmentsTable

	| assignmentsTable |
	
	assignmentsTable := PluggableTableMorph new.
	
	assignmentsTable model: self ; table: #assignmentsTable ; rightToLeft: true ; headerRow: true.
	
	assignmentsTable menuNshortcutsKey: #assignmentMenuSpec.
	
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

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 23:00:22'!
buildMorphicWindow

	| navigationPanel assignmentsTable semesterTimeTable |
	
	navigationPanel := self buildNavigationPanel.
	
	assignmentsTable := self buildAssignmentsTable.
			
	self changed: #assignmentsTable.

	semesterTimeTable := self buildStencilTimeTable.
	
	views := TabbedGroup newColumn.

	views build: { 'מערכת' reverse -> semesterTimeTable . 'רשימה' reverse -> assignmentsTable }.

	views color:Color white. 
	
	views select:2.
	
	self layoutMorph addMorph: (navigationPanel -1.0p | 0.2p </> ( (views -1.0p | 1.0p) | 0.8p)).
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

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 23:03:24'!
duplicateWindow

	| aBrowser |
	
	aBrowser := self class open: model label: self label.
	
	aBrowser programIndex: programIndex.
	
	aBrowser trackIndex: trackIndex.
	
	aBrowser yearIndex: yearIndex.

	aBrowser semesterIndex: semesterIndex.
	
	aBrowser stencilIndex: stencilIndex.
	
	aBrowser selectView: 1.
	
	aBrowser morphPosition: self morphPosition - (aBrowser morphWidth @ 0).
	
	model changed: #programs; changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #stencilNames ; changed: #assignmentsTable ; changed: #summary! !

!StencilBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 23:01:03'!
selectView: anInteger

	views select: anInteger! !

!StencilBrowser methodsFor: 'menu' stamp: 'DF 2/1/2025 18:02:24'!
assignmentMenuSpec

^ #(
		#(0 		'תבנית'				false)
		#(20	'הוסף תבנית ...' 		$g 	window 	openAddStencilDialog 	)
		#(30	'-----' )
		#(40	'הסר תבנית' 			$c 	window 	removeStencilFromSemester )
	).! !

!StencilBrowser methodsFor: 'menu' stamp: 'DF 2/5/2025 21:26:06'!
openAddStencilDialog

	| mold position aDialog semester anAddStencilCommand |

	semester := self selectedSemester.
	
	semester ifNil:[^self].
	
	anAddStencilCommand := AddStencilCommand new.
	
	anAddStencilCommand semester: semester ; college: model.
	
	mold := BidiMold new.

	mold rightToLeft: true.
	
	(mold stringField)
		label: 'קוד התבנית' ;
		on: #description of: anAddStencilCommand;
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תבנית חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: anAddStencilCommand.
	
! !

!StencilBrowser methodsFor: 'menu' stamp: 'DF 2/1/2025 21:54:18'!
removeStencilFromSemester

	| stencil semester |
	
	stencilIndex = 0 ifTrue:[^self].
	
	semester := self selectedSemester.

	stencil := self stencils at: stencilIndex.
	
	semester removeStencil: stencil.
	
	stencilIndex := 0.
	
	model changed: #stencilNames ; changed: #assignmentsTable! !

!BrocadeSpriteAtlas class methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 21:07:10'!
instance
	
	Instance ifNil:[ | path |
		Instance := self new.
		Instance width: 128; height: 128.
		path := BrocadeApplication instance home.
		Instance load: path asDirectoryEntry // 'icons.png'.
	].

	^Instance! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:18:42'!
college: aCollege
	college := aCollege! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:16:54'!
description
	^description! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:16:54'!
description: aString
	description := aString! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:20:58'!
doIt

	self assert: campus isNil.
	
	campus := Campus new.
	
	campus description: description ; lastFloor: lastFloor; firstFloor: firstFloor.
	
	college addCampus: campus.
	
	college changed: #campuses! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:20:42'!
firstFloor
	^firstFloor! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:20:31'!
firstFloor: anInteger
	firstFloor := anInteger! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:20:37'!
lastFloor
	^lastFloor! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:20:21'!
lastFloor: anInteger
	lastFloor := anInteger! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:16:54'!
title
	^'הוספת בית ספר חדש'! !

!AddCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:19:25'!
undo

	self assert: campus notNil.
	
	college removeCampus: campus.
	
	campus := nil.
	
	college changed: #campuses! !

!RemoveCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 20:56:14'!
doIt

	self assert: campus rooms isEmpty.
	
	super undo! !

!RemoveCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:22:06'!
title
	^'הסרת בית ספר חדש'! !

!RemoveCampusCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:22:45'!
undo
	super doIt! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:52:19'!
campus: aCampus
	campus := aCampus! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:51:48'!
capacity: anInteger
	capacity := anInteger! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:50:52'!
code
	^code! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:50:52'!
code: anInteger
	code := anInteger! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:57:49'!
doIt
	
	self assert: classroom isNil.
	
	classroom := Classroom new.
	
	classroom code: code; floor: floor; capacity: capacity.
	
	campus addClassroom: classroom.
	
	campus college changed: #roomsTable.
! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:55:28'!
floor
	^floor! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:55:25'!
floor: anInteger
	floor := anInteger! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:52:38'!
title
	^'הוספת חדר חדש'! !

!AddClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:58:14'!
undo
	
	self assert: classroom notNil.
	
	campus removeClassroom: classroom.
	
	classroom := nil.
	
	campus college changed: #lecturersTable! !

!RemoveClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 20:55:32'!
doIt

	self assert: classroom assignment isEmpty.

	super undo! !

!RemoveClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:59:56'!
title
	^'הסרת חדר'! !

!RemoveClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:00:12'!
undo
	super doIt! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:26:25'!
code
	^code! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:26:47'!
code: anInteger
	code := anInteger! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:03:20'!
description
	^description! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:26:55'!
description: aString
	description := aString! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 20:58:57'!
doIt
	
	| aLecturer |
	
	aLecturer := Lecturer new.
	
	aLecturer code: code; description: description; rank: rank; quota: quota.
	
	school addLecturer: aLecturer.
	
	school college changed: #lecturersTable! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:04:06'!
quota
	^quota! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:12:09'!
quota: anInteger
	quota := anInteger! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:27:03'!
rank: aString
	rank := aString! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:27:24'!
school: aSchool
	school := aSchool! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:28:18'!
title
	^'הוספת מרצה חדש'! !

!AddLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:30:40'!
undo
	
	| aLecturer |
	
	aLecturer := school lecturerAt: code.
	
	school removeLecturer: aLecturer.
	
	school college changed: #lecturersTable! !

!RemoveLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 20:54:54'!
doIt

	| aLecturer |
	
	aLecturer := school lecturerAt: code.

	self assert: aLecturer assignment isEmpty.
	
	super undo! !

!RemoveLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:31:23'!
title
	^'הסרת מרצה מהמערכת'! !

!RemoveLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 23:32:11'!
undo
	super doIt! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:08:52'!
college: aCollege
	college := aCollege! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:08:34'!
description
	^description! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:08:30'!
description: aString
	description := aString! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:11:03'!
doIt

	self assert: school isNil.
	
	school := School new.
	
	school description: description.
	
	college addSchool: school.
	
	college changed: #schools! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:08:16'!
title
	^'הוספת בית ספר חדש'! !

!AddSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:11:31'!
undo

	self assert: school notNil.
	
	college removeSchool: school.
	
	school := nil.
	
	college changed: #schools! !

!RemoveSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 20:49:52'!
doIt

	self assert: school lecturers isEmpty.
	
	super undo! !

!RemoveSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:14:15'!
title
	^'הסרת בית ספר מהמערכת'! !

!RemoveSchoolCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:14:31'!
undo
	super doIt! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:21:08'!
college: aCollege
	college := aCollege! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:21:08'!
description
	^description! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:21:08'!
description: aString
	description := aString! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:24:33'!
doIt

	self assert: stencil isNil.
	
	stencil := Stencil new.
	
	stencil description: description.
	
	semester addStencil: stencil.
	
	college changed: #stencilNames! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:24:05'!
semester: aSemester
	semester := aSemester! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:22:07'!
title
	^'הוספת תבנית חדשה'! !

!AddStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/5/2025 21:26:56'!
undo

	self assert: stencil notNil.
	
	semester removeStencil: stencil.
	
	stencil := nil.
	
	college changed: #stencilNames! !

!RemoveStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:13:24'!
doIt
	
	self assert: stencil assignments isEmpty.
	
	super undo! !

!RemoveStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:11:59'!
title
	^'הסרת תבנית'! !

!RemoveStencilCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:12:36'!
undo
	super doIt! !

!AssignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:28:12'!
assignment: anAssignment
	assignment := anAssignment ! !

!AssignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:29:01'!
doIt

	assignment addClassroom: room.
	
	assignment lecturers do:[:eachLecturer | eachLecturer changed: #assignmentsTable] .
	
	room campus college changed: #assignmentsTable.! !

!AssignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:28:19'!
room: aClassroom
	room := aClassroom ! !

!AssignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:33:01'!
title
	^'שיבוץ חדר'! !

!AssignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:32:42'!
undo

	assignment removeClassroom: room.
	
	room changed: #assignmentsTable.
	
	room school college changed: #assignmentsTable.
	! !

!UnassignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:33:21'!
doIt
	super undo! !

!UnassignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:33:12'!
title
	^'הסרת שיבוץ חדר'! !

!UnassignClassroomCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:33:24'!
undo
	super doIt! !

!AssignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:27:49'!
assignment: anAssignment
	assignment  := anAssignment ! !

!AssignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:18:03'!
doIt

	assignment addLecturer: lecturer.
	
	lecturer changed: #assignmentsTable.
	
	lecturer school college changed: #assignmentsTable.
	! !

!AssignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:27:59'!
lecturer: aLecturer
	lecturer := aLecturer! !

!AssignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:17:26'!
title
	^'שיבוץ מרצה'! !

!AssignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:18:26'!
undo

	assignment removeLecturer: lecturer.
	
	lecturer changed: #assignmentsTable.
	
	lecturer school college changed: #assignmentsTable.
	! !

!UnassignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:21:11'!
doIt
	super undo! !

!UnassignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:20:53'!
title
	^'הסרת שיבוץ מרצה'! !

!UnassignLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:21:14'!
undo
	super doIt! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:35:02'!
assignment: anAssignment
	assignment := anAssignment ! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:35:35'!
day: anInteger
	day := anInteger! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:52:34'!
doIt

	| college interval hh tt  |
	
	college := assignment unit module college.
	
	interval :=  college availableHoursForDay: day.
	
	assignment unit duration > interval size ifTrue:[^self]. "don't assign if the duration cannot fit in the availabe hours for the given day"
	
	hh := hour max: interval first.
	
	self assert: hh >= interval first.
	
	hh := hour min: interval last.
	
	self assert: hh <= interval last.
	
	tt := hh + assignment unit duration - interval last max: 0.
	
	hh := hh - tt.
		
	assignment day: day ; hour: hh.
	
	assignment unit module college changed: #assignmentsTable ! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:35:43'!
hour: anInteger
	hour := anInteger! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:51:37'!
title
	^'שיבוץ יום ושעה'! !

!AssignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:40:09'!
undo

	assignment day: nil; hour:nil.
	
	assignment unit module college changed: #assignmentsTable 	! !

!UnassignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:52:16'!
doIt
	super undo! !

!UnassignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:51:28'!
title
	^'הסר שיבוץ יום ושעה'! !

!UnassignTimeSlotCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:52:20'!
undo
	super doIt! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:01:49'!
description
	^description! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 17:49:52'!
description: aString
	description := aString! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 17:58:27'!
doIt

	backup := lecturer copy.
	
	lecturer 
		description: description ; 
		rank: rank ;
		quota: quota.
		
	lecturer changed: #assignments.

	lecturer school college changed: #lecturersTable.
! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 17:51:15'!
lecturer: aLecturer
	lecturer := aLecturer! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:02:00'!
quota
	^quota! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 17:50:05'!
quota: anInteger
	quota := anInteger! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:02:06'!
rank
	^rank! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 17:49:44'!
rank: aString
	rank := aString! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:06:18'!
title
	^'עריכת פרטי מרצה'! !

!EditLecturerCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:00:30'!
undo

	self assert: backup code = lecturer code.
	
	lecturer 
		description: backup description ; 
		rank: backup rank ;
		quota: backup quota.
		
	lecturer changed: #assignments.

	lecturer school college changed: #lecturersTable.
! !

!Interval methodsFor: '*BrocadeScheduler' stamp: 'DF 1/28/2025 23:09:31'!
intersect: anInterval
	
	^(start max: anInterval first) to: (stop min: anInterval last)! !

!Interval methodsFor: '*BrocadeScheduler' stamp: 'DF 1/28/2025 23:15:25'!
isEmptySet
	^stop <= start! !
SchedulingCollege initialize!
Assignment initialize!
