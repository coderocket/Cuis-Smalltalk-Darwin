'From Cuis7.1 [latest update: #6676] on 9 January 2025 at 6:57:51 pm'!
'Description '!
!provides: 'Table' 1 2!
SystemOrganization addCategory: #Table!


!classDefinition: #TabbedGroup category: #Table!
LayoutMorph subclass: #TabbedGroup
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TabbedGroup class' category: #Table!
TabbedGroup class
	instanceVariableNames: ''!

!classDefinition: #TableCell category: #Table!
LayoutMorph subclass: #TableCell
	instanceVariableNames: 'row column selected'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableCell class' category: #Table!
TableCell class
	instanceVariableNames: ''!

!classDefinition: #TableMorph category: #Table!
LayoutMorph subclass: #TableMorph
	instanceVariableNames: 'numRows numColumns target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableMorph class' category: #Table!
TableMorph class
	instanceVariableNames: ''!

!classDefinition: #OffsetLabelMorph category: #Table!
LabelMorph subclass: #OffsetLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'OffsetLabelMorph class' category: #Table!
OffsetLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableTableMorph category: #Table!
PluggableScrollPane subclass: #PluggableTableMorph
	instanceVariableNames: 'getTable headerRow rightToLeft selectedRow selectRowMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'PluggableTableMorph class' category: #Table!
PluggableTableMorph class
	instanceVariableNames: ''!

!classDefinition: #TableCellItem category: #Table!
BoxedMorph subclass: #TableCellItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Table'!
!classDefinition: 'TableCellItem class' category: #Table!
TableCellItem class
	instanceVariableNames: ''!


!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 23:14:58'!
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
		buttons addMorph: aButton proportionalWidth:1.0 ].
	
	self addMorph: buttons fixedHeight: buttons minimumExtent y.
	
	labelsAndMorphs do:[:each | self addMorphUseAll: each value ].

	1 to: labelsAndMorphs size - 1 do:[:i | 
		labelsAndMorphs at:i :: value hide ].
	
	! !

!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 22:44:36'!
initialize

	super initialize.
	
	selected := 1.! !

!TabbedGroup methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 23:00:55'!
select: aButtonIndex

	submorphs at: selected  :: hide.

	selected := aButtonIndex.
	
	submorphs at: aButtonIndex :: show.
	
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

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:41:32'!
acceptDroppingMorph: aMorph event: evt
	
	aMorph morphExtent: self morphExtent.
	
	self addMorph: aMorph proportionalWidth: 1.0.! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 20:31:25'!
allowsMorphDrop
	^true! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:05:50'!
allowsSubmorphDrag
	^row ~= 1 and:[column ~= 7]! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:46'!
column
	^column! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:40'!
column: anInteger
	column := anInteger ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/7/2025 16:32:38'!
handlesMouseDown: aMouseButtonEvent
	
	^aMouseButtonEvent mouseButton1Pressed ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:00:05'!
initialize
	super initialize.
	
	selected := false! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:26:21'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self triggerEvent: #clicked ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:43'!
row
	^row! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:33'!
row: anInteger
	row := anInteger ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:06:44'!
select: aBoolean

	selected := aBoolean.
	
	color := 
	selected 
		ifTrue:[Color r: 0.722 g: 0.890 b: 0.988]
		ifFalse:[Color transparent].
		
	self redrawNeeded ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:29:10'!
selected
	^selected! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:17:44'!
wantsDroppedMorph: aMorph event: evt
	
	^aMorph isKindOf: TableCellItem :: and: [column ~= 7] and: 	[row ~= 1]
! !

!TableCell class methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:22:14'!
row: aRowIndex column: aColumnIndex

	| aCell |
	
	aCell := self newRow.
	
	aCell row: aRowIndex; column: aColumnIndex.
	aCell borderWidth:1 ; borderColor: (Color fromHexString:'#b8e3fc').
	aCell color: Color transparent.

	^aCell! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:53:06'!
adjustExtent

	self morphExtent: owner viewableExtent! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:54:01'!
