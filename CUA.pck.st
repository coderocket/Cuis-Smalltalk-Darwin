'From Cuis7.1 [latest update: #6676] on 5 December 2024 at 8:41:58 pm'!
'Description '!
!provides: 'CUA' 1 5!
SystemOrganization addCategory: #CUA!


!classDefinition: #MenuBar category: #CUA!
Object subclass: #MenuBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBar class' category: #CUA!
MenuBar class
	instanceVariableNames: ''!

!classDefinition: #MenuBarMenuMorph category: #CUA!
MenuMorph subclass: #MenuBarMenuMorph
	instanceVariableNames: 'button state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarMenuMorph class' category: #CUA!
MenuBarMenuMorph class
	instanceVariableNames: ''!

!classDefinition: #MenuBarButtonMorph category: #CUA!
PluggableButtonMorph subclass: #MenuBarButtonMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarButtonMorph class' category: #CUA!
MenuBarButtonMorph class
	instanceVariableNames: ''!


!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:38:49'!
menus: anOrderedCollection

	"MenuBar menus: { { 'File' . { 'New' . 'Open' . 'Save' . 'Save As' } . { 'Edit' . { 'Undo' . 'Redo' . 'Cut' . 'Copy' . 'Past' } . { 'Help' . { 'About' } } }"
	
	| bar |
	
	bar := LayoutMorph newRow.
	
	bar color: Color white.
	
	anOrderedCollection do:[:each | | button menu  |
		menu := MenuBarMenuMorph new.
		menu color: Color white.
		(each at:2) do:[:item | (menu add: item action: nil) color: Theme current buttonLabel ].
		button := MenuBarButtonMorph model: menu action: #open.
		button color: Color white. 
		button label: (each at:1).
		menu button: button.
		 bar := bar +button ].
	
	bar morphExtent: Display width @ bar morphExtent y.
	
	bar morphPosition: 0@0.
	
	^bar! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 19:58:34'!
button: aMorph
	button := aMorph! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:16:04'!
drawOn: aCanvas
	
		aCanvas fillRectangle: self localBounds color: color borderWidth: borderWidth borderStyleSymbol: #raised baseColorForBorder: color ! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 19:16:03'!
initialize
	super initialize.
	
	state := #closed! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 19:59:40'!
open

	state = #closed 
	ifTrue:[ 
		self morphPosition: button morphPositionInWorld + (0 @ button morphHeight).
		state := #open.
		self openInWorld.
	]
	ifFalse:[
		self delete. state := #closed. 		]! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:13:37'!
drawEmbossedLabelOn: aCanvas
	self drawRegularLabelOn: aCanvas! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:12:57'!
drawOn: aCanvas
	self drawRoundLookOn: aCanvas.
! !
