'From Cuis7.3 [latest update: #6895] on 18 March 2025 at 10:39:30 am'!
'Description '!
!provides: 'ParametricPathText' 1 42!
!requires: 'UI-Panel' 1 116 nil!
SystemOrganization addCategory: #ParametricPathText!


!classDefinition: #PathLabelMorph category: #ParametricPathText!
BorderedBoxMorph subclass: #PathLabelMorph
	instanceVariableNames: 'startAngle radius curve contents font emphasis'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'PathLabelMorph class' category: #ParametricPathText!
PathLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #SpiralMap category: #ParametricPathText!
ColoredBoxMorph subclass: #SpiralMap
	instanceVariableNames: 'tuples font model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'SpiralMap class' category: #ParametricPathText!
SpiralMap class
	instanceVariableNames: ''!

!classDefinition: #SpiralMorph category: #ParametricPathText!
BoxMorph subclass: #SpiralMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'SpiralMorph class' category: #ParametricPathText!
SpiralMorph class
	instanceVariableNames: ''!

!classDefinition: #ParametricCurve category: #ParametricPathText!
Object subclass: #ParametricCurve
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'ParametricCurve class' category: #ParametricPathText!
ParametricCurve class
	instanceVariableNames: ''!

!classDefinition: #ParametricArc category: #ParametricPathText!
ParametricCurve subclass: #ParametricArc
	instanceVariableNames: 'startAngle radius'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'ParametricArc class' category: #ParametricPathText!
ParametricArc class
	instanceVariableNames: ''!

!classDefinition: #ParametricSpiral category: #ParametricPathText!
ParametricArc subclass: #ParametricSpiral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'ParametricSpiral class' category: #ParametricPathText!
ParametricSpiral class
	instanceVariableNames: ''!

!classDefinition: #ParametricSineWave category: #ParametricPathText!
ParametricCurve subclass: #ParametricSineWave
	instanceVariableNames: 'frequency amplitude'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'ParametricSineWave class' category: #ParametricPathText!
ParametricSineWave class
	instanceVariableNames: ''!

!classDefinition: #SpiralModel category: #ParametricPathText!
Object subclass: #SpiralModel
	instanceVariableNames: 'angle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'SpiralModel class' category: #ParametricPathText!
SpiralModel class
	instanceVariableNames: ''!

!classDefinition: #SpiralWidgetBuilder category: #ParametricPathText!
Object subclass: #SpiralWidgetBuilder
	instanceVariableNames: 'tuples radius extent direction spiral'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ParametricPathText'!
!classDefinition: 'SpiralWidgetBuilder class' category: #ParametricPathText!
SpiralWidgetBuilder class
	instanceVariableNames: ''!


!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:35:40'!
contents: aString
	contents := aString! !

!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:23:24'!
curve: aParametricCurve
	curve := aParametricCurve ! !

!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/16/2025 19:49:47'!
drawOn: aCanvas

	super drawOn:aCanvas.
	
	aCanvas drawString: contents along: curve in: self localBounds font: self fontToUse  color: Color black.
	
"	
	aForm := Form extent: self morphExtent depth: Display depth.
	
	canvas := VectorCanvas onForm: aForm.
	
	contents ifNil:[^self].
	
	center := aForm extent / 2.
	
	f := self fontToUse.

	t := 0.

	i := 1.
	
	[ i <= contents size ] 
	whileTrue:[
		 |  theta p |
	
		theta := curve slope: t.
						
		p := center + (curve point: t).
			
		canvas geometryTransformation: (AffineTransformation withRadians: theta around:p).
	
		canvas drawString: (contents at:i) asString atBaseline: p font: f color: Color black.
		
		t := t + (f widthOf: (contents at:i)).
		i := i + 1.
	].

	aCanvas image: aForm at:0@0. "
	
	
	! !

!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:38:22'!
fontToUse
	| fontToUse |
	fontToUse := font ifNil: [FontFamily defaultFamilyAndPointSize].
	^(emphasis isNil or: [emphasis = 0]) 
		ifTrue: [ fontToUse]
		ifFalse: [ fontToUse emphasized: emphasis]! !

!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:25:38'!
initialize

	super initialize.
! !

!PathLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/14/2025 13:51:07'!
requiresVectorCanvas
	^true ! !

!PathLabelMorph class methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:36:32'!
contents: aString
	
	^ self new contents: aString ! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/16/2025 19:59:22'!
