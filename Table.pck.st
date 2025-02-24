'From Cuis7.3 [latest update: #7041] on 23 February 2025 at 7:06:34 pm'!
'Description '!
!provides: 'Table' 1 69!
!requires: 'Bidi' 1 44 nil!
SystemOrganization addCategory: #Table!


!classDefinition: #TabbedGroup category: #Table!
LayoutMorph subclass: #TabbedGroup
	instanceVariableNames: 'selected tabs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TabbedGroup class' category: #Table!
TabbedGroup class
	instanceVariableNames: ''!

!classDefinition: #TableCell category: #Table!
LayoutMorph subclass: #TableCell
	instanceVariableNames: 'row column selected model border tableBorderWidth tableBorderColor minimumHeight'
	classVariableNames: 'Bottom Left Right Top'
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableCell class' category: #Table!
TableCell class
	instanceVariableNames: ''!

!classDefinition: #TableCellItem category: #Table!
LayoutMorph subclass: #TableCellItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableCellItem class' category: #Table!
TableCellItem class
	instanceVariableNames: ''!

!classDefinition: #TableMorph category: #Table!
LayoutMorph subclass: #TableMorph
	instanceVariableNames: 'numRows numColumns target cellFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableMorph class' category: #Table!
TableMorph class
	instanceVariableNames: ''!

!classDefinition: #WeeklyTimeTable category: #Table!
TableMorph subclass: #WeeklyTimeTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'WeeklyTimeTable class' category: #Table!
WeeklyTimeTable class
	instanceVariableNames: ''!

!classDefinition: #NarrowLabelMorph category: #Table!
BidiLabelMorph subclass: #NarrowLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'NarrowLabelMorph class' category: #Table!
NarrowLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #OffsetLabelMorph category: #Table!
BidiLabelMorph subclass: #OffsetLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'OffsetLabelMorph class' category: #Table!
OffsetLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableTableMorph category: #Table!
PluggableScrollPane subclass: #PluggableTableMorph
	instanceVariableNames: 'getTable headerRow rightToLeft selectedRow selectRowMessage menuFactory innerMorphClass columnFactory getMarkers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'PluggableTableMorph class' category: #Table!
PluggableTableMorph class
	instanceVariableNames: ''!

!classDefinition: #MorphProvider category: #Table!
Object subclass: #MorphProvider
	instanceVariableNames: 'object morphClass objectSetterMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'MorphProvider class' category: #Table!
MorphProvider class
	instanceVariableNames: ''!

!classDefinition: #PluggableMorphFactory category: #Table!
Object subclass: #PluggableMorphFactory
	instanceVariableNames: 'formatter morphClass factoryMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'PluggableMorphFactory class' category: #Table!
PluggableMorphFactory class
	instanceVariableNames: ''!


!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 21:27:57'!
build: labelsAndMorphs

	| buttons buttonColor |
	
	buttonColor := Theme current buttonColorFrom: Theme current defaultWindowColor.
	
	self removeAllMorphs.

	buttons := LayoutMorph newRow.
	
	buttons doAdoptWidgetsColor.
	 
	1 to: labelsAndMorphs size do:[:i | | aButton |
		aButton := PluggableButtonMorph model: self stateGetter: #selected: action: #select: label: (labelsAndMorphs at:i) key.
		aButton color: buttonColor.
		aButton actionArgument: i ; stateArgument: i.
		aButton layoutSpec proportionalWidth: 1.0.
		buttons addMorph: aButton ].
	
	self addMorph: buttons fixedHeight: buttons minimumExtent y.

	tabs := LayoutMorph newColumn.
		
	labelsAndMorphs do:[:each | tabs addMorphUseAll: each value ].

	1 to: labelsAndMorphs size do:[:i | 
		labelsAndMorphs at:i :: value hide ].
	
	self addMorph: tabs.! !

!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 22:44:36'!
initialize

	super initialize.
	
	selected := 1.! !

!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 21:25:48'!
select: aButtonIndex

	| n |
	
	n := tabs submorphs size + 1.
	
	tabs submorphs at: n - selected  :: hide.

	selected := aButtonIndex.
	
	tabs submorphs at: n - aButtonIndex :: show.
	
	self redrawNeeded ! !

