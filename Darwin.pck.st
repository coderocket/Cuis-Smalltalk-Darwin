'From Cuis7.1 [latest update: #6676] on 17 September 2024 at 8:48:18 pm'!
'Description '!
!provides: 'Darwin' 1 71!
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

!classDefinition: #DemoGene category: #Darwin!
Object subclass: #DemoGene
	instanceVariableNames: 'room duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Darwin'!
!classDefinition: 'DemoGene class' category: #Darwin!
DemoGene class
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

!classDefinition: #GenieCompiler category: #Darwin!
Object subclass: #GenieCompiler
	instanceVariableNames: ''
	classVariableNames: ''
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

!DemoGene methodsFor: 'as yet unclassified' stamp: 'DF 9/15/2024 19:36:02'!
duration
	^duration! !

!DemoGene methodsFor: 'as yet unclassified' stamp: 'DF 9/15/2024 19:37:31'!
mutate

	room := (1 to: 5) atRandom.
	
	duration := DemoGene duration: room.! !

!DemoGene methodsFor: 'as yet unclassified' stamp: 'DF 9/15/2024 19:35:59'!
room
	^room! !

!DemoGene class methodsFor: 'as yet unclassified' stamp: 'DF 9/15/2024 19:36:42'!
duration: anInteger

	^ (1 to: 10) atRandom! !

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

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 14:07:45'!
compileExprRule: aString

	^'fit[i]->fitness -= sum(fit[i]->gene, fit[i]->gene+CHROMOSOME_SIZE, [](gene_t* each) \{ return {1}; \});' format:{ aString }.
	! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 20:46:55'!
compileGroupByRuleKeys: anOrderedCollection expr: aString

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each asUppercase ] separatedBy:[ aStream nextPutAll: ', ' ].
	
	^ '\{ int keys[] = \{{1}\}; 

fit[i]->fitness -= group_by(fit[i], keys,{2},[](gene_t** b, gene_t** e) 
	\{ return {3}; \}); \}' format:{ aStream contents  . anOrderedCollection size . aString }! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 20:30:19'!
compileParameters: names values: values

	| aStream |
	
	aStream := WriteStream on:''.
	
	1 to: names size do:[:i | aStream nextPutAll: 'const int GENIE_' ; nextPutAll: (names at:i) ; nextPutAll: ' = ' ; nextPutAll: (values at:i) ; nextPutAll:';' ; nextPut: Character lf.  ].
	
	^aStream contents! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 14:37:06'!
compilePrimitiveCallName: aString expr: anotherString

	^ '{1}(b,e,[](gene_t* each) \{ return {2}; \});' format:{aString . anotherString } 
	! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 19:35:17'!
compileSchema: anOrderedCollection

	| aStream i |
	
	aStream := WriteStream on:''.
	
	i := 0.
	
	anOrderedCollection do:[:each | aStream nextPutAll: 'const int ' ; nextPutAll: each ; nextPutAll: ' = ' ; nextPutAll: ('{1};' format: { i} ) ; nextPut: Character lf. i := i + 1. ].
	
	aStream nextPutAll: ('const int GENE_SIZE = {1};' format: {i}) ; nextPut:Character lf.
	
	^aStream contents! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 18:57:23'!
compileTable: anOrderedCollection name: aString

	| aStream |
	
	aStream := WriteStream on:''.
	
	aStream nextPutAll: 'int ' ; nextPutAll: aString ; nextPutAll: '(int arg) {'; nextPut: Character lf.
	
	anOrderedCollection do:[:each | aStream nextPutAll: each ] separatedBy:[ aStream nextPut: Character lf].
	
	aStream nextPut: Character lf.
	
	aStream nextPutAll: 'throw invalid_argument();'; nextPut: Character lf; nextPutAll:'}'; nextPut: Character lf.
	
	^aStream contents ! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 18:58:51'!
compileTuple: anOrderedCollection range: aString

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return ({2}).at_random(); \}' format:{ each . aString }) ] separatedBy:[ aStream nextPut: Character lf].

	^aStream contents! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 18:27:01'!
compileTuple: anOrderedCollection seq: anotherCollection

	| aStream |
	
	aStream := WriteStream on: ''.
	
	anotherCollection size = 1 
		ifTrue:[			
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ return {2}; \}' format:{ each .  anotherCollection first }) ] separatedBy:[ aStream nextPut: Character lf] ] 
		ifFalse:[
			anOrderedCollection do:[:each | aStream nextPutAll: ('if (arg == {1}) \{ vector<int> v(\{{2}\}); return v[rand() % v.size()]; \}' format:{ each .  anotherCollection fold:[:acc :x | acc , ' , ' , x ] }) ] separatedBy:[ aStream nextPut: Character lf] ].

	^aStream contents! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 18:30:22'!
compileTupleRange: aString seq: anOrderedCollection

	^anOrderedCollection size = 1 
		ifTrue:[	'if ({1}.includes({2})) \{ return ({2}; \}' format:{ aString . anOrderedCollection first }]
		ifFalse:['if ({1}.includes({2})) \{ vector<int> v(\{{2}\}); return v[rand() % v.size()]; \}' format:{ aString .  anOrderedCollection fold:[:acc :x | acc , ' , ' , x ] } ]! !

!GenieCompiler class methodsFor: 'as yet unclassified' stamp: 'DF 9/17/2024 18:56:00'!
compileTupleRangeBegin: aString end: anotherString seq: anOrderedCollection

	^anOrderedCollection size = 1 
		ifTrue:[	'if ({1}<= arg && arg < {2}) \{ return {3}; \}' format:{ aString . anotherString. anOrderedCollection first }]
		ifFalse:['if ({1}<= arg && arg < {2}) \{ vector<int> v(\{{3}\}); return v[rand() % v.size()]; \}' format:{ aString . anotherString . anOrderedCollection fold:[:acc :x | acc , ' , ' , x ] } ]! !

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