addString: aString angle: aNumberDegree orbit: anInteger

	 tuples add: { aString . aNumberDegree degreesToRadians . anInteger }! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:50:59'!
doubleClick: event localPosition: position
	
	
	| v theta |
	
	v := position - self localBounds center.

	theta := v theta.
		
	0 <= theta and:[theta < 144 degreesToRadians] :: 
		ifTrue:[model rotateTo: (144+72) degreesToRadians / (2* Float pi)].
	
	144 degreesToRadians <= theta and:[theta < 288 degreesToRadians] :: 
		ifTrue:[model rotateTo: (72) degreesToRadians / (2* Float pi)].

	288 degreesToRadians <= theta and:[theta < 360 degreesToRadians] :: 
		ifTrue:[model rotateTo: (288+18) degreesToRadians / (2* Float pi)].
! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 22:32:06'!
drawOn: aCanvas

	| aSpiral center radius aForm canvas anArc |
		
	center := self localBounds center.

	radius := self morphWidth / 2.

	aSpiral := ParametricSpiral new.
	
	aForm := Form extent: self morphExtent depth: Display depth.
	
	canvas := VectorCanvas onFormWithSubPixelAntiAliasing: aForm.
	
	aSpiral radius: radius ; startAngle:0.

	anArc := ParametricArc new.
	
	anArc radius: radius - font lineSpacing ; startAngle:0.
		
	tuples do:[:eachTuple |
		| s angle orbit t0 |
		s := eachTuple at:1.
		angle := eachTuple at:2.
		orbit := eachTuple at:3.
		t0 := (angle * radius) + (orbit * radius * 2* Float pi).
		aSpiral drawString: s at: t0 onCanvas: canvas center: aForm extent / 2  font: font color: Color black.].
	
	anArc drawString: 'סמסטר ב' reverse at: (0 + 72) degreesToRadians * (radius - font lineSpacing) onCanvas: canvas center: aForm extent / 2 font: font color: Color black.

	anArc drawString: 'סמסטר א' reverse at:  (144 +72 ) degreesToRadians * (radius - font lineSpacing) onCanvas: canvas center: aForm extent / 2 font: font color: Color black.

	anArc drawString: 'סמסטר קיצ' reverse at: (288 + 36) degreesToRadians * (radius - font lineSpacing) onCanvas: canvas center: aForm extent / 2 font: font color: Color black.
	
	aCanvas image: aForm at:self localBounds origin. 	
	
	aCanvas strokeWidth: 1.0 color: Color black do: [ :cc |
		cc
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 0 );
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 144 ) ;
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 288 ) ].
		
	aCanvas drawString: 'הנדסת תוכנה' reverse at: self localBounds center font: font color: Color black.
	aCanvas drawString: 'תשפ״ו' reverse at: self localBounds center + (0@font lineSpacing) font: font color: Color black.
	aCanvas drawString: 'מסלול יום' reverse at: self localBounds center + (2*(0@font lineSpacing)) font: font color: Color black.
! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 07:56:00'!
font: aFont
	font := aFont! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:07:03'!
handlesMouseDown: e
	^ true! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 07:55:49'!
initialize

	super initialize.
	
	tuples := OrderedCollection new.
	
	font := FontFamily defaultFamilyAndPointSize.
	
! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 12:09:01'!
model: aSpiralModel
	model := aSpiralModel! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:07:49'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	aMouseButtonEvent hand 
		waitForClicksOrDragOrSimulatedMouseButton2: self 
		event: aMouseButtonEvent 
		clkSel: #click:localPosition:
		clkNHalf: nil
		dblClkSel: #doubleClick:localPosition: 
		dblClkNHalfSel: nil
		tripleClkSel: nil
		dragSel: nil! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 10:30:18'!
profileMe

	| aForm aCanvas aCurve radius center |

	center := self localBounds center.

	radius := self morphWidth / 2.

	aCurve := ParametricSpiral new.

	aForm := Form extent: self morphExtent depth: Display depth.

	aCanvas := VectorCanvas onForm: aForm.
	
	aCurve radius: radius ; startAngle:0.
		
	tuples do:[:eachTuple |
		| s angle orbit t0 |
		s := eachTuple at:1.
		angle := eachTuple at:2.
		orbit := eachTuple at:3.
		t0 := (angle * radius) + (orbit * radius * 2* Float pi).
		aCurve drawString: s at: t0 onCanvas: aCanvas center: aForm extent / 2  font: font color: Color black.].
! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/16/2025 21:41:08'!
requiresVectorCanvas
	^true ! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:50:29'!
rotateTo: aNumberRadians

	self location: (
		AffineTransformation withRadians: aNumberRadians around: self rotationCenter)
! !

!SpiralMap methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 12:08:50'!
update
	self rotateTo: model angle! !

!SpiralMap class methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:54:48'!
example

	"self example"

	| spiral counter |
	
	spiral := self new.
	
	spiral morphExtent: 1500@1500.
	
	spiral font: (FontFamily defaultFamilyPointSize: 24).
	
	counter := 0.
	
	{ 'מבוא למדמח' . 'חדוא 1' . 'בדידה' . 'לינארית' } do:[:each | 
	
		spiral addString: each reverse angle: 144 + (counter * 144 / 4.0) orbit: 1.
		counter := counter + 1 ].

	counter := 0.

	{ 'מונחה עצמים' . 'כלי פיתוח' . 'ארגון המחשב' . 'אתיקה' . 'לוגיקה' } do:[:each | 
			
		spiral addString: each reverse angle: 0 + (counter * 144 / 5.0) orbit: 1.
		counter := counter + 1 ].
"
	counter := 0.

	{ '131' . '132' } do:[:each | 
		spiral addString: each  angle: 288 + (counter * 72 / 2.0) orbit: 1.
	counter := counter + 1 ].
"

counter := 0.

{ 'תכנות מערכות' . 'מבני נתונים' . 'תקשורת' . 'תיכון' . 'מודלים חישוביים' . 'הסתברות' } do:[:each |
	
	spiral addString: each reverse angle: 144 + (counter * 144 / 6.0) orbit: 2.
	counter := counter + 1 ].

counter := 0.

{ 'סטטיסטיקה' . 'אימות תוכנה' . 'אפיון ממשקים' . 'הנדסת דרישות' . 'אבטחת מידע' . 'בינה מלאכותית' } do:[:each |
	spiral addString: each reverse angle: 0 + (counter * 144 / 6.0) orbit: 2.
	counter := counter + 1 ].
"
counter := 0.

{ '231' . '232' } do:[:each | 
	
	spiral addString: each angle: 288 + (counter * 72 / 2.0) orbit: 2.
	counter := counter + 1 ].
"
counter := 0.

{ 'שפות תכנות' . 'מערכות הפעלה' . 'תכנון אלגוריתמים' . 'בסיסי נתונים' . 'מידול תוכנה' } do:[:each | 
	spiral addString: each reverse angle: 144 + (counter * 144 / 5.0) orbit: 3.
	counter := counter + 1 ].

counter := 0.

{ 'אלגו מתקדם' . 'קומפילציה' . 'מקבילי ומבוזר' . 'ארכיטקטורה' . 'אינטגרטיבית' } do:[:each | 
	spiral addString: each reverse angle: 0 + (counter * 144 / 5.0) orbit: 3.
	counter := counter + 1 ].
"
counter := 0.

{ '331' . '332' } do:[:each | 
	spiral addString: each angle: 288 + (counter * 72 / 2.0) orbit: 3.
	counter := counter + 1 ].
"
	"spiral morphPosition:300@200.
	spiral openInWorld."
	^spiral.
! !

!SpiralMap class methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 22:15:46'!
example: extent

	"self example: 800@800"

	| spiral counter |
	
	spiral := self new.
	
	spiral morphExtent: extent.
	
	spiral font: (FontFamily defaultFamilyAndPointSize).
	
	counter := 0.
	
	{ 'מבוא למדמח ' . 'חדו״א 1' . 'בדידה' . 'לינארית' } do:[:each | 
	
		spiral addString: each reverse angle: 144 + ( counter * 144 / 4.0 ) orbit: 1.
		counter := counter + 1 ].

	counter := 0.

	{ 'מונחה עצמים ' . 'כלי פיתוח' . 'ארגון המחשב' . 'אתיקה' . 'לוגיקה'  . 'חדו״א 2' } do:[:each | 
			
		spiral addString: each reverse angle: 0 + (counter * 144 / 6.0) orbit: 1.
		counter := counter + 1 ].

counter := 0.

{ 'תכנות מערכות ' . 'מבני נתונים' . 'תקשורת' . 'תיכון' . 'מודלים חישוביים' . 'הסתברות' } do:[:each |
	
	spiral addString: each reverse angle: 144 + ( counter * 144 / 6.0 ) orbit: 2.
	counter := counter + 1 ].

