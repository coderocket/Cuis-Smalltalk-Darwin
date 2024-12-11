'From Cuis7.1 [latest update: #6709] on 11 December 2024 at 3:14:06 pm'!
'Description '!
!provides: 'CUA' 1 9!
SystemOrganization addCategory: #CUA!


!classDefinition: #MenuBar category: #CUA!
LayoutMorph subclass: #MenuBar
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
	instanceVariableNames: 'menu'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarButtonMorph class' category: #CUA!
MenuBarButtonMorph class
	instanceVariableNames: ''!


!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:17:37'!
isOpen: aMenubarButton
	^ aMenubarButton menu isOpen! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 15:13:01'!
openMenu: aMenuBarButton

	submorphs do:[:each | each == aMenuBarButton ifTrue:[each menu toggle] ifFalse:[each menu close. each redrawNeeded ] ]! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:16:21'!
menus: anOrderedCollection

	"MenuBar menus: { { 'File' . { 'New' . 'Open' . 'Save' . 'Save As' } . { 'Edit' . { 'Undo' . 'Redo' . 'Cut' . 'Copy' . 'Past' } . { 'Help' . { 'About' } } }"
	
	| bar |
	
	bar := self newRow.
	
	bar color: Color white.
	
	bar borderWidth:1 ; borderColor: Color black.
	
	anOrderedCollection do:[:each | | button menu  |
		menu := MenuBarMenuMorph new.
		menu color: Color white ; borderWidth: 1; borderColor: Color black.
		(each at:2) do:[:item | (menu add: item action: nil) color: Theme current buttonLabel ].
		button := MenuBarButtonMorph model: bar stateGetter: #isOpen: action: #openMenu:.
		button actionArgument: button.
		button stateArgument: button.
		button color: Color white.
		button label: (each at:1).
		button menu: menu.
		menu button: button.
		 bar := bar +button ].
	
	bar morphExtent: Display width @ bar morphExtent y.
	
	bar morphPosition: 0@0.
	
	^bar! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 19:58:34'!
button: aMorph
	button := aMorph! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 10:45:02'!
close

	self delete. 
	
	state := #closed. 	! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:08:00'!
drawOn: aCanvas
	
		aCanvas fillRectangle: self localBounds color: color borderWidth: borderWidth borderStyleSymbol: #raised baseColorForBorder: borderColor ! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 19:16:03'!
initialize
	super initialize.
	
	state := #closed! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:17:49'!
isOpen
	^state = #open! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 15:09:00'!
open

	self morphPosition: button positionInWorld + (0 @ button morphHeight).
	state := #open.
	
	self openInWorld.
	
	self world ifNotNil: [ :w |
		w activeHand ifNotNil: [ :h |
			h newMouseFocus: self ]].

! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 12:25:10'!
selectItem: aMenuItem

	super selectItem: aMenuItem.
	
	"state := #closed.
	
	button redrawNeeded "! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 10:45:27'!
toggle

	state = #closed 
		ifTrue:[ 
			self open	]
		ifFalse:[
			self close		]! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:13:37'!
drawEmbossedLabelOn: aCanvas
	self drawRegularLabelOn: aCanvas! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:12:57'!
drawOn: aCanvas
	self drawRoundLookOn: aCanvas.
! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:00:39'!
menu
	^menu! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:00:04'!
menu: aMenuBarMenu
	menu := aMenuBarMenu! !
