'From Cuis7.3 [latest update: #6895] on 8 March 2025 at 6:04:09 pm'!
'Description '!
!provides: 'PluggableBrowsing' 1 80!
SystemOrganization addCategory: #PluggableBrowsing!


!classDefinition: #PluggableBrowser category: #PluggableBrowsing!
BidiSystemWindow subclass: #PluggableBrowser
	instanceVariableNames: 'builders composition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'PluggableBrowser class' category: #PluggableBrowsing!
PluggableBrowser class
	instanceVariableNames: ''!

!classDefinition: #DemoPluggableTableBrowser category: #PluggableBrowsing!
PluggableBrowser subclass: #DemoPluggableTableBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'DemoPluggableTableBrowser class' category: #PluggableBrowsing!
DemoPluggableTableBrowser class
	instanceVariableNames: ''!

!classDefinition: #DemoPluggableBrowserModel category: #PluggableBrowsing!
Object subclass: #DemoPluggableBrowserModel
	instanceVariableNames: 'a b c'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'DemoPluggableBrowserModel class' category: #PluggableBrowsing!
DemoPluggableBrowserModel class
	instanceVariableNames: ''!

!classDefinition: #NavigationTopic category: #PluggableBrowsing!
Object subclass: #NavigationTopic
	instanceVariableNames: 'getter selector setter model dependencies dependants getterFor index dispatch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'NavigationTopic class' category: #PluggableBrowsing!
NavigationTopic class
	instanceVariableNames: ''!

!classDefinition: #NavigationTopicMulti category: #PluggableBrowsing!
NavigationTopic subclass: #NavigationTopicMulti
	instanceVariableNames: 'selectionGetter selectionSetter selection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'NavigationTopicMulti class' category: #PluggableBrowsing!
NavigationTopicMulti class
	instanceVariableNames: ''!

!classDefinition: #PluggableBrowserModel category: #PluggableBrowsing!
Object subclass: #PluggableBrowserModel
	instanceVariableNames: 'topics model factory builder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'PluggableBrowserModel class' category: #PluggableBrowsing!
PluggableBrowserModel class
	instanceVariableNames: ''!

!classDefinition: #TopicMorphBuilder category: #PluggableBrowsing!
Object subclass: #TopicMorphBuilder
	instanceVariableNames: 'topic factory width menu'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'TopicMorphBuilder class' category: #PluggableBrowsing!
TopicMorphBuilder class
	instanceVariableNames: ''!

!classDefinition: #MultiTopicMorphBuilder category: #PluggableBrowsing!
TopicMorphBuilder subclass: #MultiTopicMorphBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'MultiTopicMorphBuilder class' category: #PluggableBrowsing!
MultiTopicMorphBuilder class
	instanceVariableNames: ''!

!classDefinition: #TableTopicMorphBuilder category: #PluggableBrowsing!
TopicMorphBuilder subclass: #TableTopicMorphBuilder
	instanceVariableNames: 'menuBuilder columnFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'TableTopicMorphBuilder class' category: #PluggableBrowsing!
TableTopicMorphBuilder class
	instanceVariableNames: ''!


!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 18:39:15'!
buildMorphicWindow

	| morph |
	
	morph := self perform: composition first with: composition allButFirst.
	
	self layoutMorph addMorph: morph proportionalHeight:1.0.
	! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 11:41:42'!
builders: aDictionary

	builders := aDictionary ! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 18:45:41'!
column: args

	| morphs | 
		
	morphs := LayoutMorph newColumn.
		
	args first do:[:each | | morph | 
		morph := self perform: each first with: each allButFirst.
		morphs addMorph: morph layoutSpec: (LayoutSpec proportionalWidth: 1.0 proportionalHeight: each last ) ] separatedBy:[ morphs addAdjusterMorph ].
		
	^morphs! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/6/2025 21:33:28'!
composition: anOrderedCollection
	composition := anOrderedCollection! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/6/2025 21:26:03'!
initialize

	super initialize.
		! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 18:46:09'!