counter := 0.

{ 'סטטיסטיקה ' . 'אימות תוכנה' . 'אפיון ממשקים' . 'הנדסת דרישות' . 'אבטחת מידע' . 'בינה מלאכותית' } do:[:each |
	spiral addString: each reverse angle: 0 + (counter * 144 / 6.0) orbit: 2.
	counter := counter + 1 ].
counter := 0.

{ 'שפות תכנות ' . 'מערכות הפעלה' . 'תכנון אלגוריתמים' . 'בסיסי נתונים' . 'מידול תוכנה' } do:[:each | 
	spiral addString: each reverse angle: 144 + ( counter * 144 / 5.0 ) orbit: 3.
	counter := counter + 1 ].

counter := 0.

{ 'אלגו מתקדם ' . 'קומפילציה' . 'מקבילי ומבוזר' . 'ארכיטקטורה' . 'אינטגרטיבית' . 'פ. גמר א' } do:[:each | 
	spiral addString: each reverse angle: 0 + (counter * 144 / 6.0) orbit: 3.
	counter := counter + 1 ].

counter := 0.

{ 'מערכות משובצות ' . 'חברה ורוח 1' . 'חברה ורוח 2' . 'פ. גמר ב'  } do:[:each | 
	spiral addString: each reverse angle: 144 + ( counter * 144 / 4.0 ) orbit: 4.
	counter := counter + 1 ].

counter := 0.

{ 'הבטחת איכות ' . 'פ. גמר ג' } do:[:each | 
	spiral addString: each reverse angle: 0 + (counter * 144 / 2.0) orbit: 4.
	counter := counter + 1 ].

	^spiral.
! !

!SpiralMap class methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 07:52:20'!
example2

	"self example2"

	| spiral |
	
	spiral := self new.
	
	spiral morphExtent: 800@800.
	
	spiral addString: 'LONG AGO, when wishes often came true, there lived a King whose daughters were all handsome, but the youngest was so beautiful that the sun himself, who has seen everything, was bemused every time he shone over her because of her beauty. Near the royal castle there was a great dark wood, and in the wood under an old linden tree was a well; and when the day was hot, the King’s daughter used to go forth into the wood and sit by the brink of the cool well, and if the time seemed long, she would take out a golden ball, and throw it up and catch it again, and this was her favorite pastime.' angle: 0 orbit: 1.

	spiral morphPosition:300@200.
	spiral openInWorld.
! !

!SpiralMap class methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:24:16'!
example3

	"self example3"

	| spiral counter |
	
	spiral := self new.
	
	spiral morphExtent: 1500@1500.
	
	spiral font: (FontFamily defaultFamilyPointSize: 21).
"	
	counter := 0.
	
	{ 'מבוא למדמח' . 'חדוא 1' . 'בדידה' . 'לינארית' } do:[:each | 
	
		spiral addString: each reverse angle: counter * 144 / 4.0 orbit: 1.
		counter := counter + 1 ].

	counter := 0.

	{ 'מונחה עצמים' . 'כלי פיתוח' . 'ארגון המחשב' . 'אתיקה' . 'לוגיקה' } do:[:each | 
			
		spiral addString: each reverse angle: 144 + (counter * 144 / 5.0) orbit: 1.
		counter := counter + 1 ].

	counter := 0.

	{ '131' . '132' } do:[:each | 
		spiral addString: each  angle: 288 + (counter * 72 / 2.0) orbit: 1.
	counter := counter + 1 ].
"
counter := 0.

{ 'תכנות מערכות' . 'מבני נתונים' . 'תקשורת' . 'תיכון' . 'מודלים חישוביים' . 'הסתברות' } do:[:each |
	
	spiral addString: each reverse angle: 144+ (counter * 144 / 6.0) orbit: 2.
	counter := counter + 1 ].
"
counter := 0.

{ 'סטטיסטיקה' . 'אימות תוכנה' . 'אפיון ממשקים' . 'הנדסת דרישות' . 'אבטחת מידע' . 'מבוא לבינה מלאכותית' } do:[:each |
	spiral addString: each reverse angle: 144 + (counter * 144 / 6.0) orbit: 2.
	counter := counter + 1 ].

counter := 0.

{ '231' . '232' } do:[:each | 
	
	spiral addString: each angle: 288 + (counter * 72 / 2.0) orbit: 2.
	counter := counter + 1 ].

counter := 0.

