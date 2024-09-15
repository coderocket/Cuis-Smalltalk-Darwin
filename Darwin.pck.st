'From Cuis7.1 [latest update: #6676] on 14 September 2024 at 10:44:27 pm'!
'Description '!
!provides: 'Darwin' 1 58!
SystemOrganization addCategory: #Darwin!


!classDefinition: #CollegePlan category: #Darwin!
Object subclass: #CollegePlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'CollegePlan class' category: #Darwin!
CollegePlan class
	instanceVariableNames: ''!

!classDefinition: #Ecology category: #Darwin!
Object subclass: #Ecology
	instanceVariableNames: 'population bestk populationSize individualClass worstk mutationProbability'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'Ecology class' category: #Darwin!
Ecology class
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

!classDefinition: #CollegeAssignmentGridModel category: #Darwin!
GridModel subclass: #CollegeAssignmentGridModel
	instanceVariableNames: 'room instances grid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'CollegeAssignmentGridModel class' category: #Darwin!
CollegeAssignmentGridModel class
	instanceVariableNames: ''!

!classDefinition: #Individual category: #Darwin!
Object subclass: #Individual
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'Individual class' category: #Darwin!
Individual class
	instanceVariableNames: ''!

!classDefinition: #BitExample category: #Darwin!
Individual subclass: #BitExample
	instanceVariableNames: 'bits fitness'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'BitExample class' category: #Darwin!
BitExample class
	instanceVariableNames: ''!

!classDefinition: #CollegeAssignment category: #Darwin!
Individual subclass: #CollegeAssignment
	instanceVariableNames: 'instances fitness'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'CollegeAssignment class' category: #Darwin!
CollegeAssignment class
	instanceVariableNames: ''!

!classDefinition: #ModuleAssignment category: #Darwin!
Object subclass: #ModuleAssignment
	instanceVariableNames: 'day hour room lecturer duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'ModuleAssignment class' category: #Darwin!
ModuleAssignment class
	instanceVariableNames: ''!

!classDefinition: #GridMorph category: #Darwin!
PluggableMorph subclass: #GridMorph
	instanceVariableNames: 'margin nRows nCols gridH gridW origin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'GridMorph class' category: #Darwin!
GridMorph class
	instanceVariableNames: ''!

!classDefinition: #CollegeAssignmentExplorer category: #Darwin!
SystemWindow subclass: #CollegeAssignmentExplorer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'CollegeAssignmentExplorer class' category: #Darwin!
CollegeAssignmentExplorer class
	instanceVariableNames: ''!


!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 18:39:36'!
durationAt: index

	index = 1 ifTrue:[^2].
	index = 2 ifTrue:[^3].
	index = 3 ifTrue:[^2].
	index = 4 ifTrue:[^3].
	index = 5 ifTrue:[^2].
	
	self error: 'undefined duration for index' , index asInteger.! !

!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:20:21'!
numberOfDays
	^2! !

!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 21:36:22'!
numberOfHours
	^4! !

!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 18:59:12'!
numberOfInstances 
	^5
	! !

!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 21:36:25'!
numberOfLecturers
	^3! !

!CollegePlan class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:42:57'!
numberOfRooms
	^2! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 21:58:02'!
best
	^population max:[:each | each fitness ]! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 20:36:24'!
bestk: anInteger
	bestk := anInteger ! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 22:13:38'!
breed

	| parents offspring |
	
	parents := OrderedCollection new.
	
	1 to: bestk do:[:i | 
		1 to: bestk do:[:j |
			i ~= j ifTrue: (parents add: { i . j }) ] ].
		
	parents := parents shuffled copyFrom: 1 to: bestk.
	
	offspring := OrderedCollection new.
	
	parents do:[:each | | i j | i := each first . j := each second. offspring addAll: ((population at:i) breedWith: (population at:j)) ].
	
	offspring do:[:each | each mutate: mutationProbability ]. 

	offspring do:[:each | each calculateFitness ].
	
	^offspring ! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 19:17:03'!
evolve

	population addAll: self breed.	
		
	population sort:[:x :y | x fitness >= y fitness ].

	population := population copyFrom:1 to: populationSize.	! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 21:21:04'!
fitness
	^population max:[:each | each fitness ]! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 20:31:56'!
