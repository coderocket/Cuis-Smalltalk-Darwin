'From Cuis7.1 [latest update: #6676] on 8 January 2025 at 7:31:28 pm'!
'Description '!
!provides: 'Bidi' 1 1!
SystemOrganization addCategory: #Bidi!


!classDefinition: #BidiRightInnerListMorph category: #Bidi!
InnerListMorph subclass: #BidiRightInnerListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiRightInnerListMorph class' category: #Bidi!
BidiRightInnerListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiPluggableListMorph category: #Bidi!
PluggableListMorph subclass: #BidiPluggableListMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiPluggableListMorph class' category: #Bidi!
BidiPluggableListMorph class
	instanceVariableNames: ''!

!classDefinition: #BidiPluggableListMorphOfMany category: #Bidi!
PluggableListMorphOfMany subclass: #BidiPluggableListMorphOfMany
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiPluggableListMorphOfMany class' category: #Bidi!
BidiPluggableListMorphOfMany class
	instanceVariableNames: ''!

!classDefinition: #BidiSystemWindow category: #Bidi!
SystemWindow subclass: #BidiSystemWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSystemWindow class' category: #Bidi!
BidiSystemWindow class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectField category: #Bidi!
SelectField subclass: #BidiSelectField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectField class' category: #Bidi!
BidiSelectField class
	instanceVariableNames: ''!

!classDefinition: #BidiSelectMultipleField category: #Bidi!
SelectMultipleField subclass: #BidiSelectMultipleField
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bidi'!
!classDefinition: 'BidiSelectMultipleField class' category: #Bidi!
BidiSelectMultipleField class
	instanceVariableNames: ''!


!BidiRightInnerListMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/28/2024 14:23:05'!
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

!BidiPluggableListMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:30:30'!
innerMorphClass
	^BidiRightInnerListMorph! !

!BidiPluggableListMorphOfMany methodsFor: 'as yet unclassified' stamp: 'DF 1/8/2025 19:30:30'!
innerMorphClass
	^BidiRightInnerListMorph! !

!BidiSystemWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 23:07:55'!
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

!BidiSelectField methodsFor: 'as yet unclassified' stamp: 'DF 1/7/2025 18:35:35'!
inputMorphInstance
	^ RtoLPluggableListMorph new! !

!BidiSelectMultipleField methodsFor: 'as yet unclassified' stamp: 'DF 12/29/2024 20:08:57'!
inputMorphInstance
	^ RtoLPluggableListMorphOfMany new! !
