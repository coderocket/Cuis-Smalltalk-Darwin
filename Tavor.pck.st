'From Cuis7.1 [latest update: #6676] on 4 January 2025 at 10:08:56 pm'!
'Description '!
!provides: 'Tavor' 1 176!
!requires: 'CUA' 1 28 nil!
!requires: 'LayoutAlgebra' 1 11 nil!
!requires: 'Neo-CSV-Core' 1 1 nil!
!requires: 'UI-Mold' 1 30 nil!
SystemOrganization addCategory: #'Tavor-Model'!
SystemOrganization addCategory: #'Tavor-Morphic'!
SystemOrganization addCategory: #Tavor!


!classDefinition: #TavorError category: #'Tavor-Model'!
Error subclass: #TavorError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Model'!
!classDefinition: 'TavorError class' category: #'Tavor-Model'!
TavorError class
	instanceVariableNames: ''!

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

!classDefinition: #RtoLRightInnerListMorph category: #'Tavor-Morphic'!
InnerListMorph subclass: #RtoLRightInnerListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'RtoLRightInnerListMorph class' category: #'Tavor-Morphic'!
RtoLRightInnerListMorph class
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

!classDefinition: #RtoLPluggableListMorphOfMany category: #'Tavor-Morphic'!
PluggableListMorphOfMany subclass: #RtoLPluggableListMorphOfMany
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'RtoLPluggableListMorphOfMany class' category: #'Tavor-Morphic'!
RtoLPluggableListMorphOfMany class
	instanceVariableNames: ''!

!classDefinition: #RtoLPluggableListMorph category: #'Tavor-Morphic'!
PluggableListMorph subclass: #RtoLPluggableListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'RtoLPluggableListMorph class' category: #'Tavor-Morphic'!
RtoLPluggableListMorph class
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

!classDefinition: #OpenFileDialog category: #'Tavor-Morphic'!
SystemWindow subclass: #OpenFileDialog
	instanceVariableNames: 'directory currentDirectoryEntryMorph theEntryIndex showHiddenFiles sortBy selectFileEntryAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'OpenFileDialog class' category: #'Tavor-Morphic'!
OpenFileDialog class
	instanceVariableNames: ''!

!classDefinition: #RtoLSystemWindow category: #'Tavor-Morphic'!
SystemWindow subclass: #RtoLSystemWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'RtoLSystemWindow class' category: #'Tavor-Morphic'!
RtoLSystemWindow class
	instanceVariableNames: ''!

!classDefinition: #CollegeBrowser category: #'Tavor-Morphic'!
RtoLSystemWindow subclass: #CollegeBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'CollegeBrowser class' category: #'Tavor-Morphic'!
CollegeBrowser class
	instanceVariableNames: ''!

!classDefinition: #LecturerBrowser category: #'Tavor-Morphic'!
RtoLSystemWindow subclass: #LecturerBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'LecturerBrowser class' category: #'Tavor-Morphic'!
LecturerBrowser class
	instanceVariableNames: ''!

!classDefinition: #ModuleBrowser category: #'Tavor-Morphic'!
RtoLSystemWindow subclass: #ModuleBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'ModuleBrowser class' category: #'Tavor-Morphic'!
ModuleBrowser class
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
	instanceVariableNames: 'college theProgram theYear selectedYears theTrack theSemester selectedSemesters latestNewModule theSchool selectedSchools theEmployment selectedEmployments'
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

!classDefinition: #TavorApplication category: #'Tavor-Morphic'!
Object subclass: #TavorApplication
	instanceVariableNames: 'model lastImportDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'TavorApplication class' category: #'Tavor-Morphic'!
TavorApplication class
	instanceVariableNames: ''!

!classDefinition: #RtoLSelectMultipleField category: #'Tavor-Morphic'!
SelectMultipleField subclass: #RtoLSelectMultipleField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tavor-Morphic'!
!classDefinition: 'RtoLSelectMultipleField class' category: #'Tavor-Morphic'!
RtoLSelectMultipleField class
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

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 19:00:34'!
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

!TableMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/16/2024 15:08:15'!
model: aTableModel
	model := aTableModel ! !

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

!RtoLRightInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:23:05'!
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

!RtoLPluggableListMorphOfMany methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:07:29'!
innerMorphClass
	^RtoLRightInnerListMorph! !

!RtoLPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:07:29'!
innerMorphClass
	^RtoLRightInnerListMorph! !

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

!PluggableTableMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 19:28:45'!
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
	
	1 to:nrows do:[: rowIndex | | rowHeight |
		
		rowHeight := 8.
		
		1 to: ncols do:[:colIndex |
			
			rowHeight := rowHeight max: (scroller at: rowIndex at: colIndex :: minimumExtent y	) ]. 
		
		1 to: ncols do:[:colIndex |
			
			scroller at: rowIndex at:colIndex :: layoutSpec fixedHeight: rowHeight ] ].
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 23:21:32'!
buildMorphicWindow

	|  top entries openButton cancelButton buttons dialog backButton upButton |
	
	backButton := PluggableButtonMorph model: nil action: nil.
	backButton iconDrawSelector: #drawLeftIcon.
	upButton := PluggableButtonMorph model: self action: #goUp.
	upButton iconDrawSelector: #drawUpIcon.

	currentDirectoryEntryMorph := directory pathName morph.
	
	currentDirectoryEntryMorph crAction: [ | dd |
		dd := currentDirectoryEntryMorph contents asDirectoryEntry.
		dd exists
			ifTrue:[
				directory := dd.
				self changed: #entryNames ]
			ifFalse:[
				currentDirectoryEntryMorph contents: directory pathName ] ].
	
	top := ((backButton + upButton) - 128f @ (16@0) align:0) + currentDirectoryEntryMorph  |48f.
	
	entries :=  PluggableListMorph withModel: self listGetter: #entryNames indexGetter: #entryIndex indexSetter: #entryIndex:.
	
	entries doubleClickSelector: #recurse.
	
	openButton := PluggableButtonMorph model: self action: #selectFileEntry label: 'Open'.
	cancelButton := PluggableButtonMorph model: self action: #delete label: 'Cancel'.
	
	buttons := openButton - 96f / (cancelButton - 96f).
	
	dialog := top </> ( (entries -1p |1p ) + (buttons | 64f - 0.3p) ).
	
	self addMorph: dialog
	! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:55:18'!
directory: aDirectoryEntry

	directory := aDirectoryEntry ifNil:[DirectoryEntry currentDirectory].
	
	currentDirectoryEntryMorph contents: directory pathName	.
	
	self changed: #entryNames! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:42:58'!
entries

	^directory children select: showHiddenFiles :: sort: sortBy 
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:20:15'!
entryIndex
	^theEntryIndex ! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:23:43'!
entryIndex: anInteger

	theEntryIndex := anInteger.
	
	theEntryIndex = 0 ifTrue:[^self].
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:42:48'!
entryNames

	^self entries collect:[:eachEntry | 
		eachEntry name , 		(eachEntry isDirectory 			ifTrue:[ '/' ] ifFalse:['']) ]
	
! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:51'!
goUp

	directory parent ifNil:[^self].
	
	directory := directory parent. 
	
	currentDirectoryEntryMorph contents: directory pathName.
	
	self changed: #entryNames! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:00'!
initialize

	super initialize.
	
	directory := DirectoryEntry currentDirectory.
	
	theEntryIndex := 0.
	
	showHiddenFiles := [:x | x name size = 0 or: [ x name first ~= $.] ].
	
	sortBy := [:x :y | x name <= y name ].! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 22:44:31'!
recurse

	| child |
	
	theEntryIndex = 0 ifTrue:[^self].

	child := self entries at: theEntryIndex.

	child isDirectory 
		ifTrue:[
			directory := child.
			currentDirectoryEntryMorph contents: directory pathName.
			self changed: #entryNames ]! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:46:21'!
selectFileEntry

	theEntryIndex = 0 ifTrue:[^self].
	
	model perform: selectFileEntryAction with: (self entries at: theEntryIndex).
	
	self delete.
	! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:46:35'!
selectFileEntryAction: aSymbol
	selectFileEntryAction := aSymbol! !

!OpenFileDialog class methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:48:34'!
open: model start: aDirectoryEntry action: aSymbol label: aString

	| window |
	
	window := super open: model label: aString.
	
	window directory: aDirectoryEntry.
	
	window selectFileEntryAction: aSymbol.
	
	^window! !

!RtoLSystemWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 23:07:55'!
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

!CollegeBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 22:01:29'!
buildMorphicWindow

	| topPanel semesters years tracks programs bottomPanel status |
	
	semesters := RtoLPluggableListMorphOfMany withModel: model listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	years := RtoLPluggableListMorphOfMany withModel: model listGetter: #yearNames primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.
	
	tracks := RtoLPluggableListMorph withModel: model listGetter: #trackNames indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	programs := RtoLPluggableListMorph withModel: model listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	topPanel := (semesters - (1/4)p | 1p) <+> (years - (1/4)p | 1p) <+> (tracks - (1/4)p | 1p) <+> (programs - (1/4)p | 1p).
	
	status := TextModelMorph textProvider: model textGetter: #summary.
	
	bottomPanel := PluggableTableMorph new.
	
	bottomPanel model: model ; table: #modules ; rightToLeft: true ; headerRow: true.

	self layoutMorph addMorph: (topPanel -1.0p | 0.2p </> ( (status - 1.0p | 48f) </> (bottomPanel -1.0p) | 0.8p)).
	! !

!LecturerBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:37:17'!
buildMorphicWindow

	| topPanel bottomPanel schools employment |
	
	schools := RtoLPluggableListMorphOfMany withModel: model listGetter: #schoolNames primarySelectionGetter: #schoolIndex primarySelectionSetter: #schoolIndex: listSelectionGetter: #schoolSelectionAt: listSelectionSetter: #schoolSelectionAt:put:.
	
	employment := RtoLPluggableListMorphOfMany withModel: model listGetter: #employmentNames primarySelectionGetter: #employmentIndex primarySelectionSetter: #employmentIndex: listSelectionGetter: #employmentSelectionAt: listSelectionSetter: #employmentSelectionAt:put:.
	
	topPanel := (employment - (1/2)p | 1p) <+> (schools - (1/2)p | 1p) .
	
	bottomPanel := PluggableTableMorph new.
	
	bottomPanel model: model ; table: #lecturers ; rightToLeft: true ; headerRow: true.

	self layoutMorph addMorph: (topPanel -1.0p | 0.3p </> (bottomPanel -1.0p | 0.7p)).
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

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:23:21'!
trackAt: aString

	^ tracks detect:[:eachTrack | eachTrack description = aString] ifFound:[:aTrack | aTrack] ifNone:[nil]! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:29:57'!
tracks
	^tracks! !

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:23:50'!
academicYearAt: aString

	^ academicYears detect:[:eachYear | eachYear description = aString] ifFound:[:aYear | aYear] ifNone:[nil]! !

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

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 21:53:41'!
points
	^  duration / 2! !

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

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:24:28'!
semesterAt: aString

	^ semesters detect:[:eachSemester | eachSemester description = aString] ifFound:[:aSemester | aSemester] ifNone:[nil]! !

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:35:18'!
academicYearNames

	^{ 'שנה 1' . 'שנה 2' . 'שנה 3' . 'שנה 4' }! !

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 17:37:42'!
import: aFileEntry

	| aReadStream aCSVReader headers programIndex trackIndex academicYearIndex semesterIndex moduleCodeIndex moduleDescriptionIndex moduleLectureIndex moduleRecitationIndex moduleLabIndex  |

	aReadStream := aFileEntry readStream.
	
	aCSVReader := NeoCSVReader on: aReadStream.
	
	headers := Dictionary new.
	
	aCSVReader next withIndexDo:[:eachName :eachIndex | headers at: eachName put: eachIndex].
	
	programIndex := headers at: 'תוכנית לימודים'.

	trackIndex := headers at: 'מסלול'.
	
	academicYearIndex := headers at: 'שנה'.
	
	semesterIndex := headers at: 'סמסטר'.
	
	moduleCodeIndex := headers at: 'קוד קורס'.
	
	moduleDescriptionIndex := headers at: 'שם קורס'.
	
	moduleLectureIndex := headers at: 'הרצאה'.
	
	moduleRecitationIndex := headers at: 'תרגול'.
	
	moduleLabIndex := headers at: 'מעבדה'.
	
	aCSVReader do:[:eachRow | | aProgram aTrack aYear aSemester aModule lectureDuration recitationDuration labDuration |
		
		aProgram := self programAt: (eachRow at: programIndex).
		
		aTrack := aProgram trackAt: ('מסלול {1}' format: {eachRow at: trackIndex }).
		
		aYear := aTrack academicYearAt: ('שנה {1}' format: {eachRow at: academicYearIndex}).
		
		aSemester := aYear semesterAt: ('סמסטר {1}' format:{eachRow at: semesterIndex}).
		
		aModule := Module new.
		
		aModule code: (eachRow at: moduleCodeIndex) ; description: (eachRow at: moduleDescriptionIndex).
		
		lectureDuration := Number readFrom: (eachRow at: moduleLectureIndex).
		
		recitationDuration := Number readFrom: (eachRow at: moduleRecitationIndex).
		
		labDuration := Number readFrom: (eachRow at: moduleLabIndex).
		
		lectureDuration > 0 ifTrue:[ | aLecture |
			aLecture := Lecture new.
			
			aLecture duration: lectureDuration.
			
			aModule addAcademicUnit: aLecture ].
		
		recitationDuration > 0 ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			
			aRecitation duration: recitationDuration.
			
			aModule addAcademicUnit: aRecitation ].

		labDuration > 0 ifTrue:[ | aLab |
			aLab := Laboratory new.
			
			aLab duration: labDuration.
			
			aModule addAcademicUnit: aLab ].
		
		aSemester addModule: aModule ]
		! !

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

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:45:13'!
lecturers
	^lecturers! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 18:20:44'!
moduleAt: aCodeInteger

	^modules detect:[:eachModule | eachModule code = aCodeInteger ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:21:54'!
programAt: aString

	^programs detect:[:eachProgram | eachProgram description = aString] ifFound:[:aProgram | aProgram] ifNone:[nil]! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:45:55'!
programNames

	^programs collect:[:each | each description ] :: asOrderedCollection sort
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

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:34:54'!
semesterNames

	^{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:38:50'!
trackNames

	^{ 'מסלול יום' . 'מסלול ערב' . 'מסלול משולב' }! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:19'!
yearIndex
	
	^ theYear! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 19:12:07'!
yearIndex: anIndex

	theYear := anIndex! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/4/2025 19:52:04'!
yearNames

	^self years collect:[:each | each description ] :: asSet asOrderedCollection sort! !

!CollegeModel methodsFor: 'years' stamp: 'DF 12/27/2024 22:09:51'!
yearSelectionAt: anIndex
	
	| yearDescription |
	
	yearDescription := self yearNames at: anIndex ifAbsent:[^false].

	^ selectedYears anySatisfy:[:aYear | aYear description = yearDescription ]! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/4/2025 22:05:23'!
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
	
	self changed: #semesterNames ; changed: #summary! !

!CollegeModel methodsFor: 'years' stamp: 'DF 1/4/2025 19:38:53'!
years
		
	theTrack = 0 ifTrue:[^{}].
	
	^self tracks at: theTrack :: academicYears 
! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 19:00:21'!
programIndex
	
	^ theProgram! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 1/4/2025 22:04:49'!
programIndex: anIndex

	theProgram := anIndex.

	theTrack := 0.
	
	theYear := 0.
	
	theSemester := 0.
	
	selectedYears removeAll.
	
	selectedSemesters removeAll.
		
	self changed: #trackNames ; changed: #yearNames; changed: #semesterNames ; changed: #summary! !

!CollegeModel methodsFor: 'programs' stamp: 'DF 12/27/2024 21:35:41'!
programs

	^ college programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 12/27/2024 19:17:17'!
trackIndex
	
	^ theTrack! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 22:04:56'!
trackIndex: anIndex

	theTrack := anIndex.
	
	theYear := 0.
	
	theSemester := 0.
	
	selectedYears removeAll.
	
	selectedSemesters removeAll.	
	
	self changed: #yearNames; changed: #semesterNames	 ; changed: #summary! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 19:41:57'!
trackNames

	^self tracks collect:[:each | each description] ! !

!CollegeModel methodsFor: 'tracks' stamp: 'DF 1/4/2025 19:42:18'!
tracks
	
	theProgram 	= 0 ifTrue:[^{}].
		
	^self programs at: theProgram :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
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

!CollegeModel methodsFor: 'semesters' stamp: 'DF 1/4/2025 22:05:06'!
semesterSelectionAt: anIndex put: aBoolean

	| semesters semesterDescription |
	
	semesterDescription := self semesterNames at: anIndex ifAbsent:[^self].
	
	semesters := self semesters select:[:eachSemester | eachSemester description = semesterDescription ].
	
	aBoolean 
		ifTrue:[
			selectedSemesters addAll: semesters ]
		ifFalse:[
			selectedSemesters removeAll: semesters ].
		
	self changed: #modules ; changed: #summary! !

!CollegeModel methodsFor: 'semesters' stamp: 'DF 12/28/2024 15:04:01'!
semesters
	
	| semesters years  |
	
	semesters := Set new.
	
	years := selectedYears ifEmpty:[self years] ifNotEmpty:[selectedYears].
	
	years do:[:eachYear | 
		semesters addAll: eachYear semesters ].
	
	^ semesters
! !

!CollegeModel methodsFor: 'modules' stamp: 'DF 1/4/2025 21:59:23'!
modules

	| table |

	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	selectedYears asOrderedCollection sort:[:x :y | x description <= y description ] :: 
	do:	[:eachYear |		
		eachYear semesters select:[:each | selectedSemesters includes:each ] :: asOrderedCollection sort:[:x :y | x description <= y description ] :: 
	do:[:eachSemester | 
		eachSemester modules asOrderedCollection sort:[:x :y | x code <= y code ] :: 
	do:[:eachModule |
			eachModule units asOrderedCollection sort:[:x :y | x description <= y description] :: 
	do:[:eachUnit |
		table add: { '{1}' format:{eachUnit points * 1.0} :: reverse . '{1}' format:{eachUnit duration} :: reverse . eachUnit description . eachModule description . '{1}' format:{ eachModule code } :: reverse . eachSemester description  . eachYear description } ] ] ] ].
	
	^table
! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/29/2024 20:45:03'!
college
	^college! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/27/2024 18:12:46'!
college: aCollege

	college := aCollege! !

!CollegeModel methodsFor: 'accessing' stamp: 'DF 12/29/2024 21:26:30'!
latestNewModule

	^latestNewModule ! !

!CollegeModel methodsFor: 'initialization' stamp: 'DF 1/4/2025 20:39:42'!
initialize

	theProgram := 0.
	
	theYear := 0.
	
	selectedYears := Set new.
	
	theTrack := 0.
	
	theSemester:= 0.
	
	selectedSemesters := Set new.
	
	theSchool := 0.
	
	selectedSchools := Set new.
	
	theEmployment := 0.
	
	selectedEmployments := Set new.! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:26:46'!
addModuleToAcademicProgram: fields

	| anIntegerCode programNames aModule semesterNames yearNames trackNames |
	
	anIntegerCode := fields at:1 :: value.
	
	programNames := fields at:2 :: value.

	trackNames := fields at:3 :: value.
	
	yearNames := fields at:4 :: value.
	
	semesterNames := fields at:5 :: value.
	
	aModule := college moduleAt: anIntegerCode.
	
	programNames do:[:eachProgramName | | program | 
		
		program := college programAt: eachProgramName. 
		
		trackNames do:[:eachTrackName | | track |
			
			track := program trackAt: eachTrackName.
		
			yearNames do:[:eachYearName | | academicYear |
			
				academicYear := track academicYearAt: eachYearName. 
			
					semesterNames do:[:eachSemesterName | | semester |
				
						semester := academicYear semesterAt: eachSemesterName.
				
						semester addModule: aModule ] ] ] ].
	
	 
	
	! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 17:30:10'!
addNewAcademicProgram: fields

	| programName duration withDayTrack withEveningTrack anAcademicProgram |
	
	programName := fields at:1 :: value.
	
	duration := fields at:2 :: value.
	
	withDayTrack := fields at:3 :: value.
	
	withEveningTrack := fields at:4 :: value.
	
	college programAt: programName :: notNil
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור תוכנית אקדמית עם שם קיים.' ; signal].

	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: programName.
	
	withDayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	withEveningTrack 
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: duration do:[:eachYearIndex | | aYear |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := Semester new.
					aSemester description: eachName.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	college addAcademicProgram: anAcademicProgram.
	
	self changed: #programs.! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 14:17:16'!
addNewModule: fields

	| aModule aLabDurationInteger aLectureDurationInteger aRecitationDurationInteger aStringDescription anIntegerCode programNames semesterNames yearNames trackNames |
	
	aStringDescription := fields at:1 :: value.

	anIntegerCode := fields at:2 :: value.
	
	aLectureDurationInteger := fields at:3 :: value.
	
	aRecitationDurationInteger := fields at:4 :: value.
	
	aLabDurationInteger := fields at:5 :: value.

	programNames := fields at:6 :: value.

	trackNames := fields at:7 :: value.
	
	yearNames := fields at:8 :: value.
	
	semesterNames := fields at:9 :: value.
	
	college moduleAt: anIntegerCode :: notNil 
		ifTrue:[TavorError new messageText: 'לא ניתן ליצור קורס עם קוד קיים.' ; signal].
		
	aModule := Module new.
	
	aModule code: anIntegerCode ; description: aStringDescription.
	
	aLectureDurationInteger > 0
		ifTrue:[ | aLecture |
			aLecture := Lecture new.
			aLecture duration: aLectureDurationInteger.
			aModule addAcademicUnit: aLecture ].

	aRecitationDurationInteger > 0
		ifTrue:[ | aRecitation |
			aRecitation := Recitation new.
			aRecitation duration: aRecitationDurationInteger.
			aModule addAcademicUnit: aRecitation ].

	aLabDurationInteger > 0
		ifTrue:[ | aLaboratory |
			aLaboratory := Laboratory new.
			aLaboratory duration: aLabDurationInteger.
			aModule addAcademicUnit: aLaboratory ].
		
	college addModule: aModule.
	
	self addModuleToAcademicProgram: { anIntegerCode . programNames . trackNames . yearNames . semesterNames }.
	
	self changed: #modules.
	
	latestNewModule := aModule.
		! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 22:00:20'!
employmentIndex

	^ theEmployment ! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:40:39'!
employmentIndex: anIndex

	theEmployment := anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:34:21'!
employmentNames
	^{ 'סגל בכיר' . 'סגל זוטר' . 'מרצה מן החוץ' }! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:40:55'!
employmentSelectionAt: anIndex
	
	^ selectedEmployments includes: anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:41:13'!
employmentSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[selectedEmployments add: anIndex]
		ifFalse:[selectedEmployments remove: anIndex]

! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:57:10'!
lecturers

	| table |
	
	table := OrderedCollection new.
	
	table add: { 'שעות משובצות' . 'אחוזי משרה' . 'שעות למשרה' . 'מעמד' . 'שם' }.
	
	college lecturers asOrderedCollection sort:[:x :y | x description <= y description ] :: do:[:eachLecturer |
		table add: { '{1}' format:{18} :: reverse . '{1}%' format:{80} :: reverse . '24' reverse . 'מרצה מן החוץ' . eachLecturer description } ] .
	
	^table
! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:35:21'!
schoolIndex

	^ theSchool! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:35:46'!
schoolIndex: anIndex

	theSchool := anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:33:43'!
schoolNames
	^{ 'בית הספר להנדסת תוכנה' . 'בית הספר להנדסה מכאנית' . 'בית הספר להנדסת תעשיה וניהול' . 'בית הספר להנדסת חשמל' . 'בית הספר להנדסה רפואית'  . 'היחידה למתמטיקה' . 'היחידה לפיזיקה' }! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:36:58'!
schoolSelectionAt: anIndex
	
	^ selectedSchools includes: anIndex! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:38:14'!
schoolSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[selectedSchools add: anIndex]
		ifFalse:[selectedSchools remove: anIndex]

! !

!CollegeModel methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 22:06:47'!
summary

	| hours points modules |
	
	modules := self modules.
	
	modules ifEmpty:[^''] .
	
	hours := modules allButFirst inject: 0 into:[:acc :eachRow | acc + (Number readFrom:(eachRow at:2)) ].
		
	points := modules allButFirst inject: 0 into:[:acc :eachRow | acc + (Number readFrom:(eachRow at:1)) ].
	
	^'סך הכול {1} שעות, {2} נקודות זכות.' format: { hours printString reverse . points printStringFractionDigits:1 :: reverse } :: reverse! !

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

!TavorExample class methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 14:21:33'!
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
	
	{ 'שנה 1' . 'שנה 2' . 'שנה 3' . 'שנה 4' } do:[ :eachYear | | anAcademicYear |
		
		anAcademicYear := AcademicYear new.
		
		anAcademicYear description: eachYear.
		
		{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachSemester | | aSemester |
			
			aSemester := Semester new.
			
			aSemester description: eachSemester.
			
			anAcademicYear addSemester: aSemester.
			
			eachYear = 'שנה 2' and: eachSemester = 'סמסטר קיץ' 
				:: ifTrue:[
					aSemester addModule: aModule] 		].
		
		anAcademicTrack addAcademicYear: anAcademicYear ].

	anAcademicTrack := AcademicTrack new.
	
	anAcademicTrack description: 'מסלול יום'.
	
	anAcademicProgram addAcademicTrack: anAcademicTrack.
	
	{ 'שנה 1' . 'שנה 2' . 'שנה 3'  } do:[:eachYear | | anAcademicYear |
		
		anAcademicYear := AcademicYear new.
		
		anAcademicYear description: eachYear.
		
		{ 'סמסטר א' . 'סמסטר ב' } do:[:eachSemester | | aSemester |
			
			aSemester := Semester new.
			
			aSemester description: eachSemester.
			
			anAcademicYear addSemester: aSemester.

			eachYear = 'שנה 1' and: eachSemester = 'סמסטר ב' 
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

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 22:22:44'!
addModuleToAcademicProgramDialog

	| mold programs tracks years semesters aDialog position |
	
	mold := Mold new.
	
	programs := ListMultiModel with: model college programNames.

	tracks := ListMultiModel with: model college trackNames.
	
	years := ListMultiModel with: model college academicYearNames.

	semesters := ListMultiModel with: model college semesterNames.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #propertyValue of: (ValueHolder new propertyValue: (model latestNewModule ifNotNil:[model latestNewModule code] ifNil:[nil]) ; yourself);
		addCondition: [:input :value | model college moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'תוכניות לימודים';
		on: #selectedIndexes of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'מסלול לימודים';
		on: #selectedIndexes of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'שנות לימוד';
		on: #selectedIndexes of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'סמסטרים';
		on: #selectedIndexes of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addModuleToAcademicProgram: to: model with: mold fields.
	
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 17:19:35'!
addNewAcademicProgramDialog

	| mold position aDialog |
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם התוכנית';
		on: #propertyValue of: ValueHolder new;
		beRequired.

	(mold integerField)
		label: 'שנות לימוד';
		on: #propertyValue of: (ValueHolder with:4);
		beRequired.

	(mold checkboxField )
		label: 'מסלול יום' ;
		on: #propertyValue of: (ValueHolder with: true).
	
	(mold checkboxField )
		label: 'מסלול ערב' ;
		on: #propertyValue of: (ValueHolder with: true).
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תוכנית לימודים חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewAcademicProgram: to: model with: mold fields.
	
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 22:29:50'!
addNewLecturerDialog

	| mold position aDialog |
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם המרצה';
		on: #propertyValue of: ValueHolder new;
		beRequired.

	(mold selectField) rightToLeft: true ;
		label: 'מעמד מרצה';
		on: #listIndex of: (ListModel with: `{'סגל בכיר' . 'סגל זוטר' . 'מורה מן החוץ' }`:: listIndex: 1) ;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'מרצה חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewLecturer: to: model with: mold fields.
	
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2025 14:12:23'!
addNewModuleDialog

	| mold programs tracks years semesters aDialog position |

	programs := ListMultiModel with: model college programNames.

	tracks := ListMultiModel with: model college trackNames.
	
	years := ListMultiModel with: model college academicYearNames.

	semesters := ListMultiModel with: model college semesterNames.
	
	mold := Mold new.
	
	mold rightToLeft: true.
	
	(mold rtolStringField)
		label: 'שם הקורס';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold integerField)
		label: 'קוד הקורס:';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #propertyValue of: ValueHolder new;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'תוכניות לימודים';
		on: #selectedIndexes of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'מסלולי לימודים';
		on: #selectedIndexes of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'שנות לימוד';
		on: #selectedIndexes of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold fields add: RtoLSelectMultipleField new)
		label: 'סמסטרים';
		on: #selectedIndexes of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קורס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewModule: to: model with: mold fields.
	
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:58:28'!
import: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model college import: aFileEntry .
	
	CollegeBrowser open: model label: 'תוכניות לימוד'.! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 17:11:08'!
menuBar

	| aMenuBar |
	
	aMenuBar := MenuBar new.

	aMenuBar menusRightToLeft: { 
	{ 'קובץ' . { 
		{ 'חדש' . self . #newAction }  . 
		{ 'פתח ...' . self . #openAction } . 
		{ 'שמור' . self . #saveAction } . 
		{ 'שמור בשם ...' . self . #saveAsAction } .
		$| .
		{'יבא תוכניות לימודים ...' . self . #openImportDialog } .
		{'יצא תוכנית לימודים ...' . self . #exportAction } .
		$| .
		{ 'סגור' . self . #exitAction } } } .  
	{ 'עריכה' . {
		{ 'ביטול' . self . #undoAction } .
		{ 'ביצוע מחדש'. self . #redoAction } .
		$| .
		{ 'גזור' . self . #cutAction } .
		{ 'העתק' . self . #copyAction } .
		{ 'הדבק' . self . #pasteAction } } } .
	{ 'תוכנית לימוד' . {
		{'הצג תוכניות לימודים' . self . #openAcademicProgramBrowser } .
		{ 'תוכנית לימוד חדשה ...' . self . #addNewAcademicProgramDialog } 
		 } } .
	{ 'קורס' . {
		{ 'קורס חדש ...' . self . #addNewModuleDialog } .
		{ 'הוסף קורס לתוכניות לימודים ...' . self . #addModuleToAcademicProgramDialog } .
		{ 'הוסף קורס לרפרטואר מרצה ...' . self . #cutAction } 
		 } } .
	{ 'מרצה' . {
		{ 'הצג מרצים' . self .#openLecturerBrowser } .
		{ 'מרצה חדשה ...' . self . #addNewLecturerDialog } 
		 } } .
	{ 'חדר' . {
		{ 'קמפוס חדש ...' . self . #cutAction } .
		{ 'חדר חדש ...' . self . #cutAction } 
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:54:07'!
open

	| aCollege |
	
	aCollege := College new.

	aCollege invariant.

	model := CollegeModel new.

	model college: aCollege.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 20:55:06'!
openAcademicProgramBrowser

	CollegeBrowser open: model label: 'תוכניות לימוד'.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/4/2025 16:57:08'!
openImportDialog

	OpenFileDialog open:self start: lastImportDirectory action: #import: label:'Select File'! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 21:58:25'!
openLecturerBrowser

	LecturerBrowser open: model label: 'מרצים'.
! !

!TavorApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2025 21:45:52'!
showCollapsedWindows

	| windows menu |
	
	windows := UISupervisor ui submorphs select:[:each | each isKindOf: SystemWindow :: and: [each isCollapsed ] ].
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	windows do:[:eachWindow | 
		(menu add: eachWindow label target: eachWindow action: #show) color: Theme current buttonLabel ].
	
	^menu! !

!TavorApplication class methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2025 20:56:24'!
open

	| anApp |
	
	anApp := self new.

	anApp menuBar.
	
	anApp open.
! !

!RtoLSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:08:57'!
inputMorphInstance
	^ RtoLPluggableListMorphOfMany new! !