individualClass: class 

	individualClass := class.	
	

	! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 20:58:40'!
mutationProbability: aNumber
	mutationProbability := aNumber! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:28:47'!
population
	^population! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 20:18:37'!
populationSize: anInteger
	populationSize := anInteger ! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 19:17:10'!
setup

	population := OrderedCollection new.
	
	populationSize timesRepeat: [population add: individualClass spawn].
	
	population do:[:each | each calculateFitness ].

	population sort:[:x :y | x fitness >= y fitness ].

	self assert: bestk + worstk <= populationSize.
	

	! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 21:58:08'!
worst
	^population min:[:each | each fitness ]! !

!Ecology methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 20:38:19'!
worstk: anInteger
	worstk := anInteger ! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:08:56'!
at: row at: column

	^ row @ column :: asString! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:56'!
nCols
	^3! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:57:52'!
nRows
	^4
	! !

!GridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:32:07'!
title
	^'Title'! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:13:16'!
at: row at: col

	"row for hour col for day"
	
	instances ifNil:[ ^'no instances'].
	
	grid ifNil:[^'no grid.' ].
	
	^grid at: {row . col} ifAbsent:[''].! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:59:30'!
initialize

	super initialize.
	
	room := 1.
	
! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:51:49'!
instances: aCollection

	instances := aCollection.! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 18:27:48'!
nCols
	^CollegePlan numberOfDays + 1 ! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 18:27:52'!
nRows
	^CollegePlan numberOfHours + 1! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 18:37:12'!
room: anInteger

	room := anInteger.
	
	grid := Dictionary new.
	
	1 to: CollegePlan numberOfDays do:[:i | grid at: { 1 . i + 1 } put: i asString ].

	1 to: CollegePlan numberOfHours do:[:i | grid at: { i + 1 . 1 } put: i asString ].
	
	1 to: instances size do:[:i | | each |
		
		each := instances at: i.
		
		each room = room ifTrue:[ | s |
			
			0 to: each duration - 1 do:[:j |
				
				s := grid at: { each hour + j + 1 . each day + 1 } ifAbsent:[''].
			
			grid at: { each hour + j + 1  . each day + 1}  put: s , i asString, ':', each lecturer asString , '.' ] ] ]! !

!CollegeAssignmentGridModel methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:32:26'!
title
	^'Room ', room asString! !

!Individual methodsFor: 'individual interface' stamp: 'DF 9/9/2024 20:50:43'!
breedWith: anIndividual

	self subclassResponsibility ! !

!Individual methodsFor: 'individual interface' stamp: 'DF 9/9/2024 20:14:58'!
calculateFitness
	self subclassResponsibility ! !

!Individual methodsFor: 'individual interface' stamp: 'DF 9/9/2024 20:05:59'!
fitness
	self subclassResponsibility ! !

!Individual methodsFor: 'individual interface' stamp: 'DF 9/9/2024 20:59:01'!
mutate: aNumber
	self subclassResponsibility ! !

!Individual class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:09:21'!
spawn
	self subclassResponsibility ! !

!BitExample methodsFor: 'individual interface' stamp: 'DF 9/9/2024 21:49:49'!
breedWith: aBitExample

	| offspringx offspringy |
	
	offspringx := BitExample new.
	
	1 to: 50 do:[:i |
		offspringx at:i put: (self at: i) ].
	
	51 to: 100 do:[:i |
		offspringx at:i put: (aBitExample at:i) ].

	offspringy := BitExample new.
	
	1 to: 50 do:[:i |
		offspringy at:i put: (aBitExample at: i) ].
	
	51 to: 100 do:[:i |
		offspringy at:i put: (self at:i) ].
	
	^{ offspringx . offspringy }! !

!BitExample methodsFor: 'individual interface' stamp: 'DF 9/9/2024 22:10:04'!
calculateFitness

	fitness := bits sum.
	! !

!BitExample methodsFor: 'individual interface' stamp: 'DF 9/9/2024 21:20:31'!
fitness
	^fitness! !

!BitExample methodsFor: 'individual interface' stamp: 'DF 9/9/2024 21:26:11'!
mutate: probability

	| random |
	
	random := Random new.
	
	1 to: 100 do:[:i | random next < probability ifTrue:[ bits at: i put: (1 - (bits at:i)) ] ].
	! !

