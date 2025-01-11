'From Cuis7.1 [latest update: #6676] on 11 January 2025 at 4:30:54 pm'!
'Description '!
!provides: 'Bidi' 1 5!
SystemOrganization addCategory: #Bidi!


!classDefinition: #BidiMenuMorph category: #Bidi!
MenuMorph subclass: #BidiMenuMorph
	instanceVariableNames: 'menuItemFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiMenuMorph class' category: #Bidi!
BidiMenuMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiRightInnerListMorph category: #Bidi!
InnerListMorph subclass: #BidiRightInnerListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiRightInnerListMorph class' category: #Bidi!
BidiRightInnerListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiMenuItemMorph category: #Bidi!
MenuItemMorph subclass: #BidiMenuItemMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiMenuItemMorph class' category: #Bidi!
BidiMenuItemMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiPluggableListMorph category: #Bidi!
PluggableListMorph subclass: #BidiPluggableListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiPluggableListMorph class' category: #Bidi!
BidiPluggableListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiPluggableListMorphOfMany category: #Bidi!
PluggableListMorphOfMany subclass: #BidiPluggableListMorphOfMany
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiPluggableListMorphOfMany class' category: #Bidi!
BidiPluggableListMorphOfMany class
	instanceVariableNames: ''!

!classDefinition: #BidiSystemWindow category: #Bidi!
SystemWindow subclass: #BidiSystemWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSystemWindow class' category: #Bidi!
BidiSystemWindow class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectField category: #Bidi!
SelectField subclass: #BidiSelectField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectField class' category: #Bidi!
BidiSelectField class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectMultipleField category: #Bidi!
SelectMultipleField subclass: #BidiSelectMultipleField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectMultipleField class' category: #Bidi!
BidiSelectMultipleField class
	instanceVariableNames: ''!


!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:02:32'!
add: aString subMenu: aMenuMorph
	"Append the given submenu with the given label."

	| item |
	item := menuItemFactory new.
	item
		contents: aString;
		subMenu: aMenuMorph.
	self addMorphBack: item.
	^item! !

!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:15:13'!
add: aString target: target action: aSymbol argumentList: argList

	| item |
	
	item := menuItemFactory new
		contents: aString;
		target: target selector: aSymbol arguments: argList asArray.
	self addMorphBack: item.
	^ item	! !

!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 16:30:45'!
addTitle: aString
	"Add a title line at the top of this menu Make aString its initial 
	contents.  
	If aSelector is not nil, then periodically obtain fresh values for its 
	contents by sending aSelector to aTarget.."

	| s pp w newMorph |
	
	newMorph := BoxedMorph new noBorder.
	newMorph color: Theme current menuTitleBar.
	pp := `8@2`.
	aString asPlainString linesDo: [ :line | | font |
		font := Preferences at: #standardMenuFont.
		s := LabelMorph new
			contents: line;
			font: (titleMorph
				ifNil: [ font bold ]
				ifNotNil: [ font italic ]).
		s rightToLeft: true.
		newMorph addMorphBack: s position: pp.
		pp := pp + (0@(s morphHeight+2)) ].
	w := newMorph submorphs inject: 0 into: [ :prev :each |
		prev max: each morphWidth ].
	newMorph morphExtent: (w + 16) @ (pp y).
	titleMorph
		 ifNil: [
			titleMorph := newMorph.
			self addMorphFront: titleMorph ]
		ifNotNil: [ self addMorphBack: newMorph ].
	
	(self hasProperty: #needsStayUpIcons) ifTrue: [ self addStayUpIcons ]! !

!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:02:18'!
initialize
	
	super initialize.
	
	menuItemFactory := MenuItemMorph ! !

!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:02:05'!
menuItemFactory: aClass
	menuItemFactory := aClass! !

!BidiRightInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:23:05'!
draw: item atRow: row on: canvas
	"display the given item at row row"
	| f c len x |
	
	len := font widthOfString: item string.
	
	x := extent x - len.
	
	(item is: #Text)
		ifTrue: [
			f := font emphasized: (item emphasisAt: 1).
			c := (item colorAt: 1) ifNil: [Theme current text]]
		ifFalse: [ 
			f := font.
			c :=  Theme current text].
	canvas
		drawString: item string reverse
		at: x @ (self drawYForRow: row)
		font: f
		color: c! !

!BidiMenuItemMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:15:57'!
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
		drawString: contents reverse
		at: ( self morphWidth - len ) @ 1
		font: self fontToUse
		color: stringColor.
	subMenu ifNotNil: [
		aCanvas
			image: self class subMenuMarker
			at: extent x - self class subMenuMarker width @ (extent y - self class subMenuMarker height // 2) ]! !

!BidiPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:30:30'!
innerMorphClass
	^BidiRightInnerListMorph! !

!BidiPluggableListMorphOfMany methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:30:30'!
innerMorphClass
	^BidiRightInnerListMorph! !

!BidiSystemWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 23:07:55'!
drawLabelOn: aCanvas

	| x0 y0 f w availableW l |
	f := Preferences at: #windowTitleFont.
	x0 :=  f lineSpacing * 5 + borderWidth.
	y0 := borderWidth * 6 // 10.
	availableW := extent x - x0.
	l := labelString.
	w := f widthOfString: l.
	x0 := (extent x - w) / 2.
	[ w > availableW ] whileTrue: [
		l := l squeezedTo: (1.0 * l size * availableW / w) truncated.
		l isEmpty ifTrue: [ ^self ].
		w := f widthOfString: l ].
	aCanvas
		drawString: l reverse
		at: x0@y0
		font: f
		color: Theme current windowLabel
		embossed: Theme current embossedTitles! !

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 15:33:19'!
inputMorphInstance
	^BidiPluggableListMorph new! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 15:33:50'!
inputMorphInstance
	^ BidiPluggableListMorphOfMany new! !
