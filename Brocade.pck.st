'From Cuis7.3 [latest update: #7041] on 1 February 2025 at 11:12:38 pm'!
'Description '!
!provides: 'Brocade' 1 18!
SystemOrganization addCategory: 'Brocade-Morphic'!
SystemOrganization addCategory: 'Brocade'!
SystemOrganization addCategory: 'Brocade-Application'!


!classDefinition: #BrocadeApplication category: 'Brocade-Application'!
Object subclass: #BrocadeApplication
	instanceVariableNames: 'model lastImportDirectory'
	classVariableNames: 'TheApplication'
	poolDictionaries: ''
	category: 'Brocade-Application'!
!classDefinition: 'BrocadeApplication class' category: 'Brocade-Application'!
BrocadeApplication class
	instanceVariableNames: ''!

!classDefinition: #QuietTheme category: 'Brocade-Morphic'!
Theme subclass: #QuietTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Brocade-Morphic'!
!classDefinition: 'QuietTheme class' category: 'Brocade-Morphic'!
QuietTheme class
	instanceVariableNames: ''!

!classDefinition: #TextFieldSentence category: 'Brocade-Morphic'!
LayoutMorph subclass: #TextFieldSentence
	instanceVariableNames: 'rightToLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Brocade-Morphic'!
!classDefinition: 'TextFieldSentence class' category: 'Brocade-Morphic'!
TextFieldSentence class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCell category: 'Brocade-Morphic'!
TableCell subclass: #BrocadeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Brocade-Morphic'!
!classDefinition: 'BrocadeTableCell class' category: 'Brocade-Morphic'!
BrocadeTableCell class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCellItem category: 'Brocade-Morphic'!
TableCellItem subclass: #BrocadeTableCellItem
	instanceVariableNames: 'selectedColor notSelectedColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Brocade-Morphic'!
!classDefinition: 'BrocadeTableCellItem class' category: 'Brocade-Morphic'!
BrocadeTableCellItem class
	instanceVariableNames: ''!

!classDefinition: #OpenFileDialog category: 'Brocade-Morphic'!
SystemWindow subclass: #OpenFileDialog
	instanceVariableNames: 'directory currentDirectoryEntryMorph theEntryIndex showHiddenFiles sortBy selectFileEntryAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Brocade-Morphic'!
!classDefinition: 'OpenFileDialog class' category: 'Brocade-Morphic'!
OpenFileDialog class
	instanceVariableNames: ''!


!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:43:11'!
addModuleToAcademicProgramDialog

	self addModuleToAcademicProgramDialog: nil.
	
! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/31/2025 21:16:38'!
addModuleToAcademicProgramDialog: aModule

	| mold programs tracks years semesters aDialog position |
	
	mold := BidiMold new.
	
	programs := ListMultiModel with: model programs.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #propertyValue of: (ValueHolder new propertyValue: (aModule ifNil:[nil] ifNotNil:[aModule code]) ; yourself);
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' ;
		beRequired.
		
	(mold selectField)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addModuleToAcademicProgram: to: self with: mold fields.
	
! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/31/2025 22:36:29'!
addNewModuleDialog

	AcademicProgramBrowser addNewModuleDialog: model! !

!BrocadeApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:55:59'!
openSearchModuleDialog

! !

!BrocadeApplication methodsFor: 'programs' stamp: 'DF 1/31/2025 21:10:34'!
addAcademicProgramDialog

	AcademicProgramBrowser addAcademicProgramDialog: model! !

!BrocadeApplication methodsFor: 'programs' stamp: 'DF 1/12/2025 20:51:36'!
openAcademicProgramBrowser

	AcademicProgramBrowser open: model label: 'תוכניות לימוד' 
! !

