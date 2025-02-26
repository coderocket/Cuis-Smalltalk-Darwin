'From Cuis7.3 [latest update: #7041] on 26 February 2025 at 9:20:03 pm'!
'Description '!
!provides: 'UndoRedo' 1 10!
SystemOrganization addCategory: #UndoRedo!


!classDefinition: #TestUndoRedo category: #UndoRedo!
TestCase subclass: #TestUndoRedo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UndoRedo'!
!classDefinition: 'TestUndoRedo class' category: #UndoRedo!
TestUndoRedo class
	instanceVariableNames: ''!

!classDefinition: #CommandHistory category: #UndoRedo!
Object subclass: #CommandHistory
	instanceVariableNames: 'commands currentIndex saveIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UndoRedo'!
!classDefinition: 'CommandHistory class' category: #UndoRedo!
CommandHistory class
	instanceVariableNames: ''!

!classDefinition: #UndoRedoCommand category: #UndoRedo!
Object subclass: #UndoRedoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UndoRedo'!
!classDefinition: 'UndoRedoCommand class' category: #UndoRedo!
UndoRedoCommand class
	instanceVariableNames: ''!

!classDefinition: #TestCommand category: #UndoRedo!
UndoRedoCommand subclass: #TestCommand
	instanceVariableNames: 'value collection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UndoRedo'!
!classDefinition: 'TestCommand class' category: #UndoRedo!
TestCommand class
	instanceVariableNames: ''!


!TestUndoRedo methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 16:04:14'!
test

	| aCommandHistory aCollection |
	
	aCommandHistory := CommandHistory new.
	
	aCollection := OrderedCollection new.
	
	1 to: 5 do:[:i | | aCommand |
		
		aCommand := TestCommand new value:i ; collection: aCollection ; yourself.
		
		aCommandHistory do: aCommand.
		
		self assert: aCollection equals: (1 to:i ) asOrderedCollection. ].
	
	1 to: 5 do:[:i | 
		
		aCommandHistory undo.
		
		self assert: aCollection equals: (1 to: 5 - i ) asOrderedCollection. ].

	1 to: 5 do:[:i | 
		
		aCommandHistory redo.
		
		self assert: aCollection equals: (1 to:i ) asOrderedCollection. ].
	
	aCommandHistory undo; undo; undo.
	
	aCommandHistory do: (TestCommand new value:8 ; collection: aCollection ; yourself).
	
	self assert: aCollection equals: { 1 . 2 . 8 } asOrderedCollection .
	
	! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:43:35'!
currentTitle

	self assert: self isAtBeginning not.
	
	^commands at: currentIndex :: title
	
	! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 21:18:29'!
do: anUndoRedoCommand
	
	anUndoRedoCommand doIt.
	
	saveIndex > currentIndex 
		ifTrue:[saveIndex := nil].
				
	commands removeLast: commands size - currentIndex . 
	
	commands add: anUndoRedoCommand.
	
	currentIndex := currentIndex + 1.
	! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 20:53:12'!
initialize

	commands := OrderedCollection new.
	
	currentIndex := 0.
	
	saveIndex := 0.! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 16:58:13'!
isAtBeginning
	^currentIndex = 0! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 17:12:34'!
isAtEnd
	^currentIndex = commands size ! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 21:19:14'!
isDirty
	^saveIndex isNil or:[saveIndex ~= currentIndex]! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 17:12:27'!
redo

	self assert: currentIndex < commands size.
	
	self assert: currentIndex >= 0.

	currentIndex := currentIndex + 1.
	
	commands at: currentIndex :: doIt.
	
	! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 2/26/2025 20:53:37'!
save
	saveIndex := currentIndex ! !

!CommandHistory methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:39:10'!
undo

	self assert: currentIndex <= commands size.
	
	self assert: currentIndex > 0.
	
	commands at: currentIndex :: undo.
	
	currentIndex := currentIndex - 1.
	! !

!UndoRedoCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:47:12'!
doIt
	self subclassResponsibility ! !

!UndoRedoCommand methodsFor: 'as yet unclassified' stamp: 'DF 2/3/2025 19:40:52'!
title
	self subclassResponsibility ! !

!UndoRedoCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:40:15'!
undo
	self subclassResponsibility ! !

!TestCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:54:52'!
collection: aCollection
	collection := aCollection ! !

!TestCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:55:09'!
doIt

	collection add: value! !

!TestCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:55:31'!
undo
	collection remove: value! !

!TestCommand methodsFor: 'as yet unclassified' stamp: 'DF 1/31/2025 15:54:38'!
value: anInteger
	value := anInteger.! !