row: args

	| morphs | 
		
	morphs := LayoutMorph newRow.
		
	args first do:[:each | | morph | 
		morph := self perform: each first with: each allButFirst.
		morphs addMorph: morph layoutSpec: (LayoutSpec proportionalWidth: each last proportionalHeight: 1.0 ) ] separatedBy:[ morphs addAdjusterMorph ].
		
	^morphs! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 11:41:24'!
topic: args

	"^builders detect: [:builder | builder topic getter = args first] :: build"
	^builders at: args first :: build

! !

!PluggableBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:07:45'!
open: model label: aString topics: anOrderedCollection

	|  window |
	window := self new.
	window
		model: model;
		builders: anOrderedCollection ;
		buildMorphicWindow.
	aString ifNotNil: [ window setLabel: aString ].
	window openInWorld.
	^window! !

!DemoPluggableTableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 12:29:31'!
buildMorphicWindow

	| table |
	
	super buildMorphicWindow.
	
	table := PluggableTableMorph new.
	
	table model: model ; table: #table ; rightToLeft: true ; headerRow: true.
		
	self layoutMorph addAdjusterAndMorph: table proportionalHeight: 0.8.! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:23:12'!
a
	^a! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 09:24:22'!
aFor: indices
	^a! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:23:15'!
b
	^b! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 09:24:25'!
bFor: indices
	^b! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:23:17'!
c
	^c! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 09:51:03'!
cFor: indices

	| index v |
	
	index := indices at:#a.
	
	index = 0 ifTrue:[^{}].
	
	v := a at: index.
	
	^c collect:[:each | each @ v]! !

!DemoPluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:23:55'!
initialize

	a := { 1 . 2 . 3 }.
	
	b := { 'x' . 'y' .'z' }.
	
	c := { 9 . 8 . 7 . 6 . 5 . 4 }
	! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:19:46'!
addDependency: aNavigationTopic

	dependencies add: aNavigationTopic .
	
	aNavigationTopic attachDependant: self! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:20:12'!
attachDependant: aNavigationTopic

	dependants add: aNavigationTopic ! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 16:59:43'!
collection

	| indices |
	
	indices := Dictionary new.
		dependencies do:[:each |
			indices at: each getter put: each ].
		
	^ model perform: getterFor with: indices! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:37:57'!
doesNotUnderstand: aMessage 

	^dispatch at: aMessage selector :: valueWithArguments: aMessage arguments.
	
	
	! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 12:41:34'!
getter
	^getter! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:14:48'!
index
	^index! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 15:29:33'!
index: anInteger

	index := anInteger .
	
	dependants do:[:each | each changed: each getter ]
! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:46:12'!
initialize

	dependencies := Set new.
		
	dependants := Set new.

	dispatch := Dictionary new.
	
	index := 0.
! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 11:54:47'!
item

	^self collection at: index
	
	! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 12:42:32'!
model
	^model! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:55:29'!
model: anObject

	model ifNotNil:[
		model removeDependent: self].
	
	model := anObject.
	
	model ifNotNil:[
		model addDependent: self].! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 12:41:42'!
selector
	^selector! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 12:41:38'!
setter
	^setter! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:40:23'!
topic: aString

	getter := Symbol intern: aString.
	
	getterFor := Symbol intern: aString, 'For:'.
		
	selector := Symbol intern: 'selected' , aString capitalized.
		
	setter := Symbol intern: 'select', aString capitalized , ':'.

	dispatch at:  getter put: [ self collection ].
		
	dispatch at: selector put: [ self index ].
		
	dispatch at: setter put: [:anIndex | self index: anIndex ] .
! !

!NavigationTopic methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:57:18'!
update: aSymbol

	" pass changes from the actual model to the morphs observing this topic"
	
	self changed: aSymbol! !

!NavigationTopic class methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:28:32'!
from: aSymbol

	| aNavigationTopic |
	
	aNavigationTopic := self new.
	
	aNavigationTopic topic: aSymbol.
	
	^aNavigationTopic

! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 18:03:17'!
index: anInteger

	index := anInteger .
! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 13:24:28'!
initialize

	super initialize.
	
	selection := Set new.! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 14:06:03'!
items

	| collection |
	
	collection := self collection.
	
	^ selection collect:[:eachIndex | collection at: eachIndex ]
	
	! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 17:57:21'!