!BrocadeApplication methodsFor: 'stencils' stamp: 'DF 1/12/2025 20:23:03'!
addNewStencil: fields

	| stencilCode programName trackName yearName semesterName aStencil program track year semester |
	
	stencilCode := fields at:1 :: value.
	
	programName := fields at:2 :: value.

	trackName := fields at:3 :: value.
	
	yearName := fields at:4 :: value.

	semesterName := fields at:5 :: value.
	
	program := model programAt: programName.	

	track := program trackAt: trackName.
	
	year := track academicYearAt: yearName.

	semester := year semesterAt: semesterName.
		
	aStencil := Stencil new.
	
	aStencil description: ('תבנית {1}' format:{stencilCode}).
	
	semester modules do:[:eachModule | 
		
			eachModule units do:[:eachUnit | | anAssignment |
		
			anAssignment := Assignment new.
		
			anAssignment unit: eachUnit.
			
		aStencil addAssignment: anAssignment. ] ].

	semester addStencil: aStencil.
	
	
	model changed: #stencilNames		 
			
		! !

!BrocadeApplication methodsFor: 'stencils' stamp: 'DF 1/19/2025 19:54:04'!
addNewStencilDialog

	| mold position aDialog programs tracks years semesters |
	
	mold := BidiMold new.

	programs := ListMultiModel with: model programNames.

	tracks := ListMultiModel with: model trackNames.
	
	years := ListMultiModel with: model academicYearNames.

	semesters := ListMultiModel with: model semesterNames.	

	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד התבנית' ;
		on: #propertyValue of: ValueHolder new;
		beRequired.
		
	(mold selectField)
		label: 'תוכנית לימודים';
		on: #listIndex of: programs;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		beRequired.
	(mold selectField)
		label: 'מסלול לימודים';
		on: #listIndex of: tracks;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | model programAt: (mold fields at: 2) value :: trackAt: value :: notNil ] 
		labeled: 'לא קיים מסלול כזה בתוכנית הלימודים שבחרת.';
		beRequired.
	(mold selectField)
		label: 'שנת לימוד';
		on: #listIndex of: years;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track |
			program := 		model programAt: (mold fields at: 2) value.
			track := program trackAt: (mold fields at:3 ) value.
			track notNil and: [track academicYearAt: value :: notNil ] ] 
		labeled: 'שנת לימוד זו לא קיימת במסלול שבחרת.';
		beRequired.
	(mold selectField)
		label: 'סמסטר';
		on: #listIndex of: semesters;
		customize: [:widget :input :example | 
			input color: Color white ; borderWidth:1 ; borderColor: Color black.
			] ;
		addCondition:[:input :value | | program track year |
			program := 		model programAt: (mold fields at: 2) value.
			track := program trackAt: (mold fields at:3 ) value.
			year := track isNil ifTrue:[nil] ifFalse:[track academicYearAt: (mold fields at:4) value].
			track notNil and: [year notNil] and:[year semesterAt: value :: notNil ] ] 
		labeled: 'סמסטר זה לא קיימת במסלול שבחרת.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תבנית חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #addNewStencil: to: self with: mold fields.
	
! !

!BrocadeApplication methodsFor: 'stencils' stamp: 'DF 1/11/2025 18:19:19'!
openStencilBrowser

	StencilBrowser open: model label: 'תבניות'.
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/31/2025 19:48:26'!
addLecturerDialog

	SchoolBrowser addLecturerDialog: model
	
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/31/2025 19:52:27'!
addSchoolDialog

	SchoolBrowser addSchoolDialog: model
	
! !

!BrocadeApplication methodsFor: 'schools' stamp: 'DF 1/18/2025 13:06:12'!
openSchoolBrowser

	SchoolBrowser open: model label: 'מרצים'.
! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/31/2025 17:03:12'!
addCampusDialog

	CampusBrowser addCampusDialog: model! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/31/2025 17:04:38'!
addClassroomDialog

	CampusBrowser addClassroomDialog: model ! !

!BrocadeApplication methodsFor: 'campuses' stamp: 'DF 1/18/2025 17:09:12'!
openCampusBrowser

	CampusBrowser open: model label: 'קמפוסים'.
! !

