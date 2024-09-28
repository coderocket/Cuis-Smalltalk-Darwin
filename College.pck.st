'From Cuis7.1 [latest update: #6676] on 28 September 2024 at 6:40:03 pm'!
'Description '!
!provides: 'College' 1 9!
SystemOrganization addCategory: #College!


!classDefinition: #College category: #College!
Object subclass: #College
	instanceVariableNames: 'modules rooms lecturers frames instances'
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

!classDefinition: #Frame category: #College!
CollegeTopic subclass: #Frame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'Frame class' category: #College!
Frame class
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
	instanceVariableNames: 'id day hour frame module room lecturer'
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


!College methodsFor: 'accessing' stamp: 'DF 9/27/2024 11:26:24'!
frames
	^frames! !

!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:27'!
lecturers
	^lecturers! !

!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:34'!
modules
	^modules! !

!College methodsFor: 'accessing' stamp: 'DF 9/26/2024 14:23:16'!
rooms
	^rooms! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 11:13:24'!
addFrame: aFrame
	frames at: aFrame id put: aFrame! !

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 12:29:28'!
assignInstance: aModuleInstance to: aGene

	| room day hour frame module lecturer duration  |
	
	day := aGene at:2.
	
	hour := aGene at:3.
	
	duration := aGene at:7.

	aModuleInstance day: day ; hour: hour.
	
	room := rooms at: (aGene at:1).

	frame := frames at: (aGene at:4).
		
	module := modules at: (aGene at:5).
	
	lecturer := lecturers at: (aGene at:6).
	
	aModuleInstance room: room. room addInstance: aModuleInstance.
	
	self assert: duration = module duration.
	
	aModuleInstance module: module. module addInstance: aModuleInstance.
	
	aModuleInstance lecturer: lecturer. lecturer addInstance: aModuleInstance.
	
	self assert: frame = aModuleInstance frame.
	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 11:24:13'!
frameAt: anInteger
	^ frames at: anInteger ! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 11:13:34'!
initialize

	modules := Dictionary new.
	
	rooms := Dictionary new.
	
	lecturers := Dictionary new.

	frames := Dictionary new.
	
	instances := Dictionary new.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:51:20'!
moduleAt: anInteger
	^ modules at: anInteger ! !

!College class methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2024 18:23:34'!
example

	"self example"
	
"

The college teaches 6 groups (frames), each studies 5 modules.

2 modules are 2 hours each
2 modules are 3 hours each
1 module is 5 hours each

each group studies 2*2 + 2*3 + 5 = 15 hours a week

therefore there are 6*5 = 30 module instances.

total hours required are  6 * 15 = 90 hours

The college has 3 rooms.

A working day is 9 hours long (8-17), there are 5 working days for a total of 45 available hours

With 3 rooms this gives a total capacity of 3*45 = 135 hours per week.

The college employs 5 lecturers

a lecturer cannot work more than 20 hours a week

"

	| aCollege instanceIndex "aReadStream aSolution" |
	
	aCollege := College new.
	
	" rooms: { id description } "
	
	{ { 1 . 'apple' } . { 2 . 'banana'} . { 3 . 'orange' }  } do:[:each | 
		aCollege addRoom: (Room new id: (each at:1) ; description: (each at:2) ;yourself) ].
	
	" modules: { id . description . duration } "
	
	{ { 1 . 'plumbing' . 2 } . { 2 . 'carpentry' . 2  } . { 3 . 'sewing' . 3 } . { 4 . 'farming' . 3  } . { 5 . 'computing' . 5 } }  do:[:each | 
		aCollege addModule: (Module new id: (each at:1) ; description: (each at:2) ; duration: (each at: 3) ; yourself) ].

	" frames. "
	
	{ { 1 . 'group 1' } . { 2 . 'group 2' } . { 3 . 'group 3' } . { 4 . 'group 4' }. { 5 . 'group 5' } . { 6 . 'group 6' } } do:[:each | 
		aCollege addFrame: (Frame new id:( each at:1) ; description: (each at:2) ; yourself) ].
	
	" module instances { id . module id . frame id } "
	
	instanceIndex := 1.
	
	1 to: 6 do:[:frameIndex |
		1 to: 5 do:[:moduleIndex | | instance module frame |
	
		module := aCollege moduleAt: moduleIndex.
		
		frame := aCollege frameAt: frameIndex.
		
		instance := (ModuleInstance new id: instanceIndex ; module: module ; frame: frame ; yourself).
		
		module addInstance: instance.
		
		frame addInstance: instance.
		
		aCollege addInstance: instance.
		
		instanceIndex := instanceIndex + 1 ] ].
	
	" lecturers: { id description } "
	
	{ { 1 . 'Alice' } . { 2 . 'Bob' } . { 3 . 'Hausdorff' } . { 4 . 'Dirac' } . { 5 . 'Hume' } } do:[:each |
		aCollege addLecturer: (Lecturer new id: (each at:1) ; description: (each at:2) ;yourself) ].
	
	^aCollege
"
	aReadStream := ReadStream on: ('/home/davidf/src/Cuis-Smalltalk-Darwin/solution.json' asFileEntry fileContents).

	aSolution := Json readFrom: aReadStream.

	aCollege assign: aSolution.

	PluggableCollegeGridModel college: aCollege topic: #rooms format:[:each | '{1}:{2}' format:{ each lecturer description . each module description } ].

	PluggableCollegeGridModel college: aCollege topic: #lecturers format:[:each | '{1}:{2}' format:{ each module description . each room description } ].

	PluggableCollegeGridModel college: aCollege topic: #modules format:[:each | '{1}:{2}' format:{ each lecturer description . each room description } ]."

	
	
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

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 11:22:22'!
frame
	^frame! !

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2024 11:22:17'!
frame: anInteger
	frame := anInteger ! !

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

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 15:51:08'!
initialize
	
	selection := 0.

	indices := #(0).
		
	topic := nil.
	
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

!PluggableCollegeGridModel class methodsFor: 'as yet unclassified' stamp: 'DF 9/26/2024 15:44:57'!
college: aCollege topic: aSymbol format: aBlock

	| aCollegeModel aListMorph |
	
	aCollegeModel := self new.
	
	aCollegeModel college: aCollege; topic: aSymbol ; format: aBlock.
	
	aListMorph := PluggableListMorph withModel: aCollegeModel listGetter: #topics indexGetter: #selection indexSetter: #select:.

	aListMorph | 1.0p  <+> ((GridMorph new model: aCollegeModel)  | 1.0 p - 1.0p ) :: morphExtent: 900@600  :: embeddedInMorphicWindowLabeled: ('{1} Time Table' format:{aSymbol asString capitalized}) :: openInWorld 

! !
