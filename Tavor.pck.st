'From Cuis7.1 [latest update: #6676] on 28 December 2024 at 5:52:15 pm'!
'Description '!
!provides: 'Tavor' 1 105!
!requires: 'LayoutAlgebra' 1 11 nil!
SystemOrganization addCategory: #'Tavor-Model'!
SystemOrganization addCategory: #'Tavor-Morphic'!
SystemOrganization addCategory: #Tavor!


!classDefinition: #TabbedGroup category: #'Tavor-Morphic'!
LayoutMorph subclass: #TabbedGroup
	instanceVariableNames: 'selected'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TabbedGroup class' category: #'Tavor-Morphic'!
TabbedGroup class
	instanceVariableNames: ''!

!classDefinition: #TableCell category: #'Tavor-Morphic'!
LayoutMorph subclass: #TableCell
	instanceVariableNames: 'row column'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TableCell class' category: #'Tavor-Morphic'!
TableCell class
	instanceVariableNames: ''!

!classDefinition: #TableMorph category: #'Tavor-Morphic'!
LayoutMorph subclass: #TableMorph
	instanceVariableNames: 'numRows numColumns'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TableMorph class' category: #'Tavor-Morphic'!
TableMorph class
	instanceVariableNames: ''!

!classDefinition: #WeeklyTimeTable category: #'Tavor-Morphic'!
TableMorph subclass: #WeeklyTimeTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'WeeklyTimeTable class' category: #'Tavor-Morphic'!
WeeklyTimeTable class
	instanceVariableNames: ''!

!classDefinition: #TextFieldSentence category: #'Tavor-Morphic'!
LayoutMorph subclass: #TextFieldSentence
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TextFieldSentence class' category: #'Tavor-Morphic'!
TextFieldSentence class
	instanceVariableNames: ''!

!classDefinition: #LeftToRightInnerListMorph category: #'Tavor-Morphic'!
InnerListMorph subclass: #LeftToRightInnerListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LeftToRightInnerListMorph class' category: #'Tavor-Morphic'!
LeftToRightInnerListMorph class
	instanceVariableNames: ''!

!classDefinition: #OffsetLabelMorph category: #'Tavor-Morphic'!
LabelMorph subclass: #OffsetLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'OffsetLabelMorph class' category: #'Tavor-Morphic'!
OffsetLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #LToRPluggableListMorphOfMany category: #'Tavor-Morphic'!
PluggableListMorphOfMany subclass: #LToRPluggableListMorphOfMany
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LToRPluggableListMorphOfMany class' category: #'Tavor-Morphic'!
LToRPluggableListMorphOfMany class
	instanceVariableNames: ''!

!classDefinition: #LeftToRightPluggableListMorph category: #'Tavor-Morphic'!
PluggableListMorph subclass: #LeftToRightPluggableListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LeftToRightPluggableListMorph class' category: #'Tavor-Morphic'!
LeftToRightPluggableListMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableTableMorph category: #'Tavor-Morphic'!
PluggableScrollPane subclass: #PluggableTableMorph
	instanceVariableNames: 'getTable headerRow rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'PluggableTableMorph class' category: #'Tavor-Morphic'!
PluggableTableMorph class
	instanceVariableNames: ''!

!classDefinition: #CollegeBrowser category: #'Tavor-Morphic'!
SystemWindow subclass: #CollegeBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'CollegeBrowser class' category: #'Tavor-Morphic'!
CollegeBrowser class
	instanceVariableNames: ''!

!classDefinition: #CellItem category: #'Tavor-Morphic'!
BoxedMorph subclass: #CellItem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'CellItem class' category: #'Tavor-Morphic'!
CellItem class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgram category: #'Tavor-Model'!
Object subclass: #AcademicProgram
	instanceVariableNames: 'tracks description college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicProgram class' category: #'Tavor-Model'!
AcademicProgram class
	instanceVariableNames: ''!

!classDefinition: #AcademicTrack category: #'Tavor-Model'!
Object subclass: #AcademicTrack
	instanceVariableNames: 'academicYears description program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicTrack class' category: #'Tavor-Model'!
AcademicTrack class
	instanceVariableNames: ''!

!classDefinition: #AcademicUnit category: #'Tavor-Model'!
Object subclass: #AcademicUnit
	instanceVariableNames: 'module lecturers duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicUnit class' category: #'Tavor-Model'!
AcademicUnit class
	instanceVariableNames: ''!

!classDefinition: #Laboratory category: #'Tavor-Model'!
AcademicUnit subclass: #Laboratory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Laboratory class' category: #'Tavor-Model'!
Laboratory class
	instanceVariableNames: ''!

