'From Cuis7.1 [latest update: #6676] on 14 December 2024 at 8:29:29 pm'!
'Description '!
!provides: 'CUA' 1 19!
SystemOrganization addCategory: #CUA!


!classDefinition: #MenuBarModel category: #CUA!
Object subclass: #MenuBarModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarModel class' category: #CUA!
MenuBarModel class
	instanceVariableNames: ''!

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


!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 20:03:13'!
aboutAction
	PopUpMenu inform: 'About'! !

!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 20:06:10'!
exitAction
	PopUpMenu inform: 'Exit'! !

!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 19:56:56'!
newAction
	PopUpMenu inform: 'New'! !

!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 19:57:04'!
openAction
	PopUpMenu inform: 'Open'! !

!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 19:57:13'!
saveAction
	PopUpMenu inform: 'Save'! !

!MenuBarModel methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 19:57:18'!
saveAsAction
	PopUpMenu inform: 'Save as'! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/13/2024 20:14:05'!
addMenu: aMenu
	menus addFirst: aMenu! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/13/2024 17:59:19'!
buttonPressed: aMenuBarButton

	| index |
	
	self clearSelectionExcept: aMenuBarButton.

	aMenuBarButton isOn 
		ifTrue:[ 		| menu |
			index := 1.
			
			[index <= submorphs size and:[ submorphs at:index :: ~= aMenuBarButton ] ]
				whileTrue:[ index := index + 1].
		
			menu := menus at: index.
			
			self world ifNotNil: [ :w |
				w activeHand ifNotNil: [ :h |
					h newMouseFocus: self ] ].
		
			menu popUpAt: aMenuBarButton morphPosition + (0 @ aMenuBarButton morphHeight) allowKeyboard: true. ]
	  		ifFalse:[
			aMenuBarButton deselect].

! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/13/2024 21:02:42'!
clearSelection
	self clearSelectionExcept: nil.! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/13/2024 17:48:44'!
clearSelectionExcept: aMenuBarButton
	
	menus do:[:each | each close ].

	submorphs do:[:each | each == aMenuBarButton ifFalse:[ each deselect ] ].
! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:28:11'!
initialize

	super initialize.
	
	menus := OrderedCollection new.! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 18:10:04'!
popup: aPopupMenu closed: evt

	| index button |
	
	" Find the button associated with this menu and see if the mouse is pointing at the button. 
	If it is then the click that caused 	the popup to close will result in a button press so we should 
	not clear the button's status as it 	will be cleared when the button press event will arrive."
	
	index := 1.
	
	[index <= menus size and:[ menus at:index :: ~= aPopupMenu ] ] 
		whileTrue:[index := index+1].
	
	button := submorphs at: index.
	
	button includesPixel: evt eventPosition ::
		ifTrue:[
			self clearSelectionExcept: button ]
		ifFalse:[
			self clearSelection ].
		! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 20:05:56'!
menus: anOrderedCollection

"
MenuBar menus: { 
	{ 'File' . { 
		{ 'New' . model . #newAction }  . 
		{ 'Open ...' . model . #openAction } . 
		{ 'Save' . model . #saveAction } . 
		{ 'Save as ...' . model . #saveAsAction } .
		$| .
		{ 'Exit' . model . #exitAction } } } .  
	{ 'Help' . { 
		{ 'About' . model . #aboutAction } } } }.
"
	
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
				ifFalse:[(menu add: (item at:1) target: (item at:2) action: (item at:3)) color: Theme current buttonLabel ] ].
		bar addMenu: menu ] .

	bar morphExtent: Display width @ bar morphExtent y.
	
	bar morphPosition: 0@0.
	
	^bar! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:24:08'!
close

	self delete. 
! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 18:09:09'!
deleteIfPopUp: evt

	super deleteIfPopUp: evt.	
	
	evt ifNil:[^self].
	
	prevMouseFocus popup: self closed: evt 
! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:08:00'!
drawOn: aCanvas
	
		aCanvas fillRectangle: self localBounds color: color borderWidth: borderWidth borderStyleSymbol: #raised baseColorForBorder: borderColor ! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:07:29'!
open
	self openInWorld.
	
! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 18:09:32'!
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

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 17:43:49'!
select

	state := #on.
	
	self redrawNeeded ! !

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2024 18:09:50'!
toggle

	state = #off
		ifTrue: [ state := #on ]
		ifFalse:[ state := #off ].
		
	owner buttonPressed: self.! !