!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 22:44:45'!
selected: aButtonIndex
	^aButtonIndex = selected ! !

!TabbedGroup class methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 23:16:06'!
example

	| aBlue aGreen aTabbedGroup anOrange |

	aBlue := BoxedMorph new.

	aBlue color: Color blue.

	aGreen := BoxedMorph new.

	aGreen color: Color green.

	anOrange := BoxedMorph new.

	anOrange color: Color orange.

	aTabbedGroup := TabbedGroup newColumn.

	aTabbedGroup build: { 'first' -> aBlue . 'second' -> aGreen . 'third' -> anOrange }.

	aTabbedGroup color:Color white.

	aTabbedGroup openInWorld! !

!TabbedGroup class methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:30:01'!
example2

	"self example2"
	
	| autumn spring summer  aTabbedGroup |

	autumn := WeeklyTimeTable new.

	spring := WeeklyTimeTable new.

	summer := WeeklyTimeTable new.
	
	aTabbedGroup := TabbedGroup newColumn.

	aTabbedGroup build: { 'autumn' -> autumn . 'spring' -> spring . 'summer' -> summer }.

	aTabbedGroup color:Color white.

	aTabbedGroup openInWorld! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:27:53'!
border
	^border! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:25:01'!
border: anIndex set: aBoolean

	aBoolean 
		ifTrue:[
			border := border bitOr: anIndex
		]
		ifFalse:[
			border := border bitAnd: anIndex bitInvert
		]
	! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:49:56'!
tableBorderColor
	^tableBorderColor ! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:49:47'!
tableBorderColor: aColor
	tableBorderColor := aColor! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:49:37'!
tableBorderWidth
	^tableBorderWidth ! !

!TableCell methodsFor: 'table borders' stamp: 'DF 1/27/2025 18:49:29'!
tableBorderWidth: anInteger
	tableBorderWidth := anInteger! !

!TableCell methodsFor: 'initialization' stamp: 'DF 2/23/2025 09:12:42'!
initialize
	super initialize.
	
	selected := false.
	
	model := ActiveModel new.

	border := 0.
	
	tableBorderColor := Color red.
	
	tableBorderWidth := 4.
	
	minimumHeight := FontFamily defaultFamilyAndPointSize lineSpacing. ! !

!TableCell methodsFor: 'event handling testing' stamp: 'DF 1/26/2025 20:59:19'!
handlesMouseDown: aMouseButtonEvent
	
	^aMouseButtonEvent mouseButton1Pressed ! !

!TableCell methodsFor: 'events' stamp: 'DF 1/26/2025 20:02:48'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	model triggerEvent: #clicked ! !

!TableCell methodsFor: 'drawing' stamp: 'DF 1/27/2025 20:51:20'!
drawBordersOn: aCanvas

	| rect |
	
	rect := 0@0 extent: self morphExtent.

	aCanvas strokeWidth: tableBorderWidth color: tableBorderColor strokeDashArray: #(10 10) strokeDashArrayOffset: 0.0 do: [
	
		border bitAnd: Top :: ~= 0
			ifTrue:[
				aCanvas 		moveTo: rect topLeft ; 				lineTo: rect topRight ].
		
		border bitAnd: Right :: ~= 0
			ifTrue:[
				aCanvas moveTo: rect topRight ; lineTo: rect bottomRight].

		border bitAnd: Bottom :: ~= 0
			ifTrue:[
				aCanvas moveTo: rect bottomLeft ; lineTo: rect bottomRight].
	
		border bitAnd: Left :: ~= 0
			ifTrue:[
				aCanvas moveTo: rect topLeft ; lineTo: rect bottomLeft ] ]
! !

!TableCell methodsFor: 'drawing' stamp: 'DF 1/27/2025 18:47:22'!
drawOn: aCanvas

	super drawOn: aCanvas.
	self drawBordersOn: aCanvas
	
	! !

!TableCell methodsFor: 'drawing' stamp: 'DF 1/27/2025 19:56:17'!
requiresVectorCanvas
	^true! !