!BrocadeApplication methodsFor: 'menu' stamp: 'DF 2/1/2025 23:12:28'!
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
		{'יבא תוכניות לימודים ...' . self . #openImportAcademicProgramDialog } .
		{'יבא סגל אקדמי ...' . self . #openImportAcademicStaffDialog } .
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
	{ 'תוכנית לימודים' . {
		{'הצג תוכניות לימודים' . self . #openAcademicProgramBrowser } .
		{ 'תוכנית לימוד חדשה ...' . self . #addAcademicProgramDialog } .
		$| .
		{ 'קורס חדש ...' . self . #addNewModuleDialog } .
		 } } .
	{ 'בית ספר' . {
		{ 'הצג בתי ספר' . self . #openSchoolBrowser } .
		{ 'בית ספר חדש ...' . self . #addSchoolDialog } .
		$| .	
		{ 'הצג מרצים' . self .#openSchoolBrowser } .
		{ 'מרצה חדשה ...' . self . #addLecturerDialog } 
		 } } .
	{ 'חדר' . {
		{'הצג קמפוסים וחדרים' . self . #openCampusBrowser } .
		{ 'קמפוס חדש ...' . self . #addCampusDialog } .
		{ 'חדר חדש ...' . self . #addClassroomDialog } 
		 } } .
	{ 'תבנית' . {
		{ 'הצג תבניות' . self . #openStencilBrowser } .
		{ 'תבנית חדשה ...' . self . #addNewStencilDialog } 
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:15:09'!
importAcademicProgram: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicProgram: aFileEntry.
	
"	CollegeBrowser open: model label: 'תוכניות לימוד'."
	
	! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:25'!
importAcademicStaff: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicStaff: aFileEntry.
	

	
	! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:44'!
openImportAcademicProgramDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicProgram: label:'Select File'! !

!BrocadeApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:55'!
openImportAcademicStaffDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicStaff: label:'Select File'! !

!BrocadeApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 18:15:10'!
open

	| aCollege |
	
	aCollege := College new.

	aCollege invariant.

	model := aCollege.
! !

!BrocadeApplication methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 13:43:06'!
showCollapsedWindows

	| windows menu |
	
	windows := UISupervisor ui submorphs select:[:each | each isKindOf: SystemWindow :: and: [each isCollapsed ] ].
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	windows do:[:eachWindow | 
		(menu add: (eachWindow label asBidi writingDirection:#rightToLeft) target: eachWindow action: #show) color: Theme current buttonLabel ].
	
	^menu! !

!BrocadeApplication class methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:24:09'!
instance

	TheApplication 
		ifNil:[
			TheApplication := self new.
			TheApplication menuBar.
		].
	
	^TheApplication
	
! !

!BrocadeApplication class methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:24:42'!
open

	self instance menuBar ; open.	
! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:15:58'!
background
	^ `Color fromHexString:'#aaaaaa'`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 20:18:53'!
defaultWindowColor
	^ `Color fromHexString:'#bbbbbb'`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:20:41'!
embossedButtonLabels
	"Currently only apply to rounded buttons!!"

	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:20:51'!
embossedTitles
	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:18:16'!
menu
	^ `Color white`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:39:35'!
paneBackgroundFrom: aColor
	^ Color white! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:37:21'!
textPane
	^ `Color white`! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:21:26'!
useTaskbar
	^false! !

!QuietTheme methodsFor: 'as yet unclassified' stamp: 'DF 12/19/2024 19:35:20'!
useUniformColors
	^true! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 1/19/2025 19:01:45'!
build: aStringTemplate

	| index labelText morphs |
	
	self removeAllMorphs.
	
	morphs := OrderedCollection new.
	
	index := 1.
	
	aStringTemplate allRangesOfRegexMatches: '<[a-z]+>' :: do:[:each | 
	
		labelText := aStringTemplate copyFrom: index to: each first - 1.
		
		rightToLeft ifTrue:[labelText := labelText reverse].
		
		morphs add:		 (LabelMorph contents: labelText).
		
		morphs add: (BidiTextEntryMorph contents: (aStringTemplate copyFrom: each first + 1 to: each last - 1)).
		
		index := each last + 1].
	
	labelText := aStringTemplate copyFrom: index to: aStringTemplate size.
	
	rightToLeft ifTrue:[labelText := labelText reverse].
	
	morphs add: (BidiLabelMorph contents: labelText).
	
	rightToLeft ifFalse:[morphs := morphs reverse].
	
	self addAllMorphs: morphs.! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:57:50'!
initialize
	super initialize.
	rightToLeft := false! !

!TextFieldSentence methodsFor: 'as yet unclassified' stamp: 'DF 12/24/2024 20:54:58'!
rightToLeft: aBoolean
	rightToLeft := aBoolean! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:35:21'!
aboutToGrab: submorph

	submorph isKindOf: BrocadeTableCellItem 
		:: ifFalse:[ 		^nil]. 
	
	^submorph  ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:04'!
aboutToGrabAssignment: anAssignmentMorph

	self subclassResponsibility ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:39:20'!
aboutToGrabClassroom: aClassroomMorph

	self subclassResponsibility ! !

!BrocadeTableCell methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 20:29:25'!
aboutToGrabLecturer: aLecturerMorph

	self subclassResponsibility ! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 22:36:58'!
handlesMouseOver: aMorphicEvent
	^true! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:43'!
mouseEnter: evt
	self color: selectedColor! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/28/2025 22:30:47'!
mouseLeave: evt
	self color: notSelectedColor! !

!BrocadeTableCellItem methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 21:32:20'!
rightToLeft: aBoolean

	submorphs first rightToLeft: aBoolean! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:24:30'!
buildMorphicWindow

	|  top entries openButton cancelButton buttons dialog backButton upButton |
	
	backButton := PluggableButtonMorph model: nil action: nil.
	backButton iconDrawSelector: #drawLeftIcon.
	upButton := PluggableButtonMorph model: self action: #goUp.
	upButton iconDrawSelector: #drawUpIcon.

	currentDirectoryEntryMorph := directory pathName asBidi edit.
	
	currentDirectoryEntryMorph crAction: [ | dd |
		dd := currentDirectoryEntryMorph contents asDirectoryEntry.
		dd exists
			ifTrue:[
				directory := dd.
				self changed: #entryNames ]
			ifFalse:[
				currentDirectoryEntryMorph contents: directory pathName ] ].
	
	top := ((backButton + upButton) - 128f @ (16@0) align:0) + (currentDirectoryEntryMorph - 800f) | 48f.
	
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:25:40'!
entryNames

	^self entries collect:[:eachEntry | 
		eachEntry name asUnicodeString asBidi reorderBidiFileName , 		(eachEntry isDirectoryEntry 			ifTrue:[ '/' ] ifFalse:['']) ]
	
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 1/29/2025 11:27:37'!
recurse

	| child |
	
	theEntryIndex = 0 ifTrue:[^self].

	child := self entries at: theEntryIndex.

	child isDirectoryEntry 
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

!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:09:31'!
intersect: anInterval
	
	^(start max: anInterval first) to: (stop min: anInterval last)! !

!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:15:25'!
isEmptySet
	^stop <= start! !

!MenuMorph methodsFor: '*Brocade' stamp: 'DF 1/7/2025 16:17:39'!
rtolAdd: aString action: aSymbol

	self rtolAdd: aString target: defaultTarget action: aSymbol  argumentList: #()! !

!MenuMorph methodsFor: '*Brocade' stamp: 'DF 1/11/2025 12:52:03'!
rtolAdd: aString target: target action: aSymbol argumentList: argList
	"Append a menu item with the given label. If the item is selected, it will send the given selector to the target object with the given arguments. If the selector takes one more argument than the number of arguments in the given list, then the triggering event is supplied as as the last argument.  Answer the appended menu item."

	| item |
	item := BidiMenuItemMorph new
		contents: aString;
		target: target selector: aSymbol arguments: argList asArray.
	self addMorphBack: item.
	^ item! !