!BitExample methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 21:24:18'!
at: index
	^ bits at:index! !

!BitExample methodsFor: 'as yet unclassified' stamp: 'DF 9/9/2024 21:24:30'!
at: index put: anInteger
	bits at:index put: anInteger ! !

!BitExample methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:13:20'!
initialize

	bits := OrderedCollection new.
	
	1 to: 100 do:[:i | bits add: 0 ].
	! !

!BitExample class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:17:20'!
spawn

	| aBitExample random |
	
	aBitExample := self new.
	
	random := Random new.
	
	1 to: 100 do:[:i | aBitExample at:i put: ( random nextBits: 1) ].
	
	^aBitExample 
! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 10:15:01'!
at: index
	^ instances at:index! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 10:15:18'!
at: index put: aModuleAssignment
	instances at:index put: aModuleAssignment ! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 19:28:05'!
breedWith: aChromosome

	| offspringx offspringy n k |
	
	n := instances size.
	
	k := n // 2.
	
	offspringx := CollegeAssignment new.
	
	1 to: k do:[:i |
		offspringx at:i put: (self at: i) copy ].
	
	k+1 to: n do:[:i |
		offspringx at:i put: (aChromosome at:i)  copy ].

	offspringy := CollegeAssignment new.
	
	1 to: k do:[:i |
		offspringy at:i put: (aChromosome at: i) copy ].
	
	k+1 to: n do:[:i |
		offspringy at:i put: (self at:i) copy ].
	
	^{ offspringx . offspringy }! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 21:47:41'!
calculateFitness

	| dailyHours |
	fitness := 0.
	
	instances do:[:x | 
		instances do:[:y |
			x ~= y and:[x day = y day] :: ifTrue:[
					x room = y room ifTrue:[
				
						fitness := fitness - (x hourOverlap: y) ].
				
					x lecturer = y lecturer ifTrue:[
						
						fitness := fitness - (x hourOverlap: y) ] 
				]
		]
	].

	"count how many hours each lecturer teaches each day. penalise by the number of hours greater than 3"
	
	dailyHours := Dictionary new.
	
	instances do:[:each | | count | 
		count := dailyHours at: { each day . each lecturer } ifAbsent:[0].  
		dailyHours at: { each day. each lecturer } put: count + each duration ].
	
	dailyHours do:[:each | each > 3 ifTrue:[fitness := fitness - (each - 3) ] ].

						
				! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:33:04'!
fitness
	^fitness! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 10:14:30'!
initialize

	instances := OrderedCollection new.
	
	 CollegePlan numberOfInstances timesRepeat: [ instances add:nil ].
	! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:27:12'!
instances

	^instances ! !

!CollegeAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:23:21'!
mutate: probability

	| random |
	
	random := Random new.
	
	1 to: instances size do:[:i | random next < probability ifTrue:[ instances at:i :: mutate ] ].
	! !

!CollegeAssignment class methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:27:46'!
spawn

	| aCollegeAssignment |
	
	aCollegeAssignment := CollegeAssignment new.
	
	1 to: CollegePlan numberOfInstances do:[:i | | a |
		
		a := ModuleAssignment new.
		
		a duration: (CollegePlan durationAt: i).
		a mutate.
		
		aCollegeAssignment at:i put: a.
	].
	
	^ aCollegeAssignment 
	
	! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:50'!
day
	^day! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:01'!
day: anInteger
	day := anInteger ! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:07:59'!
duration
	^duration! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:07:59'!
duration: anInteger
	duration := anInteger ! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:53'!
hour
	^hour! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:15'!
hour: anInteger
	hour := anInteger! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:01:50'!
hourOverlap: aModuleAssignment
	
	^ (self hours intersection: aModuleAssignment hours) size! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 13:12:33'!
hours
	^(hour to: hour + duration - 1) asSet! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/14/2024 22:32:53'!
identity: aNumber 
^ aNumber! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:39:01'!
lecturer
	^lecturer! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:40'!
lecturer: anInteger
	lecturer := anInteger! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 19:35:21'!