!classDefinition: #Lecture category: #'Tavor-Model'!
AcademicUnit subclass: #Lecture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Lecture class' category: #'Tavor-Model'!
Lecture class
	instanceVariableNames: ''!

!classDefinition: #Recitation category: #'Tavor-Model'!
AcademicUnit subclass: #Recitation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Recitation class' category: #'Tavor-Model'!
Recitation class
	instanceVariableNames: ''!

!classDefinition: #AcademicYear category: #'Tavor-Model'!
Object subclass: #AcademicYear
	instanceVariableNames: 'semesters description track'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'AcademicYear class' category: #'Tavor-Model'!
AcademicYear class
	instanceVariableNames: ''!

!classDefinition: #Assignment category: #'Tavor-Model'!
Object subclass: #Assignment
	instanceVariableNames: 'room unit lecturer stencil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Assignment class' category: #'Tavor-Model'!
Assignment class
	instanceVariableNames: ''!

!classDefinition: #Campus category: #'Tavor-Model'!
Object subclass: #Campus
	instanceVariableNames: 'rooms college description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Campus class' category: #'Tavor-Model'!
Campus class
	instanceVariableNames: ''!

!classDefinition: #Classroom category: #'Tavor-Model'!
Object subclass: #Classroom
	instanceVariableNames: 'campus capacity code'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Classroom class' category: #'Tavor-Model'!
Classroom class
	instanceVariableNames: ''!

!classDefinition: #College category: #'Tavor-Model'!
Object subclass: #College
	instanceVariableNames: 'campuses modules lecturers programs description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'College class' category: #'Tavor-Model'!
College class
	instanceVariableNames: ''!

!classDefinition: #CollegeModel category: #'Tavor-Model'!
Object subclass: #CollegeModel
	instanceVariableNames: 'college theProgram selectedPrograms theYear selectedYears theTrack selectedTracks theSemester selectedSemesters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'CollegeModel class' category: #'Tavor-Model'!
CollegeModel class
	instanceVariableNames: ''!

!classDefinition: #Lecturer category: #'Tavor-Model'!
Object subclass: #Lecturer
	instanceVariableNames: 'college units description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Lecturer class' category: #'Tavor-Model'!
Lecturer class
	instanceVariableNames: ''!

!classDefinition: #Module category: #'Tavor-Model'!
Object subclass: #Module
	instanceVariableNames: 'college units code description semesters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Module class' category: #'Tavor-Model'!
Module class
	instanceVariableNames: ''!

!classDefinition: #Semester category: #'Tavor-Model'!
Object subclass: #Semester
	instanceVariableNames: 'academicYear description stencils modules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Semester class' category: #'Tavor-Model'!
Semester class
	instanceVariableNames: ''!

!classDefinition: #Stencil category: #'Tavor-Model'!
Object subclass: #Stencil
	instanceVariableNames: 'semester description assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'Stencil class' category: #'Tavor-Model'!
Stencil class
	instanceVariableNames: ''!

!classDefinition: #TavorExample category: #'Tavor-Model'!
Object subclass: #TavorExample
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'TavorExample class' category: #'Tavor-Model'!
TavorExample class
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

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:43'!
row
	^row! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:09:33'!
row: anInteger
	row := anInteger ! !

