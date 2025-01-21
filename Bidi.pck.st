'From Cuis7.1 [latest update: #6676] on 19 January 2025 at 8:38:59 pm'!
'Description '!
!provides: 'Bidi' 1 23!
SystemOrganization addCategory: #Bidi!


!classDefinition: #BidiMoldExample category: #Bidi!
Object subclass: #BidiMoldExample
	instanceVariableNames: 'mold format'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiMoldExample class' category: #Bidi!
BidiMoldExample class
	instanceVariableNames: ''!

!classDefinition: #BidiUnicodeString category: #Bidi!
UnicodeString subclass: #BidiUnicodeString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiUnicodeString class' category: #Bidi!
BidiUnicodeString class
	instanceVariableNames: ''!

!classDefinition: #BidiLabelGroup category: #Bidi!
LabelGroup subclass: #BidiLabelGroup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiLabelGroup class' category: #Bidi!
BidiLabelGroup class
	instanceVariableNames: ''!

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

!classDefinition: #BidiLabelMorph category: #Bidi!
LabelMorph subclass: #BidiLabelMorph
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiLabelMorph class' category: #Bidi!
BidiLabelMorph class
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

!classDefinition: #BidiTextEntryMorph category: #Bidi!
TextEntryMorph subclass: #BidiTextEntryMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiTextEntryMorph class' category: #Bidi!
BidiTextEntryMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiField category: #Bidi!
Field subclass: #BidiField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiField class' category: #Bidi!
BidiField class
	instanceVariableNames: ''!

!classDefinition: #BidiIntegerField category: #Bidi!
BidiField subclass: #BidiIntegerField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiIntegerField class' category: #Bidi!
BidiIntegerField class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectField category: #Bidi!
SelectField subclass: #BidiSelectField
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectField class' category: #Bidi!
BidiSelectField class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectMultipleField category: #Bidi!
SelectMultipleField subclass: #BidiSelectMultipleField
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectMultipleField class' category: #Bidi!
BidiSelectMultipleField class
	instanceVariableNames: ''!

!classDefinition: #BidiMold category: #Bidi!
Mold subclass: #BidiMold
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiMold class' category: #Bidi!
BidiMold class
	instanceVariableNames: ''!


!BidiMoldExample class methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:05:05'!
oneRightToLeft
"
	BidiMoldExample oneRightToLeft
"
	| mold |
	mold := BidiMold new.
	mold rightToLeft: true.
	(mold stringField)
		label: 'שם פרטי:';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold stringField)
		label: 'שם משפחה:';
		on: #propertyValue of: ValueHolder new;
		addCondition: [:input| input size >= 2] 
		labeled: 'השם קצר מדי';
		beRequired: 'נדרש שם משפחה' .
	(mold dateField )
		label: 'תאריך לידה:';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	mold newPane openInWorld! !

!BidiMoldExample class methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:57:01'!
sevenRightToLeft
"
	BidiMoldExample sevenRightToLeft
"
 | mold  |
	mold := BidiMold new.
	mold rightToLeft: true.
	(mold selectField)
		label: 'מחזור 1';
		on: #listIndex of: (ListModel with: `{'P1' . 'P2' . 'P3' . 'P4' . 'P5'}`:: listIndex: 3) inspect;
		beRequired.
	(mold selectField)
		label: 'מחזור 2';
		on: #listIndex of: (ListModel with: `{'H1' . 'H2' . 'H3' . 'H4' . 'H5'}`:: listIndex: 0);
		beRequired;
		addCondition: [:input :value | value = 'H4'] labeled: 'Select H4 to validate.'.
	(mold selectField)
		label: 'מחזור 3';
		on: #listIndex of: (ListModel with: `{'P6' . 'P7' . 'P8' . 'P9' . 'P10'}`).
	mold openDialog: 'דוגמה שבע'! !

!BidiMoldExample class methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:56:55'!
threeRightToLeft
"
	BidiMoldExample threeRightToLeft
"
 | mold |

	mold := BidiMold new.
	mold rightToLeft: true.	
	
	(mold integerField)
		label: 'ערך תא';
		on: #propertyValue of: ValueHolder new;
		example: 'מספר שלם';
		addCondition: [:input :value| value >= 4] 		labeled: 'הערך חייב להיות גדול מ- 4';
		addCondition: [:input :value| value <= -10] 		labeled: 'הערך חייב להיות קטן או שווה ל 01-';
		beRequired.
	mold openDialog: 'דוגמה שלוש' ! !

