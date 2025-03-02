'From Cuis7.3 [latest update: #7041] on 2 March 2025 at 6:28:55 pm'!
'Description '!
!provides: 'PluggableBrowsing' 1 47!
SystemOrganization addCategory: #PluggableBrowsing!


!classDefinition: #PluggableBrowser category: #PluggableBrowsing!
BidiSystemWindow subclass: #PluggableBrowser
	instanceVariableNames: 'topics listMorphFactory listMenus'
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

!classDefinition: #PluggableBrowserModel category: #PluggableBrowsing!
Object subclass: #PluggableBrowserModel
	instanceVariableNames: 'topics model indices dependencies dependants'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'PluggableBrowserModel class' category: #PluggableBrowsing!
PluggableBrowserModel class
	instanceVariableNames: ''!

!classDefinition: #DemoPluggableTableBrowserModel category: #PluggableBrowsing!
PluggableBrowserModel subclass: #DemoPluggableTableBrowserModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PluggableBrowsing'!
!classDefinition: 'DemoPluggableTableBrowserModel class' category: #PluggableBrowsing!
DemoPluggableTableBrowserModel class
	instanceVariableNames: ''!


!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:21:24'!
buildMorphicWindow

	| morphs n |
	
	morphs := LayoutMorph newRow.
	
	n := topics size.
	
	topics do:[:eachString | | getter selector setter morph | 
		
		getter := Symbol intern: eachString.
		
		selector := Symbol intern: 'selected' , eachString capitalized.
		
		setter := Symbol intern: 'select', eachString capitalized , ':'.
		
		morph := listMorphFactory withModel: model listGetter: getter indexGetter: selector indexSetter: setter.
		morphs addAdjusterAndMorph: morph layoutSpec: (LayoutSpec proportionalWidth: 1/n proportionalHeight: 1.0).
		listMenus at: getter ifPresent:[:aSymbol | morph menuNshortcutsKey: aSymbol ] ].
	
	self layoutMorph addMorph: morphs proportionalHeight:0.2.
	! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:20:10'!
initialize

	super initialize.
		
	listMorphFactory := PluggableListMorph.
	
	listMenus := Dictionary new.! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 10:28:34'!
listMorphFactory: anObject

	listMorphFactory := anObject! !

!PluggableBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 19:58:43'!
topics: anOrderedCollection

	topics := anOrderedCollection ! !

!PluggableBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:00:59'!
open: model label: aString topics: anOrderedCollection

	|  window |
	window := self new.
	window
		model: model;
		topics: anOrderedCollection ;
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

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/1/2025 20:21:37'!
doesNotUnderstand: aMessage 

	^topics at: aMessage selector :: valueWithArguments: aMessage arguments.
	
	
	! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 12:21:02'!
initialize

	topics := Dictionary new.
	
	indices := Dictionary new.
	
	dependencies := Dictionary new.
	
	dependants := Dictionary new.
	
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:23:12'!
isNoneSelectedAt: aSymbol

	^(indices at: aSymbol) = 0! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:27:51'!
model: anObject

	model ifNotNil:[
		model removeDependent: self].
	
	model := anObject.
	
	model ifNotNil:[
		model addDependent: self].! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 16:28:54'!
topic: aSymbol

	| index collection |
	
	index := indices at: aSymbol.
	
	index = 0 ifTrue:[EmptySelection new signal]. 
	
	collection := self perform: aSymbol.

	collection ifEmpty:[EmptySelection new signal].
	
	^collection at:index ifAbsent:[collection last].
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 16:24:48'!
topics: anOrderedCollection dependencies: anAssocCollection

	anOrderedCollection do:[:eachString | | getter selector setter getterFor | 
		
		getter := Symbol intern: eachString.

		getterFor := Symbol intern: eachString, 'For:'.
		
		selector := Symbol intern: 'selected' , eachString capitalized.
		
		setter := Symbol intern: 'select', eachString capitalized , ':'.

		dependencies at: getter put: Set new.
		
		dependants at: getter put: Set new.
			
		topics at: getter put: [ | depIndices |
			depIndices := Dictionary new.
			dependencies at: getter :: do:[:each |
				depIndices at: each put: (indices at: each) ].
			model perform: getterFor with: depIndices ].
		
		topics at: selector put: [ indices at: getter ].
		
		topics at: setter put: [ :value | 
			indices at: getter put: value. 
			dependants at: getter :: do:[:each | self changed: each ] ].
		
		indices at: getter put: 0 ].
	
	anAssocCollection do:[:eachAssoc | | key value |
		key := Symbol intern: eachAssoc key.
		value := Symbol intern: eachAssoc value.
		dependencies at: key ifPresent:[:aSet | aSet add: value].
		dependants at: value :: add: key ].
	
! !

!PluggableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 18:28:46'!
update: aSymbol
	self changed: aSymbol! !

!DemoPluggableTableBrowserModel methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 14:18:12'!
table

	| table |
	
	table := OrderedCollection new.
	
	table add: {  'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.
		
	^table
	! !
