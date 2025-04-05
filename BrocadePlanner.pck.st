'From Cuis7.3 [latest update: #7041] on 5 April 2025 at 7:37:42 pm'!
'Description '!
!provides: 'BrocadePlanner' 1 315!
!requires: 'Bidi' 1 54 nil!
!requires: 'Table' 1 66 nil!
!requires: 'UndoRedo' 1 9 nil!
!requires: 'Neo-CSV-Core' 1 1 nil!
!requires: 'YAXO' 1 28 nil!
!requires: 'LayoutAlgebra' 1 12 nil!
!requires: 'PluggableBrowsing' 1 47 nil!
SystemOrganization addCategory: #'BrocadePlanner-Model'!
SystemOrganization addCategory: #BrocadePlanner!
SystemOrganization addCategory: #'BrocadePlanner-Morphic'!
SystemOrganization addCategory: #'BrocadePlanner-UndoRedo'!
SystemOrganization addCategory: #'BrocadePlanner-ODT'!
SystemOrganization addCategory: #'BrocadePlanner-Application'!


!classDefinition: #BrocadePlannerApplication category: #'BrocadePlanner-Application'!
Object subclass: #BrocadePlannerApplication
	instanceVariableNames: 'model path lastImportDirectory homeDirectory'
	classVariableNames: 'TheApplication'
	poolDictionaries: ''
	category: 'BrocadePlanner-Application'!
!classDefinition: 'BrocadePlannerApplication class' category: #'BrocadePlanner-Application'!
BrocadePlannerApplication class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgram category: #'BrocadePlanner-Model'!
Object subclass: #AcademicProgram
	instanceVariableNames: 'tracks description college themes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicProgram class' category: #'BrocadePlanner-Model'!
AcademicProgram class
	instanceVariableNames: ''!

!classDefinition: #AcademicTheme category: #'BrocadePlanner-Model'!
Object subclass: #AcademicTheme
	instanceVariableNames: 'modules program description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicTheme class' category: #'BrocadePlanner-Model'!
AcademicTheme class
	instanceVariableNames: ''!

!classDefinition: #AcademicTrack category: #'BrocadePlanner-Model'!
Object subclass: #AcademicTrack
	instanceVariableNames: 'academicYears description program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicTrack class' category: #'BrocadePlanner-Model'!
AcademicTrack class
	instanceVariableNames: ''!

!classDefinition: #AcademicUnit category: #'BrocadePlanner-Model'!
Object subclass: #AcademicUnit
	instanceVariableNames: 'module lecturers duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicUnit class' category: #'BrocadePlanner-Model'!
AcademicUnit class
	instanceVariableNames: ''!

!classDefinition: #Laboratory category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Laboratory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Laboratory class' category: #'BrocadePlanner-Model'!
Laboratory class
	instanceVariableNames: ''!

!classDefinition: #Lecture category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Lecture
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Lecture class' category: #'BrocadePlanner-Model'!
Lecture class
	instanceVariableNames: ''!

!classDefinition: #Recitation category: #'BrocadePlanner-Model'!
AcademicUnit subclass: #Recitation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Recitation class' category: #'BrocadePlanner-Model'!
Recitation class
	instanceVariableNames: ''!

!classDefinition: #AcademicYear category: #'BrocadePlanner-Model'!
Object subclass: #AcademicYear
	instanceVariableNames: 'semesters description track ordinal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'AcademicYear class' category: #'BrocadePlanner-Model'!
AcademicYear class
	instanceVariableNames: ''!

!classDefinition: #College category: #'BrocadePlanner-Model'!
Object subclass: #College
	instanceVariableNames: 'modules programs description'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'College class' category: #'BrocadePlanner-Model'!
College class
	instanceVariableNames: ''!

!classDefinition: #Module category: #'BrocadePlanner-Model'!
Object subclass: #Module
	instanceVariableNames: 'college units code description latin semesters elective prereqs dependants themes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Module class' category: #'BrocadePlanner-Model'!
Module class
	instanceVariableNames: ''!

!classDefinition: #Semester category: #'BrocadePlanner-Model'!
Object subclass: #Semester
	instanceVariableNames: 'academicYear description modules ordinal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'Semester class' category: #'BrocadePlanner-Model'!
Semester class
	instanceVariableNames: ''!

!classDefinition: #OpenDocWriter category: #'BrocadePlanner-ODT'!
Object subclass: #OpenDocWriter
	instanceVariableNames: 'templateDirectory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-ODT'!
!classDefinition: 'OpenDocWriter class' category: #'BrocadePlanner-ODT'!
OpenDocWriter class
	instanceVariableNames: ''!

!classDefinition: #BrocadeError category: #'BrocadePlanner-Model'!
Error subclass: #BrocadeError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Model'!
!classDefinition: 'BrocadeError class' category: #'BrocadePlanner-Model'!
BrocadeError class
	instanceVariableNames: ''!

!classDefinition: #QuietTheme category: #'BrocadePlanner-Morphic'!
Theme subclass: #QuietTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'QuietTheme class' category: #'BrocadePlanner-Morphic'!
QuietTheme class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCell category: #'BrocadePlanner-Morphic'!
TableCell subclass: #BrocadeTableCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'BrocadeTableCell class' category: #'BrocadePlanner-Morphic'!
BrocadeTableCell class
	instanceVariableNames: ''!

!classDefinition: #BrocadeTableCellItem category: #'BrocadePlanner-Morphic'!
TableCellItem subclass: #BrocadeTableCellItem
	instanceVariableNames: 'selectedColor notSelectedColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'BrocadeTableCellItem class' category: #'BrocadePlanner-Morphic'!
BrocadeTableCellItem class
	instanceVariableNames: ''!

!classDefinition: #AcademicProgramBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #AcademicProgramBrowser
	instanceVariableNames: 'programIndex trackIndex yearIndex semesterIndex selectedYears selectedSemesters unitIndex electiveIndex selectedElectives'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'AcademicProgramBrowser class' category: #'BrocadePlanner-Morphic'!
AcademicProgramBrowser class
	instanceVariableNames: ''!

!classDefinition: #EasyCollegeModulesBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #EasyCollegeModulesBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'EasyCollegeModulesBrowser class' category: #'BrocadePlanner-Morphic'!
EasyCollegeModulesBrowser class
	instanceVariableNames: ''!

!classDefinition: #EasyThemeBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #EasyThemeBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'EasyThemeBrowser class' category: #'BrocadePlanner-Morphic'!
EasyThemeBrowser class
	instanceVariableNames: ''!

!classDefinition: #ModuleBrowser category: #'BrocadePlanner-Morphic'!
BidiSystemWindow subclass: #ModuleBrowser
	instanceVariableNames: 'selectedProgramIndex selectedPrereq selectedDependant'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'ModuleBrowser class' category: #'BrocadePlanner-Morphic'!
ModuleBrowser class
	instanceVariableNames: ''!

!classDefinition: #BrocadeSettings category: #'BrocadePlanner-Morphic'!
SystemWindow subclass: #BrocadeSettings
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'BrocadeSettings class' category: #'BrocadePlanner-Morphic'!
BrocadeSettings class
	instanceVariableNames: ''!

!classDefinition: #OpenFileDialog category: #'BrocadePlanner-Morphic'!
SystemWindow subclass: #OpenFileDialog
	instanceVariableNames: 'directory currentDirectoryEntryMorph theEntryIndex showHiddenFiles sortBy selectFileEntryAction openButtonLabel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'OpenFileDialog class' category: #'BrocadePlanner-Morphic'!
OpenFileDialog class
	instanceVariableNames: ''!

!classDefinition: #SaveFileDialog category: #'BrocadePlanner-Morphic'!
OpenFileDialog subclass: #SaveFileDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'SaveFileDialog class' category: #'BrocadePlanner-Morphic'!
SaveFileDialog class
	instanceVariableNames: ''!

!classDefinition: #SelectDirectoryDialog category: #'BrocadePlanner-Morphic'!
OpenFileDialog subclass: #SelectDirectoryDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-Morphic'!
!classDefinition: 'SelectDirectoryDialog class' category: #'BrocadePlanner-Morphic'!
SelectDirectoryDialog class
	instanceVariableNames: ''!

!classDefinition: #BrocadeCommandHistory category: #'BrocadePlanner-UndoRedo'!
CommandHistory subclass: #BrocadeCommandHistory
	instanceVariableNames: ''
	classVariableNames: 'Instance'
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'BrocadeCommandHistory class' category: #'BrocadePlanner-UndoRedo'!
BrocadeCommandHistory class
	instanceVariableNames: ''!

!classDefinition: #AddAcademicProgramCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddAcademicProgramCommand
	instanceVariableNames: 'programName duration dayTrack eveningTrack college program'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddAcademicProgramCommand class' category: #'BrocadePlanner-UndoRedo'!
AddAcademicProgramCommand class
	instanceVariableNames: ''!

!classDefinition: #AddAcademicThemeCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddAcademicThemeCommand
	instanceVariableNames: 'program themeName theme'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddAcademicThemeCommand class' category: #'BrocadePlanner-UndoRedo'!
AddAcademicThemeCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveAcademicThemeCommand category: #'BrocadePlanner-UndoRedo'!
AddAcademicThemeCommand subclass: #RemoveAcademicThemeCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveAcademicThemeCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveAcademicThemeCommand class
	instanceVariableNames: ''!

!classDefinition: #AddModuleCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddModuleCommand
	instanceVariableNames: 'semester code college'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
AddModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveModuleCommand category: #'BrocadePlanner-UndoRedo'!
AddModuleCommand subclass: #RemoveModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #AddModuleToThemeCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddModuleToThemeCommand
	instanceVariableNames: 'theme code module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddModuleToThemeCommand class' category: #'BrocadePlanner-UndoRedo'!
AddModuleToThemeCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveModuleFromThemeCommand category: #'BrocadePlanner-UndoRedo'!
AddModuleToThemeCommand subclass: #RemoveModuleFromThemeCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveModuleFromThemeCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveModuleFromThemeCommand class
	instanceVariableNames: ''!

!classDefinition: #AddPrereqCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #AddPrereqCommand
	instanceVariableNames: 'module code'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'AddPrereqCommand class' category: #'BrocadePlanner-UndoRedo'!
AddPrereqCommand class
	instanceVariableNames: ''!

!classDefinition: #RemovePrereqCommand category: #'BrocadePlanner-UndoRedo'!
AddPrereqCommand subclass: #RemovePrereqCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemovePrereqCommand class' category: #'BrocadePlanner-UndoRedo'!
RemovePrereqCommand class
	instanceVariableNames: ''!

!classDefinition: #ModuleCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #ModuleCommand
	instanceVariableNames: 'code description latin lectureDuration recitationDuration labDuration elective college module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'ModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
ModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #EditModuleCommand category: #'BrocadePlanner-UndoRedo'!
ModuleCommand subclass: #EditModuleCommand
	instanceVariableNames: 'backup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'EditModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
EditModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #NewModuleCommand category: #'BrocadePlanner-UndoRedo'!
ModuleCommand subclass: #NewModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'NewModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
NewModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #DeleteModuleCommand category: #'BrocadePlanner-UndoRedo'!
NewModuleCommand subclass: #DeleteModuleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'DeleteModuleCommand class' category: #'BrocadePlanner-UndoRedo'!
DeleteModuleCommand class
	instanceVariableNames: ''!

!classDefinition: #RemoveProgramCommand category: #'BrocadePlanner-UndoRedo'!
UndoRedoCommand subclass: #RemoveProgramCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BrocadePlanner-UndoRedo'!
!classDefinition: 'RemoveProgramCommand class' category: #'BrocadePlanner-UndoRedo'!
RemoveProgramCommand class
	instanceVariableNames: ''!


!BrocadePlannerApplication methodsFor: 'modules' stamp: 'DF 1/31/2025 22:36:29'!
addNewModuleDialog

	AcademicProgramBrowser addNewModuleDialog: model! !

!BrocadePlannerApplication methodsFor: 'modules' stamp: 'DF 3/8/2025 15:54:59'!
openCollegeModuleBrowser

	EasyCollegeModulesBrowser open: model label: 'רשימת כל הקורסים'

! !

!BrocadePlannerApplication methodsFor: 'modules' stamp: 'DF 1/11/2025 16:55:59'!
openSearchModuleDialog

! !

!BrocadePlannerApplication methodsFor: 'programs' stamp: 'DF 1/31/2025 21:10:34'!
addAcademicProgramDialog

	AcademicProgramBrowser addAcademicProgramDialog: model! !

!BrocadePlannerApplication methodsFor: 'programs' stamp: 'DF 1/12/2025 20:51:36'!
openAcademicProgramBrowser

	AcademicProgramBrowser open: model label: 'תוכניות לימוד' 
! !

!BrocadePlannerApplication methodsFor: 'programs' stamp: 'DF 3/2/2025 15:40:20'!
openAcademicThemeBrowser
	EasyThemeBrowser open: model label: 'התמחויות'! !