!BidiMoldExample class methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:05:10'!
twoRightToLeft
"
	BidiMoldExample twoRightToLeft
"
 | mold |
	mold := BidiMold new.
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'התווית שלי';
		on: #propertyValue of: ValueHolder new;
		example: 'זוהי דוגמה';
		customize: [:widget :input :example | 
			widget color: Color black.
			input color: Color blue; backgroundColor: Color cyan.
			example color: Color orange];
		addCondition: [:input| input size >= 4] 
		labeled: [:input | 'You  only key in ', input size asString, ' character(s), a minimum of 4 is required.'];
		beRequired.
	mold openDialog: 'דוגמה שניה'! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:09:51'!
displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reorderBidi.
	
	aUnicodeString displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor
! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:09:49'!
displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reorderBidi.
	
	aUnicodeString displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:17:40'!
edit
	^BidiTextEntryMorph contents: self! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:24:27'!
morph
	^BidiLabelMorph contents: self! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 17:53:44'!
printOn: aStream 
	"Print inside string quotes, doubling inbedded quotes."

	self reorderBidi storeOn: aStream! !

!BidiLabelGroup methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:47:15'!
initialize

	super initialize.
	
	rightToLeft := false.! !

!BidiLabelGroup methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:47:06'!
rightToLeft: aBoolean
	rightToLeft := aBoolean ! !

