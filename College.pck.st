'From Cuis7.1 [latest update: #6709] on 28 October 2024 at 3:42:09 pm'!
'Description '!
!provides: 'College' 1 37!
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

!classDefinition: #CollegeBrowser category: #College!
Object subclass: #CollegeBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'CollegeBrowser class' category: #College!
CollegeBrowser class
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
	instanceVariableNames: 'id day hour frames module room lecturer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'College'!
!classDefinition: 'ModuleInstance class' category: #College!
ModuleInstance class
	instanceVariableNames: ''!

!classDefinition: #PluggableCollegeGridModel category: #College!
GridModel subclass: #PluggableCollegeGridModel
	instanceVariableNames: 'selection college indices item format instance topicIndex'
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

!College methodsFor: 'as yet unclassified' stamp: 'DF 10/11/2024 22:44:02'!
assign: aSolution  by: aDictionary

	aSolution do:[:each | 

		self assignInstance: (instances at: (each at:1))  to: (each at:2) by: aDictionary ]! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 13:46:11'!
assignInstance: aModuleInstance to: aGene by: aDictionary

	| day hour module lecturer duration  |

	day := aGene at:(aDictionary at:#day).
	
	hour := aGene at:(aDictionary at:#hour).

	lecturer := lecturers at: (aGene at:(aDictionary at:#lecturer)).

	module := modules at: (aGene at:(aDictionary at:#module)).

	duration := aGene at:(aDictionary at:#duration).
	
	aModuleInstance day: day ; hour: hour.		
	
	self assert: duration = module duration.
	
	aModuleInstance module: module. module addInstance: aModuleInstance.
	
	aModuleInstance lecturer: lecturer. lecturer addInstance: aModuleInstance.
	

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 13:50:39'!
instanceAt: anInteger
	^ instances at: anInteger ! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 9/25/2024 21:51:20'!
moduleAt: anInteger
	^ modules at: anInteger ! !

!College class methodsFor: 'as yet unclassified' stamp: 'DF 10/1/2024 18:53:04'!
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
	
	6*5 timesRepeat:[ | instance |
		
		instance := (ModuleInstance new id: instanceIndex ; yourself).
		
		aCollege addInstance: instance.
		
		instanceIndex := instanceIndex + 1 ].
	
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

!College class methodsFor: 'as yet unclassified' stamp: 'DF 10/12/2024 17:24:05'!
example2

	"self example2"
	
"

The college teaches 12 groups (frames) each year, for a total of 36 frames.

Each group consists of 50 students, thus the college teaches 50*36 = 1,800 students

First year students study the following courses:

1 1 calculus 3hr
1 2 statistics 2hr
1 3 ethics 3hr
1 4 swimming 2hr
1 5 rethoric 3hr
1 6 chess 2hr
1 7 chemistry 3hr
1 8 poetry 2hr

Second year students study

2 1 astronomy 3hr
2 2 algorithms 2hr
2 3 physics 3hr
2 4 history 2hr
2 5 music 3hr
2 6 logic 2hr
2 7 literature 3hr
2 8 genetics 2hr

Third year students study

3 1 farming 3 hr
3 2 plumbing 2 hr
3 3 carpentry 3 hr
3 4 fishing 2 hr
3 5 sewing 3 hr
3 6 baking 2 hr
3 7 cooking 3 hr
3 8 brewing 2 hr

therefore there are 12*24 = 288 module instances.

The modules are divided into disciplines

math

calculus 
statistics 
algorithms 
logic 
chess

science

chemistry 
astronomy 
physics 
genetics 

humanities

ethics 
rethoric 
poetry 
history 
music
literature 

skills

swimming 
farming 
plumbing 
carpentry 
fishing
sewing 
baking 
cooking 
brewing 

each group studies 20 hours a week. 

total hours required are  3 * 12 * 20 = 720 hours

The college has 32 rooms. The rooms are located in 4 separate floors.

rooms 		floor

1..8 		1
9..16 		2
17..24  		3
25..32 		4

A working day is 9 hours long (8-17), there are 5 working days for a total of 45 available hours

With 32 rooms this gives a total capacity of 32*45 = 1440 hours per week.

The college employs 42 lecturers

a lecturer cannot work more than 24 hours a week

Thus the lecturers can teach at most 42*24 = 1008 hours a week

"

	| aCollege  |
	
	aCollege := College new.
	
	" rooms: { id description } "
	
	0 to:3 do:[:floor | 1 to:8 do:[:num | 
		aCollege addRoom: (Room new id: floor * 6 + num ; description: ('room {1}.{2}' format:{ floor+1 . num}) ;yourself) ] ].
	
	" modules: { id . description . duration } "
	
	{ { 1 . 'calculus' . 3 } . { 2 . 'statistics' . 2  } . { 3 . 'ethics' . 3 } . { 4 . 'swimming' . 2  } . { 5 . 'rethoric' . 3 } . { 6 . 'chess' . 2 } . { 7 . 'chemistry' . 3 } . { 8 . 'poetry' . 2 } . { 9 . 'astronomy' . 3 } . { 10 . 'algorithms' . 2 } . { 11 . 'physics' . 3 } . { 12 . 'history' . 2 } . { 13 . 'music' . 3 } . { 14 . 'logic' . 2 } . { 15 . 'literature' . 3} . { 16 . 'genetics' . 2 } . { 17 . 'framing' . 3 } . { 18 . 'plumbing' . 2 } . { 19 . 'carpentry' . 3 } . { 20 . 'fishing' . 2 } . { 21 . 'sewing' . 3 } . { 22 . 'baking' . 2 } . { 23 . 'cooking' . 3 } . { 24 . 'brewing' . 2 }  }  do:[:each | 
		aCollege addModule: (Module new id: (each at:1) ; description: (each at:2) ; duration: (each at: 3) ; yourself) ].

	" frames. "
	
	0 to:35 do:[:frameIndex | | year group frame |
		
	year := (frameIndex // 12) + 1.
	group := (frameIndex mod: 12) + 1.
	
	frame := Frame new id: frameIndex + 1 ; description: ('Y{1}.{2}' format: { year . group }) ; yourself.
	
	aCollege addFrame: frame ].
	
	" module instances { id . module id . frame id } "
	
	0 to:287 do:[:instanceIndex | |instance| 
		
		instance := (ModuleInstance new id: instanceIndex ; yourself).
		
		aCollege addInstance: instance ].
		
	" lecturers: { id description } "
	
	{	'Alice' 		. 'Bob' 			. 'Hausdorff' 			. 'Dirac' 			. 'Hume' 			. 'Kant'  		.
		'Chopin' . 'Hamilton' 					. 'Fermi' 			. 'Prokofiev' 			. 'Russel' 			. 'Jane' 		.
		'Ada'		. 'Turing'			. 'Church'			. 'Goedel'			. 'Whitehead'		.	 'Decart' .
		'Bach'		. 'Epstein'			. 'Dijkstra'			. 'Gandalf'			. 'Elrond'			. 'Golda' .
		'Liebniz'		. 'Spinoza'			. 'Virginia'			. 'Fermat'			. 'Berlioz'			. 'Liskov' .
		'Dieter'		. 'Gaudi'			. 'Bowie'			. 'Mendeleve'	. 'Pushkin'					. 'Schubert' .
		'Adam'		. 'Burkhardt' . 'Caneloni' 						.'Darwin' 			.'Eve' 			.'Frankenstien'
	
	} withIndexDo: [:each :i |
		aCollege addLecturer: (Lecturer new id: i ; description: each ;yourself) ].
	
	^aCollege
"
	aReadStream := ReadStream on: ('/home/davidf/src/Cuis-Smalltalk-Darwin/solution.json' asFileEntry fileContents).

	aSolution := Json readFrom: aReadStream.

	aCollege assign: aSolution.

	PluggableCollegeGridModel college: aCollege topic: #rooms format:[:each | '{1}:{2}' format:{ each lecturer description . each module description } ].

	PluggableCollegeGridModel college: aCollege topic: #lecturers format:[:each | '{1}:{2}' format:{ each module description . each room description } ].

	PluggableCollegeGridModel college: aCollege topic: #modules format:[:each | '{1}:{2}' format:{ each lecturer description . each room description } ]."

	
	
	! !

!College class methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 14:06:42'!
example3

	"self example3"

	| aCollege frame |
	
	aCollege := College new.
	
	" rooms: { id description } "
	
	0 to:3 do:[:floor | 1 to:8 do:[:num | 
		aCollege addRoom: (Room new id: floor * 6 + num ; description: ('room {1}.{2}' format:{ floor+1 . num}) ;yourself) ] ].
	
	" modules: { id . description . duration } "
	
	{ { 10016 . 'מבוא למדמח שיעור' . 3 } . { 910016 . 'מבוא למדמח תרגול' . 3  } . { 10010 . 'מבוא לתכנות מערכות הרצאה' . 2 } . { 910010 . 'מבוא לתכנות מערכות תרגול' . 2  } . { 10117 . 'מבני נתונים הרצאה' . 4 } . { 910017 . 'מבני נתונים תרגול' . 2 }  }  do:[:each | 
		aCollege addModule: (Module new id: (each at:1) ; description: (each at:2) ; duration: (each at: 3) ; yourself) ].

	" module instances { id . module id . frame id } "
	
	0 to:13 do:[:instanceIndex | |instance| 
		
		instance := (ModuleInstance new id: instanceIndex ; yourself).
		
		aCollege addInstance: instance ].

	" frames. "
	
	frame :=  Frame new id: 1  ; description: 'תוכנה א 1' ; yourself.
	
	frame addInstance: (aCollege instanceAt: 0) ; addInstance: (aCollege instanceAt: 1).
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 2  ; description: 'תוכנה א 2' ; yourself.
	
	frame addInstance: (aCollege instanceAt: 0) ; addInstance: (aCollege instanceAt: 2).
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 3  ; description: 'תוכנה ב 1' ; yourself.
	
	frame addInstance: (aCollege instanceAt: 3) ; addInstance: (aCollege instanceAt: 4).
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 4  ; description: 'תוכנה ב 2' ; yourself.
	
	frame addInstance: (aCollege instanceAt: 3) ; addInstance: (aCollege instanceAt: 5).
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 5  ; description: 'תוכנה ג 1' ; yourself.
	
	{ 6 . 7 . 10 . 11 } do:[:index | frame addInstance: (aCollege instanceAt: index) ].
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 6  ; description: 'תוכנה ג 2' ; yourself.
	
	{ 8 . 9 . 12 . 13 } do:[:index | frame addInstance: (aCollege instanceAt: index) ].
		
	aCollege addFrame:	 frame.
	
	" lecturers: { id description } "
	
	{	'יאיר אבן זוהר' . 'איל אייזנשטיין' . 'ניר אנדלמן' . 'מנחם אפטיין' . 'מריה ארטיצלב' . 'רועי אש' .
		'רם בוסני' . 'הדר בינסקי' . 'ארנון ברקת' . 'לאה גולדין' . 'אפרת הרצברג מורג' . 'ראובן חוטובלי' .
		'ויקטור טאובקין' . 'שמואל טישברוביץ' . 'שרון ילוב נהזדל' . 'קרן כליף' . 'הדס לפיד' . 'בוריס מורוז' .
		'מיכאל מן' . 'דגנית ערמון' . 'דוד פייטלסון' . 'גדי פנקס' . 'גדי פסח' . 'דוד שטטר' .
		'עמי האופטמן' . 'מאשה פרידין' . 'תום כהן' . 'פיני שלומי' . 'גיא איסקוב' . 'מיכל הוכמן' . 
		'לימור מתתיהו' . 'רועי זימון' . 'אפרת ויינברג' 
	
	} withIndexDo: [:each :i |
		aCollege addLecturer: (Lecturer new id: i ; description: each ;yourself) ].
	
	^aCollege
"
	aReadStream := ReadStream on: ('/home/davidf/src/Cuis-Smalltalk-Darwin/solution.json' asFileEntry fileContents).

	aSolution := Json readFrom: aReadStream.

	aCollege assign: aSolution.

	PluggableCollegeGridModel college: aCollege topic: #rooms format:[:each | '{1}:{2}' format:{ each lecturer description . each module description } ].

	PluggableCollegeGridModel college: aCollege topic: #lecturers format:[:each | '{1}:{2}' format:{ each module description . each room description } ].

	PluggableCollegeGridModel college: aCollege topic: #modules format:[:each | '{1}:{2}' format:{ each lecturer description . each room description } ]."

	
	
	! !

!College class methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:17:52'!
school

	"self school"

	| aCollege frame |
	
	aCollege := College new.
	
	" rooms: { id description } "
	
	0 to:3 do:[:floor | 1 to:8 do:[:num | 
		aCollege addRoom: (Room new id: floor * 6 + num ; description: ('room {1}.{2}' format:{ floor+1 . num}) ;yourself) ] ].
	
	" modules: { id . description . duration } "
	
	{ { 10016 . 'מבוא למדמח שיעור' . 3 } . { 910016 . 'מבוא למדמח תרגול' . 3  } . { 10010 . 'מבוא לתכנות מערכות הרצאה' . 2 } . { 910010 . 'מבוא לתכנות מערכות תרגול' . 2  } . { 10117 . 'מבני נתונים הרצאה' . 4 } . { 910117 . 'מבני נתונים תרגול' . 2 }  }  do:[:each | 
		aCollege addModule: (Module new id: (each at:1) ; description: (each at:2) ; duration: (each at: 3) ; yourself) ].

	" module instances { id . module id . frame id } "
	
	0 to:13 do:[:instanceIndex | |instance| 
		
		instance := (ModuleInstance new id: instanceIndex ; yourself).
		
		aCollege addInstance: instance ].

	" frames. "
	
	frame :=  Frame new id: 1  ; description: 'תוכנה א 1' ; yourself.
	
	{ 0 . 1 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
	
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 2  ; description: 'תוכנה א 2' ; yourself.
	
	{ 0 . 2 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 3  ; description: 'תוכנה ב 1' ; yourself.
	
	{ 3 . 4 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 4  ; description: 'תוכנה ב 2' ; yourself.
	
	{ 3 . 5 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 5  ; description: 'תוכנה ג 1' ; yourself.
	
	{ 6 . 7 . 10 . 11 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
		
	aCollege addFrame:	 frame.

	frame :=  Frame new id: 6  ; description: 'תוכנה ג 2' ; yourself.
	
	{ 8 . 9 . 12 . 13 } do:[:index | | ii | ii := aCollege instanceAt: index. frame addInstance: ii. ii addFrame: frame ].
		
	aCollege addFrame:	 frame.
	
	" lecturers: { id description } "
	
	{	'יאיר אבן זוהר' . 'איל אייזנשטיין' . 'ניר אנדלמן' . 'מנחם אפטיין' . 'מריה ארטיצלב' . 'רועי אש' .
		'רם בוסני' . 'הדר בינסקי' . 'ארנון ברקת' . 'לאה גולדין' . 'אפרת הרצברג מורג' . 'ראובן חוטובלי' .
		'ויקטור טאובקין' . 'שמואל טישברוביץ' . 'שרון ילוב נהזדל' . 'קרן כליף' . 'הדס לפיד' . 'בוריס מורוז' .
		'מיכאל מן' . 'דגנית ערמון' . 'דוד פייטלסון' . 'גדי פנקס' . 'גדי פסח' . 'דוד שטטר' .
		'עמי האופטמן' . 'מאשה פרידין' . 'תום כהן' . 'פיני שלומי' . 'גיא איסקוב' . 'מיכל הוכמן' . 
		'לימור מתתיהו' . 'רועי זימון' . 'אפרת ויינברג' 
	
	} withIndexDo: [:each :i |
		aCollege addLecturer: (Lecturer new id: i ; description: (each copyFrom:1 count: (7 min: each size)) ;yourself) ].
	
	^aCollege
"
	aReadStream := ReadStream on: ('/home/davidf/src/Cuis-Smalltalk-Darwin/solution.json' asFileEntry fileContents).

	aSolution := Json readFrom: aReadStream.

	aCollege assign: aSolution.

	PluggableCollegeGridModel college: aCollege topic: #rooms format:[:each | '{1}:{2}' format:{ each lecturer description . each module description } ].

	PluggableCollegeGridModel college: aCollege topic: #lecturers format:[:each | '{1}:{2}' format:{ each module description . each room description } ].

	PluggableCollegeGridModel college: aCollege topic: #modules format:[:each | '{1}:{2}' format:{ each lecturer description . each room description } ]."

	
	
	! !

!CollegeBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:23:24'!
open: aJsonSolution

	| aCollege |
	
	aCollege := College school assign: aJsonSolution by: { #day -> 1 . #hour -> 2 . #lecturer -> 3 . #module -> 4 . #duration -> 5 } asDictionary. 

PluggableCollegeGridModel college: aCollege topic: #frames format: [:each | '{1}:{2}' format:{each lecturer description . each module description } ].
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

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 14:07:35'!
addFrame: anInteger
	frames add: anInteger! !

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

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 14:07:18'!
frames
	^frames! !

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

!ModuleInstance methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 14:08:15'!
initialize

	frames := Set new! !

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

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:39:46'!
initialize
	
	selection := 0.

	indices := #(0).
		
	item := nil.
	
	topicIndex := 0.
	
	college := nil.

	format := [:each | each asString ]! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:39:46'!
item: aString
	item := aString! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:40:10'!
selectTopic: anIndex

	! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:38:57'!
topicSelection
	^topicIndex! !

!PluggableCollegeGridModel methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:37:20'!
topics
	^ { 'lecturers' . 'frames' . 'rooms' }! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 10/28/2024 15:39:46'!
items

	| t keys |
	
	college ifNil:[^{}].
	
	t := college perform: item.
	
	keys := t keys sort.
	
	^keys collect:[:key | t at: key :: description ]! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 10/28/2024 15:39:46'!
select: anIndex

	| index keys t |
	
	selection := anIndex.

	self changed: #select:.
	
	selection = 0 ifTrue:[instance := nil. ^self].
	
	t := college perform: item.
	
	keys :=  t keys sort.
	
	index := keys at: selection.
	
	instance := t at: index.


	
! !

!PluggableCollegeGridModel methodsFor: 'list model' stamp: 'DF 9/23/2024 16:48:35'!
selection
	^selection ! !

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

!PluggableCollegeGridModel class methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2024 15:38:44'!
college: aCollege topic: aSymbol format: aBlock

	| aCollegeModel topics items aGridMorph |
	
	aCollegeModel := self new.
	
	aCollegeModel college: aCollege; item: aSymbol ; format: aBlock.
	
	topics := PluggableListMorph withModel: aCollegeModel listGetter: #topics indexGetter: #topicSelection indexSetter: #selectTopic:.
	
	items := PluggableListMorph withModel: aCollegeModel listGetter: #items indexGetter: #selection indexSetter: #select:.

	aGridMorph := GridMorph new model: aCollegeModel. 

	(topics | 1.0p) <+> (items | 1.0p) <+> (aGridMorph | 1.0 p - 1.0p ) 
	:: morphExtent: 900@600  :: embeddedInMorphicWindowLabeled: ('{1} Time Table' format:{aSymbol asString capitalized}) :: openInWorld 

! !