!BrocadePlannerApplication methodsFor: 'menu' stamp: 'DF 2/3/2025 19:43:51'!
buildEditMenu

	| menu disableUndo disableRedo undoString |
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	
	disableUndo := BrocadeCommandHistory instance isAtBeginning.
	disableRedo := BrocadeCommandHistory instance isAtEnd.
	
	undoString := disableUndo ifFalse:['ביטול ', BrocadeCommandHistory instance currentTitle] ifTrue:['ביטול'].
	
	(menu add: (undoString asBidi writingDirection:#rightToLeft) target: self action: #undo) isEnabled: disableUndo not .
	(menu add: ('ביצוע מחדש' asBidi writingDirection:#rightToLeft) target: self action: #redo) isEnabled: disableRedo not .
	menu addLine.
	(menu add: ('גזור' asBidi writingDirection:#rightToLeft) target: self action: #cutToClipboard) color: Theme current buttonLabel.
	(menu add: ('העתק' asBidi writingDirection:#rightToLeft) target: self action: #copyToClipboard) color: Theme current buttonLabel.
	(menu add: ('הדבק' asBidi writingDirection:#rightToLeft) target: self action: #pasteFromClipboard) color: Theme current buttonLabel.
	
	^menu! !

!BrocadePlannerApplication methodsFor: 'menu' stamp: 'DF 3/9/2025 20:26:55'!
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
		{'יבא תוכניות לימודים ...' . self . nil "#openImportAcademicProgramDialog" } .
		{'יצא תוכנית לימודים ...' . self . #exportAction } .
		$| .
		{ 'הגדרות ...' . self . #settingsDialog } .
		$| .
		{ 'סגור' . self . #exitAction } } } .  
	{ 'עריכה' . #buildEditMenu . self } .
	{ 'תוכנית לימודים' . {
		{'הצג תוכניות לימודים' . self . #openAcademicProgramBrowser } .
		{ 'תוכנית לימוד חדשה ...' . self . #addAcademicProgramDialog } .
		$| .
		{ 'רשימת כל הקורסים' . self . #openCollegeModuleBrowser } .
		{ 'קורס חדש ...' . self . #addNewModuleDialog } .
		$| .
		{ 'הצג התמחויות' . self . #openAcademicThemeBrowser } 
		 } } .
	{ 'חלונות' . #showCollapsedWindows . self } . 
	{ 'עזרה' . { 
		{ 'אודות' . self . #aboutAction } } } } :: openInWorld morphPosition:0@0.
! !

!BrocadePlannerApplication methodsFor: 'menu' stamp: 'DF 3/9/2025 20:22:53'!
newAction

	| decision |
	
	decision :=
		BrocadeCommandHistory instance isDirty 
			ifTrue:[ 
				self confirm:'קיימים שינויים שלא נשמרו. להמשיך?' asBidi orCancel:[^self].
		 	]
			ifFalse:[
				false
			].
		
	decision 
		ifTrue:[
			self closeAllBrocadeWindows.
	
			BrocadeCommandHistory instance initialize.
			
			model := self collegeBuilder new.
	
			model description:'משבצת חדשה' ]! !

!BrocadePlannerApplication methodsFor: 'menu' stamp: 'DF 2/28/2025 17:31:05'!
openAction

	| dialog |
	
	BrocadeCommandHistory instance isDirty 
		ifTrue:[ 
			self confirm:'קיימים שינויים שלא נשמרו. להמשיך?' asBidi orCancel:[^self] ].
		
	dialog := OpenFileDialog open:self start: lastImportDirectory action: #fromXML: label:'Select File'.
	
	dialog morphPosition: (dialog owner morphExtent - dialog morphExtent / 2).! !

!BrocadePlannerApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:15:09'!
importAcademicProgram: aFileEntry

	lastImportDirectory := aFileEntry parent.
	
	model importAcademicProgram: aFileEntry.
	
"	CollegeBrowser open: model label: 'תוכניות לימוד'."
	
	! !

!BrocadePlannerApplication methodsFor: 'import/export' stamp: 'DF 1/26/2025 14:25:44'!
openImportAcademicProgramDialog

	OpenFileDialog open:self start: lastImportDirectory action: #importAcademicProgram: label:'Select File'! !

!BrocadePlannerApplication methodsFor: 'undo/redo' stamp: 'DF 2/3/2025 16:39:31'!
redo
	BrocadeCommandHistory instance redo! !

!BrocadePlannerApplication methodsFor: 'undo/redo' stamp: 'DF 2/3/2025 16:39:24'!
undo
	BrocadeCommandHistory instance undo! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 3/30/2025 16:44:10'!
fromXML: aFileEntry

	| aReadStream anXMLDocument aCollege |
	
	aReadStream := aFileEntry readStream.
	
	anXMLDocument := XMLDOMParser parseDocumentFrom: aReadStream.
	
	aCollege := self collegeBuilder new.
	
	aCollege fromXML: anXMLDocument elements first.
	
	aCollege invariant.
	
	self closeAllBrocadeWindows.

	BrocadeCommandHistory instance initialize.
	
	model := aCollege.
	
	self updateDocumentName. 
	
	path := aFileEntry pathName.

	FadingHoverHelpMorph inform: (('הקובץ {1} נטען בהצלחה.' format:{aFileEntry name}) asBidi writingDirection: #rightToLeft)
! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 2/16/2025 18:29:48'!
home
	^homeDirectory ! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 2/16/2025 18:26:00'!
home: aString
	homeDirectory := aString! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 3/30/2025 16:40:46'!
saveAction

	| anXMLWriter file |
	
	self assert: path notNil.
	
	file := path asFileEntry.

	[		
		anXMLWriter := XMLWriter on: file writeStream.
	
		anXMLWriter xmlDeclaration: '1.0' encoding: 'UTF-8'.
	
		model toXML: anXMLWriter.
		
		BrocadeCommandHistory instance save.
		
		FadingHoverHelpMorph inform: (('הקובץ {1} נשמר בהצלחה.' format:{file name}) asBidi writingDirection: #rightToLeft)
	]
	ensure:[
		anXMLWriter ifNotNil:[:w | w stream close ].
	]
! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 2/21/2025 14:32:55'!
saveAs: aString

	path := aString.
	
	self saveAction.! !

!BrocadePlannerApplication methodsFor: 'filing' stamp: 'DF 2/21/2025 13:58:36'!
saveAsAction

	SaveFileDialog open: self start: lastImportDirectory action: #saveAs: label: 'Save As ...'
! !

!BrocadePlannerApplication methodsFor: 'initialization' stamp: 'DF 3/9/2025 21:03:04'!
initialize
	
	super initialize.
	
	model := self collegeBuilder new.

	homeDirectory := DirectoryEntry userBaseDirectory asString.
	
	BrocadeCommandHistory instance when: #changed send: #updateDocumentName to: self.
	
	! !

!BrocadePlannerApplication methodsFor: 'window management' stamp: 'DF 2/12/2025 19:32:21'!
closeAllBrocadeWindows

	UISupervisor ui submorphs select:[:each | each isKindOf: BidiSystemWindow ] :: do:[:each | each delete].! !

!BrocadePlannerApplication methodsFor: 'window management' stamp: 'DF 1/31/2025 13:43:06'!
showCollapsedWindows

	| windows menu |
	
	windows := UISupervisor ui submorphs select:[:each | each isKindOf: SystemWindow :: and: [each isCollapsed ] ].
	
	menu := MenuBarMenuMorph new.
	menu color: Color white ; borderWidth: 1; borderColor: Color black.
	windows do:[:eachWindow | 
		(menu add: (eachWindow label asBidi writingDirection:#rightToLeft) target: eachWindow action: #show) color: Theme current buttonLabel ].
	
	^menu! !

!BrocadePlannerApplication methodsFor: 'as yet unclassified' stamp: 'DF 3/9/2025 20:21:35'!
collegeBuilder
	^College! !

!BrocadePlannerApplication methodsFor: 'as yet unclassified' stamp: 'DF 2/16/2025 18:36:52'!
settingsDialog

	| mold position aDialog |
	
	mold := BidiMold new.
	
	(mold stringField)
		label: 'Brocade home directory';
		on: #home of: self ; 
		addCondition:[:input :value | value asDirectoryEntry exists ] ;
		beRequired .

	position := UISupervisor ui activeHand morphPosition.
		
	aDialog := mold openDialog: 'Brocade Settings'.
		
	aDialog morphPosition: position - (aDialog morphWidth@0).
! !

!BrocadePlannerApplication methodsFor: 'as yet unclassified' stamp: 'DF 2/28/2025 17:33:03'!
updateDocumentName

	| tag |
	
	tag := 
		BrocadeCommandHistory instance isDirty ifTrue:['*'] ifFalse:[''].
	
	DisplayScreen hostOSWindowTitle: model description , tag.
	! !

!BrocadePlannerApplication class methodsFor: 'as yet unclassified' stamp: 'DF 3/9/2025 21:01:54'!
instance

	TheApplication 
		ifNil:[
			TheApplication := self new.
			BrocadeCommandHistory instance when: #changed send: #updateDocumentName
to: TheApplication.
			TheApplication menuBar.
		].
	
	^TheApplication
	
! !

!BrocadePlannerApplication class methodsFor: 'as yet unclassified' stamp: 'DF 3/3/2025 12:23:44'!
open

	self instance menuBar.	
! !

!BrocadePlannerApplication class methodsFor: 'as yet unclassified' stamp: 'DF 3/9/2025 20:32:28'!
reset
	TheApplication := nil.! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 18:53:02'!
addTheme: anAcademicTheme

	anAcademicTheme program ifNotNil:[:program |
		program detachTheme: anAcademicTheme.
		anAcademicTheme detachProgram ].
	
	anAcademicTheme attachProgram: self.
	
	self attachTheme: anAcademicTheme 

! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 18:51:16'!
attachTheme: anAcademicThem

	themes add: anAcademicThem ! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 18:51:27'!
detachTheme: anAcademicThem

	themes remove: anAcademicThem ! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 18:58:34'!
removeTheme: anAcademicTheme

	self assert: (themes includes: anAcademicTheme).
	
	self detachTheme: anAcademicTheme.
	
	anAcademicTheme detachProgram.

! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 19:13:52'!
themeAt: aString

	^themes detect:[:eachTheme | eachTheme description = aString] ifFound:[:aTheme | aTheme] ifNone:[nil]! !

!AcademicProgram methodsFor: 'themes' stamp: 'DF 2/22/2025 18:55:07'!
themes
	^themes! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/27/2024 20:03:25'!
addAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program isNil.
	
	self attachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack program: self.! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/27/2024 20:03:38'!
attachAcademicTrack: anAcademicTrack

	tracks add: anAcademicTrack ! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/27/2024 20:03:55'!
detachAcademicTrack: anAcademicTrack

	tracks remove: anAcademicTrack ! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/27/2024 20:02:54'!
removeAcademicTrack: anAcademicTrack

	self assert: anAcademicTrack program == self.
	
	self detachAcademicTrack: anAcademicTrack.
	
	anAcademicTrack detach.! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/29/2024 20:23:21'!
trackAt: aString

	^ tracks detect:[:eachTrack | eachTrack description = aString] ifFound:[:aTrack | aTrack] ifNone:[nil]! !

!AcademicProgram methodsFor: 'tracks' stamp: 'DF 12/27/2024 20:29:57'!
tracks
	^tracks! !

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

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:19'!
detach

	college := nil! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 20:19:55'!
displayStringOrText
	^description! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:53:14'!
initialize

	tracks := Set new.
	
	themes := Set new! !

!AcademicProgram methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 20:14:15'!
invariant

	tracks do:[:eachTrack | eachTrack invariant ].

	tracks do:[:eachTrack | eachTrack program == self ].
	! !

!AcademicProgram methodsFor: 'filing' stamp: 'DF 2/24/2025 15:15:06'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'program'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	self tracksFromXML: anXMLElement ; themesFromXML: anXMLElement.
! !

!AcademicProgram methodsFor: 'filing' stamp: 'DF 2/26/2025 15:19:48'!
themesFromXML: anXMLElement

	anXMLElement elementAt: 'themes' :: elements do:[:eachElement | | anAcademicTheme |
		anAcademicTheme := AcademicTheme new.
		self addTheme: anAcademicTheme.
		anAcademicTheme fromXML: eachElement	].
! !

!AcademicProgram methodsFor: 'filing' stamp: 'DF 2/24/2025 12:51:20'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'program' attributeList: {'description' -> description } asDictionary ; endTag.

	anXMLWriter startTag: 'tracks' ; endTag.
	
	tracks do:[:each |
		each toXML: anXMLWriter ].

	anXMLWriter endTag: 'tracks'.	

	anXMLWriter startTag: 'themes' ; endTag.
	
	themes do:[:each |
		each toXML: anXMLWriter ].

	anXMLWriter endTag: 'themes'.	
	
	anXMLWriter endTag:'program'.! !

!AcademicProgram methodsFor: 'filing' stamp: 'DF 2/24/2025 15:16:30'!
tracksFromXML: anXMLElement

	anXMLElement elementAt: 'tracks' :: elements do:[:eachElement | | anAcademicTrack |
		anAcademicTrack := AcademicTrack new.
		self addAcademicTrack: anAcademicTrack.
		anAcademicTrack fromXML: eachElement	].
! !

!AcademicProgram class methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 12:30:37'!
newFrom: aSpec

	| anAcademicProgram |
	
	anAcademicProgram := AcademicProgram new.
	
	anAcademicProgram description: aSpec programName.
	
	aSpec dayTrack 
		ifTrue:[ | aDayTrack |
			aDayTrack := AcademicTrack new.
			
			aDayTrack description: 'מסלול יום'.
			
			1 to: aSpec duration do:[:eachYearIndex | | aYear semesterOrdinal |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				aYear ordinal: eachYearIndex.
				
				semesterOrdinal := 1.
				
				{ 'סמסטר א' . 'סמסטר ב' } do:[:eachName | | aSemester |
					aSemester := aSpec college newSemester.
					aSemester description: eachName.
					aSemester ordinal: semesterOrdinal.
					semesterOrdinal := semesterOrdinal  + 1.
					aYear addSemester: aSemester ].
				
				aDayTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: aDayTrack ].

	aSpec eveningTrack
		ifTrue:[ | anEveningTrack |
			anEveningTrack := AcademicTrack new.
			
			anEveningTrack description: 'מסלול ערב'.
			
			1 to: aSpec duration + 1 do:[:eachYearIndex | | aYear semesterOrdinal |
			
				aYear := AcademicYear new.
				aYear description: ('שנה {1}' format:{eachYearIndex}).
			
				aYear ordinal: eachYearIndex.
			
				semesterOrdinal := 1.	
				
				{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' } do:[:eachName | | aSemester |
					aSemester := aSpec college newSemester.
					aSemester description: eachName.
					aSemester ordinal: semesterOrdinal.
					semesterOrdinal := semesterOrdinal  + 1.
					aYear addSemester: aSemester ].
				
				anEveningTrack addAcademicYear: aYear ].
			
			anAcademicProgram addAcademicTrack: anEveningTrack ].
	
	^anAcademicProgram.
! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:59:56'!
addModule: aModule

	self attachModule: aModule.
	
	aModule attachTheme: self.! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:48:06'!
attachModule: aModule

	modules add: aModule! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:57:09'!
attachProgram: anAcademicProgram

	self assert: program isNil.

	program := anAcademicProgram ! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:53:31'!
description
	^description! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:53:24'!
description: aString
	description := aString! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:48:11'!
detachModule: aModule

	modules remove: aModule! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:50:23'!
detachProgram

	program := nil! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:49:44'!
displayStringOrText
	^description! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 15:21:02'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'theme'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	anXMLElement elements do:[:eachElement | | aModule |
		aModule := program college moduleAt: (Number readFrom: (eachElement attributeAt: 'code')).
		self addModule: aModule	].
! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:49:11'!
initialize

	modules := Set new! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:19:44'!
moduleAt: aCodeInteger

	^modules detect:[:eachModule | eachModule code = aCodeInteger ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:50:39'!
modules
	^modules! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 18:28:26'!
modulesInTrack: anAcademicTrack

	^modules inject:OrderedCollection new into:[:acc :eachModule | | semesters |
		
		semesters := eachModule semesters select:[:eachSemester | 
			eachSemester academicYear academicTrack == anAcademicTrack  ].
		
		acc addAll: (semesters collect:[:eachSemester | { eachModule . eachSemester }]).
		acc ] :: sort:[:x :y | 
			(x at:2) academicYear ordinal < (y at:2) academicYear ordinal 
				or:[ (x at:2) academicYear ordinal = (y at:2) academicYear ordinal 
						and: [ (x at:2) ordinal < (y at:2) ordinal ] ] ]! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 18:50:32'!
program
	^program! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:00:12'!
removeModule: aModule

	self detachModule: aModule.
	
	aModule detachTheme: self.! !

!AcademicTheme methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 12:55:21'!
toXML: anXMLWriter

	anXMLWriter startElement: 'theme' attributeList: {'description' -> description } asDictionary ; endTag.
	
	modules do:[:eachModule |
		anXMLWriter startElement: 'module' attributeList: { 'code' -> eachModule code asString } asDictionary ; endEmptyTag: 'module' ].
	
	anXMLWriter endTag:'theme'.! !

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

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 22:04:24'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'track'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	anXMLElement elements do:[:eachElement | | anAcademicYear |
		anAcademicYear := AcademicYear new.
		self addAcademicYear: anAcademicYear.
		anAcademicYear fromXML: eachElement	].
! !

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

!AcademicTrack methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:20:47'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'track' attributeList: {'description' -> description } asDictionary ; endTag.
	
	academicYears do:[:each |
		each toXML: anXMLWriter ].
	
	anXMLWriter endTag:'track'.! !

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

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:12'!
detach

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

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:45:57'!
setDurationIn: aModuleFactory
	self subclassResponsibility ! !

!AcademicUnit methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:20:47'!
toXML: anXMLWriter

	anXMLWriter startElement: self description attributeList: { 'duration' -> duration asString } asDictionary ; endEmptyTag: self description.! !

!AcademicUnit class methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:33:44'!
newFrom: aString

	| aFactory |
	
	aFactory := { 'הרצאה' -> Lecture . 'תרגול' -> Recitation . 'מעבדה' -> Laboratory } asDictionary.
	
	^ aFactory at: aString ifPresent:[:creator | creator new ] ifAbsent:[BrocadeError new messageText:('יחידה אקדמית לא מוכרת {1}' format:{aString}) reverse ; signal ].
! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:00'!
description

	self assert: module notNil.
	
	^ 'מעבדה'! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:20'!
points
	^ 0.7 * duration! !

!Laboratory methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:16'!
setDurationIn: aModuleFactory
	aModuleFactory labDuration: duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:51:55'!
description

	self assert: module notNil.
	
	^ 'הרצאה'! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:17:30'!
points
	^ duration! !

!Lecture methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:24'!
setDurationIn: aModuleFactory
	aModuleFactory lectureDuration: duration! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 17:52:07'!
description

	self assert: module notNil.
	
	^ 'תרגול' ! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 18:36:41'!
points
	^  duration * 0.5! !

!Recitation methodsFor: 'as yet unclassified' stamp: 'DF 2/1/2025 18:46:38'!
setDurationIn: aModuleFactory
	aModuleFactory recitationDuration: duration! !

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

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:55:30'!
detach
	
	track := nil.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:44:47'!
detachSemester: aSemester

	semesters remove: aSemester.! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:32:04'!
displayStringOrText
	^description! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 2/17/2025 20:44:47'!
fromXML: anXMLElement

	| aString college |
	
	self assert: anXMLElement name = 'year'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	ordinal := Number readFrom: (anXMLElement attributeAt: 'ordinal').
	
	self description: aString.
	
	college := track program college.

	anXMLElement elements do:[:eachElement | | aSemester |
		aSemester := college newSemester.
		self addSemester: aSemester.
		aSemester fromXML: eachElement	].
! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:09:36'!
initialize

	semesters := OrderedCollection new. ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:06'!
invariant

	semesters do: [:aSemester | aSemester invariant ].

	semesters do: [:aSemester | self assert: aSemester academicYear == self ].
	! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 2/17/2025 20:41:13'!
ordinal
	^ordinal! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 2/17/2025 20:41:10'!
ordinal: anInteger
	ordinal := anInteger ! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:24:28'!
semesterAt: aString

	^ semesters detect:[:eachSemester | eachSemester description = aString] ifFound:[:aSemester | aSemester] ifNone:[nil]! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:05:06'!
semesters
	^semesters! !

!AcademicYear methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 12:24:25'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'year' attributeList: {'description' -> description . 'ordinal' -> ordinal asString } asDictionary; endTag.
	
	semesters do:[:each |
		each toXML: anXMLWriter ].
	
	anXMLWriter endTag:'year'.! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:17:06'!
addAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college isNil.
	
	anAcademicProgram college: self.
	
	programs add: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:18:51'!
detachAcademicProgram: anAcademicProgram

	programs remove: anAcademicProgram! !

!College methodsFor: 'programs' stamp: 'DF 12/29/2024 20:21:54'!
programAt: aString

	^programs detect:[:eachProgram | eachProgram description = aString] ifFound:[:aProgram | aProgram] ifNone:[nil]! !

!College methodsFor: 'programs' stamp: 'DF 12/29/2024 20:45:55'!
programNames

	^programs collect:[:each | each description ] :: asOrderedCollection sort
! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 18:15:20'!
programs
	^programs! !

!College methodsFor: 'programs' stamp: 'DF 3/2/2025 16:08:56'!
programsFor: indices
	^programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!College methodsFor: 'programs' stamp: 'DF 12/27/2024 15:19:24'!
removeAcademicProgram: anAcademicProgram

	self assert: anAcademicProgram college == self.
	
	anAcademicProgram detach.
	
	self detachAcademicProgram: anAcademicProgram.! !

!College methodsFor: 'programs' stamp: 'DF 3/8/2025 17:52:40'!
themesFor: indices

	| topic program |
	
	topic := indices at: #programs.
	
	topic index = 0 ifTrue:[^{}].
	
	program := self programsFor:{} :: at: topic index.
	
	^program themes asOrderedCollection sort:[:x :y | x description <= y description ].
	! !

!College methodsFor: 'programs' stamp: 'DF 3/8/2025 17:52:59'!
tracksFor: indices

	| topic program |
	
	topic := indices at: #programs.
	
	topic index = 0 ifTrue:[^{}].
	
	program := self programsFor:{} :: at: topic index.
	
	^program tracks asOrderedCollection sort:[:x :y | x description <= y description ].
	! !

!College methodsFor: 'modules' stamp: 'DF 12/27/2024 15:18:08'!
addModule: aModule

	self assert: aModule college isNil.
	
	aModule college: self.
	
	modules add: aModule! !

!College methodsFor: 'modules' stamp: 'DF 12/25/2024 22:38:09'!
detachModule: aModule

	modules remove: aModule! !

!College methodsFor: 'modules' stamp: 'DF 1/26/2025 18:55:09'!
electiveNames
	^{'חובה' . 'בחירה' }! !

!College methodsFor: 'modules' stamp: 'DF 3/8/2025 15:56:46'!
electivesFor: indices
	^self electiveNames! !

!College methodsFor: 'modules' stamp: 'DF 12/29/2024 18:20:44'!
moduleAt: aCodeInteger

	^modules detect:[:eachModule | eachModule code = aCodeInteger ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!College methodsFor: 'modules' stamp: 'DF 1/11/2025 13:54:15'!
moduleNameAt: aString

	^modules detect:[:eachModule | eachModule description = aString ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!College methodsFor: 'modules' stamp: 'DF 2/28/2025 18:58:36'!
modules
	^modules! !

!College methodsFor: 'modules' stamp: 'DF 3/8/2025 17:55:51'!
modulesFor: indices

	| table  themeTopic trackTopic theme track tuples |

	table := OrderedCollection new.
	
	table add: {  'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	themeTopic := indices at: #themes.
	
	themeTopic index = 0 ifTrue:[^table].

	trackTopic := indices at: #tracks.
	
	trackTopic = 0 ifTrue:[^table].
	
	theme := self themesFor:indices :: at: themeTopic index.
	
	track := self tracksFor:indices :: at: trackTopic index.
	
	tuples := theme modulesInTrack: track.
	
	tuples do:[:eachTuple | 
		
		table add: { 
			{ (eachTuple at:1) description asBidi writingDirection: #rightToLeft } . 
			{ (eachTuple at:1) code } . 
			{ eachTuple at:2  } .
			{ (eachTuple at:2) academicYear } 
		} ] .
	
	^table
	
! !

!College methodsFor: 'modules' stamp: 'DF 3/9/2025 17:32:14'!
programModulesFor: indices

	| table programTopic program electiveTopic programModules selectedElectiveNames symbols |
	
	table := OrderedCollection new.
	
	table add: { 'סמסטר קיץ' . 'סמסטר ב' . 'סמסטר א' . 'שם קורס' .  'קוד קורס' }.
	
	programTopic := indices at: #programs.
	
	programTopic index = 0 ifTrue:[^table].

	program := self programsFor:indices :: at: programTopic index.
	
	electiveTopic := indices at: #electives.
		
	selectedElectiveNames :=  electiveTopic selection collect:[:i | self electiveNames at:i].	

	programModules :=  modules select:[:eachModule |
		eachModule semesters 
			anySatisfy:[:eachSemester | eachSemester academicYear academicTrack program == program ] :: 
			and: [
				(eachModule elective and:[selectedElectiveNames includes: 'בחירה']) 	or:
					[eachModule elective not and:[selectedElectiveNames includes: 'חובה'] ] ] ].

	symbols := { 'מסלול יום' -> $☀. 'מסלול ערב' -> $☾ } asDictionary.

	programModules := programModules asOrderedCollection sort:[:x : y | | s t |
		s := x semesters collect:[:semester | semester description].
		t := y semesters collect:[:semester | semester description].  
		s size > t size ].
				
	programModules do:[:eachModule | | d |
		
		d := { 
			'סמסטר א' -> OrderedCollection new . 
			'סמסטר ב' -> OrderedCollection new  . 
			'סמסטר קיץ' -> OrderedCollection new  } asDictionary.

		eachModule semesters do:[:eachSemester | 
			d at: eachSemester description :: add: (symbols at: eachSemester academicYear academicTrack description) ].
		
		table add: { 
			{ UnicodeString newFrom: (d at: 'סמסטר קיץ' :: sort) } .
			{ UnicodeString newFrom: (d at:'סמסטר ב' :: sort) } . 
			{ UnicodeString newFrom: (d at: 'סמסטר א' :: sort)  } . 
			{ eachModule description asBidi writingDirection: #rightToLeft } . 
			{ eachModule code } . eachModule } ].
	
	^table 
	
! !

!College methodsFor: 'modules' stamp: 'DF 1/9/2025 21:08:51'!
removeModule: aModule

	self assert: aModule college == self.
	
	aModule semesters do:[:eachSemester | eachSemester removeModule: aModule ].
	
	aModule detach.
	
	self detachModule: aModule.! !

!College methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:40:20'!
description
	^description! !

!College methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:40:15'!
description: aString
	description := aString! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:35:18'!
academicYearNames

	^{ 'שנה 1' . 'שנה 2' . 'שנה 3' . 'שנה 4' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 22:29:51'!
initialize

	modules := Set new.
	
	
	programs := Set new.! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 21:36:12'!
invariant

	programs do: [:anAcademicProgram | anAcademicProgram invariant ].

	programs do: [:anAcademicProgram | self assert: anAcademicProgram college == self ].
	
	modules do: [:aModule | aModule invariant ].

	modules do: [:aModule | self assert: aModule college == self ].


	! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 14:36:53'!
lecturerRanks

	^`{'סגל בכיר' . 'סגל זוטר' . 'מרצה מן החוץ' }` asOrderedCollection! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:19:13'!
newSemester
	^Semester new! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 22:34:54'!
semesterNames

	^{ 'סמסטר א' . 'סמסטר ב' . 'סמסטר קיץ' }! !

!College methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:38:50'!
trackNames

	^{ 'מסלול יום' . 'מסלול ערב' . 'מסלול משולב' }! !

!College methodsFor: 'filing' stamp: 'DF 2/28/2025 17:34:28'!
fromXML: anXMLElement

	| aString |
	
	self assert: anXMLElement name = 'college'.
	
	aString := anXMLElement attributeAt: 'description'.
	
	self description: aString.

	anXMLElement elementAt: 'modules' :: elements do:[:eachElement | |aModule | 
		aModule := Module new.
		self addModule: aModule.
		aModule fromXML: eachElement ].

	anXMLElement elementAt: 'prereqs' :: elements do:[:eachElement | |aModule | 
		aModule := self moduleAt: (Number readFrom: (eachElement attributeAt: 'code')).

		self assert: eachElement name = 'module-prereqs'.

		eachElement elementsDo: [:eachPrereq | | prereq |
			
			prereq := self moduleAt: (Number readFrom: (eachPrereq attributeAt: 'code')).
			
			aModule addPrereq: prereq.
		 ] ].
	
	anXMLElement elementAt: 'programs' :: elements do:[:eachElement | |anAcademicProgram | 
		anAcademicProgram := AcademicProgram new.
		self addAcademicProgram: anAcademicProgram.
		anAcademicProgram fromXML: eachElement ].

! !

!College methodsFor: 'filing' stamp: 'DF 1/26/2025 14:16:29'!
importAcademicProgram: aFileEntry

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
		
		aModule code: (Number readFrom: (eachRow at: moduleCodeIndex)) ; description: (eachRow at: moduleDescriptionIndex).
		
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
		
		aSemester addModule: aModule.
		
		self addModule: aModule ]
		! !

!College methodsFor: 'filing' stamp: 'DF 2/21/2025 13:20:47'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'college' attributeList: {'description' -> description } asDictionary ; endTag.
	
	self xmlElementsOut: anXMLWriter.
	
	anXMLWriter endTag: 'college'.! !

!College methodsFor: 'filing' stamp: 'DF 2/21/2025 13:20:47'!
xmlElementsOut: anXMLWriter
	
	anXMLWriter startTag: 'modules' ; endTag.
	modules do:[:each |
		each toXML: anXMLWriter ].
	anXMLWriter endTag: 'modules'.

	anXMLWriter startTag: 'prereqs' ; endTag.
	modules do:[:each |
		each xmlPrereqsOut: anXMLWriter ]. 
	anXMLWriter endTag: 'prereqs'.
	
	anXMLWriter startTag: 'programs' ; endTag.
	programs do:[:each |
		each toXML: anXMLWriter ].
	anXMLWriter endTag: 'programs'.
	
! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 15:43:47'!
addAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module isNil.
	
	anAcademicUnit module: self.
	
	units add: anAcademicUnit ! !

!Module methodsFor: 'structure' stamp: 'DF 2/21/2025 18:35:11'!
addDependant: aModule

	"self assert: (aModule after: self)."
	
	self attachDependant: aModule.
	
	aModule attachPrereq: self.! !

!Module methodsFor: 'structure' stamp: 'DF 2/21/2025 18:35:05'!
addPrereq: aModule

	"self assert: (aModule before: self)."
	
	self attachPrereq: aModule.
	
	aModule attachDependant: self.! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 15:54:17'!
attachAcademicUnit: aUnit

	units add: aUnit! !

!Module methodsFor: 'structure' stamp: 'DF 2/17/2025 21:00:06'!
attachDependant: aModule

	dependants add: aModule.! !

!Module methodsFor: 'structure' stamp: 'DF 2/17/2025 20:59:53'!
attachPrereq: aModule

	prereqs add: aModule.! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 16:53:58'!
attachSemester: aSemester

	semesters add: aSemester! !

!Module methodsFor: 'structure' stamp: 'DF 2/22/2025 18:48:35'!
attachTheme: anAcademicTheme

	themes add: anAcademicTheme ! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 15:14:26'!
college
	^college! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 15:54:48'!
college: aCollege

	self assert: college isNil.
	
	college := aCollege! !

!Module methodsFor: 'structure' stamp: 'DF 1/9/2025 21:08:31'!
detach

	college := nil.! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 15:44:35'!
detachAcademicUnit: aUnit

	units remove: aUnit! !

!Module methodsFor: 'structure' stamp: 'DF 2/17/2025 20:34:52'!
detachDependant: aModule

	dependants remove: aModule.! !

!Module methodsFor: 'structure' stamp: 'DF 2/17/2025 20:34:03'!
detachPrereq: aModule

	prereqs remove: aModule.! !

!Module methodsFor: 'structure' stamp: 'DF 12/27/2024 16:54:16'!
detachSemester: aSemester

	semesters remove: aSemester! !

!Module methodsFor: 'structure' stamp: 'DF 2/22/2025 19:00:32'!
detachTheme: anAcademicTheme

	themes remove: anAcademicTheme ! !

!Module methodsFor: 'structure' stamp: 'DF 2/3/2025 19:54:40'!
removeAcademicUnit: anAcademicUnit

	self assert: anAcademicUnit module == self.
	
	anAcademicUnit detach.
	
	self detachAcademicUnit: anAcademicUnit 
	
	"TODO: remove all the assignments for this unit"! !

!Module methodsFor: 'structure' stamp: 'DF 2/21/2025 18:08:26'!
removePrereq: aModule

	aModule detachDependant: self.
	
	self detachPrereq: aModule.
	
! !

!Module methodsFor: 'structure' stamp: 'DF 2/20/2025 21:04:54'!
semesterInTrack: anAcademicTrack

	^ semesters detect:[:eachSemester | eachSemester academicYear academicTrack = anAcademicTrack ].! !

!Module methodsFor: 'structure' stamp: 'DF 2/20/2025 21:06:39'!
tracks

	^ semesters collect:[:eachSemester | eachSemester academicYear academicTrack ].! !

!Module methodsFor: 'structure' stamp: 'DF 1/5/2025 18:20:32'!
unitAt: aString
	^ units detect:[:eachUnit | eachUnit description = aString ] ifNone:[nil]! !

!Module methodsFor: 'structure' stamp: 'DF 12/28/2024 15:51:51'!
units
	^units! !

!Module methodsFor: 'structure' stamp: 'DF 1/9/2025 20:35:19'!
updateAcademicUnit: aString duration: anInteger

	| aUnit |
	
	self assert: anInteger >= 0.
		
	aUnit := self unitAt: aString.
	
	aUnit isNil and:[ anInteger = 0] 
		::ifTrue:[ ^self].
		
	aUnit 
		ifNil:[
			aUnit := AcademicUnit newFrom: aString.
			self addAcademicUnit: aUnit].
	
	anInteger = 0
		ifTrue:[
			self removeAcademicUnit: aUnit ]
		ifFalse:[
			aUnit duration: anInteger ].! !

!Module methodsFor: 'accessing' stamp: 'DF 12/28/2024 15:15:08'!
code
	^code! !

!Module methodsFor: 'accessing' stamp: 'DF 12/28/2024 15:14:59'!
code: anInteger
	code := anInteger! !

!Module methodsFor: 'accessing' stamp: 'DF 2/24/2025 19:18:33'!
dependants
	^dependants! !

!Module methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:53:46'!
description
	^description! !

!Module methodsFor: 'accessing' stamp: 'DF 12/27/2024 15:53:38'!
description: aString
	description := aString! !

!Module methodsFor: 'accessing' stamp: 'DF 2/14/2025 17:04:29'!
duration
	^units asOrderedCollection collect:[:eachUnit | eachUnit duration ] :: sum:[:each|each] ifEmpty:[0].
! !

!Module methodsFor: 'accessing' stamp: 'DF 1/26/2025 18:42:31'!
elective
	^elective
	! !

!Module methodsFor: 'accessing' stamp: 'DF 1/26/2025 18:41:22'!
elective: aBoolean
	elective := aBoolean! !

!Module methodsFor: 'accessing' stamp: 'DF 2/14/2025 17:04:19'!
points
	^units asOrderedCollection collect:[:eachUnit | eachUnit points ] :: sum:[:each|each] ifEmpty:[0].
! !

!Module methodsFor: 'accessing' stamp: 'DF 2/20/2025 10:38:11'!
prereqs
	^prereqs! !

!Module methodsFor: 'accessing' stamp: 'DF 1/10/2025 19:51:54'!
programs

	| table |
	
	table := OrderedCollection new.

	semesters do:[:eachSemester |
		table add: { eachSemester  . eachSemester academicYear  . eachSemester academicYear academicTrack  . eachSemester academicYear academicTrack program  } ].
	
	^table
! !

!Module methodsFor: 'accessing' stamp: 'DF 12/27/2024 16:57:28'!
semesters
	^semesters ! !

!Module methodsFor: 'xml' stamp: 'DF 2/23/2025 12:42:13'!
fromXML: anXMLElement

	self assert: anXMLElement name = 'module'.
	
	code := Number readFrom: (anXMLElement attributeAt: 'code').
	
	description := anXMLElement attributeAt: 'description'.

	latin := anXMLElement attributeAt: 'latin'.
	
	elective := (anXMLElement attributeAt: 'elective') = 'true'.

	anXMLElement elementsDo: [:eachElement | | duration |
		
		duration := Number readFrom:(eachElement attributeAt: 'duration').
		
		self updateAcademicUnit: eachElement name duration: duration ]! !

!Module methodsFor: 'xml' stamp: 'DF 2/21/2025 13:20:47'!
toXML: anXMLWriter

	anXMLWriter startElement: 'module' attributeList: {'code' -> code asString . 'description' -> description . 'latin' -> latin . 'elective' -> elective asString } asDictionary ; endTag.
	
		units do:[:eachUnit |
			eachUnit toXML: anXMLWriter ].
	
	anXMLWriter endTag:'module'.! !

!Module methodsFor: 'xml' stamp: 'DF 2/23/2025 12:12:18'!
xmlPrereqsOut: anXMLWriter

	anXMLWriter startElement: 'module-prereqs' attributeList: { 'code' -> code asString } asDictionary ; endTag.
	
		prereqs do:[:eachModule |
			anXMLWriter startElement: 'prereq' attributeList: { 'code' -> eachModule code asString }asDictionary ; endEmptyTag: 'prereq'.
		 ].
	
	anXMLWriter endTag: 'module-prereqs'.! !

!Module methodsFor: 'initialization' stamp: 'DF 2/22/2025 18:48:52'!
initialize

	college := nil.
	
	units := Set new.
	
	semesters := Set new.
	
	elective := false.
	
	prereqs := Set new.
	
	dependants := Set new.
	
	themes := Set new.! !

!Module methodsFor: 'comparing' stamp: 'DF 2/24/2025 16:59:16'!
after: aModule

	| tracks |
	
	tracks := self tracks.
	
	tracks = aModule tracks ifFalse:[^false].
	
	^tracks allSatisfy:[:eachTrack | 
		(self semesterInTrack: eachTrack) after: (aModule semesterInTrack: eachTrack) ].
	! !

!Module methodsFor: 'comparing' stamp: 'DF 2/23/2025 16:32:56'!
before: aModule

	" Answers true if self appears in each academic track before aModule "

	| tracks |
	
	tracks := self tracks.
	
	tracks = aModule tracks ifFalse:[^false].
	
	^tracks allSatisfy:[:eachTrack | 
		(self semesterInTrack: eachTrack) before: (aModule semesterInTrack: eachTrack) ].
		! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:06:52'!
invariant

	units do: [:aUnit | aUnit invariant ].

	units do: [:aUnit | self assert: aUnit module == self ].
	! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:00:32'!
latin
	^latin! !

!Module methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:00:29'!
latin: aString

	latin := aString
! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 17:00:11'!
academicYear
	^academicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:26:08'!
addModule: aModule

	aModule attachSemester: self.
	
	self attachModule: aModule.
! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/20/2025 21:09:53'!
after: aSemester

	^academicYear ordinal > aSemester academicYear ordinal 
		or:[academicYear ordinal = aSemester academicYear ordinal 
			and:[ ordinal > aSemester ordinal ] ]! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:43:56'!
attachAcademicYear: anAcademicYear

	self assert: academicYear isNil.
	
	academicYear := anAcademicYear ! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:52:20'!
attachModule: aModule

	modules add: aModule! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/20/2025 21:09:31'!
before: aSemester

	^academicYear ordinal < aSemester academicYear ordinal 
		or:[academicYear ordinal = aSemester academicYear ordinal 
			and:[ ordinal < aSemester ordinal ] ]! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:37'!
description
	^description! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 14:48:42'!
description: aString
	description := aString! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/9/2025 20:56:05'!
detach

	academicYear := nil.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/27/2024 16:55:00'!
detachModule: aModule

	modules remove: aModule.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 20:20:23'!
displayStringOrText
	^description! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:24:31'!
initialize

	modules := Set new.! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:19:56'!
moduleAt: aCodeInteger

	^modules detect:[:eachModule | eachModule code = aCodeInteger ] ifFound:[:aModule | aModule] ifNone:[nil]! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 15:31:36'!
modules
	^modules! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/17/2025 20:38:39'!
ordinal
	^ordinal! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/17/2025 20:38:36'!
ordinal: anInteger
	ordinal := anInteger! !

!Semester methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:26:33'!
removeModule: aModule

	aModule detachSemester: self.
	
	self detachModule: aModule.! !

!Semester methodsFor: 'xml' stamp: 'DF 2/17/2025 20:45:42'!
fromXML: anXMLElement

	| aString college |
	
	self assert: anXMLElement name = 'semester'.
	
	aString := anXMLElement attributeAt: 'description'.

	ordinal := Number readFrom: (anXMLElement attributeAt: 'ordinal').
	
	self description: aString.

	college := academicYear academicTrack program college.
	
	anXMLElement elementAt: 'modules' :: elements do:[:eachElement | | code module |
		code := Number readFrom: (eachElement attributeAt: 'code').
		module := college moduleAt: code.
		self addModule: module ].
! !

!Semester methodsFor: 'xml' stamp: 'DF 2/23/2025 12:24:19'!
toXML: anXMLWriter
	
	anXMLWriter startElement: 'semester' attributeList: {'description' -> description . 'ordinal' -> ordinal asString } asDictionary ; endTag.
	
	self xmlElementsOut: anXMLWriter.
	
	anXMLWriter endTag:'semester'.! !

!Semester methodsFor: 'xml' stamp: 'DF 2/15/2025 11:20:09'!
writeTableHeader: anXMLWriter

	{ 'A' . 'B' . 'C' . 'D' . 'E' . 'D' .'E' . 'H' } 
	do:[:eachStyleName | 
		anXMLWriter startElement: 'table:table-column' attributeList: { 'table:style-name' -> ('Table1.{1}' format:{ eachStyleName }) } asDictionary ; endEmptyTag:'table:table-column'. ].
	
	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table1.1' } asDictionary ; endTag.

	{ 'קוד קורס' . 'מקצוע' . 'דרישות קדם' . 'ש"ש' . 'ש"ה' . 'ש"ת' . 'ש"מ' . 'נ"ז' } 
	do:[:eachString |
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table1.A1' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> 'P4' } asDictionary ; endTag.
	
		anXMLWriter startElement: 'text:span' attributeList:{ 'text:style-name' -> 'T1'} asDictionary; endTag.
		
		anXMLWriter pcData: eachString.

		anXMLWriter endTag: 'text:span'. 
	
		anXMLWriter endTag: 'text:p'. 

		anXMLWriter endTag: 'table:table-cell'.	
	].

	anXMLWriter endTag:'table:table-row'.
	! !

!Semester methodsFor: 'xml' stamp: 'DF 2/12/2025 17:42:15'!
xmlElementsOut: anXMLWriter

	anXMLWriter startTag: 'modules' ; endTag.
	
	modules do:[:eachModule |
		anXMLWriter startElement: 'module' attributeList: { 'code' -> eachModule code asString } asDictionary ; endEmptyTag: 'module' ].

	anXMLWriter endTag: 'modules'.! !

!OpenDocWriter methodsFor: 'styles' stamp: 'DF 2/21/2025 20:19:41'!
renderParagraphStylesOn: anXMLWriter
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'P1' . 'style:family' -> 'paragraph' . 'style:parent-style-name' -> 'Heading_20_2' } asDictionary ;endTag.
		anXMLWriter startElement: 'style:paragraph-properties' attributeList: {
			'fo:margin-left' -> '0cm' .
			'fo:maring-right' -> '0cm' .
			'fo:text-indent' -> '0cm' .
			'style:auto-text-indent' -> 'false'
		} asDictionary ; endEmptyTag: 'style:paragraph-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'P2' . 'style:family' -> 'paragraph' . 'style:parent-style-name' -> 'Text_20_body' . 'style:list-style-name' -> 'WWWNum1' } asDictionary ; endEmptyTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'P3' . 'style:family' -> 'paragraph' . 'style:parent-style-name' -> 'Heading_20_3' } asDictionary ;endTag.
		anXMLWriter startElement: 'style:paragraph-properties' attributeList: {
			'fo:margin-left' -> '0.4cm' .
			'fo:maring-right' -> '0cm' .
			'fo:text-indent' -> '0cm' .
			'style:auto-text-indent' -> 'false'
		} asDictionary ; endEmptyTag: 'style:paragraph-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'P4' . 'style:family' -> 'paragraph' . 'style:parent-style-name' -> 'Standard' } asDictionary ;endTag.

		anXMLWriter startElement: 'style:paragraph-properties' attributeList: {
			'fo:margin-left' -> '0cm' .
			'fo:maring-right' -> '0cm' .
			'fo:margin-top' -> '0cm' .
			'fo:maring-bottom' -> '0cm' .
			'style:contextual-spacing' -> 'false'.
			'fo:text-indent' -> '0cm' .
			'fo:text-align' -> 'end'.
			'style:justify-single-word' -> 'false' .
			'style:auto-text-indent' -> 'false'
		} asDictionary ; endTag.
		
			anXMLWriter startTag: 'style:tab-stops' ; endEmptyTag: 'style:tab-stops'.

		anXMLWriter endTag: 'style:paragraph-properties'.
		
	anXMLWriter endTag: 'style:style'.
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'P5' . 'style:family' -> 'paragraph' . 'style:parent-style-name' -> 'Standard' } asDictionary ;endTag.

		anXMLWriter startElement: 'style:paragraph-properties' attributeList: {
			'fo:margin-left' -> '0cm' .
			'fo:maring-right' -> '0cm' .
			'fo:margin-top' -> '0cm' .
			'fo:maring-bottom' -> '0cm' .
			'style:contextual-spacing' -> 'false'.
			'fo:text-indent' -> '0cm' .
			'fo:text-align' -> 'start'.
			'style:justify-single-word' -> 'false' .
			'style:auto-text-indent' -> 'false'
		} asDictionary ; endTag.
		
			anXMLWriter startTag: 'style:tab-stops' ; endEmptyTag: 'style:tab-stops'.

		anXMLWriter endTag: 'style:paragraph-properties'.
		
	anXMLWriter endTag: 'style:style'.

! !

!OpenDocWriter methodsFor: 'styles' stamp: 'DF 2/15/2025 15:07:18'!
renderStylesOn: anXMLWriter
	
	self renderTableStylesOn: anXMLWriter ; renderParagraphStylesOn: anXMLWriter ; renderTextStylesOn: anXMLWriter.
! !

!OpenDocWriter methodsFor: 'styles' stamp: 'DF 2/15/2025 21:26:57'!
renderTableColumn: aString styleForWidth: aNumberCm on: anXMLWriter

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> aString . 'style:family' -> 'table-column' } asDictionary ; endTag.
	anXMLWriter startElement: 'style:table-column-properties' attributeList:{ 'style:column-width' -> ('{1}cm' format:{aNumberCm} ) } asDictionary ; endEmptyTag:'style:table-column-properties'.
	anXMLWriter endTag: 'style:style'.
! !

!OpenDocWriter methodsFor: 'styles' stamp: 'DF 2/26/2025 18:44:25'!
renderTableStylesOn: anXMLWriter
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'Table' . 'style:family' -> 'table' } asDictionary ;endTag.
	
		anXMLWriter startElement: 'style:table-properties' attributeList: {
'style:width' -> '17.478cm' . 'fo:margin-top' -> '0cm' . 'fo:margin-bottom' -> '0cm' . 'table:align' -> 'center' . 'style:writing-mode' -> 'rl-tb' } asDictionary; endEmptyTag: 'style:table-properties' .

	anXMLWriter endTag: 'style:style'.
	
	{ { 'Table.A' . 2.0 } . { 'Table.B' . 6.0 } . { 'Table.C' . 4.0 } . { 'Table.D' . 1.0 } . { 'Table.E' . 2.48 } } do:[:each |
		self renderTableColumn: each first styleForWidth: each second  on: anXMLWriter ].
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'Table.1' . 'style-famliy' -> 'table-row' } asDictionary ; endTag.
	
		anXMLWriter startElement: 'style:table-row-properties' attributeList:{'style:min-row-height' -> '0.688cm' . 'fo:keep-together' -> 'auto' } asDictionary ;endEmptyTag: 'style:table-row-properties'.
	
	anXMLWriter endTag: 'style:style'.
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'Table.A1' . 'style:family' -> 'table-cell' } asDictionary ;endTag.
		anXMLWriter startElement: 'style:table-cell-properties' attributeList: {
			'style:vertical-align' -> ''.
			'fo:padding-left' -> '0.101cm' .
			'fo:padding-right' -> '0.101cm' .
			'fo:padding-top' -> '0cm' .
			'fo:padding-bottom' -> '0cm' .
			'fo:border-left' -> '0.5pt solid #999999' .
			'fo:border-right' -> '0.5pt solid #999999' .
			'fo:border-top' -> '0.5pt solid #999999' .
			'fo:border-bottom' -> '1.5pt solid #666666' .
			'style:writing-mode' -> 'rl-tb'
		} asDictionary ; endEmptyTag: 'style:table-cell-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'Table.A2' . 'style:family' -> 'table-cell' } asDictionary ;endTag.
		anXMLWriter startElement: 'style:table-cell-properties' attributeList: {
			'style:vertical-align' -> ''.
			'fo:padding-left' -> '0.101cm' .
			'fo:padding-right' -> '0.101cm' .
			'fo:padding-top' -> '0cm' .
			'fo:padding-bottom' -> '0cm' .
			'fo:border' -> '0.5pt solid #999999' .
			'style:writing-mode' -> 'rl-tb'
		} asDictionary ; endEmptyTag: 'style:table-cell-properties'.
		
	anXMLWriter endTag: 'style:style'.
	! !

!OpenDocWriter methodsFor: 'styles' stamp: 'DF 2/15/2025 15:06:55'!
renderTextStylesOn: anXMLWriter
	
	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'T1' . 'style:family' -> 'text'  } asDictionary ;endTag.
		anXMLWriter startElement: 'style:text-properties' attributeList: {
			'fo:font-weight' -> 'bold' .
			'fo:font-weight-asian' -> 'bold' .
			'fo:font-name-complex' -> 'Calibri' .
			'fo:font-weight-complex' -> 'bold' .
		} asDictionary ; endEmptyTag: 'style:text-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'T2' . 'style:family' -> 'text'  } asDictionary ;endTag.
		anXMLWriter startElement: 'style:text-properties' attributeList: {
			'fo:font-weight' -> 'normal' .
			'fo:font-weight-asian' -> 'normal' .
			'fo:font-name-complex' -> 'Calibri' .
			'fo:font-weight-complex' -> 'normal' .
		} asDictionary ; endEmptyTag: 'style:text-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'style:style' attributeList: { 'style:name' -> 'T3' . 'style:family' -> 'text'  } asDictionary ;endTag.
		anXMLWriter startElement: 'style:text-properties' attributeList: {
			'fo:font-name-complex' -> 'Calibri' .
		} asDictionary ; endEmptyTag: 'style:text-properties'.
		
	anXMLWriter endTag: 'style:style'.

	anXMLWriter startElement: 'number:number-style' attributeList: { 'style:name' -> 'N0' } asDictionary ;endTag.
		anXMLWriter startElement: 'number:number' attributeList: {
			'number:min-integer-digits' -> '1' .
		} asDictionary ; endEmptyTag: 'number:number'.
		
	anXMLWriter endTag: 'number:number-style'.
! !

!OpenDocWriter methodsFor: 'electives and themes' stamp: 'DF 2/26/2025 18:46:40'!
renderAcademicTheme: anAcademicTheme in: anAcademicTrack on: anXMLWriter.

	self renderThemeTitle: anAcademicTheme on: anXMLWriter.
	
	anXMLWriter startElement: 'table:table' attributeList: { 'table:name' -> anAcademicTheme description . 'table:style-name' -> 'Table' } asDictionary ; endTag.

	self renderElectiveTableHeaderOn: anXMLWriter.

	anAcademicTheme modulesInTrack: anAcademicTrack :: do:[:eachTuple | 
		self renderElectiveModule: (eachTuple at:1) in:(eachTuple at:2) on: anXMLWriter ].

	
	anXMLWriter endTag: 'table:table'. ! !

!OpenDocWriter methodsFor: 'electives and themes' stamp: 'DF 2/26/2025 18:42:24'!
renderElectiveModule: aModule in: aSemester on: anXMLWriter 

	| lecture recitation lab |
	
	lecture := aModule unitAt: 'הרצאה' :: ifNil:[0] ifNotNil:[:unit | unit duration].
	recitation := aModule unitAt: 'תרגול' :: ifNil:[0] ifNotNil:[:unit | unit duration].
	lab := aModule unitAt: 'מעבדה' :: ifNil:[0] ifNotNil:[:unit | unit duration].

	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.2' } asDictionary ; endTag.
		
		self renderCell: { { aModule code asString . 'P4' } } on: anXMLWriter.

		self renderCell: { { aModule description  . 'P4' } . { aModule latin . 'P5' } } on: anXMLWriter.

		self renderCell: (aModule prereqs collect:[:eachModule | { eachModule description . 'P4' } ]) on: anXMLWriter.
		
		{ aModule duration . lecture . recitation . lab . aModule points } collect:[:each | each asString ] :: 
		do:[:eachString | self renderCell: { { eachString . 'P4' } } on: anXMLWriter ].

		self renderCell: { { aSemester academicYear description, ', ', aSemester description  . 'P4' } } on: anXMLWriter.

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'electives and themes' stamp: 'DF 2/26/2025 18:42:07'!
renderElectiveTableHeaderOn: anXMLWriter

	{ 'A' . 'B' . 'C' . 'D' . 'D' . 'D' .'D' . 'D' . 'E' } 
	do:[:eachStyleName | 
		anXMLWriter startElement: 'table:table-column' attributeList: { 'table:style-name' -> ('Table.{1}' format:{ eachStyleName }) } asDictionary ; endEmptyTag:'table:table-column'. ].
	
	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.1' } asDictionary ; endTag.

	{ 'קוד קורס' . 'מקצוע' . 'דרישות קדם' . 'ש"ש' . 'ש"ה' . 'ש"ת' . 'ש"מ' . 'נ"ז' . 'שנה וסמסטר מומלצים' } 
	do:[:eachString |
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table.A1' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> 'P4' } asDictionary ; endTag.
	
		anXMLWriter startElement: 'text:span' attributeList:{ 'text:style-name' -> 'T1'} asDictionary; endTag.
		
		anXMLWriter pcData: eachString.

		anXMLWriter endTag: 'text:span'. 
	
		anXMLWriter endTag: 'text:p'. 

		anXMLWriter endTag: 'table:table-cell'.	
	].

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'electives and themes' stamp: 'DF 2/26/2025 19:14:20'!
renderThemeTitle: aTheme on: anXMLWriter

	self renderHeading: 'מסלול התמחות ', aTheme  description level:3 on: anXMLWriter.
! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/21/2025 21:07:20'!
renderAcademicYearTableSummary: anAcademicYear on: anXMLWriter

	| mandatory duration points lecture recitation lab |

	duration := 0. points := 0. lecture := 0. recitation := 0. lab := 0.
	
	anAcademicYear semesters do:[:eachSemester |	
	
		mandatory := eachSemester modules reject:[:each | each elective] :: asOrderedCollection.
	
		duration := duration + (mandatory collect:[:each | each duration ] :: sum:[:each | each] ifEmpty:[0]).
	
		points := points + (mandatory collect:[:each | each points ] :: sum:[:each | each] ifEmpty:[0]).
	
		lecture := lecture + (mandatory collect:[:each | each unitAt: 'הרצאה' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0]).

		recitation := recitation + (mandatory collect:[:each | each unitAt: 'תרגול' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0]).
	
		lab := lab + (mandatory collect:[:each | each unitAt: 'מעבדה' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0]).
	].
	
	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.1' } asDictionary ; endTag.

	{ '' . 'ס"ה קורסי חובה ב' , anAcademicYear description . '' . duration asString . lecture asString . recitation asString . lab asString . points asString } 
	do:[:eachString |
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table.A1' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> 'P4' } asDictionary ; endTag.
	
		anXMLWriter pcData: eachString.
	
		anXMLWriter endTag: 'text:p'. 

		anXMLWriter endTag: 'table:table-cell'.	
	].

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/21/2025 20:25:37'!
renderCell: strings on: anXMLWriter
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table.A2' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		strings do:[:eachStringStyle | |str styl |
		
			str := eachStringStyle at:1.
			styl := eachStringStyle at:2.
			
			anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> styl } asDictionary ; endTag.
	
			anXMLWriter pcData: str.
	
			anXMLWriter endTag: 'text:p'. 
		].
	
		anXMLWriter endTag: 'table:table-cell'.	
! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/21/2025 20:34:44'!
renderModule: aModule on: anXMLWriter

	| lecture recitation lab |
	
	lecture := aModule unitAt: 'הרצאה' :: ifNil:[0] ifNotNil:[:unit | unit duration].
	recitation := aModule unitAt: 'תרגול' :: ifNil:[0] ifNotNil:[:unit | unit duration].
	lab := aModule unitAt: 'מעבדה' :: ifNil:[0] ifNotNil:[:unit | unit duration].

	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.2' } asDictionary ; endTag.
		self renderCell: { { aModule code asString . 'P4' } } on: anXMLWriter.

		self renderCell: { { aModule description  . 'P4' } . { aModule latin . 'P5' } } on: anXMLWriter.

		self renderCell: (aModule prereqs collect:[:eachModule | { eachModule description . 'P4' } ]) on: anXMLWriter.
		
		{ aModule duration . lecture . recitation . lab . aModule points } collect:[:each | each asString ] :: 
		do:[:eachString | self renderCell: { { eachString . 'P4' } } on: anXMLWriter ].

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/15/2025 15:14:01'!
renderSemester: aSemester on: anXMLWriter

	self renderSemesterTitle: aSemester on: anXMLWriter.
	
	self renderSemesterTable: aSemester on: anXMLWriter.! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/21/2025 21:11:31'!
renderSemesterTable: aSemester on: anXMLWriter

	anXMLWriter startElement: 'table:table' attributeList: { 'table:name' -> aSemester description . 'table:style-name' -> 'Table' } asDictionary ; endTag.

	self renderTableHeaderOn: anXMLWriter. 
	
	aSemester modules reject:[:each | each elective] :: do:[:eachModule |
		self renderModule: eachModule on: anXMLWriter ].

	self renderSemesterTableSummary: aSemester on: anXMLWriter.  
	 
	anXMLWriter endTag: 'table:table'.! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/15/2025 22:11:14'!
renderSemesterTableSummary: aSemester on: anXMLWriter

	| mandatory duration points lecture recitation lab |
	
	mandatory := aSemester modules reject:[:each | each elective] :: asOrderedCollection.
	
	duration := mandatory collect:[:each | each duration ] :: sum:[:each | each] ifEmpty:[0].
	
	points := mandatory collect:[:each | each points ] :: sum:[:each | each] ifEmpty:[0].
	
	lecture := mandatory collect:[:each | each unitAt: 'הרצאה' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0].

	recitation := mandatory collect:[:each | each unitAt: 'תרגול' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0].
	
	lab := mandatory collect:[:each | each unitAt: 'מעבדה' :: ifNil:[0] ifNotNil:[:unit | unit duration] ] :: sum:[:each | each] ifEmpty:[0].
	
	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.1' } asDictionary ; endTag.

	{ '' . 'ס"ה קורסי חובה ב' , aSemester description . '' . duration asString . lecture asString . recitation asString . lab asString . points asString } 
	do:[:eachString |
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table.A1' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> 'P4' } asDictionary ; endTag.
	
		anXMLWriter pcData: eachString.
	
		anXMLWriter endTag: 'text:p'. 

		anXMLWriter endTag: 'table:table-cell'.	
	].

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/26/2025 19:14:46'!
renderSemesterTitle: aSemester on: anXMLWriter

	self renderHeading: aSemester academicYear description , ' ' , aSemester description level:3 on: anXMLWriter.
! !

!OpenDocWriter methodsFor: 'rendering semesters' stamp: 'DF 2/21/2025 21:11:18'!
renderTableHeaderOn: anXMLWriter

	{ 'A' . 'B' . 'C' . 'D' . 'D' . 'D' .'D' . 'D' } 
	do:[:eachStyleName | 
		anXMLWriter startElement: 'table:table-column' attributeList: { 'table:style-name' -> ('Table.{1}' format:{ eachStyleName }) } asDictionary ; endEmptyTag:'table:table-column'. ].
	
	anXMLWriter startElement: 'table:table-row' attributeList: { 'table:style-name' -> 'Table.1' } asDictionary ; endTag.

	{ 'קוד קורס' . 'מקצוע' . 'דרישות קדם' . 'ש"ש' . 'ש"ה' . 'ש"ת' . 'ש"מ' . 'נ"ז' } 
	do:[:eachString |
	
		anXMLWriter startElement: 'table:table-cell' attributeList: { 'table:style-name' -> 'Table.A1' . 'office:value-type' -> 'string' } asDictionary ; endTag.
		
		anXMLWriter startElement: 'text:p' attributeList: { 'text:style-name' -> 'P4' } asDictionary ; endTag.
	
		anXMLWriter startElement: 'text:span' attributeList:{ 'text:style-name' -> 'T1'} asDictionary; endTag.
		
		anXMLWriter pcData: eachString.

		anXMLWriter endTag: 'text:span'. 
	
		anXMLWriter endTag: 'text:p'. 

		anXMLWriter endTag: 'table:table-cell'.	
	].

	anXMLWriter endTag:'table:table-row'.
	! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/15/2025 13:52:44'!
copyFile: aFileEntry to: aDirectoryEntry

	| aWriteStream dst |
	
	dst := aDirectoryEntry // aFileEntry name.
	
	aWriteStream := dst writeStream.
	
	aWriteStream nextPutAll: aFileEntry fileContents.
	
	aWriteStream close.
	! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/15/2025 14:32:24'!
documentAttributes

^{
'xmlns:office'->'urn:oasis:names:tc:opendocument:xmlns:office:1.0' .
'xmlns:fo'->'urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0' . 'xmlns:style'->'urn:oasis:names:tc:opendocument:xmlns:style:1.0' . 'xmlns:text'->'urn:oasis:names:tc:opendocument:xmlns:text:1.0' .
'xmlns:table'->'urn:oasis:names:tc:opendocument:xmlns:table:1.0' . 'xmlns:number'->'urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0' . 'xmlns:of'->'urn:oasis:names:tc:opendocument:xmlns:of:1.2'.
'office:version' -> '1.3'
} asDictionary
	! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 19:15:15'!
render: anAcademicTrack on: anXMLWriter

	anXMLWriter xmlDeclaration: '1.0' encoding: 'UTF-8'.
	
	anXMLWriter startElement: 'office:document-content' attributeList: self documentAttributes ; endTag.
	
		anXMLWriter startTag: 'office:scripts' ; endEmptyTag: 'office:scripts'.
	
		anXMLWriter startTag: 'office:automatic-styles'; endTag.
	
			self renderStylesOn: anXMLWriter.
			
		anXMLWriter endTag: 'office:automatic-styles'.
		
		anXMLWriter 
			startTag: 'office:body' ; endTag ;
				startTag: 'office:text' ; endTag.
				
					self renderHeading: 'קורסי חובה לפי שנה וסמסטר' level:2 on: anXMLWriter.
					
					anAcademicTrack academicYears do:[:eachAcademicYear | 
						self renderAcademicYear: eachAcademicYear  on: anXMLWriter ].

					self renderHeading: 'קורסי בחירה והתמחויות' level:2 on: anXMLWriter.
					
					anAcademicTrack program themes do:[:eachAcademicTheme |
						self renderAcademicTheme: eachAcademicTheme in: anAcademicTrack  on: anXMLWriter ].
		
		anXMLWriter 
				endTag: 'office:text' ;
			endTag: 'office:body' ;
		endTag: 'office:document-content'
		! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 21:19:11'!
renderAcademicYear: anAcademicYear on: anXMLWriter.

	anAcademicYear semesters do:[:eachSemester | self renderSemester: eachSemester on: anXMLWriter ].

	anXMLWriter startElement: 'table:table' attributeList: { 'table:name' -> anAcademicYear description . 'table:style-name' -> 'Table' } asDictionary ; endTag.

	self renderTableHeaderOn: anXMLWriter.
	self renderAcademicYearTableSummary: anAcademicYear on: anXMLWriter.
	
	anXMLWriter endTag: 'table:table'.! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 19:13:05'!
renderHeading: aString level: anInteger on: anXMLWriter

	anXMLWriter startElement: 'text:h' attributeList: { 'text:style-name' -> 'P3' . 'text:outline-level' -> anInteger asString } asDictionary ; endTag.

	anXMLWriter pcData: aString.
	
	anXMLWriter endTag: 'text:h'.
! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/15/2025 12:17:36'!
templateDirectory: aDirectoryEntry
	templateDirectory := aDirectoryEntry ! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 20:44:55'!
temporaryFilename

	| aWriteStream nonc |
	
	aWriteStream := WriteStream on: ''.

	aWriteStream nextPut:$~.
	
	12 timesRepeat: [ aWriteStream nextPut: (Character codePoint: 96 + 22 atRandom) ] .
	
	nonc := Time now asDurationSinceMidnight totalMilliseconds mod: 10000.

	aWriteStream nextPutAll: nonc asString.
	
	^aWriteStream contents
! !

!OpenDocWriter methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 20:51:19'!
writeAcademicTrackDocument: anAcademicTrack inDirectory: aDirectory

	| documentName dir dst content anXMLWriter aZipArchive count |
	
	documentName := anAcademicTrack program description , ' ' , anAcademicTrack description .	
		
	dir := aDirectory.
	
	dst := dir / self temporaryFilename.
	
	content := dst // 'content.xml'.
	
	anXMLWriter := XMLWriter on: content writeStream.
	
	self render: anAcademicTrack on: anXMLWriter.
	
	anXMLWriter stream close.
	
	self copyFile: templateDirectory // 'meta.xml' to: dst.
	
	self copyFile: templateDirectory // 'styles.xml' to: dst.

	self copyFile: templateDirectory / 'META-INF' // 'manifest.xml' to: dst / 'META-INF'.
	
	aZipArchive := ZipArchive new.
	
	aZipArchive addFile: dst // 'meta.xml'  as: 'meta.xml'; addFile: dst// 'styles.xml' as:'styles.xml' ; addFile: dst // 'content.xml' as:'content.xml'.
	
	aZipArchive addFile: dst / 'META-INF' // 'manifest.xml' as: 'META-INF/manifest.xml'.
	
	count := aZipArchive members sum:[:each | each uncompressedSize ] ifEmpty: [0].
	
	'Generating document ...' displayProgressAt: Sensor mousePoint from: 1 to:  count during: [:barBlock | | acc |
		acc := 0.
		aZipArchive writeToFileNamed: dir // (documentName , '.odt') notifying: [:q | acc := acc + q. barBlock value:acc . (Delay forMilliseconds: 10) wait ] ].
	
	"delete tmp dir"
	
	dst recursiveDelete.

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

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/17/2025 22:12:08'!
initialExtent
	^ super initialExtent ! !

!AcademicProgramBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 19:02:31'!
update: aSymbol
	self changed: aSymbol! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/12/2025 16:46:00'!
programIndex
	
	^ programIndex! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 2/3/2025 09:22:25'!
programIndex: anIndex

	programIndex := anIndex.

	self updateLabel.
	
	self changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'programs' stamp: 'DF 1/10/2025 18:07:02'!
programs

	^ model programs asOrderedCollection sort:[:x :y | x description <= y description ].! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 3/9/2025 20:25:46'!
exportTrackAsOpenDoc: aDirectoryEntry

	| tracks track anOpenDocWriter |
	
	trackIndex = 0 ifTrue:[^self].
	
	tracks := self tracks.
	
	trackIndex <= tracks size ifFalse:[^self].
	
	track := tracks at: trackIndex.
	
	anOpenDocWriter := OpenDocWriter new.
	
	anOpenDocWriter templateDirectory: BrocadePlannerApplication instance home asDirectoryEntry / 'opendoc'.
	
	anOpenDocWriter writeAcademicTrackDocument: track inDirectory: aDirectoryEntry.! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 3/9/2025 20:25:46'!
selectExportDirectory

	SelectDirectoryDialog open:self start: BrocadePlannerApplication instance home asDirectoryEntry action: #exportTrackAsOpenDoc: label: 'Select Directory'! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 1/12/2025 16:46:08'!
trackIndex
	
	^ trackIndex! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 09:20:53'!
trackIndex: anIndex

	trackIndex := anIndex.
	
	self updateLabel.
	
	self changed: #years; changed: #semesterNames; changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 2/3/2025 19:26:34'!
tracks
	
	| programs index |
	
	programIndex = 0 ifTrue:[^{}].
	
	programs := self programs.
	
	programs ifEmpty:[^{}].
	
	index := programIndex min: programs size.
		
	^programs at: index :: tracks asOrderedCollection sort:[:x :y | x description <= y description ].
! !

!AcademicProgramBrowser methodsFor: 'tracks' stamp: 'DF 3/31/2025 19:07:32'!
updateLabel

	trackIndex = 0 or: [programIndex = 0] ::
		ifTrue:[
			self setLabel: 'תוכניות לימודים'.
			]
		ifFalse:[
			| programName trackName tracks |

			programName := self programs at: programIndex :: description.
	
			tracks := self tracks.
			
			trackName := (trackIndex <= tracks size) ifTrue:[tracks at: trackIndex  :: description] ifFalse:[''].
	
			self setLabel: ('תוכנית לימודים: {1} {2}' format:{ programName . trackName }) asBidi.
			]	
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 2/1/2025 15:06:32'!
selectedSemesters

	| semesterNames selectedNames |
	
	semesterNames := self semesterNames.
	
	selectedNames := selectedSemesters select:[:index | index <= semesterNames size ] :: collect:[:index |
semesterNames at: index ].
	
	^self semesters select:[:eachSemester | selectedNames includes: eachSemester description].
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 2/23/2025 09:20:04'!
selectedSemesters: aSet
	selectedSemesters := aSet! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 2/23/2025 09:38:20'!
selectedSemestersIndices

	^selectedSemesters! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 16:46:21'!
semesterIndex
	
	^ semesterIndex! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/31/2025 20:32:24'!
semesterIndex: anIndex

	semesterIndex := anIndex.
	
	self changed: #summary; changed: #unitsTable! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:05:24'!
semesterNames

	^ self semesters collect:[:each | each description ] :: asOrderedCollection sort
! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/12/2025 17:06:58'!
semesterSelectionAt: anIndex
	
	^ selectedSemesters includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 2/23/2025 12:52:29'!
semesterSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedSemesters add: anIndex ]
		ifFalse:[
			selectedSemesters remove: anIndex ifAbsent:[] ].
		
	self changed: #unitsTable ; changed: #summary! !

!AcademicProgramBrowser methodsFor: 'semesters' stamp: 'DF 1/31/2025 20:35:55'!
semesters
	
	| semesters years |
	
	semesters := Set new.
	
	years := self years.
	
	selectedYears do:[:index | 
		index <= years size 
			ifTrue:[	semesters addAll: (years at:index) semesters ] ].
	
	^ semesters 
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 2/28/2025 17:57:18'!
modules

	| tracks track selectedElectiveNames modules |
		
	trackIndex = 0 ifTrue:[^{}].
	
	tracks := self tracks.
	
	tracks ifEmpty:[^{}].
	
	track := tracks at: trackIndex ifAbsent:[tracks last].

	selectedElectiveNames := selectedElectives collect:[:i | self electiveNames at:i].	

	modules := Set new.

	track academicYears do:[:eachYear |
		eachYear semesters do:[:eachSemester |			
			modules addAll: 
				(eachSemester modules select:[:eachModule |
					(eachModule elective and:[selectedElectiveNames includes: 'בחירה']) 	or:
						[eachModule elective not and:[selectedElectiveNames includes: 'חובה'] ] ] ) ] ].

	^modules asOrderedCollection sort:[:x :y | x description < y description]
	
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/31/2025 20:38:21'!
selectEntitiesIn: aTuple 

	" { a Semester . an AcademicYear . anAcademicTrack . an AcademicProgram } "
	
	programIndex := self programs indexOf: (aTuple at: 4).
	
	trackIndex := self tracks indexOf: (aTuple at:3). 
	
	yearIndex := self years indexOf: (aTuple at:2).
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := self semesters asOrderedCollection sort:[:x :y | x description <= y description] :: indexOf: (aTuple at:1).
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/31/2025 20:38:29'!
selectFirstEntitiesIn: aProgram

	programIndex := self programs find: aProgram.
	
	trackIndex := 1. 
	
	yearIndex := 1.
	
	selectedYears := Set with: yearIndex.
	
	semesterIndex := 1.
	
	selectedSemesters := Set with: semesterIndex.
	
	self changed: #programs ; changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #summary ; changed: #unitsTable.
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/16/2025 21:22:26'!
selectUnit: aUnitIndex

	aUnitIndex <= 1 
		ifTrue:[
			unitIndex := nil.
			^self].
	
	unitIndex := self units at: aUnitIndex - 1 . "minus 1 to account for the header, see unitsTable"
	
	! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/16/2025 21:22:26'!
selectedUnit
	^unitIndex at:1! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 1/10/2025 18:11:13'!
summary

	| hours points units |
	
	units := self units collect:[:eachTuple | eachTuple at:1].
	
	units ifEmpty:[^''] .
	
	hours := units inject: 0 into:[:acc :eachUnit | acc + eachUnit duration ].
		
	points := units inject: 0 into:[:acc :eachUnit | acc + eachUnit points ].
	
	^'סך הכול {1} שעות, {2} נקודות זכות.' format: { hours printString reverse . points printStringFractionDigits:1 :: reverse } :: reverse! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 2/22/2025 19:32:22'!
units

	| selectedElectiveNames semesters units |

	selectedElectiveNames := selectedElectives collect:[:i | self electiveNames at:i].	

	units := OrderedCollection new.

	semesters := self selectedSemesters .
	
	semesters asOrderedCollection sort:[:x :y | x academicYear description < y academicYear description or:[x academicYear description = y academicYear description and: [x description <= y description] ] ] ::
	
	do:[:eachSemester |	 | modules |
		modules := 	eachSemester modules select:[:eachModule |
			(eachModule elective and:[selectedElectiveNames includes: 'בחירה']) 	or:
			[eachModule elective not and:[selectedElectiveNames includes: 'חובה'] ] ].
		
		modules asOrderedCollection sort:[:x :y | x code <= y code ] :: do:[:eachModule |
			eachModule units asOrderedCollection sort:[:x :y | x description <= y description] :: do:[:eachUnit |
				units add: { eachUnit . eachSemester  } ] ] ].
	
	^units
! !

!AcademicProgramBrowser methodsFor: 'modules' stamp: 'DF 2/23/2025 09:34:42'!
unitsTable

	| table |

	table := OrderedCollection new.
	
	table add: { 'נז' . 'שעות' . 'סוג' . 'שם קורס' . 'קוד קורס' . 'סמסטר' . 'שנה' }.

	self units do:[:eachTuple | | unit semester year |
		unit := eachTuple at:1.
		semester := eachTuple at:2.
		year := semester academicYear.
		table add: { 
			{ unit points } .  
			{ unit duration } . 
			{ unit description } . 
			{ unit module description asBidi writingDirection: #rightToLeft } . 
			{ unit module code } .
			{ semester description }  . 
			{ year  } } ] .
	
	^table
! !

!AcademicProgramBrowser methodsFor: 'initialization' stamp: 'DF 2/28/2025 19:13:11'!
initialize

	super initialize.
	
	programIndex := 0.
	
	yearIndex := 0.
	
	selectedYears := Set new.
	
	trackIndex := 0.
	
	semesterIndex:= 0.
	
	selectedSemesters := Set new.
	
	unitIndex := nil.
	
	electiveIndex := 0.
	
	selectedElectives := Set new.
	
	! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 1/26/2025 18:49:33'!
electiveIndex
	
	^ electiveIndex! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 1/26/2025 18:50:04'!
electiveIndex: anIndex

	electiveIndex := anIndex! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 2/23/2025 09:32:21'!
selectedElectives

	^selectedElectives ! !

!AcademicProgramBrowser methodsFor: 'electives' stamp: 'DF 2/23/2025 09:26:53'!
selectedElectives: aSet

	selectedElectives := aSet! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/26/2025 18:55:21'!
electiveNames

	^model electiveNames ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/26/2025 18:56:12'!
electiveSelectionAt: anIndex
	
	^ selectedElectives includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 2/11/2025 11:21:28'!
electiveSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedElectives add: anIndex ]
		ifFalse:[
			selectedElectives remove: anIndex ifAbsent:[nil] ].
		
	self changed: #unitsTable ; changed: #summary ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 2/23/2025 09:32:15'!
selectedYears
	^selectedYears ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 2/23/2025 09:19:49'!
selectedYears: aSet
	selectedYears := aSet! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 16:46:14'!
yearIndex
	
	^ yearIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/31/2025 20:36:21'!
yearIndex: anIndex

	yearIndex := anIndex.
	
	self changed: #semesterNames; changed: #summary; changed: #unitsTable
	! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/12/2025 17:13:46'!
yearSelectionAt: anIndex
	
	^ selectedYears includes: anIndex! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 2/23/2025 13:20:01'!
yearSelectionAt: anIndex put: aBoolean

	aBoolean 
		ifTrue:[
			selectedYears add: anIndex ]
		ifFalse:[
			selectedYears remove: anIndex ifAbsent:[] ].
		
	self changed: #semesterNames; changed: #unitsTable ; changed: #summary ! !

!AcademicProgramBrowser methodsFor: 'years' stamp: 'DF 1/14/2025 22:01:33'!
years
	
	| tracks |
		
	trackIndex = 0 ifTrue:[^{}].
	
	tracks := self tracks.
	
	tracks ifEmpty:[^{}].
	
	^tracks at: trackIndex ifAbsent:[tracks last] :: academicYears :: asOrderedCollection sort:[:x :y | x description <= y description ]
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 1/31/2025 20:38:12'!
import: aFileEntry

	model import: aFileEntry.
	
	self programs notEmpty
		ifTrue:[programIndex := 1].
	
	self tracks notEmpty
		ifTrue:[trackIndex := 1 ].
		
	selectedYears removeAll.
	
	selectedYears addAll: self years.
	
	yearIndex := selectedYears ifEmpty:[0] ifNotEmpty:[1].
	
	selectedSemesters addAll: self semesters.
	
	semesterIndex := selectedSemesters ifEmpty:[0] ifNotEmpty: [1].
	
	model changed: #programs ; changed: #tracks ; changed: #years ; changed: #semesterNames; changed: #unitsTable; changed: #summary.
	
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/21/2025 14:58:22'!
moduleMenuSpec

	| addModuleMessage editModuleMessage removeModuleMessage |
	
	editModuleMessage := unitIndex ifNil:[nil] ifNotNil:[#openEditModuleDialog].
	
	addModuleMessage := self selectedSemesters size = 1 ifFalse:[nil] ifTrue:[#openAddModuleDialog].
	
	removeModuleMessage := unitIndex notNil and: [self selectedSemesters size = 1] :: 
		ifFalse:[nil] ifTrue:[#removeModuleFromSemester].
	
^ {
		{ 0 .	'קורס' .				false } .
		{ 10 .	'ערוך קורס ...' . 		$e .	#window .	editModuleMessage }.
		{ 20 .	'הוסף קורס ...' .		$a . #window .	addModuleMessage } .
		{ 30 .	'-----' } .
		{ 40 .	'הסר קורס' . 			$c .	#window . 	removeModuleMessage }
	}.! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/24/2025 11:20:02'!
openAddModuleDialog

	| semester semesters mold aCommand aDialog position |
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].
	
	semester := semesters anyOne.
	
	aCommand := AddModuleCommand new college: model; semester: semester; yourself.
		
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand ;
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' asBidi ;
		addCondition: [:input :value | semester moduleAt: value :: isNil ] labeled:'הקורס כבר נמצא בתוכנית.' asBidi ;
		
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס לתוכניות לימודים'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/28/2025 18:10:56'!
openEditModuleDialog

	unitIndex ifNil:[^self].
	
	ModuleBrowser open: self selectedUnit module! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/21/2025 15:01:42'!
removeModuleFromSemester

	| aModule semesters aCommand |
	
	unitIndex ifNil:[^self].
	
	aModule := self selectedUnit module.
	
	semesters := self selectedSemesters.
	
	semesters size = 1 ifFalse:[^self].
	
	aCommand := RemoveModuleCommand new college: model ; code: aModule code ; semester: semesters anyOne ; yourself.
	
	BrocadeCommandHistory instance do: aCommand.
! !

!AcademicProgramBrowser methodsFor: 'menus' stamp: 'DF 2/16/2025 20:01:35'!
tracksMenuSpec

	| string message |

	message := trackIndex notNil and: [trackIndex > 0] :: ifTrue:[#selectExportDirectory] ifFalse:[nil].
	
	string := 'יצא כמסמך ...' asBidi writingDirection:#rightToLeft.

^ {
		{ 0 .	'מסלול אקדמי'	.	false } .
		{ 10 .	 string 		. 	$e .	#window .	message } .
	}.! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 2/28/2025 18:02:30'!
buildAcademicUnitsTable

	| unitsTable |
	
	unitsTable := PluggableTableMorph new.
	
	unitsTable model: self ; table: #unitsTable ; rightToLeft: true ; headerRow: true.
	
	unitsTable selectRowMessage: #selectUnit:.

	unitsTable menuNshortcutsKey: #moduleMenuSpec.
		
	unitsTable menuFactory: BidiMenuMorph.
	
	unitsTable columnFactory: {
		1 -> (PluggableMorphFactory new formatter:[:aNumber | aNumber printStringFractionDigits:1 ] ; yourself) .
		7 -> (PluggableMorphFactory new formatter:[:aYear |  aYear description asBidi writingDirection: #rightToLeft  ] ; yourself) } asDictionary.
		
	^unitsTable ! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 2/28/2025 19:11:52'!
buildMorphicWindow

	| topPanel units  status |
	
	topPanel := self buildNavigationPanel.
	
	status := TextModelMorph textProvider: self textGetter: #summary.
	
	units := self buildAcademicUnitsTable.
			
	self changed: #unitsTable.

	self layoutMorph addMorph: (topPanel -1.0p | 0.2p </> ( (status - 1.0p | 48f) </> (units -1.0p | 1.0p) | 0.8p)).
	! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 2/16/2025 18:43:18'!
buildNavigationPanel

	|  electives semesters years tracks programs |

	programs := BidiPluggableListMorph withModel: self listGetter: #programs indexGetter: #programIndex indexSetter: #programIndex:.
	
	tracks := BidiPluggableListMorph withModel: self listGetter: #tracks indexGetter: #trackIndex indexSetter: #trackIndex: .
	
	tracks menuNshortcutsKey: #tracksMenuSpec.

	years := BidiPluggableListMorphOfMany withModel: self listGetter: #years primarySelectionGetter: #yearIndex primarySelectionSetter: #yearIndex: listSelectionGetter: #yearSelectionAt: listSelectionSetter: #yearSelectionAt:put:.

	semesters := BidiPluggableListMorphOfMany withModel: self listGetter: #semesterNames primarySelectionGetter: #semesterIndex primarySelectionSetter: #semesterIndex: listSelectionGetter: #semesterSelectionAt: listSelectionSetter: #semesterSelectionAt:put:.
	
	electives := BidiPluggableListMorphOfMany withModel: self listGetter: #electiveNames primarySelectionGetter: #electiveIndex primarySelectionSetter: #electiveIndex: listSelectionGetter: #electiveSelectionAt: listSelectionSetter: #electiveSelectionAt:put:.
		
	
	^(electives - (1/5)p | 1p) <+> (semesters - (1/5)p | 1p) <+> (years - (1/5)p | 1p) <+> (tracks - (1/5)p | 1p) <+> (programs - (1/5)p | 1p).
! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 2/23/2025 09:38:28'!
copyNavigationIndicesFrom: anAcademicProgramBrowser
	
	programIndex :=  anAcademicProgramBrowser programIndex.
	
	trackIndex := anAcademicProgramBrowser trackIndex.
	
	yearIndex := anAcademicProgramBrowser yearIndex. 
	
	selectedYears := anAcademicProgramBrowser selectedYears copy. 

	semesterIndex := anAcademicProgramBrowser semesterIndex.

	selectedSemesters := anAcademicProgramBrowser selectedSemestersIndices copy.

	electiveIndex := anAcademicProgramBrowser electiveIndex.

	selectedElectives := anAcademicProgramBrowser selectedElectives copy.
! !

!AcademicProgramBrowser methodsFor: 'GUI building' stamp: 'DF 2/23/2025 09:33:11'!
duplicateWindow

	| aBrowser |
	
	aBrowser := self class open: model label: self label.
	
	aBrowser copyNavigationIndicesFrom: self.
		
	aBrowser morphPosition: self morphPosition - (aBrowser morphWidth @ 0).
	
	model changed: #programs; changed: #tracks ; changed: #years; changed: #semesterNames ; changed: #electiveNames.
	self changed: #unitsTable ; changed: #summary.! !

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:10:43'!
addAcademicProgramDialog: model

	| mold position aCommand aDialog |
	
	aCommand := AddAcademicProgramCommand new.
	
	aCommand college: model.
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם התוכנית';
		on: #programName of: aCommand;
		addCondition: [:input| model programAt: input :: isNil ]  
		labeled: 'כבר קיימת תוכנית עם שם זה.';
		beRequired.

	(mold integerField)
		label: 'שנות לימוד';
		on: #duration of: aCommand;
		addCondition:[:input :value | value > 0 ]
		labeled: 'תוכנית לימודים חייבת לפחות שנת לימוד אחת.';
		beRequired.

	(mold checkboxField )
		label: 'מסלול יום' ;
		on: #dayTrack of: aCommand.
	
	(mold checkboxField )
		label: 'מסלול ערב' ;
		on: #eveningTrack of: aCommand.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'תוכנית לימודים חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
! !

!AcademicProgramBrowser class methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:29:24'!
addNewModuleDialog: model

	| mold aDialog position aCommand |

	aCommand := NewModuleCommand new college: model ; yourself.

	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand;
		addCondition:[:input :value | model moduleAt: value :: isNil ] 
		labeled: 'קיים קורס עם קוד זה.';
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: aCommand;
		addCondition:[:input | model moduleNameAt: input :: isNil ] 
		labeled: 'קיים קורס עם שם זה.';
		beRequired.
	(mold stringField)
		label: 'שם באנגלית';
		on: #latin of: aCommand;
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: aCommand;
		addCondition:[:input :value | value >= 0 ]
		labeled: 'מסעות בזמן לא נתמכות בגרסה זו.' ;
		addCondition:[:input :value | | lec rec lab |
			lec := mold fields at:4 :: value.
			rec := mold fields at:5 :: value.
			lab := value.
			lec + rec + lab > 0  ]
		labeled: 'קורס ללא שעות.' ;
		beRequired.
	(mold checkboxField)
		label: 'קורס בחירה';
		on: #elective of: aCommand;
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'קורס חדש'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand  
	
! !

!EasyCollegeModulesBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/10/2025 17:35:37'!
buildMorphicWindow

	| topics topicBuilders aBrowserModel builder |
	
	topics := { #electives . #programs . #programModules }.
	
	aBrowserModel := PluggableBrowserModel new.

	aBrowserModel factory at: #electives put: NavigationTopicMulti.

	aBrowserModel  model: model; topics: topics dependencies: {  #programModules -> #electives . #programModules -> #programs }.
	
	model := aBrowserModel.
	
	topicBuilders := Dictionary new.

	topicBuilders at: #electives put:(MultiTopicMorphBuilder new topic: (aBrowserModel topics at:#electives) ; factory: BidiPluggableListMorphOfMany ; yourself).

	topicBuilders at: #programs put:(TopicMorphBuilder new topic: (aBrowserModel topics at:#programs) ; factory: BidiPluggableListMorph ; yourself).
	
	topicBuilders at: #programModules put: (TableTopicMorphBuilder new topic: (aBrowserModel topics at: #programModules) ; factory: PluggableTableMorph  ; menuBuilder: BidiMenuMorph ; yourself).

	topicBuilders at: #programModules :: menu: #moduleMenuSpec.
		
	builder := PluggableBrowserBuilder new.
	builder
		composition: { #column: . { { #row: . { { #topic: . #electives . 1/2 } . { #topic: . #programs . 1/2 } } . 0.2 } . { #topic: . #programModules .  0.8 } } };
		builders: topicBuilders.
		
	self layoutMorph addMorph: builder build proportionalHeight:1.0.	! !

!EasyCollegeModulesBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/9/2025 17:13:51'!
moduleMenuSpec

	| editModuleMessage  |
	
	editModuleMessage := (model indexAtTopic: #programModules) = 0 ifTrue:[nil] ifFalse:[#openEditModuleDialog].
	
^ {
		{ 0 .	'קורס' .				false } .
		{ 10 .	'ערוך קורס ...' . 		$e .	#window .	editModuleMessage }.
		{ 20 .	'הוסף קורס ...' .		$a . #window .	nil } .
		{ 30 .	'-----' } .
		{ 40 .	'הסר קורס' . 			$c .	#window . 	nil }
	}.! !

!EasyCollegeModulesBrowser methodsFor: 'as yet unclassified' stamp: 'DF 3/9/2025 17:23:42'!
openEditModuleDialog

	| topic  |
	
	topic := model topics at: #programModules.
	
	ModuleBrowser open: topic item last! !

!EasyThemeBrowser methodsFor: 'dialogs' stamp: 'DF 3/8/2025 15:35:22'!
addAcademicThemeDialog

	| program mold position aCommand aDialog |
	
	aCommand := AddAcademicThemeCommand new.
	
	program := model topics at: #programs :: item.
	
	aCommand program: program. 
	
	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold stringField)
		label: 'שם ההתמחות';
		on: #themeName of: aCommand;
		addCondition: [:input| program themeAt: input :: isNil ]   
		labeled: 'כבר קיימת התמחות עם שם זה.';
		beRequired.
	
	position := UISupervisor ui activeHand morphPosition.
	 
	aDialog := mold openDialog: 'התמחות חדשה'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	
! !

!EasyThemeBrowser methodsFor: 'dialogs' stamp: 'DF 3/8/2025 12:17:21'!
openAddModuleDialog


	| theme mold aCommand aDialog position |
	
	theme := model topics at: #themes :: item.
	
	aCommand := AddModuleToThemeCommand new theme: theme; yourself. 
		
	mold := BidiMold new. 
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand ;
		addCondition: [:input :value | model moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' asBidi ;
		addCondition: [:input :value | theme moduleAt: value :: isNil ] labeled:'הקורס כבר נמצא בהתמחות.' asBidi ;
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף קורס להתמחות'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	! !

!EasyThemeBrowser methodsFor: 'dialogs' stamp: 'DF 3/8/2025 12:13:53'!
openEditModuleDialog

	| theme track modules index |
	
	theme := model topics at: #themes :: item.
	
	track := model topics at: #tracks :: item.
	
	modules := theme modulesInTrack: track. 

	index := model topics at:#modules :: index.
	
	ModuleBrowser open: (modules at: index - 1) first! !

!EasyThemeBrowser methodsFor: 'dialogs' stamp: 'DF 3/8/2025 12:20:55'!
removeModule

	| theme track modules index module aCommand |
	
	theme := model topics at: #themes :: item.
	
	track := model topics at: #tracks :: item.
	
	modules := theme modulesInTrack: track. 

	index := model topics at:#modules :: index.
	
	module := (modules at: index - 1) first.
	
	aCommand := RemoveModuleFromThemeCommand new.
	
	aCommand code: module code ; theme: theme ; module: module.
	
	BrocadeCommandHistory instance do: aCommand.! !

!EasyThemeBrowser methodsFor: 'menu' stamp: 'DF 3/5/2025 13:34:59'!
moduleMenuSpec

	| addModuleMessage editModuleMessage removeModuleMessage |
	
	editModuleMessage := (model indexAtTopic: #modules) = 0 ifTrue:[nil] ifFalse:[#openEditModuleDialog].
	
	addModuleMessage :=  (model indexAtTopic: #themes) = 0 ifTrue:[nil] ifFalse:[#openAddModuleDialog].
	
	removeModuleMessage :=  (model indexAtTopic: #modules) = 0 ifTrue:[nil] ifFalse:[#removeModule].
	
^ {
		{ 0 .	'קורס' .				false } .
		{ 10 .	'ערוך קורס ... (ע)' . 	$g .	#window .	editModuleMessage }.
		{ 20 .	'הוסף קורס ... (ה)' .	$v . #window .	addModuleMessage } .
		{ 30 .	'-----' } .
		{ 40 .	'הסר קורס' . 			$c .	#window . 	removeModuleMessage }
	}.! !

!EasyThemeBrowser methodsFor: 'menu' stamp: 'DF 3/5/2025 13:35:27'!
programMenuSpec

	| addThemeMessage  |
	
	addThemeMessage := (model indexAtTopic: #programs) = 0 :: ifTrue:[nil] ifFalse: [ #addAcademicThemeDialog ].
		
^ {
		{ 0 . 	'תוכנית לימודים' .	false } .
		{ 20 . 	'הוסף התמחות ...' 	asBidi writingDirection:#rightToLeft .	$a . #window .	addThemeMessage } .
	}.! !

!EasyThemeBrowser methodsFor: 'GUI building' stamp: 'DF 3/10/2025 17:26:13'!
buildMorphicWindow

	| topics topicBuilders aBrowserModel builder |
	
	topics := { #themes . #tracks . #programs . #modules }.
	
	aBrowserModel := PluggableBrowserModel new.

	aBrowserModel model: model; topics: topics dependencies: { #tracks -> #programs . #themes -> #programs . #modules -> #tracks . #modules -> #themes . #modules -> #programs }.
	
	model := aBrowserModel.

	topicBuilders := { #themes . #tracks . #programs } collect:[:eachSymbol | | topic | 
		topic :=  aBrowserModel topics at: eachSymbol. 		
		eachSymbol -> (TopicMorphBuilder new topic: topic ; factory: BidiPluggableListMorph ; yourself)] :: asDictionary.

	topicBuilders at: #programs :: menu: #programMenuSpec.
	
	topicBuilders at: #modules put: (TableTopicMorphBuilder new topic: (aBrowserModel topics at: #modules) ; factory: PluggableTableMorph  ; menuBuilder: BidiMenuMorph ; columnFactory: {
		4 -> (PluggableMorphFactory new formatter:[:aYear |  aYear description asBidi writingDirection: #rightToLeft  ] ; yourself) } asDictionary).

	topicBuilders at: #modules :: menu: #moduleMenuSpec.
		
	builder := PluggableBrowserBuilder new.
	builder
		composition: { #column: . { { #row: . { { #topic: . #themes . 1/3 } . { #topic: . #tracks . 1/3 } . { #topic: . #programs . 1/3 } } . 0.2 } . { #topic: . #modules .  0.8 } } };
		builders: topicBuilders. 
	
	self layoutMorph addMorph: builder build proportionalHeight:1.0.	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:11:33'!
addPrereq

	| mold aCommand position aDialog |
		
	aCommand := AddPrereqCommand new.
	
	aCommand module: model.

	mold := BidiMold new.
	
	mold rightToLeft: true.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: aCommand ;
		addCondition: [:input :value | model college moduleAt: value :: notNil ] labeled:'הקורס לא קיים במערכת.' asBidi ;
		beRequired.
		
	position := UISupervisor ui activeHand morphPosition.

	aDialog := mold openDialog: 'הוסף דרישת קדם'.
	
	aDialog morphPosition: position - (aDialog morphWidth@0).
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: aCommand.
	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 19:18:41'!
dependants

	| table |
	
	table := OrderedCollection new.

	table add: { 'שם' . 'קוד' }.
	
	model dependants do:[:eachModule | 
		table add: ({ { eachModule description asBidi writingDirection:#rightToLeft  } . { eachModule code }})].
	
	^table
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:37:01'!
prereqViolations

	| table violations |
	
	violations := Set new.
	
	table := self prereqs.
	
	2 to: table size do:[:index | | prereq |
		prereq := model college moduleAt: (table at: index :: at:2) anyOne.
		
		prereq before: model :: ifFalse:[
			 violations add: (index @ 1 corner: index @ 2) ] ].
	
	^ violations! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/20/2025 11:00:23'!
prereqs

	| table |
	
	table := OrderedCollection new.

	table add: { 'שם' . 'קוד' }.
	
	model prereqs do:[:eachModule |
		table add: ({ { eachModule description asBidi writingDirection:#rightToLeft  } . { eachModule code }})].
	
	^table
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/26/2025 13:42:42'!
programs

	| table |
	
	table := OrderedCollection new.

	table add: { 'סמסטר' . 'שנה' . 'מסלול' . 'תוכנית' }.
	
	model programs do:[:eachTuple |
		table add: (eachTuple collect:[:each | { each description asBidi writingDirection:#rightToLeft } ]) ].
	
	^table
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 19:42:23'!
removePrereq

	| aCommand |
	
	self assert: selectedPrereq notNil.
		
	aCommand := RemovePrereqCommand new.
	
	aCommand module: model ; code: (selectedPrereq at:2 :: anyOne).
	
	BrocadeCommandHistory instance do: aCommand.
	! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 4/5/2025 19:28:26'!
selectDependant: anIndex

	anIndex <= 1 
		ifTrue:[
			selectedDependant := nil. 
			^self].
	
	selectedDependant := self dependants at: anIndex
	
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 19:41:34'!
selectPrereq: aPrereqIndex

	aPrereqIndex <= 1 
		ifTrue:[
			selectedPrereq := nil.
			^self].
	
	selectedPrereq := self prereqs at: aPrereqIndex
	
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 2/23/2025 16:29:55'!
selectProgram: aProgramIndex

	aProgramIndex <= 1 
		ifTrue:[
			selectedProgramIndex := nil.
			^self].
	
	selectedProgramIndex := aProgramIndex - 1
	
! !

!ModuleBrowser methodsFor: 'as yet unclassified' stamp: 'DF 1/10/2025 20:59:06'!
update: aSymbol

	self changed: aSymbol! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/24/2025 19:17:53'!
buildDependantsTable

	| table |
	
		
	table := PluggableTableMorph new.
	
	table  model: self ; table: #dependants ; rightToLeft: true ; headerRow: true.

	table menuNshortcutsKey: #dependantsMenuSpec.
	
	table selectRowMessage: #selectDependant:.
	
	table menuFactory: BidiMenuMorph.
	
	"table markers: #prereqViolations."
		
	^table	
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/25/2025 09:32:52'!
buildDetailsPane

	| mold detailsPane anEditModuleCommand aPane |

	mold := BidiMold new.
		
	mold rightToLeft: true.
	
	mold fields removeAll.
	
	anEditModuleCommand := EditModuleCommand from: model.
	
	anEditModuleCommand module: model.
	
	(mold integerField)
		label: 'קוד הקורס';
		on: #code of: anEditModuleCommand;
		customize:[:widget :input :example | 
			input color: Color lightGray; disableEditing 
			];
		beRequired.
	(mold stringField)
		label: 'שם הקורס';
		on: #description of: anEditModuleCommand;
		beRequired.
	(mold stringField) rightToLeft: false; 
		label: 'שם באנגלית';
		on: #latin of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות הרצאה';
		on: #lectureDuration of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות תרגול';
		on: #recitationDuration of: anEditModuleCommand;
		beRequired.
	(mold integerField)
		label: 'שעות מעבדה';
		on: #labDuration of: anEditModuleCommand;
		beRequired.
	(mold checkboxField)
		label: 'קורס בחירה';
		on: #elective of: anEditModuleCommand;
		beRequired.
	
	mold when: #edited send: #do: to: BrocadeCommandHistory instance with: anEditModuleCommand.
	
	aPane := mold newPane.
	
	aPane buttonLabel:'עדכן פרטים' asBidi.
	
	detailsPane := LayoutMorph newColumn.
	
	detailsPane  axisEdgeWeight: #columnTop.
	
	detailsPane addMorph: aPane buildMorphicWindow.
	
	^detailsPane
	! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/28/2025 18:11:16'!
buildMorphicWindow

	| programsMorph prereqs dependants detailsPane dialog dependantsLabel prereqLabel |
	
	programsMorph := self buildProgramsTable.
	
	prereqs := self buildPrereqsTable.
	
	dependants := self buildDependantsTable.
	
	detailsPane := self buildDetailsPane.
		
	prereqLabel := BidiLabelMorph contents: 'דרישות קדם' asBidi.

	dependantsLabel := BidiLabelMorph contents: 'תלויות' asBidi.
	
	dialog := (programsMorph -0.9p) </> ((prereqLabel / (prereqs -0.9p | 0.5p)  / dependantsLabel / (dependants -0.9p | 0.5p)) - 0.8p | 0.8p) <+> (detailsPane - 0.2p).
	
	self addMorph: dialog.
	
	self setLabel: 'עורך קורס: ', model description.
	
	self changed: #programs.
	
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/21/2025 18:24:10'!
buildPrereqsTable

	| table |
	
		
	table := PluggableTableMorph new.
	
	table  model: self ; table: #prereqs ; rightToLeft: true ; headerRow: true.

	table menuNshortcutsKey: #prereqMenuSpec.
	
	table selectRowMessage: #selectPrereq:.
	
	table menuFactory: BidiMenuMorph.
	
	table markers: #prereqViolations.
		
	^table	
	
! !

!ModuleBrowser methodsFor: 'GUI building' stamp: 'DF 2/21/2025 17:56:57'!
buildProgramsTable

	| table |
	
		
	table := PluggableTableMorph new.
	
	table  model: self ; table: #programs ; rightToLeft: true ; headerRow: true.
	
	table menuNshortcutsKey: #moduleMenuSpec.
	
	table selectRowMessage: #selectProgram:.
	
	table menuFactory: BidiMenuMorph.
	
	^table	
	
! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 4/5/2025 19:32:18'!
dependantsMenuSpec

	| editDependantMessage |
	
	editDependantMessage :=  selectedDependant isNil ifTrue:[nil] ifFalse:[#openEditModuleDialog].
	
^ {
		{ 0 .	'תלות' .				false } .
		{ 10 .	'ערוך ...' . 		$e .	#window .	editDependantMessage }.
	}.! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 1/18/2025 21:07:55'!
moduleMenuSpec

^ #(
		#(0 		'תוכנית לימודים'						false)
		#(10		'הראה תוכנית לימודים' 						$g 	window 			openAcademicProgramBrowser 				)
		#(20		'-----' 		)
		#(30		'הסר מתוכנית הלימודים' 						$c 	window 			removeModuleFromSemester)
	).! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 2/23/2025 16:30:06'!
openAcademicProgramBrowser

	| aCollegeBrowser |
	
	aCollegeBrowser := AcademicProgramBrowser open: model college label: 'תוכניות לימוד'.
	
	aCollegeBrowser selectEntitiesIn: (model programs at: selectedProgramIndex).
	
	
	! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 4/5/2025 19:35:46'!
openEditModuleDialog

	| module code |
	
	selectedDependant ifNil:[^self].
	
	code := selectedDependant at:2 :: first. 
	
	module := model college moduleAt: code.
	
	ModuleBrowser open: module! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 2/21/2025 18:41:22'!
prereqMenuSpec

	| removePrereqMessage |
	
	removePrereqMessage :=  selectedPrereq isNil ifTrue:[nil] ifFalse:[#removePrereq].
	
^ {
		{ 0 .	'דרישות קדם' .				false } .
		{ 10 .	'הוסף דרישת קדם ...' . 		$e .	#window .	#addPrereq }.
		{ 30 .	'-----' } .
		{ 40 .	'הסר דרישת קדם' . 			$c .	#window . 	removePrereqMessage }
	}.! !

!ModuleBrowser methodsFor: 'menu' stamp: 'DF 2/23/2025 16:31:48'!
removeModuleFromSemester
	
	| semester program college aCommand |
		
	selectedProgramIndex ifNil:[^self].
	
	selectedProgramIndex = 0 ifTrue:[^self].
	
	semester := model programs at: selectedProgramIndex :: at:1.
	
	program := model programs at: selectedProgramIndex :: at: 4.
	
	college := program college.
	
	aCommand := RemoveModuleCommand new college: college ; semester: semester; code: model code.
	
	BrocadeCommandHistory instance do: aCommand.
! !

!ModuleBrowser methodsFor: 'initialization' stamp: 'DF 2/23/2025 16:29:55'!
initialize

	super initialize.
	
	selectedProgramIndex := 0.
	
	selectedPrereq := 0.! !

!BrocadeSettings methodsFor: 'as yet unclassified' stamp: 'DF 2/16/2025 18:32:34'!
buildMorphicWindow

	| mold |
	
	mold := Mold new.
	
	(mold stringField)
		label: 'Brocade home directory';
		on: #home of: model ; 
		addCondition:[:input :value | value asDirectoryEntry exists ] ;
		beRequired .
		
	self addMorph: mold newPane.

! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 14:00:04'!
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
	
	top := ((backButton + upButton) - 128f @ (16@0) align:0) + (currentDirectoryEntryMorph - 1.0p) | 48f.
	
	entries :=  PluggableListMorph withModel: self listGetter: #entryNames indexGetter: #entryIndex indexSetter: #entryIndex:.
	
	entries doubleClickSelector: #recurse.
	
	openButton := PluggableButtonMorph model: self action: #selectFileEntry label: openButtonLabel.
	cancelButton := PluggableButtonMorph model: self action: #delete label: 'Cancel'.
	
	buttons := openButton - 96f / (cancelButton - 96f).
	
	dialog := (top -1p) </> ( (entries -1p |1p ) + (buttons | 64f - 0.3p) ).
	
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

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/13/2025 15:45:37'!
initialExtent
	^640@480! !

!OpenFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:54:29'!
initialize

	super initialize.
	
	directory := DirectoryEntry currentDirectory.
	
	theEntryIndex := 0.
	
	showHiddenFiles := [:x | x name size = 0 or: [ x name first ~= $.] ].
	
	sortBy := [:x :y | x name <= y name ].
	
	openButtonLabel := 'Open'.! !

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

!SaveFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:55:10'!
initialize

	super initialize.
	
	openButtonLabel := 'Save'.! !

!SaveFileDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:56:18'!
selectFileEntry

	model perform: selectFileEntryAction with: currentDirectoryEntryMorph contents.
	
	self delete.
	! !

!SelectDirectoryDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:55:02'!
initialize

	super initialize.
	
	openButtonLabel := 'Select'.! !

!SelectDirectoryDialog methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:53:15'!
selectFileEntry

	model perform: selectFileEntryAction with: directory.
	
	self delete.
	! !

!BrocadeCommandHistory class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:24:36'!
initialize

	"self initialize"
	
	Instance := self new.
! !

!BrocadeCommandHistory class methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:24:49'!
instance

	^Instance! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/12/2025 17:18:48'!
college
	^college! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:06:24'!
college: aCollege
	college := aCollege! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:10'!
dayTrack
	^dayTrack! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:01:06'!
dayTrack: aBoolean
	dayTrack := aBoolean ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 3/29/2025 19:28:24'!
doIt

	program := AcademicProgram newFrom: self.
	
	college addAcademicProgram: program.
	
	college changed: #programs.

	FadingHoverHelpMorph inform: (('התוכנית {1} נוספה בהצלחה.' format:{program description}) asBidi writingDirection: #rightToLeft)! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:19'!
duration
	^duration! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:16'!
duration: anInteger
	duration := anInteger ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:33'!
eveningTrack
	^eveningTrack ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:28'!
eveningTrack: aBoolean
	eveningTrack := aBoolean ! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:02:21'!
initialize

	duration := 4.
	
	dayTrack := true.
	
	eveningTrack := true.! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:08'!
programName
	^programName! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 21:00:00'!
programName: aString
	programName := aString! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:17'!
title
	^ 'הוספת תוכנית לימודים חדשה'! !

!AddAcademicProgramCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:17:44'!
undo

	college removeAcademicProgram: program.
	
	program := nil.
	
	college changed: #programs.
! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 3/29/2025 19:29:04'!
doIt
	
	self assert: program notNil.
	
	self assert: theme isNil.
	
	theme := AcademicTheme new.
	
	theme description: themeName.
	
	program addTheme: theme.
	
	program college changed: #themes.
	
	FadingHoverHelpMorph inform: (('ההתמחות {1} נוספה בהצלחה.' format:{themeName}) asBidi writingDirection: #rightToLeft)
	! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:08:32'!
program: anAcademicProgram
	program := anAcademicProgram ! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:12:41'!
theme: anAcademicTheme
	theme := anAcademicTheme ! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:08:41'!
themeName
	^themeName! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:08:48'!
themeName: aString
	themeName := aString! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:09:06'!
title
	^ 'הוספת התמחות חדשה'! !

!AddAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:49:23'!
undo
	
	self assert: program notNil.
	
	self assert: theme notNil.
	
	program removeTheme: theme.
	
	theme := nil.
	
	program college changed: #themes
	! !

!RemoveAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:12:13'!
doIt
	super undo! !

!RemoveAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:14:33'!
title
	^ 'הסרת התמחות'! !

!RemoveAcademicThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/22/2025 19:12:53'!
undo
	super doIt! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/11/2025 11:16:28'!
code
	^code! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:35:39'!
code: anInteger
	code := anInteger! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:37:36'!
college: aCollege
	college := aCollege! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 3/29/2025 19:18:17'!
doIt

	| module |
	
	module := college moduleAt: code.
	
	semester addModule: module.
		
	module changed: #programs.
	
	module college changed: #unitsTable ; changed: #summary.

! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:41:02'!
semester: aSemester
	semester := aSemester! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:29'!
title
	^'הוספת קורס לתוכנית לימודים'! !

!AddModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:37:56'!
undo

	| module |
	
	module := college moduleAt: code.

	semester removeModule: module.
	
	module changed: #programs.
	
	module college changed: #unitsTable.
! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 22:06:40'!
doIt
	
	| module |
	
	module := college moduleAt: code.
	
	self assert: (module semesters allSatisfy:[:aSemester | aSemester stencils isEmpty ]).
		
	super undo! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:08:38'!
title
	^'הסרת קורס מתוכנית לימודים'! !

!RemoveModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:08:58'!
undo
	super doIt! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:23:12'!
code
	^code! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:23:09'!
code: anInteger
	code := anInteger ! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:25:20'!
doIt

	self assert: module isNil.
	
	module := theme program college moduleAt: code.
	
	theme addModule: module.
	
	theme program college changed: #modulesTable! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:23:20'!
theme: anAcademicTheme
	theme := anAcademicTheme ! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:23:00'!
title
	^'הוספת קורס להתמחות'! !

!AddModuleToThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:25:46'!
undo

	self assert: module notNil.
	
	theme removeModule: module.
	
	module := nil.
	
	theme program college changed: #modulesTable! !

!RemoveModuleFromThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:26:10'!
doIt
	super undo! !

!RemoveModuleFromThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:26:27'!
module: aModule
	module := aModule! !

!RemoveModuleFromThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:24:15'!
title
	^'הסרת קורס מהתמחות'! !

!RemoveModuleFromThemeCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/24/2025 11:26:16'!
undo
	super doIt! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:06:34'!
code
	^code! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:06:31'!
code: anInteger
	code := anInteger ! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:13:11'!
doIt
	
	| aModule |
	
	aModule := module college moduleAt: code.
	
	module addPrereq: aModule.
	
	module changed: #prereqs! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:06:23'!
module: aModule
	module := aModule! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:09:55'!
title
	^'הוספת דרישת קדם'! !

!AddPrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 19:43:59'!
undo
	
	| aModule |
	
	aModule := module college moduleAt: code.
	
	module removePrereq: aModule. 
	
	module changed: #prereqs! !

!RemovePrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:09:14'!
doIt
	
	super undo! !

!RemovePrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:10:02'!
title
	^'הסרת דרישת קדם'! !

!RemovePrereqCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 18:09:21'!
undo
	
	super doIt! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:08:13'!
code
	^code! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 18:08:17'!
code: anInteger
	code := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:52'!
college: aCollege
	college := aCollege! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:44:55'!
description
	^description ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:01'!
description: aString
	description := aString! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:06'!
elective
	^elective! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:12'!
elective: aBoolean
	elective := aBoolean! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:16'!
labDuration
	^labDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:23'!
labDuration: anInteger
	labDuration := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:25:30'!
latin
	^latin! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:25:27'!
latin: aString
	latin := aString! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:27'!
lectureDuration
	^lectureDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:33'!
lectureDuration: anInteger
	lectureDuration := anInteger ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:38'!
recitationDuration
	^recitationDuration ! !

!ModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:45:43'!
recitationDuration: anInteger
	recitationDuration := anInteger ! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:25:48'!
doIt

	self assert: code = module code.
	
	backup := self copy. 
	
	module description: description.
	module latin: latin.
	module elective: elective.
	
	module updateAcademicUnit: 'הרצאה' duration: lectureDuration.
	module updateAcademicUnit: 'תרגול' duration: recitationDuration.
	module updateAcademicUnit: 'מעבדה' duration: labDuration.

	module college changed: #unitsTable; changed: #summary.
! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:49:04'!
module: aModule
	module := aModule! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:54'!
title
	^'עריכת פרטי קורס'! !

!EditModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:26:01'!
undo

	self assert: code = module code.
	
	module description: backup description.
	module latin: backup latin.
	module elective: backup elective.
	
	module updateAcademicUnit: 'הרצאה' duration: backup lectureDuration.
	module updateAcademicUnit: 'תרגול' duration: backup recitationDuration.
	module updateAcademicUnit: 'מעבדה' duration: backup labDuration.

	module college changed: #unitsTable.

	module college with: #summary.
! !

!EditModuleCommand class methodsFor: 'as yet unclassified' stamp: 'DF 2/21/2025 13:35:29'!
from: aModule

	| anEditModuleCommand |
	
	anEditModuleCommand := self new.
	
	anEditModuleCommand 
		code: aModule code ;
		description: aModule description ;
		latin: aModule latin;
		elective: aModule elective.
		
	aModule units do:[:eachUnit | 
		eachUnit setDurationIn: anEditModuleCommand ].
	
	^anEditModuleCommand! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 3/29/2025 19:19:49'!
doIt

	| aModule |
		
	aModule := Module new.
	
	aModule code: code ; description: description ; elective: elective ; latin: latin. 
	
	aModule updateAcademicUnit: 'הרצאה' duration: lectureDuration.
	aModule updateAcademicUnit: 'תרגול' duration: recitationDuration.
	aModule updateAcademicUnit: 'מעבדה' duration: labDuration.
	
	college addModule: aModule.
	
	module := aModule.

	FadingHoverHelpMorph inform: (('הקורס {1} נוסף בהצלחה.' format:{module description}) asBidi writingDirection: #rightToLeft)! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:42:07'!
title
	^'הוספת קורס חדש' ! !

!NewModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 10:34:36'!
undo

	self assert: module notNil.
	
	college removeModule: module.
	
	module := nil.! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/6/2025 21:59:58'!
doIt
	
	self assert: module semesters isEmpty.
	
	super undo! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:41:40'!
title
	^'הסרת קורס מהמערכת'! !

!DeleteModuleCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 21:46:28'!
undo

	super doIt! !

!SequenceableCollection methodsFor: '*BrocadePlanner-accessing' stamp: 'DF 2/3/2025 10:14:17'!
at: anIndex ifPresent: aBlock

	anIndex > 0 and:[anIndex <= self size] ::
		ifTrue:[aBlock value: (self at: anIndex) ]
		! !

!Archive methodsFor: '*BrocadePlanner-ODT' stamp: 'DF 2/16/2025 20:42:53'!
writeToFileNamed: aFileName notifying: aBlock

	"Catch attempts to overwrite existing zip file"
	(self canWriteToFileNamed: aFileName)
		ifFalse: [ ^self error: (aFileName, ' is needed by one or more members in this archive') ].
	aFileName asFileEntry writeStreamDo: [ :stream |
		self writeTo: stream notifying: aBlock ]! !

!ZipArchive methodsFor: '*BrocadePlanner-ODT' stamp: 'DF 2/16/2025 20:33:56'!
writeTo: stream notifying: aBlock
	stream binary.
	members do: [ :member |
		member writeTo: stream notifying: aBlock. 
		member endRead.
	].
	writeCentralDirectoryOffset := stream position.
	self writeCentralDirectoryTo: stream.
	! !

!ZipArchiveMember methodsFor: '*BrocadePlanner-ODT' stamp: 'DF 2/16/2025 20:39:00'!
compressDataTo: aStream notifying: aBlock
	"Copy my deflated data to the given stream."
	| encoder startPos endPos |

	encoder := ZipWriteStream on: aStream.
	startPos := aStream position.

	[ readDataRemaining > 0 ] whileTrue: [ | data |
		data := self readRawChunk: (4096 min: readDataRemaining).
		data := data asByteArray.
		encoder nextPutAll: data.
		readDataRemaining := readDataRemaining - data size.
		aBlock value: data size.
	].
	encoder finish. "not close!!"
	endPos := aStream position.
	compressedSize := endPos - startPos.
	crc32 := encoder crc.
! !

!ZipArchiveMember methodsFor: '*BrocadePlanner-ODT' stamp: 'DF 2/16/2025 20:36:07'!
writeDataTo: aStream notifying: aBlock
	"Copy my (possibly inflated or deflated) data to the given stream.
	This might do compression, decompression, or straight copying, depending
	on the values of compressionMethod and desiredCompressionMethod"

	"Note: Do not shortcut this method if uncompressedSize = 0. Even in this case
	data may be produced by the compressor (i.e., '' zipped size > 0) and must
	be stored in the file or else other utilities will treat the zip file as corrupt."

	(compressionMethod = CompressionStored and: [ desiredCompressionMethod = CompressionDeflated ])
		ifTrue: [ ^self compressDataTo: aStream notifying: aBlock ].

	(compressionMethod = CompressionDeflated and: [ desiredCompressionMethod = CompressionStored ])
		ifTrue: [ ^self uncompressDataTo: aStream ].

	self copyDataTo: aStream.! !

!ZipArchiveMember methodsFor: '*BrocadePlanner-ODT' stamp: 'DF 2/16/2025 20:35:17'!
writeTo: aStream notifying: aBlock

	self rewindData.
	writeLocalHeaderRelativeOffset := aStream position.
	self writeLocalFileHeaderTo: aStream.
	self writeDataTo: aStream notifying: aBlock.
	self refreshLocalFileHeaderTo: aStream.! !
BrocadeCommandHistory initialize!