at: row at: col

	^submorphs at: numColumns  - col + 1 :: submorphs at: numRows - row + 1! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 19:24:40'!
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
				aTableCell := TableCell row: numRows - rowIndex + 1 column: numColumns - columnIndex + 1.
				target 
					ifNotNil:[aTableCell when: #clicked send: #clickedCell: to: target with: aTableCell ].
				rows add: aTableCell.			 ].
		
		aColumn addAllMorphs: rows .
		
		aColumn layoutSpec proportionalHeight: 1.0.
		
		columns add: aColumn ].
	
	self addAllMorphs: columns.
	
	
! !

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 19:45:12'!
initialize

	super initialize.
	
	numRows := 2.
	
	numColumns := 3.
	
	
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

!OffsetLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/20/2024 22:19:44'!
drawOn: aCanvas

	| origin |
			
	origin := rightToLeft 
		ifTrue:[ (self morphWidth - borderWidth - (self fontToUse widthOfString: contents)) @ borderWidth]
		ifFalse:[borderWidth @ borderWidth].
	
	aCanvas
		drawString: (contents ifNil: [ '' ] ifNotNil:[ rightToLeft ifTrue:[contents reverse] ifFalse:[contents]])
		at: origin- (0@extent y / 2)
		font: self fontToUse
		color: color.
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 18:57:29'!
clickedCell: aTableCell

	headerRow and: [aTableCell row = 1] 
		:: ifTrue:[^self].
		
	aTableCell selected
		ifTrue:[
			1 to: scroller numColumns do:[ : columnIndex |			
				scroller at: aTableCell row at: columnIndex :: select: false ] ]
		ifFalse:[
			1 to: scroller numColumns do:[ : columnIndex |			
				scroller at: aTableCell row at: columnIndex :: select: true ].
			selectRowMessage 
				ifNotNil:[		model perform: selectRowMessage with: aTableCell row ] ]
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:58:54'!
headerRow: aBoolean
	headerRow := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/7/2025 16:48:44'!
initialize
	
	super initialize.
	
	scroller morphWidth: extent x.

	scroller target: self.
	
	rightToLeft := false.
	headerRow := false.
	
! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:23:40'!
innerMorphClass
	^TableMorph! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:59:11'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/7/2025 16:48:26'!
selectRowMessage: aSymbol
	selectRowMessage := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:29:55'!
table: aSymbol
	getTable := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:34:24'!
update: aSymbol 

	| nrows ncols header table |

	scroller removeAllMorphs.
		
	table := model perform: getTable.
	
	nrows := table size.
	
	nrows = 0 ifTrue:[^self].
	
	header := table first.
	
	ncols := header size.
	
	scroller morphHeight: extent y.
	
	scroller numRows: nrows ; numColumns: ncols; build.
	
	headerRow 
		ifTrue:[ 
			1 to: ncols do:[:colIndex | | aLabelMorph |
				
				aLabelMorph := LabelMorph contents: (table at:1 :: at:colIndex).
				
				aLabelMorph rightToLeft: rightToLeft.
				
				scroller at: 1 at:colIndex :: axisEdgeWeight: #center ; addMorph: aLabelMorph			 ] 		]
		ifFalse:[
			1 to:ncols do:[:colIndex |
				scroller at: 1 at:colIndex ::  axisEdgeWeight: (rightToLeft ifTrue:[#rowRight] ifFalse:[#rowLeft]) :: addMorph: (table at:1 :: at:colIndex :: morph rightToLeft: rightToLeft ; yourself) ] ] .
			
	2 to: nrows do:[:rowIndex |
		1 to:ncols do:[:colIndex |
			scroller at: rowIndex at:colIndex :: axisEdgeWeight: (rightToLeft ifTrue:[#rowRight] ifFalse:[#rowLeft]) :: addMorph: (table at:rowIndex :: at:colIndex :: morph rightToLeft: rightToLeft ; yourself) ] ] .
! !

!TableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 21:56:47'!
justDroppedInto: newOwnerMorph event: anEvent 

	super justDroppedInto: newOwnerMorph event: anEvent.
	
	color := color alpha:1.0! !

!TableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 21:56:34'!
justGrabbedFrom: formerOwner

	color := 	color alpha: 0.5.
! !