!TableCell methodsFor: 'accessing' stamp: 'DF 12/24/2024 17:09:46'!
column
	^column! !

!TableCell methodsFor: 'accessing' stamp: 'DF 12/24/2024 17:09:40'!
column: anInteger
	column := anInteger ! !

!TableCell methodsFor: 'accessing' stamp: 'DF 1/12/2025 23:21:30'!
model
	^model! !

!TableCell methodsFor: 'accessing' stamp: 'DF 12/24/2024 17:09:43'!
row
	^row! !

!TableCell methodsFor: 'accessing' stamp: 'DF 12/24/2024 17:09:33'!
row: anInteger
	row := anInteger ! !

!TableCell methodsFor: 'accessing' stamp: 'DF 1/5/2025 19:06:44'!
select: aBoolean

	selected := aBoolean.
	
	color := 
	selected 
		ifTrue:[Color r: 0.722 g: 0.890 b: 0.988]
		ifFalse:[Color transparent].
		
	self redrawNeeded ! !

!TableCell methodsFor: 'accessing' stamp: 'DF 1/5/2025 19:29:10'!
selected
	^selected! !

!TableCell methodsFor: 'geometry' stamp: 'DF 2/23/2025 09:13:37'!
minimumExtent
	^0@minimumHeight ! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 18:26:27'!
bottom
	^Bottom! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 18:20:53'!
initialize

	"self initialize"
	
	Top := 1.
	
	Right := 2.
	
	Bottom := 4.
	
	Left := 8.! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 18:26:34'!
left
	^Left! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 18:26:22'!
right
	^Right! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 19:05:42'!
row: aRowIndex column: aColumnIndex

	| aCell |
	
	aCell := self newColumn.
	
	aCell row: aRowIndex; column: aColumnIndex.
	aCell borderWidth:1 ; borderColor: (Color fromHexString:'#b8e3fc').
	aCell color: Color transparent.

	^aCell! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 18:26:14'!
top
	^Top! !

!TableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 21:56:47'!
justDroppedInto: newOwnerMorph event: anEvent 

	super justDroppedInto: newOwnerMorph event: anEvent.
	
	color := color alpha:1.0! !

!TableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/14/2025 18:59:51'!
justGrabbedFrom: formerOwner
	
	color := 	color alpha: 0.5.
! !

!TableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 14:10:12'!
morphForGrabbing
	^self! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:53:06'!
adjustExtent

	self morphExtent: owner viewableExtent! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:54:01'!
at: row at: col

	^submorphs at: numColumns  - col + 1 :: submorphs at: numRows - row + 1! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 19:03:26'!
at: rowIndex at: colIndex ifPresent: aBlock ifAbsent: absentBlock

	| column cell |
	
	column := submorphs at: numColumns  - colIndex + 1 ifAbsent:[nil].
	
	column ifNil:[^absentBlock value].
	
	cell := column submorphs at: numRows - rowIndex + 1 ifAbsent:[nil].
	
	cell ifNil:[^absentBlock value].
	
	^ aBlock value: cell! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 19:32:38'!
borderAround: aRectangle set: aBoolean

	| startRow startColumn endRow endColumn |
	
	startRow := aRectangle origin x.
	startColumn := aRectangle origin y.
	endRow := aRectangle corner x.
	endColumn := aRectangle corner y.
	
	startColumn to: endColumn do:[:columnIndex |
		self at: startRow at:columnIndex :: border: TableCell top set: aBoolean ].
	
	startRow to: endRow do:[:rowIndex |
		self at: rowIndex at: endColumn :: border: TableCell right set: aBoolean ].

	startColumn to: endColumn do:[:columnIndex |
		self at: endRow at:columnIndex :: border: TableCell bottom set: aBoolean ].

	startRow to:endRow do:[:rowIndex |
		self at: rowIndex at: startColumn :: border: TableCell left set: aBoolean ].
! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:21:28'!
build

	| columns |
	
	self removeAllMorphs.

	columns := OrderedCollection new.
	
	1 to: numColumns do:[:columnIndex | | aColumn rows |
		
		rows := OrderedCollection new.
		
		aColumn := LayoutMorph newColumn.
		
		aColumn color:Color transparent.
		
		1 to: numRows 
			do:[ :rowIndex | | aTableCell |
				aTableCell := cellFactory row: numRows - rowIndex + 1 column: numColumns - columnIndex + 1.
				target 
					ifNotNil:[aTableCell model when: #clicked send: #clickedCell: to: target with: aTableCell ].
				rows add: aTableCell.			 ].
		
		aColumn addAllMorphs: rows .
		
		aColumn layoutSpec proportionalHeight: 1.0.
		
		columns add: aColumn ].
	
	self addAllMorphs: columns.
	
	
! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 21:50:26'!
cellFactory: aClass
	cellFactory := aClass! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 15:22:47'!
initialize

	super initialize.
	
	numRows := 2.
	
	numColumns := 3.
	
	cellFactory := TableCell.
	! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:09:03'!
numColumns
	^numColumns! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 19:42:51'!
numColumns: anInteger
	numColumns := anInteger ! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:08:55'!
numRows
	^numRows! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 19:42:39'!
numRows: anInteger
	numRows := anInteger ! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:24:51'!
target: anObject
	target := anObject! !

!TableMorph class methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 19:48:35'!
new
	^self newRow! !

!WeeklyTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:24:25'!
acceptDroppingMorph: aMorph event: evt

	1 to: numColumns - 1 do:[:columnIndex |
		2 to: numRows - 1 do:[:rowIndex | | cell morphs |
			
			morphs := aMorph at: rowIndex at:columnIndex :: submorphs.
			
			cell := self at:rowIndex at:columnIndex.
			
			morphs do:[:each | cell addMorph: each ] ] ].
	
	aMorph delete! !

!WeeklyTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:24:51'!
allowsMorphDrop
	^true! !

!WeeklyTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 22:42:42'!
build

	| days |
	
	super build.
	
	days := { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' }.

	1 to: 6 do:[:i | | label |
		label := LabelMorph contents: (days at:i).
		label layoutSpec offAxisEdgeWeight: 0.5.
		self at:1 at:i :: beColumn addMorph:  label. ].

	8 to:23 do:[:h | | label |
		label := OffsetLabelMorph contents:('{1}' format:{h}).
		label layoutSpec offAxisEdgeWeight: 0.2.
		self at: h - 6 at:7 :: beColumn :: addMorph:  label. ].
! !

!WeeklyTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 12:20:50'!
initialize

	super initialize.
! !

!WeeklyTimeTable methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:25:04'!
wantsDroppedMorph: aMorph event: evt
	
	^aMorph isKindOf: TableMorph :: and: [numRows = aMorph numRows] and:[numColumns = aMorph numColumns]
 ! !

!WeeklyTimeTable class methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:27:45'!
example

	"self example"
	
	| aTableMorph |

	aTableMorph := self new.
	
	aTableMorph morphExtent:800@600.

	aTableMorph openInWorld.
	! !

!WeeklyTimeTable class methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 22:43:15'!
new

	| aTableMorph |

	aTableMorph := self newRow.

	aTableMorph numRows: 17 ; numColumns:7.

	aTableMorph color: Color white.

	aTableMorph build.

	^aTableMorph
	! !

!NarrowLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 16:54:02'!
drawOn: aCanvas

	| aForm canvas x |
	
	aForm := Form extent: self morphExtent +(2@0) depth: Display depth.
	
	canvas := MorphicCanvas onForm: aForm.
	
	super drawOn: canvas.
	
	x := rightToLeft 
		ifTrue:[
			self measureContents x  - self morphWidth / 2 min: 0.
			]
		ifFalse:[
			self morphWidth - self measureContents x / 2 max: 0.
		].
	aCanvas image: aForm at:x@0.

	
! !

!NarrowLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 16:29:14'!
fitContents
	
	self morphExtent: self measureContents ! !

!NarrowLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 20:58:30'!
initialize

	super initialize.
	
	self layoutSpec proportionalHeight: 1.0 ; proportionalWidth:1.0. 

	layoutSpec offAxisEdgeWeight: 0.5.
	
	self lock:true.
! !

!NarrowLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 20:58:44'!
minimumExtent

	^0@ 0"self measureContents y"! !

!OffsetLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 18:50:44'!
drawOn: aCanvas

	| origin |
			
	origin := rightToLeft 
		ifTrue:[ (self morphWidth - borderWidth - (self fontToUse widthOfString: contents)) @ borderWidth]
		ifFalse:[borderWidth @ borderWidth].
	
	aCanvas
		drawString: (contents ifNil: [ '' ])
		at: origin- (0@extent y / 2)
		font: self fontToUse
		color: color.
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 21:54:35'!
cellFactory: aClass

	scroller cellFactory: aClass! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 17:37:03'!
clickedCell: aTableCell

	headerRow and: [aTableCell row = 1] 
		:: ifTrue:[^self].
		
	aTableCell selected
		ifTrue:[
			self row: aTableCell row select: false.
			selectedRow := 0.
			model perform: selectRowMessage with: selectedRow.
		]
		ifFalse:[
			selectedRow = 0
				ifFalse:[self row: selectedRow select: false].
			
			selectedRow := aTableCell row.
			
			self row: selectedRow select: true.
			selectRowMessage 
				ifNotNil:[
					model perform: selectRowMessage with: selectedRow ] ]
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:27:35'!
columnFactory: aDictionary
	columnFactory := aDictionary ! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 13:14:05'!
getMenu
	"Answer the right-click (contextual) menu."
	"Spec for the menu and shortcut keys.
	Each entry is
		#(itemId 			'menu item label'    shortcut    receiverGetter    selector     iconOrNil(optional)    'helpText(optional)'    selectorArgument(optional))
		- itemId is a number (integer or float). It specifies the position of the item in the menu, and is also an id, allowing for overrides and deletions.
		- label is a string or symbol. Symbol means self updating menu entry. nil means just keyboard shortcut, no menu entry.
		- shortcut is a Character or nil
		- receiverGetter sent to the widget to get the actual receiver for selector.
			Typically #window, #model or #editor. If nil, receiver is the widget itself.
		- selector is #aSymbol. Usually no arguments, or one single argument in 8th entry. 
			If a Number (multiple of 1000), indicates a subMenu. ItemsIds must be in range. See BrowserWindow>>#classListMenuSpec.
			If nil, the menu entry is created but disabled. The keyboard shortcut is disabled too.
		- icon may be nil. It is also optional (but must be there if there is help text)
		- help text is optional
		- selectorArgument is optional. If selector takes an argument, and selectorArgument is not provided, the argument is self.
	Entries of size 2 are separators, unless first character is $X, meaning 'remove menu item'.
	An entry of size 3 (usually with key 0 and at the first position), if present, tells a menu title, whether to #addStayUpIcons.
	"

	| menuNshortcutsSpecs itemSpec menu submenus |
	menuNshortcutsSpecs := self allMenuNshortcutsSpecs.
	menuNshortcutsSpecs ifEmpty: [ ^nil ].
	
	menu := menuFactory new.
	rightToLeft ifTrue:[menu menuItemFactory: BidiMenuItemMorph ].
	submenus := nil.
	menuNshortcutsSpecs keys sorted do: [ :key |
		itemSpec := menuNshortcutsSpecs at: key.
		itemSpec size <= 2 ifTrue: [
				self addLineTo: menu fromSpec: itemSpec submenus: submenus ]
			ifFalse: [ itemSpec size = 3 ifTrue: [
				self addTitleTo: menu fromSpec: itemSpec ]
			ifFalse: [ itemSpec fifth isNumber ifTrue: [
				submenus ifNil: [submenus := Dictionary new ].
				self addSubmenuTo: menu fromSpec: itemSpec submenus: submenus ]
			ifFalse: [
				self addItemTo: menu fromSpec: itemSpec submenus: submenus ]]]].
	^ menu! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:58:54'!
headerRow: aBoolean
	headerRow := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 17:33:11'!
initialize

	innerMorphClass := TableMorph.
	
	super initialize.
	
	scroller morphWidth: extent x.

	scroller target: self.
	
	rightToLeft := false.
	
	headerRow := false.
	
	selectedRow := 0.
	
	menuFactory := MenuMorph.
	
	columnFactory := OrderedCollection new.
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 21:53:07'!
innerMorphClass
	^innerMorphClass ! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/12/2025 21:53:00'!
innerMorphClass: aClass
	innerMorphClass := aClass! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/27/2025 22:20:25'!
markers: aSymbol
	getMarkers := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/11/2025 12:59:36'!
menuFactory: aClass
	menuFactory := aClass! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:59:11'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 18:59:49'!
row: anIndex select: aBoolean

	aBoolean
		ifTrue:[
			1 to: scroller numColumns do:[ : columnIndex |			
				scroller at: anIndex at: columnIndex :: select: true ] ]
		ifFalse:[
			1 to: scroller numColumns do:[ : columnIndex |			
				scroller at: anIndex at: columnIndex ifPresent:[:morph | morph select: false] ifAbsent:[] ] ].
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/7/2025 16:48:26'!
selectRowMessage: aSymbol
	selectRowMessage := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:29:55'!
table: aSymbol
	getTable := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 2/4/2025 18:03:11'!
update: aSymbol 

	| start nrows ncols header table |

	scroller removeAllMorphs.
		
	table := model perform: getTable.
	
	nrows := table size.
	
	selectRowMessage 
		ifNotNil:[
			model perform: selectRowMessage with: 0
		].
		
	nrows = 0 ifTrue:[^self].
	
	header := table first.
	
	ncols := header size.
	
	scroller morphHeight: extent y.
	
	scroller numRows: nrows ; numColumns: ncols; build.
	
	headerRow 
		ifTrue:[ 
			1 to: ncols do:[:colIndex | | aLabelMorph |
				
				aLabelMorph := BidiLabelMorph contents: (table at:1 :: at:colIndex).
				
				aLabelMorph rightToLeft: rightToLeft.
				
				scroller at: 1 at:colIndex :: axisEdgeWeight: #center ; addMorph: aLabelMorph			 ] 		].

	start := headerRow 		ifTrue:[ 	2] ifFalse:[			 1 ].
			
	start to: nrows do:[:rowIndex |
		1 to:ncols do:[:colIndex | | cell items factory |
			items := table at: rowIndex :: at:colIndex.
			cell := scroller at: rowIndex at:colIndex.
			factory := columnFactory at: colIndex ifAbsent:[PluggableMorphFactory new]. 
			items 
				ifEmpty:[cell addMorph: factory buildEmpty].
			items do:[:eachItem | 
				cell addMorph: (factory build: eachItem :: rightToLeft: rightToLeft ; yourself )] ] ] .
	
	getMarkers ifNotNil:[ | rectangles |
		rectangles := model perform: getMarkers. 
		rectangles do:[:eachRectangle |
			scroller borderAround: eachRectangle set: true ] ]
	
	
! !

!MorphProvider methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:41:57'!
morph
	| aMorph |
	
	aMorph := morphClass new.
	
	aMorph perform: objectSetterMessage with: object.
	
	^aMorph! !

!MorphProvider methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:40:33'!
morphClass: aMorphClass
	morphClass := aMorphClass ! !

!MorphProvider methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:40:11'!
object: anObject
	object := anObject! !

!MorphProvider methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2025 17:41:21'!
objectSetterMessage: aSymbol
	objectSetterMessage := aSymbol! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:11:22'!
build: anObject
	
	^morphClass perform: factoryMessage with: (formatter value: anObject)! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 1/23/2025 22:09:15'!
buildEmpty

	^morphClass perform: factoryMessage with: nil! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:12:54'!
factoryMessage: aSymbol
	factoryMessage := aSymbol! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:12:22'!
formatter: aBlock
	formatter := aBlock! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 09:10:41'!
initialize

	factoryMessage := #contents:.
	
	formatter := [:anObject | anObject displayStringOrText ].
	
	morphClass := NarrowLabelMorph.
! !

!PluggableMorphFactory methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2025 22:12:32'!
morphClass: aMorphClass
	morphClass := aMorphClass ! !
TableCell initialize!