{ 'שפות תכנות' . 'מערכות הפעלה' . 'תכנון אלגוריתמים' . 'בסיסי נתונים' . 'מידול תוכנה' } do:[:each | 
	spiral addString: each reverse angle: counter * 144 / 5.0 orbit: 3.
	counter := counter + 1 ].

counter := 0.

{ 'אלגו מתקדם' . 'קומפילציה' . 'מקבילי ומבוזר' . 'ארכיטקטורה' . 'אינטגרטיבית' } do:[:each | 
	spiral addString: each reverse angle: 144 + (counter * 144 / 5.0) orbit: 3.
	counter := counter + 1 ].

counter := 0.

{ '331' . '332' } do:[:each | 
	spiral addString: each angle: 288 + (counter * 72 / 2.0) orbit: 3.
	counter := counter + 1 ].
"
	spiral morphPosition:300@200.
	spiral openInWorld.
! !

!SpiralMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/14/2025 13:37:00'!
drawOn: aCanvas

	| center radius  |
	
	radius := (self morphWidth min: self morphHeight) / 2.
	
	center := self localBounds center.
	
	aCanvas strokeWidth: 1.0 color: Color black do: [ :canvas |
		canvas
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 0 );
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 144 ) ;
			moveTo: center;
			lineTo: center + (Point r: radius degrees: 288 ) ].
	
! !

!SpiralMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 19:28:28'!
model: aSpiralModel
	model := aSpiralModel! !

!SpiralMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 21:35:19'!
requiresVectorCanvas
	^true ! !

!SpiralMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 18:11:48'!
rotateTo: aNumberRadians

	self location: (
		AffineTransformation withRadians: aNumberRadians around: self rotationCenter)
! !

!SpiralMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 19:28:39'!
update
	self rotateTo: model angle! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:21:17'!
deltaT
	self subclassResponsibility ! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 17:12:38'!
drawString: s at: t0 on: aForm font: aFont color: aColor

	| aCanvas center |
		
	aCanvas := VectorCanvas onFormWithSubPixelAntiAliasing: aForm.
	
	center := aForm extent / 2.

	self drawString: s at: t0 onCanvas: aCanvas center: center font: aFont color: aColor.! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 10:28:12'!
drawString: s at: t0 onCanvas: aCanvas center: aPoint font: aFont color: aColor

	|  center t |
			
	center := aPoint.

	t := t0.

	s do:[ :eachCharacter |
		
		 |  theta p |
	
		theta := self slope: t.
						
		p := center + (self point: t).
			
		aCanvas geometryTransformation: (AffineTransformation withRadians: theta around:p).
	
		aCanvas drawString: eachCharacter asString atBaseline: p font: aFont color: aColor.
		
		t := t + (self width: eachCharacter font: aFont at: t).
	].
! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/16/2025 20:06:42'!
drawString: s on: aForm font: aFont color: aColor

	self drawString: s at: 0 on: aForm font: aFont color: aColor.! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:19:16'!
point: t
	self subclassResponsibility ! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:21:33'!
slope: t

	|  p q m |
	
	p := self point: t.
	q := self point: t +  self deltaT.
	
	m := (q y - p y) / (q x - p x).
	
	^q x  > p x ifTrue:[m arcTan] ifFalse:[m arcTan + Float pi].
	
	! !

!ParametricCurve methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:19:03'!
width: aCharacter font: aFont at: t

^ aFont widthOf: aCharacter.! !

!ParametricArc methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 07:48:42'!
deltaT
	^0.025 * radius! !

!ParametricArc methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:19:53'!
point: t

	|  alpha x y |
	
	alpha := startAngle + ( t / radius ).	
	
	x := alpha cos.
	y := alpha sin.

	^ (x@y) * radius		
! !

!ParametricArc methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:20:19'!
radius: aNumber
	radius := aNumber! !

!ParametricArc methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:23:06'!
startAngle: aNumber
	startAngle := aNumber.! !

!ParametricSpiral methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:17:51'!
point: t

	|  alpha x y r |
	
	r := (radius - (t / 55)) max: 1.0.
	
	alpha := startAngle + ( t / radius ).	
	
	x := alpha cos.
	y := alpha sin.

	^ (x@y) * r
! !

!ParametricSpiral methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:17:36'!
width: aCharacter font: aFont

	^ (aFont widthOf: aCharacter) * 1.! !

!ParametricSpiral methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 08:23:33'!
width: aCharacter font: aFont at: t

	| r | 
	
	r := (radius - (t / 55)) max: 1.0.

	^ (aFont widthOf: aCharacter) * (radius / r).! !