!TableCell methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:40:00'!
wantsDroppedMorph: aMorph event: evt
	
	^aMorph isKindOf: CellItem :: and: [column ~= 7] and: 	[row ~= 1]
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

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 17:55:26'!
build

	| columns |
	
	self removeAllMorphs.

	columns := OrderedCollection new.
	
	1 to: numColumns do:[:columnIndex | | aColumn rows |
		
		rows := OrderedCollection new.
		
		aColumn := LayoutMorph newColumn.
		
		aColumn color:Color transparent.
		
		1 to: numRows do:[ :rowIndex | 
			rows add: (TableCell row: numRows - rowIndex + 1 column: numColumns - columnIndex + 1) ].
		
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

!WeeklyTimeTable class methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 18:28:53'!
new

	| aTableMorph days |

	aTableMorph := self newRow.

	aTableMorph numRows: 17 ; numColumns:7.

	aTableMorph color: Color white.

	aTableMorph build.

	days := { 'ו' . 'ה' . 'ד' . 'ג' . 'ב' . 'א' }.

	1 to: 6 do:[:i | | label |
		label := LabelMorph contents: (days at:i).
		label layoutSpec offAxisEdgeWeight: 0.5.
		aTableMorph at:1 at:i :: beColumn addMorph:  label. ].

	8 to:23 do:[:h | | label |
		label := OffsetLabelMorph contents:('{1}' format:{h}).
		label layoutSpec offAxisEdgeWeight: 0.2.
		aTableMorph at: h - 6 at:7 :: beColumn :: addMorph:  label. ].

	^aTableMorph
	! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 21:10:29'!
build: aStringTemplate

	| index labelText morphs |
	
	self removeAllMorphs.
	
	morphs := OrderedCollection new.
	
	index := 1.
	
	aStringTemplate allRangesOfRegexMatches: '<[a-z]+>' :: do:[:each | 
	
		labelText := aStringTemplate copyFrom: index to: each first - 1.
		
		rightToLeft ifTrue:[labelText := labelText reverse].
		
		morphs add:		 (LabelMorph contents: labelText).
		
		morphs add: (TextEntryMorph contents: (aStringTemplate copyFrom: each first + 1 to: each last - 1)).
		
		index := each last + 1].
	
	labelText := aStringTemplate copyFrom: index to: aStringTemplate size.
	
	rightToLeft ifTrue:[labelText := labelText reverse].
	
	morphs add: (LabelMorph contents: labelText).
	
	rightToLeft ifFalse:[morphs := morphs reverse].
	
	self addAllMorphs: morphs.! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:57:50'!
initialize
	super initialize.
	rightToLeft := false! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:54:58'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!LeftToRightInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:23:05'!
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

!LToRPluggableListMorphOfMany methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:27:55'!
innerMorphClass
	^LeftToRightInnerListMorph! !

!LeftToRightPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:24:41'!
innerMorphClass
	^LeftToRightInnerListMorph! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:58:54'!
headerRow: aBoolean
	headerRow := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:59:31'!
initialize
	super initialize.
	scroller morphWidth: extent x.

	rightToLeft := false.
	headerRow := false.! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:23:40'!
innerMorphClass
	^TableMorph! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 16:59:11'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:29:55'!
table: aSymbol
	getTable := aSymbol! !

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:50:05'!
update: aSymbol 

	| nrows ncols header table |
	
	table := model perform: getTable.
	
	nrows := table size.
	
	header := table first.
	
	ncols := header size.
	
	scroller removeAllMorphs.
	
	scroller numRows: nrows ; numColumns: ncols; build.
	
	headerRow 
		ifTrue:[
			1 to: ncols do:[:colIndex | | aLabelMorph |
				
				aLabelMorph := LabelMorph contents: (table at:1 :: at:colIndex).
				
				aLabelMorph rightToLeft: rightToLeft.
				
				scroller at: 1 at:colIndex :: axisEdgeWeight: #center ; addMorph: aLabelMorph ] 		]
		ifFalse:[
			1 to:ncols do:[:colIndex |
				scroller at: 1 at:colIndex ::  axisEdgeWeight: (rightToLeft ifTrue:[#rowRight] ifFalse:[#rowLeft]) :: addMorph: (table at:1 :: at:colIndex :: morph rightToLeft: rightToLeft ; yourself) ] ] .
			
	2 to: nrows do:[:rowIndex |
		1 to:ncols do:[:colIndex |
			scroller at: rowIndex at:colIndex :: axisEdgeWeight: (rightToLeft ifTrue:[#rowRight] ifFalse:[#rowLeft]) :: addMorph: (table at:rowIndex :: at:colIndex :: morph rightToLeft: rightToLeft ; yourself) ] ] .
! !

!CollegeBrowser methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:06:45'!
buildMorphicWindow

	| topPanel semesters years tracks programs bottomPanel |
	
	semesters := LToRPluggableListMorphOfMany withModel: model listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	years := LToRPluggableListMorphOfMany withModel: model listGetter: #yearNames primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.
	
	tracks := LToRPluggableListMorphOfMany withModel: model listGetter: #trackNames primarySelectionGetter: #trackIndex primarySelectionSetter: #trackIndex: listSelectionGetter: #trackSelectionAt: listSelectionSetter: #trackSelectionAt:put:.
	
	programs := LToRPluggableListMorphOfMany withModel: model listGetter: #programs primarySelectionGetter: #programIndex primarySelectionSetter: #programIndex: listSelectionGetter: #programSelectionAt: listSelectionSetter: #programSelectionAt:put:.
	
	topPanel := (semesters - (1/4)p | 1p) <+> (years - (1/4)p | 1p) <+> (tracks - (1/4)p | 1p) <+> (programs - (1/4)p | 1p).
	
	bottomPanel := PluggableTableMorph new.
	
	bottomPanel model: model ; table: #modules ; rightToLeft: true ; headerRow: true.

	self layoutMorph addMorph: (topPanel -1.0p | 0.4p </> (bottomPanel -1.0p | 0.6p)).
	! !

!CellItem methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 21:56:47'!
justDroppedInto: newOwnerMorph event: anEvent 

	super justDroppedInto: newOwnerMorph event: anEvent.
	
	color := color alpha:1.0! !

!CellItem methodsFor: 'as yet unclassified' stamp: 'DF 12/22/2024 21:56:34'!
justGrabbedFrom: formerOwner

	color := 	color alpha: 0.5.
! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:25'!
addAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program isNil.
	
	self attachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack program: self.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:38'!
attachAcademicTrack: anAcademicTrack

	tracks add: anAcademicTrack ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:14:46'!
college 
	^college! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:50'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:27'!
description
	^description ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:04:17'!
description: aString
	description := aString! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:05:08'!
detach

	college ifNil:[^self].
	
	college detachAcademicProgram: self.
	
	college := nil! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:03:55'!
detachAcademicTrack: anAcademicTrack

	tracks remove: anAcademicTrack ! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:30'!
displayStringOrText
	^description! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:17:41'!
initialize
	tracks := Set new! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:14:15'!
invariant

	tracks do:[:eachTrack | eachTrack invariant ].

	tracks do:[:eachTrack | eachTrack program == self ].
	! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:02:54'!
removeAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program == self.
	
	self detachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack detach.! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:29:57'!
tracks
	^tracks! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 22:01:58'!
academicYears
	^academicYears ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:17:54'!
addAcademicYear: anAcademicYear

	self assert: anAcademicYear academicTrack isNil.

	self attachAcademicYear: anAcademicYear.
	
	anAcademicYear attachAcademicTrack: self.! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:21:05'!
attachAcademicYear: anAcademicYear

	academicYears add: anAcademicYear ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:49:03'!
description
	^description! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:57'!
description: aString
	description := aString! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:21:17'!
detachAcademicYear: anAcademicYear

	academicYears remove: anAcademicYear ! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:37'!
displayStringOrText
	^description! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:20:32'!
initialize

	academicYears := OrderedCollection new.! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:13:26'!
invariant

	academicYears do: [:anAcademicYear | anAcademicYear invariant ].
	
	academicYears do: [:anAcademicYear | self assert: anAcademicYear academicTrack == self ].! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:52:30'!
program
	^program! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:52:16'!
program: aProgram

	self assert: program isNil.
	
	program := aProgram! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:53:55'!
removeAcademicYear: anAcademicYear

	self assert: anAcademicYear academicTrack == self.
	
	anAcademicYear detach.
	
	self detachAcademicYear: anAcademicYear.
	
	! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:15:20'!
addLecturer: aLecturer

	self attachLecturer: aLecturer.
	
	aLecturer attachAcademicUnit: self.
	
	! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:12:49'!
attachLecturer: aLecturer

	lecturers add: aLecturer! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:50:35'!
description

	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:44:35'!
detach

	module ifNil:[^self].
	 
	module detachAcademicUnit: self.  
	
	module := nil.! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:00'!
detachLecturer: aLecturer

	lecturers remove: aLecturer! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:31:58'!
displayStringOrText
	^self description ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:45:10'!
duration
	^duration! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:45:05'!
duration: anInteger
	duration := anInteger! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:37:09'!
initialize

	lecturers := Set new! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:02:58'!
invariant
	^true! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:27:11'!
module
	^module! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:43:15'!
module: aModule

	self assert: module isNil.
	
	module := aModule! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:06'!
points
	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:15:50'!
removeLecturer: aLecturer

	self detachLecturer: aLecturer.
	
	aLecturer detachAcademicUnit: self.! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:00'!
description

	self assert: module notNil.
	
	^ 'מעבדה'! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:20'!
points
	^ 0.7 * duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:51:55'!
description

	self assert: module notNil.
	
	^ 'הרצאה'! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:30'!
points
	^ duration! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:07'!
description

	self assert: module notNil.
	
	^ 'תרגול' ! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:24'!
points
	^ 0.7 * duration! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:55:09'!
academicTrack
	^track! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:46:06'!
addSemester: aSemester

	self attachSemester: aSemester.
	
	aSemester attachAcademicYear: self.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:55:40'!
attachAcademicTrack: anAcademicTrack

	self assert: track isNil.
	
	track := anAcademicTrack ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:45:42'!
attachSemester: aSemester

	semesters add: aSemester.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:29'!
description
	^description! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:22'!
description: aString
	description := aString! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:56:03'!
detach

	track ifNil:[^self].
	
	track detachAcademicYear: self.
	
	track := nil.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:44:47'!
detachSemester: aSemester

	semesters remove: aSemester.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:32:04'!
displayStringOrText
	^description! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:09:36'!
initialize

	semesters := OrderedCollection new. ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:06'!
invariant

	semesters do: [:aSemester | aSemester invariant ].

	semesters do: [:aSemester | self assert: aSemester academicYear == self ].
	! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:05:06'!
semesters
	^semesters! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:12:24'!
detach

	stencil ifNil:[^self].
	
	stencil detachAssignment: self.
	
	stencil := nil.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:58:38'!
invariant

	lecturer units includes: unit.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:11:17'!
lecturer: aLecturer
	lecturer := aLecturer ! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:10:47'!
room: aClassroom
	room := aClassroom! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:20'!
stencil
	^stencil! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:11:44'!
stencil: aStencil

	self assert: stencil isNil.
	
	stencil := aStencil.! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:47:12'!
unit
	^unit! !

!Assignment methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:11:06'!
unit: anAcademicUnit
	unit := anAcademicUnit ! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:20:37'!
addClassroom: aClassroom

	self assert: aClassroom campus isNil.
	
	aClassroom campus: self.
	
	rooms add: aClassroom.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:13:13'!
college
	^college! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:11:57'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:55:32'!
description
	^description! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:55:24'!
description: aString
	description := aString! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:35:08'!
detach

	college ifNil:[^self].
	 
	college detachCampus: self. 
	
	college := nil.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:33:35'!
detachClassroom: aClassroom
	
	rooms remove: aClassroom.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:28:12'!
initialize

	rooms := Set new.
	
	college := nil.! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:17'!
invariant

	rooms do: [:aRoom | aRoom invariant ].

	rooms do: [:aRoom | self assert: aRoom campus == self ].
	! !

!Campus methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:25:26'!
removeClassroom: aClassroom
	
	self assert: aClassroom campus == self.
	
	aClassroom detach.
	
	self detachClassroom: aClassroom.! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:20:48'!
campus
	^campus! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:32'!
campus: aCampus
	campus := aCampus! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:11'!
capacity
	^capacity! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:00:58'!
capacity: anInteger
	capacity := anInteger! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:01:07'!
code
	^code! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:00:44'!
code: aString
	code := aString! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:33:35'!
detach

	campus ifNil:[^self].
	
	campus detachClassroom: self. 
	
	campus := nil.! !

!Classroom methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:03:14'!
invariant
	^true! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:17:06'!
addAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college isNil.
	
	anAcademicProgram college: self.
	
	programs add: anAcademicProgram! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:17:40'!
addCampus: aCampus

	self assert: aCampus college isNil.
	
	aCampus college: self.
	
	campuses add: aCampus! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:17:54'!
addLecturer: aLecturer

	self assert: aLecturer college isNil.
	
	aLecturer college: self.
	
	lecturers add: aLecturer! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:18:08'!
addModule: aModule

	self assert: aModule college isNil.
	
	aModule college: self.
	
	modules add: aModule! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:40:20'!
description
	^description! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:40:15'!
description: aString
	description := aString! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:18:51'!
detachAcademicProgram: anAcademicProgram

	programs remove: anAcademicProgram! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:35:02'!
detachCampus: aCampus

	campuses remove: aCampus! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:50:42'!
detachLecturer: aLecturer

	lecturers remove: aLecturer ! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:38:09'!
detachModule: aModule

	modules remove: aModule! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:17:17'!
initialize

	campuses := Set new.
	
	modules := Set new.
	
	lecturers := Set new.
	
	programs := Set new.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:07:45'!
invariant

	programs do: [:anAcademicProgram | anAcademicProgram invariant ].

	programs do: [:anAcademicProgram | self assert: anAcademicProgram college == self ].
	
	campuses do: [:aCampus | aCampus invariant ].

	campuses do: [:aCampus | self assert: aCampus college == self ].

	modules do: [:aModule | aModule invariant ].

	modules do: [:aModule | self assert: aModule college == self ].

	lecturers do: [:aLecturer | aLecturer invariant ].

	lecturers do: [:aLecturer | self assert: aLecturer college == self ].
	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 18:15:20'!
programs
	^programs! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:19:24'!
removeAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college == self.
	
	anAcademicProgram detach.
	
	self detachAcademicProgram: anAcademicProgram.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:13:36'!
removeCampus: aCampus

	self assert: aCampus college == self.
	
	aCampus detach.
	
	self detachCampus: aCampus.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:15:04'!
removeLecturer: aLecturer

	self assert: aLecturer college == self.
	
	aLecturer detach.
	
	self detachLecturer: aLecturer.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:14:02'!
removeModule: aModule

	self assert: aModule college == self.
	
	aModule detach.
	
	self detachModule: aModule.! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:19'!
yearIndex
	
	^ theYear! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:07'!
yearIndex: anIndex

	theYear := anIndex! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/28/2024 15:00:22'!
yearNames

	^self years collect:[:each | each description ] :: asSet asOrderedCollection sort! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 22:09:51'!
yearSelectionAt: anIndex
	
	| yearDescription |
	
	yearDescription := self yearNames at: anIndex ifAbsent:[^false].

	^ selectedYears anySatisfy:[:aYear | aYear description = yearDescription ]! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/28/2024 15:59:36'!
yearSelectionAt: anIndex put: aBoolean

	| years yearDescription |
	
	yearDescription := self yearNames at: anIndex ifAbsent:[^self].
	
	years := self years select:[:eachYear | eachYear description = yearDescription ].
	
	aBoolean 
		ifTrue:[
			selectedYears addAll: years ]
		ifFalse:[
			selectedYears removeAll: years ].
	
	selectedSemesters removeAll.
	
	theSemester := 0.
	
	self changed: #semesterNames! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/28/2024 14:59:56'!
years
	
	| years tracks |
	
	years := Set new.
	
	tracks := selectedTracks ifEmpty:[self tracks] ifNotEmpty:[selectedTracks].
	
	tracks do:[:eachTrack | 
		years addAll: eachTrack academicYears ].
	
	^ years 
! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 19:00:21'!
programIndex
	
	^ theProgram! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 19:00:31'!
programIndex: anIndex

	theProgram := anIndex! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 21:40:11'!
programSelectionAt: anIndex

	| aProgram |
	
	aProgram := self programs at: anIndex.
	
	^selectedPrograms includes: aProgram.! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/28/2024 15:40:19'!
programSelectionAt: anIndex put: aBoolean

	| aProgram |
	
	aProgram := self programs at: anIndex.
	
	aBoolean 
		ifTrue:[
			selectedPrograms add: aProgram ]
		ifFalse:[
			selectedPrograms remove: aProgram ].
	
	selectedTracks removeAll.
	
	theTrack := 0.
	
	self changed: #tracksNames ; changed: #yearNames ; changed: #semesterNames ; changed: #modules! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 21:35:41'!
programs

	^ college programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/27/2024 19:17:17'!
trackIndex
	
	^ theTrack! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/27/2024 19:17:33'!
trackIndex: anIndex

	theTrack := anIndex! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/28/2024 14:55:29'!
trackNames

	^self tracks collect:[:each | each description] :: asSet asOrderedCollection sort! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/28/2024 14:59:30'!
trackSelectionAt: anIndex
	
	| trackName |
	
	trackName := self trackNames at:anIndex.
	
	^selectedTracks detect:[:eachTrack | eachTrack description = trackName] ifFound:[:aTrack | true] ifNone:[false].! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/28/2024 15:40:46'!
trackSelectionAt: anIndex put: aBoolean

	| selectedDescription tracks |
	
	selectedDescription := self trackNames at: anIndex.
	
	tracks := self tracks select:[:eachTrack | eachTrack description = selectedDescription ].
	
	aBoolean 
		ifTrue:[
			selectedTracks addAll: tracks ]
		ifFalse:[
			selectedTracks removeAll: tracks ].
		
	selectedYears removeAll.

	theYear := 0.
	
	self changed: #yearNames ; changed: #semesterNames; changed: #modules! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/28/2024 14:56:56'!
tracks
	
	| tracks programs |
	
	tracks := Set new.
	
	programs := selectedPrograms ifEmpty:[self programs] ifNotEmpty:[selectedPrograms].
	
	programs do:[:eachProgram | 
		tracks addAll: eachProgram tracks ].
	
	^ tracks 
! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/27/2024 19:20:49'!
semesterIndex
	
	^ theSemester! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/27/2024 19:21:29'!
semesterIndex: anIndex

	theSemester := anIndex! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:04:29'!
semesterNames

	^ self semesters collect:[:each | each description ] :: asSet asOrderedCollection sort
! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:39:28'!
semesterSelectionAt: anIndex
	
	| semesterDescription |
	
	semesterDescription := self semesterNames at: anIndex ifAbsent:[^false].

	^ selectedSemesters anySatisfy:[:aSemester | aSemester description = semesterDescription ]! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:38:30'!
semesterSelectionAt: anIndex put: aBoolean

	| semesters semesterDescription |
	
	semesterDescription := self semesterNames at: anIndex ifAbsent:[^self].
	
	semesters := self semesters select:[:eachSemester | eachSemester description = semesterDescription ].
	
	aBoolean 
		ifTrue:[
			selectedSemesters addAll: semesters ]
		ifFalse:[
			selectedSemesters removeAll: semesters ].
		
	self changed: #modules! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:04:01'!
semesters
	
	| semesters years  |
	
	semesters := Set new.
	
	years := selectedYears ifEmpty:[self years] ifNotEmpty:[selectedYears].
	
	years do:[:eachYear | 
		semesters addAll: eachYear semesters ].
	
	^ semesters
! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 12/27/2024 19:31:04'!
moduleIndex
	^1! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 12/27/2024 19:31:11'!
moduleIndex: anIndex
	! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 12/27/2024 19:31:24'!
moduleSelectionAt: anIndex
	^ anIndex = 1! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 12/27/2024 19:31:41'!
moduleSelectionAt: anIndex put: aBoolean
! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 12/28/2024 15:53:59'!
modules

	| modules semesters table |

	modules := Set new.
	
	semesters := selectedSemesters ifEmpty:[self semesters] ifNotEmpty:[selectedSemesters].
	
	semesters do:[:eachSemester | 
		modules addAll: eachSemester modules ].
	
	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' }.
	
	modules do:[:eachModule |
		eachModule units do:[:eachUnit |
			table add: { '{1}' format:{eachUnit points} . '{1}' format:{eachUnit duration} . eachUnit description . eachModule description . '{1}' format:{ eachModule code } } ] ].
	
	^table
! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 18:12:46'!
college: aCollege

	college := aCollege! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 19:22:07'!
initialize

	theProgram := 0.
	
	selectedPrograms := Set new.
	
	theYear := 0.
	
	selectedYears := Set new.
	
	theTrack := 0.
	
	selectedTracks := Set new.

	theSemester:= 0.
	
	selectedSemesters := Set new.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self attachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit attachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:13:36'!
attachAcademicUnit: anAcademicUnit

	units add: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:15:15'!
college
	^college! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:54:41'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:41:34'!
description
	^description! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:41:27'!
description: aString
	description := aString! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:54:45'!
detach

	college ifNil:[^self].
	
	college detachLecturer: self.
	
	college := nil. ! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:14:23'!
detachAcademicUnit: anAcademicUnit

	units remove: anAcademicUnit.
! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:36:59'!
initialize

	units := Set new! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:08:05'!
invariant
	true! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:14:42'!
removeUnit: anAcademicUnit

	self detachAcademicUnit: anAcademicUnit.
	
	anAcademicUnit detachLecturer: self.! !

!Lecturer methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:58:00'!
units
	^units! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module isNil.
	
	anAcademicUnit module: self.
	
	units add: anAcademicUnit ! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:54:17'!
attachAcademicUnit: aUnit

	units add: aUnit! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:53:58'!
attachSemester: aSemester

	semesters add: aSemester! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:15:08'!
code
	^code! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:14:59'!
code: anInteger
	code := anInteger! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:14:26'!
college
	^college! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:54:48'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:53:46'!
description
	^description! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:53:38'!
description: aString
	description := aString! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/25/2024 22:38:25'!
detach

	college ifNil:[^self].
	 
	college detachModule: self.  
	
	college := nil.! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:44:35'!
detachAcademicUnit: aUnit

	units remove: aUnit! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:54:16'!
detachSemester: aSemester

	semesters remove: aSemester! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:51:07'!
initialize

	college := nil.
	
	units := Set new.
	
	semesters := Set new.! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:52'!
invariant

	units do: [:aUnit | aUnit invariant ].

	units do: [:aUnit | self assert: aUnit module == self ].
	! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:44:21'!
removeAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module == self.
	
	anAcademicUnit detach.
	
	self detachAcademicUnit: anAcademicUnit ! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:57:28'!
semesters
	^semesters ! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:51:51'!
units
	^units! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:00:11'!
academicYear
	^academicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:05'!
addModule: aModule

	aModule attachSemester: self.
	
	self attachModule: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:31:03'!
addStencil: aStencil
	
	self assert: aStencil semester isNil.
	
	aStencil attachSemester: self.
	
	self attachStencil: aStencil. ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:43:56'!
attachAcademicYear: anAcademicYear

	self assert: academicYear isNil.
	
	academicYear := anAcademicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:20'!
attachModule: aModule

	modules add: aModule! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:31:50'!
attachStencil: aStencil

	stencils add: aStencil! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:37'!
description
	^description! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:42'!
description: aString
	description := aString! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:45:24'!
detach

	academicYear ifNil:[^self].
	
	academicYear detachSemester: self. 
	
	academicYear := nil.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:55:00'!
detachModule: aModule

	modules remove: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:32:27'!
detachStencil: aStencil

	stencils remove: aStencil! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:55'!
initialize

	stencils := Set new.
	
	modules := Set new.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:07:02'!
invariant

	stencils do: [:aStencil | aStencil invariant ].

	stencils do: [:aStencil | self assert: aStencil semester == self ].
	! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:31:36'!
modules
	^modules! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:54:47'!
removeModule: aModule

	aModule detachSemester: self.
	
	self detachModule: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:32:58'!
removeStencil: aStencil

	self assert: aStencil semester == self.
	
	aStencil detach.
	
	self detachStencil: aStencil.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:14:28'!
addAssignment: anAssignment

	self assert: anAssignment stencil isNil.
	
	self attachAssignment: anAssignment.
	
	anAssignment stencil: self.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:14:40'!
attachAssignment: anAssignment

	assignments add: anAssignment ! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:30:48'!
attachSemester: aSemester

	semester := aSemester ! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:34:25'!
description
	^description! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:34:34'!
description: aString
	description := aString! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:33:59'!
detach

	semester ifNil:[^self].
	
	semester detachStencil: self.
	
	semester := nil.! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:24'!
detachAssignment: anAssignment

	self assert: anAssignment stencil == self.
	
	assignments remove: anAssignment
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:13:32'!
initialize

	assignments := Set new! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:07:18'!
invariant

	assignments do: [:anAssignment | anAssignment invariant ].

	assignments do: [:anAssignment | self assert: anAssignment stencil == self ].
	
	assignments do: [:anAssignment | self assert: anAssignment unit module semesters includes: semester  ].
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:46:47'!
removeAssignment: anAssignment

	self assert: anAssignment stencil == self.
	
	anAssignment detach.
	
	self detachAssignment: anAssignment
	! !

!Stencil methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 15:30:57'!
semester
	^semester! !

!TavorExample class methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:50:23'!
example

	"self example"
	
	| aCollege aLecturer aModule aLecture aRecitation anAcademicProgram aCampus anAcademicTrack |
	
	aCollege := College new.
	
	aCollege description: 'אפקה'.
	
	aLecturer := Lecturer new.
	
	aLecturer description: 'אליס'.
	
	aCollege addLecturer: aLecturer.
	
	aModule := Module new.
	
	aModule code: 90131 ; description: 'לוגיקה'.
	
	aLecture := Lecture new.
	
	aLecture duration: 3.
	
	aModule addAcademicUnit: aLecture. 

	aRecitation := Recitation new.
	
	aRecitation duration: 2.
	
	aModule addAcademicUnit: aRecitation. 
	
	aLecturer addAcademicUnit: aLecture.
	
	aCollege addModule: aModule.
	
	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: 'מדעי הנתונים'.
	
	anAcademicTrack := AcademicTrack new.
	
	anAcademicTrack description: 'מסלול ערב'.
	
	anAcademicProgram addAcademicTrack: anAcademicTrack.
	
	1 to:4 do:[:i | | anAcademicYear |
		
		anAcademicYear := AcademicYear new.
		
		anAcademicYear description: ('שנה {1}' format:{i}).
		
		{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:each | | aSemester |
			
			aSemester := Semester new.
			
			aSemester description: each.
			
			anAcademicYear addSemester: aSemester.
			
			i = 2 and: each = 'סמסטר קיץ' 
				:: ifTrue:[
					aSemester addModule: aModule] 		].
		
		anAcademicTrack addAcademicYear: anAcademicYear ].

	anAcademicTrack := AcademicTrack new.
	
	anAcademicTrack description: 'מסלול יום'.
	
	anAcademicProgram addAcademicTrack: anAcademicTrack.
	
	1 to:3 do:[:i | | anAcademicYear |
		
		anAcademicYear := AcademicYear new.
		
		anAcademicYear description: ('שנה {1}' format:{i}).
		
		{ 'סמסטר א' . 'סמסטר ב' } do:[:each | | aSemester |
			
			aSemester := Semester new.
			
			aSemester description: each.
			
			anAcademicYear addSemester: aSemester.

			i = 1 and: each = 'סמסטר ב' 
				:: ifTrue:[
					aSemester addModule: aModule] 		].
		
		anAcademicTrack addAcademicYear: anAcademicYear ].
	
	aCollege addAcademicProgram: anAcademicProgram .
	
	aCampus := Campus new.
	
	aCampus description: 'מתחם הפיקוס'.
	
	1 to:5 do:[:i | | aRoom |
		aRoom := Classroom new.
		aRoom code: 200+i.
		aCampus addClassroom: aRoom ].
	
	aCollege addCampus: aCampus.
	
	^aCollege
	! !
