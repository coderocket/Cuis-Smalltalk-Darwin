'From Cuis7.3 [latest update: #7041] on 1 February 2025 at 7:30:20 pm'!
'Description '!
!provides: 'BrocadePlanner' 1 31!
SystemOrganization addCategory: #'BrocadePlanner-Model'!
SystemOrganization addCategory: #BrocadePlanner!
SystemOrganization addCategory: #'BrocadePlanner-Morphic'!


!classDefinition: #AcademicProgram category: #'BrocadePlanner-Model'!
Object subclass: #AcademicProgram
	instanceVariableNames: 'tracks description college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicProgram class' category: #'BrocadePlanner-Model'!
AcademicProgram class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgramSpec category: #'BrocadePlanner-Model'!
Object subclass: #AcademicProgramSpec
	instanceVariableNames: 'programName duration dayTrack eveningTrack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicProgramSpec class' category: #'BrocadePlanner-Model'!
AcademicProgramSpec class
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

!classDefinition: #ModulePath category: #'BrocadePlanner-Model'!
Object subclass: #ModulePath
	instanceVariableNames: 'code programName trackName yearName semesterName college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'ModulePath class' category: #'BrocadePlanner-Model'!
ModulePath class
	instanceVariableNames: ''!

!classDefinition: #ModuleFactory category: #'BrocadePlanner-Model'!
ModulePath subclass: #ModuleFactory
	instanceVariableNames: 'description lectureDuration recitationDuration labDuration elective'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'ModuleFactory class' category: #'BrocadePlanner-Model'!
ModuleFactory class
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

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:10'!
dayTrack
	^dayTrack! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:06'!
dayTrack: aBoolean
	dayTrack := aBoolean ! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:19'!
duration
	^duration! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:16'!
duration: anInteger
	duration := anInteger ! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:33'!
eveningTrack
	^eveningTrack ! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:28'!
eveningTrack: aBoolean
	eveningTrack := aBoolean ! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:02:21'!
initialize

	duration := 4.
	
	dayTrack := true.
	
	eveningTrack := true.! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:08'!
programName
	^programName! !

!AcademicProgramSpec methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:00'!
programName: aString
	programName := aString! !

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

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:45:57'!
setDurationIn: aModuleFactory
	self subclassResponsibility ! !

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

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:17:06'!
addAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college isNil.
	
	anAcademicProgram college: self.
	
	programs add: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:18:51'!
detachAcademicProgram: anAcademicProgram

	programs remove: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 1/31/2025 21:08:57'!
newAcademicProgram: anAcademicProgramSpec
	
	self addAcademicProgram: (AcademicProgram newFrom: anAcademicProgramSpec).! !

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

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 13:54:26'!
addModuleToAcademicProgram: aCollege

	| semester module |
	
	college := aCollege.
	
	semester := self resolvePath.
	
	module := aCollege moduleAt: code.
	
	semester addModule: module.
	
	! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 13:20:01'!
code
	^code! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 13:20:10'!
code: anInteger
	code := anInteger ! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 13:53:58'!
college: aCollege
	college := aCollege! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 22:40:01'!
programName: aString
	programName := aString! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 13:54:36'!
resolvePath

	| academicYear program semester track |
	
	program := college programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
	
	^semester
! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 22:42:50'!
semester

	| academicYear program semester track |
	
	program := college programAt: programName. 
		
	track := program trackAt: trackName.
		
	academicYear := track academicYearAt: yearName. 
			
	semester := academicYear semesterAt: semesterName.
	
	^semester
! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 22:40:25'!
semesterName: aString
	semesterName := aString
	
	! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 22:40:56'!
trackName: aString
	trackName := aString
	
	! !

!ModulePath methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 22:41:18'!
yearName: aString
	yearName := aString
	
	! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 12:59:58'!
description
	^description! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 1/31/2025 21:37:39'!
description: aString
	description := aString! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 18:59:36'!
elective
	^elective! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 18:48:24'!
elective: aBoolean
	elective := aBoolean! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 13:00:36'!
labDuration
	^labDuration ! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 1/31/2025 21:38:30'!
labDuration: anInteger
	labDuration := anInteger ! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 13:00:53'!
lectureDuration
	^lectureDuration ! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 1/31/2025 21:37:57'!
lectureDuration: anInteger
	lectureDuration := anInteger ! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 2/1/2025 13:00:43'!
recitationDuration
	^recitationDuration ! !

!ModuleFactory methodsFor: 'accessing' stamp: 'DF 1/31/2025 21:38:23'!
recitationDuration: anInteger
	recitationDuration := anInteger ! !

!ModuleFactory methodsFor: 'instance creation' stamp: 'DF 2/1/2025 14:56:32'!
makeModule: aCollege
	
	| aModule |
	
	college := aCollege.
	
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
	
	aCollege addModule: aModule.
! !