!BidiLabelGroup methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:47:32'!
with: labelsAndControls

	| labelMorphs labelWidth |
	labelMorphs := labelsAndControls collect: [:assoc | | label |
		label := 	BidiLabelMorph contents: (assoc key contractTo: 40).
		label rightToLeft: rightToLeft.
		assoc key size > 40 ifTrue: [label setBalloonText: assoc key].
		label	].
	labelWidth := labelMorphs max: [:each | each morphWidth].
	labelMorphs withIndexDo: [:label :i | | row height control | 
		control := (labelsAndControls at: i) value.
		height := label morphHeight max: control morphHeight.
		
		row := LayoutMorph newRow separation: 4.
		row 	color: self defaultColor.
		row
			addMorph: label layoutSpec: ( LayoutSpec fixedWidth: labelWidth proportionalHeight: 0.5 offAxisEdgeWeight: #center).
		control hasVariableExtent 
			ifTrue: [row addMorphUseAll: control]  
			ifFalse: [row addMorph: control	 layoutSpec: LayoutSpec keepMorphExtent]		.
		
		rightToLeft ifTrue:[ "swap label with control"
			row addMorph: (row submorphs at:2) ]. 
		
		self addMorph: row fixedHeight: height]! !

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

!BidiMenuMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:15:23'!
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
		s := BidiLabelMorph new
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

!BidiRightInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:28:59'!
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
		drawString: item string asBidiUnicodeString 
		at: x @ (self drawYForRow: row)
		font: f
		color: c! !

!BidiLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:10:17'!
drawOn: aCanvas

	| origin |
	
	origin := rightToLeft 
		ifTrue:[ (self morphWidth - borderWidth - (self fontToUse widthOfString: contents)) @ borderWidth]
		ifFalse:[borderWidth @ borderWidth].
	
	aCanvas
		drawString: (contents ifNil: [ '' ] ifNotNil:[ rightToLeft ifTrue:[contents asBidiUnicodeString  ] ifFalse:[contents]])
		at: origin
		font: self fontToUse
		color: color.
	(borderWidth > 0) ifTrue: [
		aCanvas
			frameRectangle: (`0@0` extent: extent)
			color: borderColor
			borderWidth: borderWidth
			borderStyleSymbol: #simple ]! !

!BidiLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:03:26'!
initialize
	super initialize.
	rightToLeft := false.
! !

!BidiLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:03:10'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

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

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:59:47'!
displayTextCursorAtX: x top: top bottom: bottom emphasis: anEmphasis on: aCanvas
	| textCursorColor x1 isBold isItalic x0 h w halfW r d |
	isBold := anEmphasis allMask: 1.
	isItalic := anEmphasis allMask: 2.
	textCursorColor := Theme current textCursor.
	h := bottom - top.
	w := isBold
		ifTrue: [ h // 25 + 2 ]
		ifFalse: [ h // 30 + 1 ].
	halfW := w // 2.
	isItalic
		ifTrue: [	
			"Keep tweaking if needed!!"
			d := isBold ifTrue: [ 3 ] ifFalse: [ h // 24].
			x0 := x- (h*5//24) + d.
			x1 := x + d ]
		ifFalse: [
			x0 := x.
			x1 := x].
	x0 < halfW ifTrue: [
		x1 := x1 - x0 + halfW.
		x0 := halfW ].
	r := extent x-halfW-1.
	r < x1 ifTrue: [
		x0 := x0 + r - x1.
		x1 := r ].
	
	textCursorRect := x0-halfW-1 -5 @ top corner: x1+halfW+1+1 +5 @ (bottom + 1).
	aCanvas
		line: x0+halfW@bottom to: x1+halfW@(top+w)
		width: w color: textCursorColor.
		
	rightToLeft
		ifTrue:[
			aCanvas line: x0 + halfW@ bottom to: x0 + halfW - 5 @ bottom width: w color: textCursorColor.
		]
		ifFalse:[
			aCanvas line: x0 + halfW@ bottom to: x0 + halfW + 5 @bottom width: w color: textCursorColor.
		]
! !

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:22:49'!
drawOn: aCanvas

	aCanvas
		fillRectangle: self localBounds
		color: backgroundColor
		borderWidth: borderWidth
		borderStyleSymbol: #simple
		baseColorForBorder: borderColor.
		
	self hasSelection ifTrue: [ self drawSelectionOn: aCanvas ].
	
	self hasTextCursor ifTrue: [ self drawTextCursorOn: aCanvas ].
	
	aCanvas
		drawString: (rightToLeft ifTrue:[contents asBidiUnicodeString ] ifFalse:[contents])
		at: (rightToLeft ifTrue:[self morphWidth - self textOffset x - (self fontToUse widthOfString: contents) @ self textOffset y] ifFalse:[self textOffset])
		font: self fontToUse
		color: color.
! !

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:59:57'!
drawSelectionOn: aCanvas
	
	| rightX leftX bottom p q |

	bottom := self measureContents y + self textOffset y.
	leftX := self fontToUse widthOfString: contents from: 1 to: editor startIndex-1.
	leftX := (leftX + self textOffset x) min: extent x.
	rightX := self fontToUse widthOfString: contents from: 1 to: editor stopIndex-1.
	rightX := (rightX + self textOffset x) min: extent x.
	
	p := rightToLeft 	ifTrue:[extent x - rightX] ifFalse:[leftX+1].
	q := rightToLeft ifTrue:[extent x - leftX] ifFalse:[rightX+2].

	aCanvas
		fillRectangle: ((p @ self textOffset y) corner: q @ bottom)
		color: (Theme current textHighlightFocused: self hasKeyboardFocus)! !

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:00:03'!
drawTextCursorOn: aCanvas
	|  bottom x |

	showTextCursor ifTrue: [
		bottom := self measureContents y + self textOffset y.
		
		x :=  self fontToUse widthOfString: contents from: 1 to: editor startIndex-1.
		
		rightToLeft ifTrue:[
			x := extent x - x - (2* self textOffset x)].
		
		self displayTextCursorAtX: (x + self textOffset x)  
			top: self borderWidth
			bottom: bottom 
			emphasis: emphasis 
			on: aCanvas ]! !

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:00:19'!
initialize

	super initialize.
	
	rightToLeft := false.! !

!BidiTextEntryMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:00:07'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:05:41'!
beRequired: aStringOrBlock 

	self beRequired.
		
	self requirementCondition key: 
		((aStringOrBlock isKindOf: String) and: rightToLeft  :: 
			ifTrue:[aStringOrBlock asBidiUnicodeString ] 
			ifFalse:[aStringOrBlock])! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:05:17'!
example: aString
| exampleString |
	exampleString := (String streamContents: [:s | s nextPut: $( ; nextPutAll: (rightToLeft ifTrue:[aString reverse] ifFalse:[aString]); nextPut: $)]) asText italic.
	self exampleMorph 
		ifNil: [ "Instantiate a new label and add it below the input morph "
			| aLabelMorph |
			aLabelMorph := BidiLabelMorph contents: exampleString.
			aLabelMorph layoutSpec: LayoutSpec keepMorphExtent.
			rightToLeft
				ifTrue:[
					self inputColumn 
						addMorphBack: aLabelMorph]
				ifFalse:[
					self inputColumn 
						addMorphFront: aLabelMorph]]
		ifNotNil: [	:labelMorph |
			labelMorph contents: exampleString ]! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:08:41'!
exampleMorph
" A label morph, it may not exist if no example was provided "
	^ self inputColumn submorphCount = 1 
		ifTrue: [nil] 
		ifFalse: [rightToLeft ifTrue:[self inputColumn lastSubmorph ] ifFalse:[self inputColumn firstSubmorph ]]! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 17:12:07'!
initialize
	super initialize.
	
	rightToLeft := true! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 17:32:06'!
inputMorph
"The widget morph representing the model "
	^ 
	self inputColumn firstSubmorph 
! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:02:00'!
inputMorphInstance
"
	Subclass according to the nature of the input 
	For most input we need a text entry morph, so make it the default one 
"
	| aTextEntryMorph |
	
	aTextEntryMorph := BidiTextEntryMorph new.
	
	aTextEntryMorph rightToLeft: true.
	
	^ aTextEntryMorph ! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:08:50'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!BidiField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:06:48'!
validateInput
	errors := OrderedCollection new.
	self input: self inputMorphContents. "retrieve the input from the input Morph"
	self validateConditions.
	self isValid ifTrue: [ self value: (input ifNotNil: [ self disinfect: input ]) ].
	self errorsColumn removeAllMorphs.
	errors do: [:errorMsg | | aLabelMorph msg |
	
		msg := 	'• ', errorMsg. 
	
		aLabelMorph := BidiLabelMorph contents: msg.
		
		aLabelMorph rightToLeft: true.
		
		aLabelMorph color: Color red.
		
		aLabelMorph layoutSpec: 
			(LayoutSpec keepMorphExtent offAxisEdgeWeight: (rightToLeft ifTrue:[1] ifFalse:[0])).

		rightToLeft 
			ifTrue:[self errorsColumn 				addMorphBack: aLabelMorph] 
			ifFalse:[
				self errorsColumn 				addMorphFront: aLabelMorph ] ].
	self  highlightInputMorph ! !

!BidiIntegerField methodsFor: 'private' stamp: 'DF 1/19/2025 19:19:45'!
disinfect: aString 
	('+-1234567890' includesAllOf: aString) ifFalse: [^nil].
	^ [aString asNumber] on: Error do: [:ex | nil ]! !

!BidiIntegerField methodsFor: 'private' stamp: 'DF 1/19/2025 19:19:45'!
infect: anInteger 
	^ anInteger ifNil: [''] ifNotNil: [anInteger printString]! !

!BidiIntegerField methodsFor: 'private' stamp: 'DF 1/19/2025 19:21:35'!
validateConditions
	super validateConditions.
	self isValid ifFalse: [ ^ self ].
	input ifNil: [ ^ self ].
	(self disinfect: input) isInteger ifFalse: [ errors add: 'מתקבלים מספרים שלמים בלבד.' ]! !

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:16:32'!
initialize

	super initialize.
	
	rightToLeft := true.! !

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 15:33:19'!
inputMorphInstance
	^BidiPluggableListMorph new! !

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:15:42'!
rightToLeft: aBoolean
	rightToLeft := aBoolean ! !

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:13:33'!
validateInput
	errors := OrderedCollection new.
	self input: self inputMorphContents. "retrieve the input from the input Morph"
	self validateConditions.
	self isValid ifTrue: [ self value: (input ifNotNil: [ self disinfect: input ]) ].
	self errorsColumn removeAllMorphs.
	errors do: [:errorMsg | | aLabelMorph msg |
	
		msg := 	'• ', errorMsg. 
	
		aLabelMorph := BidiLabelMorph contents: msg.
		
		aLabelMorph rightToLeft: true.
		
		aLabelMorph color: Color red.
		
		aLabelMorph layoutSpec: 
			(LayoutSpec keepMorphExtent offAxisEdgeWeight: (rightToLeft ifTrue:[1] ifFalse:[0])).

		rightToLeft 
			ifTrue:[self errorsColumn 				addMorphBack: aLabelMorph] 
			ifFalse:[
				self errorsColumn 				addMorphFront: aLabelMorph ] ].
	self  highlightInputMorph ! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:16:23'!
initialize

	super initialize.
	
	rightToLeft := true.! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 15:33:50'!
inputMorphInstance
	^ BidiPluggableListMorphOfMany new! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:16:00'!
rightToLeft: aBoolean
	rightToLeft := aBoolean ! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 20:14:08'!
validateInput
	errors := OrderedCollection new.
	self input: self inputMorphContents. "retrieve the input from the input Morph"
	self validateConditions.
	self isValid ifTrue: [ self value: (input ifNotNil: [ self disinfect: input ]) ].
	self errorsColumn removeAllMorphs.
	errors do: [:errorMsg | | aLabelMorph msg |
	
		msg := 	'• ', errorMsg. 
	
		aLabelMorph := BidiLabelMorph contents: msg.
		
		aLabelMorph rightToLeft: true.
		
		aLabelMorph color: Color red.
		
		aLabelMorph layoutSpec: 
			(LayoutSpec keepMorphExtent offAxisEdgeWeight: (rightToLeft ifTrue:[1] ifFalse:[0])).

		rightToLeft 
			ifTrue:[self errorsColumn 				addMorphBack: aLabelMorph] 
			ifFalse:[
				self errorsColumn 				addMorphFront: aLabelMorph ] ].
	self  highlightInputMorph ! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:51:00'!
dateField

	| aDateField |
	
	aDateField := DateField new.
	
	aDateField rightToLeft: rightToLeft.
	
	^ fields add: aDateField! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:51:53'!
initialize

	super initialize.
	
	rightToLeft := false.! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:21:57'!
integerField
	
	| anIntegerField |
	
	anIntegerField := BidiIntegerField new.
	
	anIntegerField rightToLeft: rightToLeft .
	
	^fields add: anIntegerField ! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:51:20'!
newPane
	| pane |
	pane := nil.
	pane := PluggablePane new.
	pane rightToLeft: rightToLeft.
	pane
		model: self;
		viewGetter: #renderForms ;
		actionOnButton: [self validate.
			pane morphExtent: pane minimumExtent. "I don't like to do it manually"
			self isValid 	ifTrue: [
				self save.
				self triggerEvent: #edited] ].
	pane buildMorphicWindow .
	^ pane! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:51:30'!
openDialog: title
	| panel |
	panel := nil.
	panel := PluggableDialogPanel new.
	panel rightToLeft: rightToLeft.
	
	panel model: self ;
		setLabel: (rightToLeft ifTrue:[title reverse] ifFalse:[title]) ;
		viewGetter: #renderForms ;
		actionOnButton: [self validate.
			panel morphExtent: panel minimumExtent. "I don't like to do it manually"
			self isValid 	ifTrue: [
				self save.
				self triggerEvent: #edited.
				panel delete] ].
	
	panel buildMorphicWindow openInWorld.
	
	^panel! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:52:25'!
renderForms

	| aLabelGroup |
	
	aLabelGroup := BidiLabelGroup newColumn.
	
	aLabelGroup rightToLeft: rightToLeft.
	
	^ aLabelGroup with: (fields collect: #labelAndWidget) ::
		doAdoptWidgetsColor;
		yourself
	! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 18:51:43'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:23:42'!
selectField

	| aField |

	aField := BidiSelectField new.
	
	"aField rightToLeft: rightToLeft."
	
	^fields add: aField! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:23:47'!
selectMultiField

	| aField |

	aField := BidiSelectMultipleField new.
	
	"aField rightToLeft: rightToLeft."
	
	^fields add: aField.! !

!BidiMold methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:04:37'!
stringField
	
	| aField |
	
	aField := BidiField new.
	
	aField rightToLeft: rightToLeft.
	
	^fields add: aField! !

!String methodsFor: '*Bidi' stamp: 'DF 1/19/2025 20:35:54'!
asBidi

	^self asBidiUnicodeString 
! !

!String methodsFor: '*Bidi' stamp: 'DF 1/19/2025 18:11:30'!
asBidiUnicodeString

	^BidiUnicodeString new appendToString: self.
! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 1/19/2025 20:37:53'!
asBidi
	^self asBidiUnicodeString ! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 1/19/2025 17:40:02'!
asBidiUnicodeString

	^BidiUnicodeString new appendToString: self.
! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 12/30/2024 12:44:18'!
breakAtDelimiter: aDelimiterCharacter

	| parts aReadStream aWriteStream aCharacter |
	
	parts := OrderedCollection new.
	
	aWriteStream := WriteStream on: ''.
	
	aReadStream := ReadStream on: self.

	aCharacter := aReadStream next.
		
	[aCharacter notNil] 
		whileTrue:[
	
			[aCharacter notNil and: [aCharacter ~= aDelimiterCharacter ] ]
				whileTrue:[
					aWriteStream nextPut: aCharacter.
					aCharacter := aReadStream next. ].
	
			parts add: aWriteStream contents.
			aWriteStream reset.
	
			aCharacter = aDelimiterCharacter 
				ifTrue:[aCharacter := aReadStream next].
		].
	
	^parts	! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 12/30/2024 15:45:38'!
reorder

	| current aCharacter aReadStream latin hebrew undecided parts |
	
	current := #undecided.

	parts := OrderedCollection new.
	
	latin := WriteStream on: ''.
	
	hebrew := WriteStream on: ''.
	
	undecided := WriteStream on: ''.
	
	aReadStream := ReadStream on: self.

	aCharacter := aReadStream next.
	
	self halt.
	
	[aCharacter notNil] 
		whileTrue:[
			aCharacter isLatinCharacter "we see a Latin (left to right) character "
				ifTrue:[ 
					current = #hebrew
						ifTrue:[
							parts add: hebrew contents reverse.
							hebrew reset]
						ifFalse:[
					current = #undecided
						ifTrue:[
							latin nextPutAll: undecided contents.
							undecided reset ] ].
					current := #latin.
					latin nextPut: aCharacter. ]
				ifFalse:[
			aCharacter isHebrewLetter 
				ifTrue:[
					current = #latin
						ifTrue:[
							parts add: latin contents.
							latin reset]
						ifFalse:[
					current = #undecided
						ifTrue:[
							hebrew nextPutAll: undecided contents.
							undecided reset ]].
					current := #hebrew.
					hebrew nextPut: aCharacter ]
				ifFalse:[
					current := #undecided.
					undecided nextPut: aCharacter ]
				].
				aCharacter := aReadStream next.
			].
	
	^parts
							
					
	! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 12/30/2024 14:14:19'!
reorderBidi

	| parts aReadStream aWriteStream aCharacter |
	
	parts := OrderedCollection new.
	
	aWriteStream := WriteStream on: ''.
	
	aReadStream := ReadStream on: self.

	aCharacter := aReadStream next.
		
	[aCharacter notNil] 
		whileTrue:[
	
			[aCharacter notNil and:[aCharacter isHebrewLetter not] and:[aCharacter ~= $ ] ]
				whileTrue:[
					aWriteStream nextPut: aCharacter.
					aCharacter := aReadStream next. ].
	
			parts add: aWriteStream contents.
			aWriteStream reset.
	
			[aCharacter notNil and:[aCharacter isHebrewLetter or:[ #( $_  $  ) includes: aCharacter  ] ] ]
				whileTrue:[
					aWriteStream nextPut: aCharacter.
					aCharacter := aReadStream next ].
		
			parts add: aWriteStream contents reverse.
			aWriteStream reset.
		].
	
	parts reverse do:[:eachPart |
		aWriteStream nextPutAll: eachPart].
	
	^aWriteStream contents
	! !

!UnicodeString methodsFor: '*Bidi' stamp: 'DF 12/30/2024 12:47:04'!
reorderBidiFileName

	| aWriteStream parts |
	
	parts := self breakAtDelimiter: $. .
	
	aWriteStream := WriteStream on:''.
	
	parts do:[:eachPart |
		aWriteStream nextPutAll: eachPart asUnicodeString reorderBidi ]
	separatedBy:[
		aWriteStream nextPut:$. ].
	
	^aWriteStream contents! !

!Character methodsFor: '*Bidi' stamp: 'DF 12/30/2024 11:31:10'!
isHebrewLetter

^ self >= $א and: [self <= $ת ]! !

!Character methodsFor: '*Bidi' stamp: 'DF 12/30/2024 14:53:39'!
isLatinCharacter

^ self isAlphaNumeric and: [self codePoint < 128]! !
