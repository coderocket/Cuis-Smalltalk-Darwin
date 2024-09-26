'From Cuis7.1 [latest update: #6676] on 26 September 2024 at 3:40:02 pm'!
'Description '!
!provides: 'College' 1 0!
SystemOrganization addCategory: #College!


!classDefinition: #College category: #College!
Object subclass: #College
	instanceVariableNames: 'modules rooms lecturers instances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'College class' category: #College!
College class
	instanceVariableNames: ''!

!classDefinition: #CollegeTopic category: #College!
Object subclass: #CollegeTopic
	instanceVariableNames: 'instances id description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'CollegeTopic class' category: #College!
CollegeTopic class
	instanceVariableNames: ''!

!classDefinition: #Lecturer category: #College!
CollegeTopic subclass: #Lecturer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'Lecturer class' category: #College!
Lecturer class
	instanceVariableNames: ''!

!classDefinition: #Module category: #College!
CollegeTopic subclass: #Module
	instanceVariableNames: 'duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'Module class' category: #College!
Module class
	instanceVariableNames: ''!

!classDefinition: #Room category: #College!
CollegeTopic subclass: #Room
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'Room class' category: #College!
Room class
	instanceVariableNames: ''!

!classDefinition: #ModuleInstance category: #College!
Object subclass: #ModuleInstance
	instanceVariableNames: 'id day hour module room lecturer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'ModuleInstance class' category: #College!
ModuleInstance class
	instanceVariableNames: ''!

!classDefinition: #PluggableCollegeGridModel category: #College!
GridModel subclass: #PluggableCollegeGridModel
	instanceVariableNames: 'selection college indices topic format instance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'PluggableCollegeGridModel class' category: #College!
PluggableCollegeGridModel class
	instanceVariableNames: ''!


!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:27'!
lecturers
	^lecturers! !

!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:34'!
modules
	^modules! !

!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:16'!
rooms
	^rooms! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:36:26'!
addInstance: aModuleInstance

	instances at: aModuleInstance id put: aModuleInstance ! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:33:29'!
addLecturer: aLecturer

	lecturers at: aLecturer id put: aLecturer.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:25:02'!
addModule: aModule

	modules at: aModule id put: aModule.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:25:17'!
addRoom: aRoom

	rooms at: aRoom id put: aRoom.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 22:45:49'!
assign: aSolution  

	aSolution do:[:each | 

		self assignInstance: (instances at: (each at:1)) to: (each at:2) ]! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 22:49:54'!
assignInstance: aModuleInstance to: aGene

	| room day hour module lecturer duration  |
	
	day := aGene at:2.
	
	hour := aGene at:3.
	
	duration := aGene at:6.

	aModuleInstance day: day ; hour: hour.
	
	room := rooms at: (aGene at:1).
	
	module := modules at: (aGene at:4).
	
	lecturer := lecturers at: (aGene at:5).
	
	aModuleInstance room: room. room addInstance: aModuleInstance.
	
	self assert: duration = module duration.
	
	aModuleInstance module: module. module addInstance: aModuleInstance.
	
	aModuleInstance lecturer: lecturer. lecturer addInstance: aModuleInstance.
	
	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:36:02'!
initialize

	modules := Dictionary new.
	
	rooms := Dictionary new.
	
	lecturers := Dictionary new.
	
	instances := Dictionary new.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:51:20'!
moduleAt: anInteger
	^ modules at: anInteger ! !

!College class methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 22:47:49'!
example

	"self example"
	
	| aCollege |
	
	aCollege := College new.
	
	" rooms: { id description } "
	
	{ { 1 . 'apple' } . { 2 . 'banana'} . { 3 . 'orange' } . { 4 . 'mango' } . { 5 . 'peach' } } do:[:each | 
		aCollege addRoom: (Room new id: (each at:1) ; description: (each at:2) ;yourself) ].
	
	" modules: { id . description . duration } "
	
	{ { 1 . 'plumbing' . 2 } . { 2 . 'carpentry' . 3  } . { 3 . 'sewing' . 3 } . { 4 . 'faming' . 5 } }  do:[:each | 
		aCollege addModule: (Module new id: (each at:1) ; description: (each at:2) ; duration: (each at: 3) ; yourself) ].

	" module instances { id . module id } "
	
	{ { 1 . 1 } . { 2 . 1  } . { 3 . 2 } . { 4 . 2 } }  do:[:each | 
	
		aCollege addInstance: (ModuleInstance new id: (each at:1) ; module: (aCollege moduleAt: (each at:2)) ; yourself) ].
	
	" lecturers: { id description } "
	
	{ { 1 . 'alice' } . { 2 . 'bob' } . { 3 . 'jane' } . { 4 . 'jack' } } do:[:each |
		aCollege addLecturer: (Lecturer new id: (each at:1) ; description: (each at:2) ;yourself) ].

	^aCollege 
	
	
	! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:39:22'!