mutate

	self assert: duration < CollegePlan numberOfHours.
	
	day := Random withDefaultDo: [:r | r nextInteger: CollegePlan numberOfDays].
	
	hour := Random withDefaultDo: [:r | r nextInteger: CollegePlan numberOfHours - duration + 1].
	
	room := Random withDefaultDo: [:r | r nextInteger: CollegePlan numberOfRooms].
	
	lecturer := Random withDefaultDo: [:r | r nextInteger: CollegePlan numberOfLecturers]
	! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:57'!
room
	^room! !

!ModuleAssignment methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 09:38:26'!
room: anInteger
	room := anInteger! !

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

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:27:15'!
drawModelOn: aCanvas

	0 to: nRows - 1 do:[:row | 

		0 to: nCols - 1 do:[:col | | p t  | 
		
			p := origin + (((col * (gridW / nCols)) @ (row * (gridH / nRows) ) )).
		
			t := model at: row + 1 at: col + 1.
		
		aCanvas drawString: t at: p font: FontFamily defaultFamilyAndPointSize color: Color black  ] ].
	
			 ! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:33:30'!
drawOn: aCanvas

	| fontHeight title |
	
	nRows := model ifNil:[1] ifNotNil:[model nRows]. 
	nCols := model ifNil:[1] ifNotNil:[model nCols].
		
	gridH := self localBounds insetBy:margin :: height.
	gridW := self localBounds insetBy:margin :: width.
	
	fontHeight := FontFamily defaultFamilyAndPointSize lineSpacing.
	
	gridH := gridH - fontHeight.

	origin := margin / 2 @ (fontHeight + (margin /  2) ).

	title := model ifNil:['Title'] ifNotNil:[model title].
	
	aCanvas drawString: title at: (margin / 2) @ (margin / 2) font: FontFamily defaultFamilyAndPointSize color: Color black.
	
	self drawGridOn: aCanvas.
	
	model ifNotNil:[
		self drawModelOn: aCanvas
	].! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 17:32:59'!
initialize
	
	super initialize .
	
	margin := 4.
! !

!GridMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 16:03:02'!
margin: aNumber
	margin := aNumber ! !

!CollegeAssignmentExplorer methodsFor: 'as yet unclassified' stamp: 'DF 9/10/2024 21:20:30'!
buildMorphicWindow

	model ifNil:[^self addMorph: (LabelMorph contents:'Please provide a model')].
	
	1 to: CollegePlan numberOfRooms do:[:i | | m g |
		
		m := CollegeAssignmentGridModel new.

		m instances: model instances.

		m room: i.

		g := GridMorph new.

		g model: m.
		
		g pw:1.0 ; fh: FontFamily defaultFamilyAndPointSize lineSpacing * 1.5 * (CollegePlan numberOfHours + 1).
		
		self addMorph: g ].
	
! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 18:14:08'!
maxgap: aBlock

	| intervals b e |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	intervals ifEmpty: [^0].
	
	intervals sort:[:x :y | x first <= y first ].
	
	b := 1.
	e := 1.	
		
	"invariant: b .. e -1 is the maximal gap upto interval i "
	
	1 to: intervals size - 1 do:[ :i | | j k |
		j := intervals at: i :: last.
		k := intervals at:i + 1 :: first.
		j < k ifTrue:[
			(k - j) > (e - b) ifTrue:[e := k . b := j ] ] ].
	
	^ e - b
				

	! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 18:20:38'!
mingap: aBlock

	| intervals b e |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	intervals ifEmpty: [^ SmallInteger maxVal].
	
	intervals sort:[:x :y | x first <= y first ].
	
	b := 0.
	e := SmallInteger maxVal.	
		
	"invariant: b .. e -1 is the minimal gap upto interval i "
	
	1 to: intervals size - 1 do:[ :i | | j k |
		j := intervals at: i :: last.
		k := intervals at:i + 1 :: first.
		j <= k ifTrue:[
			(k - j) < (e - b) ifTrue:[e := k . b := j ] ] ].
	
	^ e - b
				

	! !

!SequenceableCollection methodsFor: '*Darwin' stamp: 'DF 9/14/2024 15:23:50'!
overlap: aBlock

	| intervals result |
	
	intervals := self collect:[:each | aBlock value: each ].
	
	result := OrderedCollection new.
	
	1 to: intervals size do:[:i |
		i+1 to: intervals size do:[:j |
			result add: ((intervals at: i) intersection: (intervals at:j)) size ] ].
	
	^result sum: [:each | each] ifEmpty:0! !