selection
	^selection! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 13:22:47'!
selectionAt: anIndex
	^selection includes: anIndex! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 18:03:26'!
selectionAt: anIndex put: aBoolean
	
	aBoolean
		ifTrue:[ selection add: anIndex]
		ifFalse:[ selection remove:anIndex ifAbsent:[] ].
			
	dependants do:[:each | each changed: each getter ]
! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:16:11'!
selectionGetter
	^selectionGetter! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:16:16'!
selectionSetter
	^selectionSetter! !

!NavigationTopicMulti methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 13:21:44'!
topic: aSymbol

	super topic: aSymbol.
	
	selectionGetter := Symbol intern: aSymbol , 'selectionAt:'.
	
	selectionSetter := Symbol intern: aSymbol , 'selectionAt:put:'.
	
	dispatch at: selectionGetter put: [:anIndex | self selectionAt: anIndex ].
		
	dispatch at: selectionSetter put: [:anIndex :aBoolean | self selectionAt: anIndex put: aBoolean ] .
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:32:33'!
build: aSymbol

	builder := factory at: aSymbol ifAbsent:[NavigationTopic].
	
	^builder from: aSymbol! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:29:32'!
factory
	^factory! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:38:44'!
indexAtTopic: aSymbol

	^(topics at: aSymbol) index ! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:29:41'!
initialize

	topics := Dictionary new.
	
	factory := Dictionary new.
	
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 13:57:50'!
model: anObject

	model := anObject.
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:29:11'!
topics
	^topics! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:32:48'!
topics: anOrderedCollection dependencies: anAssocCollection

	self assert: model notNil.
	
	anOrderedCollection do:[:eachString | | topic  | 
	
		topic := self build: eachString.
		
		topic model: model.
	
		topics at: topic getter put: topic].
	
	anAssocCollection do:[:eachAssoc | | key value subject observer |
		
		key := Symbol intern: eachAssoc key.
		value := Symbol intern: eachAssoc value.
		
		observer := topics at: key. 
		subject := topics at: value.
		
		observer addDependency: subject].
	
! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:04:11'!
build

	| morph |
	
	morph := factory withModel: topic listGetter: topic getter indexGetter: topic selector indexSetter: topic setter.
	morph layoutSpec: (LayoutSpec proportionalWidth: width proportionalHeight: 1.0).
	menu ifNotNil:[ morph menuNshortcutsKey: menu ] .
	
	^morph
! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/4/2025 22:18:34'!
factory: aListMorphFactory
	factory := aListMorphFactory ! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/4/2025 22:17:45'!
menu: aSymbol
	menu := aSymbol! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 15:29:08'!
topic
	^topic! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/5/2025 14:28:32'!
topic: aNavigationTopic
	topic := aNavigationTopic! !

!TopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/4/2025 22:18:06'!
width: aNumber
	width := aNumber! !

!MultiTopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/8/2025 15:17:49'!
build

	| morph |
	
	morph := factory withModel: topic listGetter: topic getter primarySelectionGetter: topic selector primarySelectionSetter: topic setter listSelectionGetter: topic selectionGetter listSelectionSetter: topic selectionSetter.
	
	morph layoutSpec: (LayoutSpec proportionalWidth: width proportionalHeight: 1.0).
	menu ifNotNil:[ morph menuNshortcutsKey: menu ] .
	
	^morph
! !

!TableTopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 16:13:45'!
build

	| table |
	
	table := factory new.
	
	table model: topic ; table: topic getter ; rightToLeft: true ; headerRow: true.

	menu ifNotNil:[table menuNshortcutsKey: menu].
	
	table selectRowMessage: topic setter.

	table menuFactory: menuBuilder.

	table columnFactory: columnFactory.
		
	^table ! !

!TableTopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 16:14:30'!
columnFactory: aDictionary
	columnFactory := aDictionary ! !

!TableTopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 16:15:06'!
initialize

	super initialize.
	
	menuBuilder := MenuMorph.
	
	columnFactory := Dictionary new.! !

!TableTopicMorphBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/7/2025 16:14:08'!
menuBuilder: aMenuBuilder
	menuBuilder := aMenuBuilder ! !