addInstance: aModuleInstance
	
	instances add: aModuleInstance ! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:53:15'!
at: day at: hour

	| result |
	
	result := instances select: [:each | each day = day and: [each hour <= hour] and:[hour < (each hour + each duration)] ].
	
	^result
! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:38:09'!
description
	^description! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:38:15'!
description: aString
	description := aString! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:37:47'!
id
	^id! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:37:54'!
id: anInteger
	id := anInteger ! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:37:01'!
initialize

	instances := OrderedCollection new! !

!CollegeTopic methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:36:14'!
instancesDo: aBlock
	^ instances do: aBlock! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:49:30'!
duration
	^duration! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:49:11'!
duration: anInteger
	duration := anInteger ! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:08:13'!
day
	^day
	! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:07:51'!
day: anInteger
	day := anInteger ! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:38:42'!
duration
	^module duration! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:08:16'!
hour
	^hour! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:07:58'!
hour: anInteger
	hour := anInteger ! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:08:25'!
id 
	^id! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:08:21'!
id: anInteger
	id := anInteger ! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:10:00'!
lecturer
	^lecturer! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:09:55'!
lecturer: aLecturer
	lecturer := aLecturer! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:18:02'!
module
	^module! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:08:59'!
module: aModule
	module := aModule! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:09:25'!
room
	^room! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:09:31'!
room: aRoom
	room := aRoom! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:20:47'!
college: aCollege

	college := aCollege.
	
	! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:58:40'!
format: aBlock
	format := aBlock! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:58:57'!
initialize
	
	selection := 0.

	indices := #(0).
		
	topic := 'No Topic'.
	
	college := nil.

	format := [:each | each asString ]! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2024 18:11:34'!
topic: aString
	topic := aString! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 9/26/2024 15:30:28'!
select: anIndex

	| index keys t |
	
	selection := anIndex.

	self changed: #select:.
	
	selection = 0 ifTrue:[instance := nil. ^self].
	
	t := college perform: topic.
	
	keys :=  t keys sort.
	
	index := keys at: selection.
	
	instance := t at: index.


	
! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 9/23/2024 16:48:35'!
selection
	^selection ! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 9/26/2024 15:37:31'!
topics

	| t keys |
	
	college ifNil:[^{}].
	
	t := college perform: topic.
	
	keys := t keys sort.
	
	^keys collect:[:key | t at: key :: description ]! !

!PluggableCollegeGridModel methodsFor: 'grid model' stamp: 'DF 9/26/2024 15:28:35'!
at: row at: col

	| result |
	
	instance ifNil:[^''].

	result := instance  at: col at: row.

	result ifEmpty: [^''].

	^ result collect:[:each | format value:each ] :: reduce:[:x :y | x,y].! !

!PluggableCollegeGridModel methodsFor: 'grid model' stamp: 'DF 9/23/2024 16:48:35'!
nCols
	^6! !

!PluggableCollegeGridModel methodsFor: 'grid model' stamp: 'DF 9/23/2024 16:48:35'!
nRows
	^24! !

!PluggableCollegeGridModel class methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 14:59:16'!
college: aCollege topic: aSymbol format: aBlock

	| aCollegeModel aListMorph |
	
	aCollegeModel := self new.
	
	aCollegeModel college: aCollege; topic: aSymbol ; format: aBlock.
	
	aListMorph := PluggableListMorph withModel: aCollegeModel listGetter: #topics indexGetter: #selection indexSetter: #select:.

	aListMorph | 1.0p  <+> ((GridMorph new model: aCollegeModel)  | 1.0 p - 1.0p ) :: morphExtent: 900@600  :: embeddedInMorphicWindowLabeled: ('{1} Browser' format:{aSymbol}) :: openInWorld 

! !