!ModuleFactory methodsFor: 'instance creation' stamp: 'DF 2/1/2025 19:23:48'!
updateModule: aModule
	
	self assert: aModule code = code.
	
	aModule description: description.
	aModule elective: elective.
	
	aModule updateAcademicUnit: 'הרצאה' duration: lectureDuration .
	aModule updateAcademicUnit: 'תרגול' duration: recitationDuration.
	aModule updateAcademicUnit: 'מעבדה' duration: labDuration.
			
! !

!ModuleFactory class methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:48:44'!
from: aModule

	| aModuleFactory |
	
	aModuleFactory := self new.
	
	aModuleFactory 
		code: aModule code ;
		description: aModule description ;
		elective: aModule elective.
		
	aModule units do:[:eachUnit | 
		eachUnit setDurationIn: aModuleFactory ].
	
	^aModuleFactory! !

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

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:12:08'!
initialExtent
	^ super initialExtent ! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:02:31'!
update: aSymbol
	self changed: aSymbol! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 16:46:00'!
programIndex
	
	^ programIndex! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/31/2025 20:36:10'!
programIndex: anIndex

	programIndex := anIndex.

	self changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/10/2025 18:07:02'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 16:46:08'!
trackIndex
	
	^ trackIndex! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/31/2025 20:36:15'!
trackIndex: anIndex

	trackIndex := anIndex.
	
	self changed: #years; changed: #semesterNames; changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/31/2025 20:30:12'!
tracks
	
	| programs |
	
	programIndex = 0 ifTrue:[^{}].
	
	programs := self programs.
	
	programs ifEmpty:[^{}].
		
	^programs at: programIndex :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
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

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/1/2025 17:24:41'!
addModuleToSemester: aModulePath

	| semesters aModule |
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].
	
	aModule := model moduleAt: aModulePath code.
						
	semesters anyOne addModule: aModule.
	
	aModule changed: #programs.
	
	self changed: #unitsTable.
	 
	
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

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/1/2025 15:03:13'!
moduleMenuSpec

^ #(
		#(0 		'קורס'				false)
		#(10	'ערוך קורס ...' 		$g 	window 	openEditModuleDialog 	)
		#(20	'הוסף קורס ...' 		$g 	window 	openAddModuleDialog 	)
		#(30	'-----' )
		#(40	'הסר קורס' 			$c 	window 	removeModuleFromSemester )
	).! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/1/2025 17:24:11'!
openAddModuleDialog

	| semesters mold aModulePath aDialog position |
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].

	aModulePath := ModulePath new.
		
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aModulePath ;
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' ;
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addModuleToSemester: to: self with: aModulePath.
	
! !

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

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:09:10'!
addAcademicProgramDialog: model

	| mold position aSpec aDialog |
	
	aSpec := AcademicProgramSpec new.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם התוכנית';
		on: #programName of: aSpec;
		addCondition: [:input| model programAt: input :: isNil ]  
		labeled: 'כבר קיימת תוכנית עם שם זה.';
		beRequired.

	(mold integerField)
		label: 'שנות לימוד';
		on: #duration of: aSpec;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תוכנית לימודים חייבת לפחות שנת לימוד אחת.';
		beRequired.

	(mold checkboxField )
		label: 'מסלול יום' ;
		on: #dayTrack of: aSpec.
	
	(mold checkboxField )
		label: 'מסלול ערב' ;
		on: #eveningTrack of: aSpec.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תוכנית לימודים חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #newAcademicProgram: to: model with: aSpec.
	
	mold when: #edited send: #changed: to: model with: #programs
	
! !

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 14:45:36'!
addNewModuleDialog: model

	| mold aModuleFactory aDialog position |

	aModuleFactory := ModuleFactory new.

	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aModuleFactory;
		addCondition:[:input :value | model moduleAt: value :: isNil ] 
		labeled: 'קיים קורס עם קוד זה.';
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: aModuleFactory;
		addCondition:[:input | model moduleNameAt: input :: isNil ] 
		labeled: 'קיים קורס עם שם זה.';
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: aModuleFactory;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: aModuleFactory;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: aModuleFactory;
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
	
	mold when: #edited send: #makeModule: to: aModuleFactory with: model.
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/1/2025 19:26:51'!
buildDetailsPane

	| detailsPane aModuleFactory aPane |
	
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	aModuleFactory := ModuleFactory from: model.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aModuleFactory;
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: aModuleFactory;
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: aModuleFactory;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: aModuleFactory;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: aModuleFactory;
		beRequired.
	(mold checkboxField)
		label: 'קורס בחירה';
		on: #elective of: aModuleFactory;
		beRequired.
	
	mold when: #edited send: #updateModule: to: aModuleFactory with: model.
	
	mold when: #edited send: #changed: to: model college with: #unitsTable.

	mold when: #edited send: #changed: to: model college with: #summary.
		
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
