'From Cuis7.3 [latest update: #6895] on 21 January 2025 at 5:53:27 pm'!
'Description '!
!provides: 'BidiString' 1 0!
SystemOrganization addCategory: 'BidiString'!


!classDefinition: #BidiUnicodeString category: 'BidiString'!
UnicodeString subclass: #BidiUnicodeString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'BidiUnicodeString class' category: 'BidiString'!
BidiUnicodeString class
	instanceVariableNames: ''!

!classDefinition: #BidiPluggableListMorph category: 'BidiString'!
PluggableListMorph subclass: #BidiPluggableListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'BidiPluggableListMorph class' category: 'BidiString'!
BidiPluggableListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiTextModelMorph category: 'BidiString'!
TextModelMorph subclass: #BidiTextModelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'BidiTextModelMorph class' category: 'BidiString'!
BidiTextModelMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiInnerListMorph category: 'BidiString'!
InnerListMorph subclass: #BidiInnerListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'BidiInnerListMorph class' category: 'BidiString'!
BidiInnerListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiInnerTextMorph category: 'BidiString'!
InnerTextMorph subclass: #BidiInnerTextMorph
	instanceVariableNames: 'indentRight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'BidiInnerTextMorph class' category: 'BidiString'!
BidiInnerTextMorph class
	instanceVariableNames: ''!


!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 18:32:16'!
displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reorderBidi.
	
	aUnicodeString displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor
! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 18:32:21'!
displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reorderBidi.
	
	aUnicodeString displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color! !

!BidiUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 18:32:27'!
printOn: aStream 
	"Print inside string quotes, doubling inbedded quotes."

	self reorderBidi storeOn: aStream! !

!BidiPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 15:51:38'!
indentRight: aBoolean
	scroller indentRight: aBoolean! !

!BidiPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 15:58:41'!
innerMorphClass
	^BidiInnerListMorph! !

!BidiInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 15:57:39'!
draw: item atRow: row on: canvas
	"display the given item at row row"
	| f c x|
	
	x := indentRight ifTrue:[extent x - (font widthOfString: item string)] ifFalse:[0].
	
	(item is: #Text)
		ifTrue: [
			f := font emphasized: (item emphasisAt: 1).
			c := (item colorAt: 1) ifNil: [Theme current text]]
		ifFalse: [ 
			f := font.
			c :=  Theme current text].
	canvas
		drawString: item string
		at: x @ (self drawYForRow: row)
		font: f
		color: c! !

!BidiInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 15:53:01'!
indentRight: aBoolean
	indentRight := aBoolean! !

!BidiInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 15:53:24'!
initialize
	
	super initialize.
	
	indentRight := false.! !

!BidiInnerTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 16:05:19'!
drawOn: aCanvas
	"Draw the receiver on a canvas"

	false ifTrue: [ self debugDrawLineRectsOn: aCanvas ].  "show line rects for debugging"

	aCanvas
		drawTextComposition: self textComposition
		at: `0@0`
		extent: extent
		color: color
		selectionColor: (Theme current textHighlightFocused: self hasKeyboardFocus).

	model actualContents isEmpty ifTrue: [
		owner
			valueOfProperty: #emptyTextDisplayMessage
			ifPresentDo: [ :msg |
				aCanvas
					drawString: msg
					at: `0@0`
					font: nil
					color: Theme current textEmptyDisplayMessage ]].! !

!BidiInnerTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 16:05:31'!
indentRight: aBoolean
	indentRight := aBoolean! !

!BidiInnerTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/5/2025 16:05:44'!
initialize
	
	super initialize.
	
	indentRight := false.! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 1/5/2025 15:42:55'!
B
	^self asBidiUnicodeString ! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 1/5/2025 15:42:36'!
asBidiUnicodeString

	^BidiUnicodeString new appendToString: self.
! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 12:44:18'!
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

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 18:30:10'!
reorderBidi

	| state aCharacter aReadStream aWriteStream  undecided parts |
	
	state := #undecided.

	parts := OrderedCollection new.
	
	undecided := WriteStream on: ''.
	
	aWriteStream := WriteStream on:''.
	
	aReadStream := ReadStream on: self.

	aCharacter := aReadStream next.
	
	[aCharacter notNil] 
		whileTrue:[
			state = #hebrew 
				ifTrue:[
					aCharacter isLatinCharacter 
						ifTrue:[
							parts add: aWriteStream contents reverse reverseParenthesis.
							aWriteStream reset.
							state := #latin ].
					aWriteStream nextPut: aCharacter ]
				ifFalse:[
			state = #latin
				ifTrue:[
					aCharacter isHebrewLetter 
						ifTrue:[
							parts add: aWriteStream contents.
							aWriteStream reset.
							state := #hebrew.
							aWriteStream nextPut: aCharacter ]
						ifFalse:[
					aCharacter isLatinCharacter 
						ifTrue:[
							aWriteStream nextPut: aCharacter]
						ifFalse:[
							undecided nextPut: aCharacter.
							state := #undecided ] ] 
				]
				ifFalse:[
					self assert: state = #undecided.
					
					aCharacter isLatinCharacter 
						ifTrue:[
							aWriteStream nextPutAll: undecided contents.
							undecided reset.
							state := #latin.
							aWriteStream nextPut: aCharacter]
						ifFalse:[
					aCharacter isHebrewLetter 
						ifTrue:[
							parts add: aWriteStream contents.
							aWriteStream reset.
							aWriteStream nextPutAll: undecided contents.
							undecided reset.
							state := #hebrew.
							aWriteStream nextPut: aCharacter]
						ifFalse:[
							undecided nextPut: aCharacter]
							] 
					] 
			].
			aCharacter := aReadStream next.			
		].
	
	state = #hebrew
		ifTrue:[
			parts add: aWriteStream contents reverse reverseParenthesis]
		ifFalse:[
			aWriteStream nextPutAll: undecided contents.
			parts add: aWriteStream contents].

	aWriteStream reset.
	
	parts reverse do:[:eachPart |
		aWriteStream nextPutAll: eachPart].
		
	^aWriteStream contents
! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 12:47:04'!
reorderBidiFileName

	| aWriteStream parts |
	
	parts := self breakAtDelimiter: $. .
	
	aWriteStream := WriteStream on:''.
	
	parts do:[:eachPart |
		aWriteStream nextPutAll: eachPart asUnicodeString reorderBidi ]
	separatedBy:[
		aWriteStream nextPut:$. ].
	
	^aWriteStream contents! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 18:28:44'!
reverseParenthesis

	| conv |
	
	conv := `{ $( -> $) . $) -> $( . ${ -> $} . $} -> ${ . $[ -> $] . $] -> $[ } asDictionary`.
	
	^self collect:[:eachCharacter |
		conv at: eachCharacter ifAbsent:[eachCharacter] ]
	! !

!Character methodsFor: '*BidiString' stamp: 'DF 12/30/2024 11:31:10'!
isHebrewLetter

^ self >= $א and: [self <= $ת ]! !

!Character methodsFor: '*BidiString' stamp: 'DF 12/30/2024 14:53:39'!
isLatinCharacter

^ self isAlphaNumeric and: [self codePoint < 128]! !
