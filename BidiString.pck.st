'From Cuis7.3 [latest update: #6895] on 19 January 2025 at 5:28:29 pm'!
'Description '!
!provides: 'BidiString' 1 0!
SystemOrganization addCategory: 'BidiString'!


!classDefinition: #RtoLUnicodeString category: 'BidiString'!
UnicodeString subclass: #RtoLUnicodeString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BidiString'!
!classDefinition: 'RtoLUnicodeString class' category: 'BidiString'!
RtoLUnicodeString class
	instanceVariableNames: ''!


!RtoLUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 10:19:19'!
displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reverse.
	
	aUnicodeString displayOnBitBltCanvasEngine: engine from: firstIndex to: lastIndex at: p1 font: font color: aColor
! !

!RtoLUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 10:19:45'!
displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color

	| aUnicodeString |
	
	aUnicodeString := UnicodeString newFrom: self reverse.
	
	aUnicodeString displayOnVectorEngine: engine from: startIndex to: stopIndex at: aPoint font: aTrueTypeFont color: color! !

!RtoLUnicodeString methodsFor: 'as yet unclassified' stamp: 'DF 12/30/2024 10:14:53'!
printOn: aStream 
	"Print inside string quotes, doubling inbedded quotes."

	self reverse storeOn: aStream! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 10:40:32'!
R
	^self asRtoLUnicodeString ! !

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 10:27:22'!
asRtoLUnicodeString

	^RtoLUnicodeString new appendToString: self.
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

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 15:45:38'!
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

!UnicodeString methodsFor: '*BidiString' stamp: 'DF 12/30/2024 14:14:19'!
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

!Character methodsFor: '*BidiString' stamp: 'DF 12/30/2024 11:31:10'!
isHebrewLetter

^ self >= $א and: [self <= $ת ]! !

!Character methodsFor: '*BidiString' stamp: 'DF 12/30/2024 14:53:39'!
isLatinCharacter

^ self isAlphaNumeric and: [self codePoint < 128]! !
