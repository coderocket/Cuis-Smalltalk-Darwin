'From Cuis7.1 [latest update: #6676] on 2 January 2025 at 10:31:11 pm'!
'Description '!
!provides: 'CUA' 1 36!
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

!classDefinition: #MenuGenerator category: #CUA!
Object subclass: #MenuGenerator
	instanceVariableNames: 'action target menu index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuGenerator class' category: #CUA!
MenuGenerator class
	instanceVariableNames: ''!

!classDefinition: #ApplicationDesktop category: #CUA!
PasteUpMorph subclass: #ApplicationDesktop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'ApplicationDesktop class' category: #CUA!
ApplicationDesktop class
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
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuBarMenuMorph class' category: #CUA!
MenuBarMenuMorph class
	instanceVariableNames: ''!

!classDefinition: #MenuRightToLeftItemMorph category: #CUA!
MenuItemMorph subclass: #MenuRightToLeftItemMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CUA'!
!classDefinition: 'MenuRightToLeftItemMorph class' category: #CUA!
MenuRightToLeftItemMorph class
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

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 20:49:28'!
action: aSymbol
	action := aSymbol! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:05:10'!
close
	menu ifNotNil:[menu close]! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:41:50'!
index
	^index! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:42:00'!
index: anInteger
	index := anInteger ! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:51:45'!
morphPosition
	^menu morphPosition! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:52:10'!
morphPosition: aPoint
	menu morphPosition: aPoint! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 22:30:20'!
morphWidth

	menu ifNil:[^0].
	
	^menu morphWidth! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:49:56'!
popUpAt: aPoint allowKeyboard: aBoolean

	menu := target perform: action.
	
	menu popUpAt: aPoint allowKeyboard: aBoolean.
		
	menu index: index.
	
	! !

!MenuGenerator methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 20:49:37'!
target: anObject
	target := anObject! !

!ApplicationDesktop methodsFor: 'as yet unclassified' stamp: 'DF 12/16/2024 13:56:12'!
menuBarSpec

	^# (
		#(0 		'File' 					false)
		
		#(10 		'Open ... (o)'			 $a nil open nil 'open a file')
	)! !

!ApplicationDesktop methodsFor: 'as yet unclassified' stamp: 'DF 12/16/2024 13:50:20'!
menuNshortcutsSpecsFor: aMorph do: aBlock
	
	self menuBarSpec do: aBlock
	! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/13/2024 20:14:05'!
addMenu: aMenu
	menus addFirst: aMenu! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 22:28:35'!
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
		
			menu popUpAt: aMenuBarButton morphPosition + (aMenuBarButton morphWidth - menu morphWidth  @ aMenuBarButton morphHeight) allowKeyboard: true.
				
			"menu morphPosition: menu morphPosition - (menu morphWidth@0)			" ]
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

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 22:59:38'!
cutAction

	| aMorph |
	
	aMorph := 	self activeHand keyboardFocus.
	
	aMorph ifNil:[].
	
	aMorph editor cut.
! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:28:11'!
initialize

	super initialize.
	
	menus := OrderedCollection new.! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:40:23'!
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
	
	| index |
	self beRow.
	
	self removeAllMorphs.
	
	self color: Color white.
	
	self borderWidth:1 ; borderColor: Color black.
	
	anOrderedCollection do:[:each | | button |
		
		button := MenuBarButtonMorph new.
		button model: button stateGetter: #isOn action: #toggle label: (each at:1).
		button color: Color white.
		self + button ].
	
	index := 1.
	
	anOrderedCollection do:[:each | | menu |
		
		each at:2 :: isKindOf: Symbol ::
			ifTrue:[ 
				menu := MenuGenerator new action: (each at:2) ; target: (each at:3) ; index: index ; yourself ]
			ifFalse:[
				menu := MenuBarMenuMorph new.
				menu index: index; color: Color white ; borderWidth: 1; borderColor: Color black.
				(each at:2) do:[:item | 
					item = $| 
						ifTrue:[menu addLine]
						ifFalse:[(menu add: (item at:1) target: (item at:2) action: (item at:3)) color: Theme current buttonLabel ] ] ].
		self addMenu: menu. 
		index := index + 1 ] .

	self morphExtent: Display width @ self morphExtent y.
	
	self morphPosition: 0@0.
	
! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:03:12'!
menusRightToLeft: anOrderedCollection
	
	self menus: 
		(anOrderedCollection reverse collect:[:eachMenu |
			eachMenu second isKindOf:Symbol ::
				ifTrue:[ { eachMenu at:1 :: reverse . eachMenu at:2 . eachMenu at:3 } ]
				ifFalse:[
					{ eachMenu first reverse . 
						(eachMenu second collect:[:eachEntry |
							eachEntry  = $| 
								ifTrue:[ eachEntry ]
								ifFalse:[ { eachEntry at:1 :: reverse . eachEntry at:2 . eachEntry at:3 } ] ] ) } ] ]).
				
	self axisEdgeWeight: #rowRight.! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 23:05:43'!
pasteAction

	| aMorph |
	
	aMorph := 	self activeHand keyboardFocus.
	
	aMorph ifNil:[].
	
	aMorph editor paste.
! !

!MenuBar methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:41:20'!
popup: aPopupMenu closed: evt

	| index button |
	
	" Find the button associated with this menu and see if the mouse is pointing at the button. 
	If it is then the click that caused 	the popup to close will result in a button press so we should 
	not clear the button's status as it 	will be cleared when the button press event will arrive."
	
	index := 1.
	
	[index <= menus size and:[ menus at:index :: index ~= aPopupMenu index ] ] 
		whileTrue:[index := index+1].
	
	button := submorphs at: index.
	
	button includesPixel: evt eventPosition ::
		ifTrue:[
			self clearSelectionExcept: button ]
		ifFalse:[
			self clearSelection ].
		! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 22:32:10'!
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
	
	bar menus: anOrderedCollection.
		
	^bar! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:51:37'!
menusRightToLeft: anOrderedCollection
	
	| bar |
	
	bar := self newRow.

	bar menusRightToLeft: anOrderedCollection .
		
	^bar! !

!MenuBar class methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 22:33:08'!
new

	^self newRow! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/16/2024 22:01:44'!
add: aString target: target action: aSymbol argumentList: argList
	"Append a menu item with the given label. If the item is selected, it will send the given selector to the target object with the given arguments. If the selector takes one more argument than the number of arguments in the given list, then the triggering event is supplied as as the last argument.  Answer the appended menu item."

	| item |
	item := MenuRightToLeftItemMorph new
		contents: aString;
		target: target selector: aSymbol arguments: argList asArray.
	self addMorphBack: item.
	^ item! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 16:24:08'!
close

	self delete. 
! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:10:04'!
deleteIfPopUp: evt

	super deleteIfPopUp: evt.	
	
	evt ifNil:[^self].
	
	prevMouseFocus ifNil:[^self].
	
	prevMouseFocus popup: self closed: evt 
! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2024 11:08:00'!
drawOn: aCanvas
	
		aCanvas fillRectangle: self localBounds color: color borderWidth: borderWidth borderStyleSymbol: #raised baseColorForBorder: borderColor ! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:40:54'!
index
	^index! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:40:02'!
index: anInteger
	index := anInteger! !

!MenuBarMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/12/2024 17:07:29'!
open
	self openInWorld.
	
! !

!MenuRightToLeftItemMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/16/2024 22:00:17'!
drawOn: aCanvas 
	| stringColor leftEdge magnifiedIcon len |

	stringColor := color.
	isSelected & isEnabled
		ifTrue: [
			aCanvas fillRectangle: self localBounds color: Theme current menuHighlight].
	leftEdge := 0.

	self hasMarker ifTrue: [
		leftEdge := leftEdge + submorphs first morphWidth + 8 ].

	icon ifNotNil: [
		magnifiedIcon := self magnifiedIcon.
		aCanvas image: magnifiedIcon at: leftEdge+1 @ (magnifiedIcon height *1//10).
		leftEdge := magnifiedIcon width *12//10 + leftEdge].

	len := font widthOfString: contents.
	
	aCanvas
		drawString: contents
		at: ( self morphWidth - len ) @ 1
		font: self fontToUse
		color: stringColor.
	subMenu ifNotNil: [
		aCanvas
			image: self class subMenuMarker
			at: extent x - self class subMenuMarker width @ (extent y - self class subMenuMarker height // 2) ]! !

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

!MenuBarButtonMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 22:51:17'!
toggle

	state = #off
		ifTrue: [ state := #on ]
		ifFalse:[ state := #off ].
		
	owner buttonPressed: self.! !

!CheckButtonMorph class methodsFor: '*CUA' stamp: 'DF 12/16/2024 17:07:53'!
contents: aBoolean

	| aButton |
	
	aButton := self new.
	
	aButton selected: aBoolean.
	
	^aButton! !
