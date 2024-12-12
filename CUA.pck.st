'From Cuis7.1 [latest update: #6709] on 12 December 2024 at 7:58:43 pm'!
'Description '!
!provides: 'CUA' 1 12!
SystemOrganization addCategory: #CUA!


!classDefinition: #MenuBar category: #CUA!
LayoutMorph subclass: #MenuBar
	instanceVariableNames: 'menus'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBar class' category: #CUA!
MenuBar class
	instanceVariableNames: ''!

!classDefinition: #MenuBarMenuMorph category: #CUA!
MenuMorph subclass: #MenuBarMenuMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarMenuMorph class' category: #CUA!
MenuBarMenuMorph class
	instanceVariableNames: ''!

!classDefinition: #MenuBarButtonMorph category: #CUA!
PluggableButtonMorph subclass: #MenuBarButtonMorph
	instanceVariableNames: 'state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarButtonMorph class' category: #CUA!
MenuBarButtonMorph class
	instanceVariableNames: ''!


!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:28:02'!
addMenu: aMenu
	menus add: aMenu! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:18:27'!
buttonPressed: aMenuBarButton

	| index |
	
	menus do:[:each | each close ].
	
	submorphs do:[:each | each == aMenuBarButton ifFalse:[ each deselect ] ].

	aMenuBarButton isOn 
		ifTrue:[ 		| menu |
			index := 1.
			
			[index <= submorphs size and:[ submorphs at:index :: ~= aMenuBarButton ] ]
				whileTrue:[ index := index + 1].
		
			menu := menus at: index.
			
			menu morphPosition: aMenuBarButton morphPosition + (0 @ aMenuBarButton morphHeight).
			
			menu open.
	
			"self world ifNotNil: [ :w |
				w activeHand ifNotNil: [ :h |
					h newMouseFocus: self ] ]" ]
		ifFalse:[
			aMenuBarButton deselect].

! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:28:11'!
initialize

	super initialize.
	
	menus := OrderedCollection new.! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:08:04'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	super mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition.

	self includesPixel: aMouseButtonEvent eventPosition :: 
		ifFalse:[  
			menus do:[:each | each close ].
			submorphs do:[:each | each deselect ] ].

! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:48:39'!
menus: anOrderedCollection

	"MenuBar menus: { { 'File' . { 'New' . 'Open' . 'Save' . 'Save As' } . { 'Edit' . { 'Undo' . 'Redo' . 'Cut' . 'Copy' . 'Past' } . { 'Help' . { 'About' } } }"
	
	| bar |
	
	bar := self newRow.
	
	bar color: Color white.
	
	bar borderWidth:1 ; borderColor: Color black.
	
	anOrderedCollection do:[:each | | button |
		
		button := MenuBarButtonMorph new.
		button model: button stateGetter: #isOn action: #toggle label: (each at:1).
		button color: Color white.
		bar := bar + button ].
	
	anOrderedCollection do:[:each | | menu |
		menu := MenuBarMenuMorph new.
		menu color: Color white ; borderWidth: 1; borderColor: Color black.
		(each at:2) do:[:item | 
			item = $| 
				ifTrue:[menu addLine]
				ifFalse:[(menu add: item action: nil) color: Theme current buttonLabel ].
		bar addMenu: menu ] ].

	bar morphExtent: Display width @ bar morphExtent y.
	
	bar morphPosition: 0@0.
	
	^bar! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:24:08'!
close

	self delete. 
! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:08:00'!
drawOn: aCanvas
	
		aCanvas fillRectangle: self localBounds color: color borderWidth: borderWidth borderStyleSymbol: #raised baseColorForBorder: borderColor ! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:07:29'!
open
	self openInWorld.
	
! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:15:08'!
deselect

	state := #off.
	
	self redrawNeeded ! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:13:37'!
drawEmbossedLabelOn: aCanvas
	self drawRegularLabelOn: aCanvas! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/5/2024 20:12:57'!
drawOn: aCanvas
	self drawRoundLookOn: aCanvas.
! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:49:43'!
initialize
	
	super initialize.
	
	state := #off! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:41:26'!
isOn
	^state = #on! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:17:27'!
toggle

	state = #off
		ifTrue: [ state := #on ]
		ifFalse:[ state := #off ].
		
	owner buttonPressed: self.! !