!ParametricSineWave methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:27:00'!
amplitude: aNumber
	amplitude := aNumber! !

!ParametricSineWave methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:30:37'!
deltaT
	^1! !

!ParametricSineWave methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:26:49'!
frequency: aNumber
	frequency := aNumber! !

!ParametricSineWave methodsFor: 'as yet unclassified' stamp: 'DF 3/15/2025 15:30:12'!
point: t
	^ t @ (amplitude * (t * frequency) sin)! !

!SpiralModel methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 19:28:47'!
angle
	^angle! !

!SpiralModel methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:43:23'!
anglePercent
	^angle / (2* Float pi)! !

!SpiralModel methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 19:25:33'!
initialize

	angle := 0.0.! !

!SpiralModel methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 20:39:14'!
rotateTo: aPercentage

	angle := aPercentage * 2 * Float pi.
	
	self triggerEvent: #changed.
! !

!SpiralWidgetBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/18/2025 10:35:02'!
build

	| factor layout box model aScrollBar |
	
	factor := direction = #anticlockwise ifTrue:[-1] ifFalse:[1].
	
	layout := LayoutMorph newRow.
	
	model := SpiralModel new.

	box := ColoredBoxMorph new.

	box morphExtent:extent.
	
	box color: (Color fromHexString: '#EFEFEF').

	spiral morphExtent: extent.

	spiral setProperty: #rotationCenter toValue: box localBounds center.

	spiral model: model.

	model when: #changed send: #update to: spiral.
		
	spiral morphPosition: 0@0.

	box setProperty:  #doClipSubmorphs toValue: true.
		
	box addMorph: spiral.	
	 
	aScrollBar := PluggableScrollBar new.

	aScrollBar layoutSpec fixedWidth:24.
	
	aScrollBar model: model setValueSelector: #rotateTo: refreshValueSelector: #anglePercent.

	model when: #changed send: #refreshValueFromModel to: aScrollBar.
	
	"aScrollBar layoutSpec fixedWidth: aScrollBar morphWidth."
	
	aScrollBar layoutSpec proportionalHeight: 1.0.
	
	layout addMorph: box proportionalWidth:1.0.
	layout addMorph: aScrollBar.
	
	layout morphExtent: extent + (aScrollBar morphWidth @ 0).
	layout padding: 4.
	
	^layout
! !

!SpiralWidgetBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 20:50:58'!
direction: aSymbol
	direction := aSymbol! !

!SpiralWidgetBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 20:32:46'!
extent: aPoint
	extent := aPoint! !

!SpiralWidgetBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2025 20:51:09'!
initialize
	tuples := OrderedCollection new.
	
	radius := 100.
	
	extent := 800@600.
	
	direction := #anticlockwise! !

!SpiralWidgetBuilder methodsFor: 'as yet unclassified' stamp: 'DF 3/17/2025 12:08:13'!
spiral: aSpiralMap
	spiral := aSpiralMap! !

!SpiralWidgetBuilder class methodsFor: 'as yet unclassified' stamp: 'DF 3/18/2025 10:38:40'!
example

	"self example"
	
	| builder morph spiral extent a |


	extent := Display extent * 8 / 10.
	
	a := extent x min: extent y.
	
	spiral := SpiralMap example: a@a.
	
	builder := SpiralWidgetBuilder new.

	builder extent: spiral morphExtent.

	builder direction: #clockwise.

	builder spiral: spiral.
	
	morph := builder build.

	morph openInWorld.
! !

!MorphicCanvas methodsFor: '*ParametricPathText-drawing-text' stamp: 'DF 3/16/2025 21:07:49'!
drawString: s along: aParametricCurve from: t0 in:aRectangle font: aFont color: aColor

	| aForm |

	s ifNil:[^self].

	s ifEmpty:[^self].
		
	aForm := Form extent: aRectangle extent depth: Display depth.
	
	aParametricCurve drawString: s at: t0 on: aForm  font: aFont color: aColor.
	
	self image: aForm at:aRectangle origin. 
! !

!MorphicCanvas methodsFor: '*ParametricPathText-drawing-text' stamp: 'DF 3/16/2025 21:08:11'!
drawString: s along: aParametricCurve in:aRectangle font: aFont color: aColor

	self drawString: s along: aParametricCurve from:0 in:aRectangle font: aFont color: aColor
! !
