'From Cuis7.1 [latest update: #6709] on 14 December 2024 at 5:23:55 pm'!
'Description '!
!provides: 'Navigator' 1 7!
SystemOrganization addCategory: #Navigator!


!classDefinition: #NavigatorWindow category: #Navigator!
SystemWindow subclass: #NavigatorWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Navigator'!
!classDefinition: 'NavigatorWindow class' category: #Navigator!
NavigatorWindow class
	instanceVariableNames: ''!

!classDefinition: #NavigatorObjectMorph category: #Navigator!
PluggableMorph subclass: #NavigatorObjectMorph
	instanceVariableNames: 'content layoutMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Navigator'!
!classDefinition: 'NavigatorObjectMorph class' category: #Navigator!
NavigatorObjectMorph class
	instanceVariableNames: ''!

!classDefinition: #NavigatorObjectModel category: #Navigator!
Object subclass: #NavigatorObjectModel
	instanceVariableNames: 'index valueIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Navigator'!
!classDefinition: 'NavigatorObjectModel class' category: #Navigator!
NavigatorObjectModel class
	instanceVariableNames: ''!


!NavigatorWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 13:38:35'!
buildMorphicWindow

	layoutMorph addMorph: 
		(NavigatorObjectMorph new model: model ; build) - 1p | 1p
! !

!NavigatorWindow class methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 15:21:56'!
navigateTo: anObject

	| windows |
	
	windows := OrderedCollection new.
	
	UISupervisor ui submorphs do:[:morph | 
		morph isKindOf: NavigatorWindow :: 
			ifTrue:[ 
				morph model item == anObject 
					ifTrue:[windows add: morph] ] ].
	
	windows isEmpty 
		ifTrue:[anObject navigator] 
		ifFalse:[UISupervisor ui addMorphFront: windows anyOne]
! !

!NavigatorObjectMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 15:36:44'!
build

	| attributes  |
	
	attributes := PluggableListMorph new model: model listGetter: #attributes indexGetter: #selectedAttribute indexSetter: #selectAttribute:.
	
	model addDependent: self.
	
	content := PluggableListMorph new model: model listGetter: #attributeContents indexGetter: #selectedValue indexSetter: #selectValue:.
	
	layoutMorph := LayoutMorph newColumn.
	
	layoutMorph addMorph: (attributes | 1p) <+> (content |1p -1p).
	
	self addMorph: layoutMorph.! !

!NavigatorObjectMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 13:56:04'!
initialize

	super initialize.
	
	! !

!NavigatorObjectMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 14:40:25'!
layoutSubmorphs

	"Compute a new layout of submorphs based on the given layout bounds."

	layoutMorph ifNotNil: [	| myBounds |

		myBounds := 0@0 extent: self extentInOwner.
		layoutMorph
			morphPosition: myBounds origin;
			morphExtent: myBounds extent 
	].
	
	self layoutNeeded: false! !

!NavigatorObjectMorph methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 14:48:54'!
update: aSymbol

	! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 14:52:45'!
attributeContents

	^{index}! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 14:06:47'!
attributes
	^ {'a' . 'b' . 'c' }! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 15:37:41'!
initialize

	index := 0.
	
	valueIndex := 0.! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 15:37:48'!
selectAttribute: anInteger

	index := anInteger.
	
	valueIndex := 0.
	
	self changed: #selectAttribute: ; changed: #attributeContents! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 15:37:22'!
selectValue: anInteger

	valueIndex := anInteger.
	
! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 14:04:01'!
selectedAttribute
	^index! !

!NavigatorObjectModel methodsFor: 'as yet unclassified' stamp: 'DF 11/2/2024 15:37:34'!
selectedValue
	^valueIndex! !
