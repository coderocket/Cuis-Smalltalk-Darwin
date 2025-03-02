'From Cuis7.3 [latest update: #7041] on 2 March 2025 at 8:49:40 pm'!
'Description '!
!provides: 'SpriteAtlas' 1 0!
SystemOrganization addCategory: #SpriteAtlas!


!classDefinition: #SpriteAtlas category: #SpriteAtlas!
Object subclass: #SpriteAtlas
	instanceVariableNames: 'width height atlas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SpriteAtlas'!
!classDefinition: 'SpriteAtlas class' category: #SpriteAtlas!
SpriteAtlas class
	instanceVariableNames: ''!


!SpriteAtlas methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 20:49:03'!
height: anInteger
	height := anInteger! !

!SpriteAtlas methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 20:48:49'!
load: aFileEntry

	atlas := ImageReadWriter formFromFileEntry: aFileEntry! !

!SpriteAtlas methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 20:46:39'!
spriteAt: row at: column

	| rect aForm |
	
	rect := column * width @ (row * height) extent: width @ height.
	
	aForm := Form extent: width @ height depth: Display depth.
	
	^ aForm copy: rect from: atlas to: 0@0 rule: Form over.! !

!SpriteAtlas methodsFor: 'as yet unclassified' stamp: 'DF 3/2/2025 20:48:57'!
width: anInteger
	width := anInteger! !
