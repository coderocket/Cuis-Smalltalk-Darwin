'From Cuis7.1 [latest update: #6676] on 9 December 2024 at 8:53:49 am'!
'Description '!
!provides: 'Plot' 1 28!
SystemOrganization addCategory: #Plot!


!classDefinition: #PlotWindow category: #Plot!
SystemWindow subclass: #PlotWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'PlotWindow class' category: #Plot!
PlotWindow class
	instanceVariableNames: ''!

!classDefinition: #HRulerMorph category: #Plot!
BoxedMorph subclass: #HRulerMorph
	instanceVariableNames: 'resolution begin end rulerFont marginX marginY tickHeight tickLabelAbove'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'HRulerMorph class' category: #Plot!
HRulerMorph class
	instanceVariableNames: ''!

!classDefinition: #PlotMorph category: #Plot!
BoxedMorph subclass: #PlotMorph
	instanceVariableNames: 'pointDiameter pointColor space data marginX marginY labelOffset showLabel labelFont labelColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'PlotMorph class' category: #Plot!
PlotMorph class
	instanceVariableNames: ''!

!classDefinition: #VRulerMorph category: #Plot!
BoxedMorph subclass: #VRulerMorph
	instanceVariableNames: 'resolution begin end rulerFont marginX marginY tickWidth tickLabelOnTheLeft'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'VRulerMorph class' category: #Plot!
VRulerMorph class
	instanceVariableNames: ''!

!classDefinition: #PlotModel category: #Plot!
Object subclass: #PlotModel
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'PlotModel class' category: #Plot!
PlotModel class
	instanceVariableNames: ''!


!PlotWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 20:58:50'!
buildMorphicWindow

	| aHRulerMorph aPlotMorph aVRulerMorph aSpace morph |
	
	aPlotMorph := PlotMorph new.

	aPlotMorph data: model fetch.

	aHRulerMorph := HRulerMorph new.

	aHRulerMorph tickLabelAbove: true.

	aHRulerMorph color: Color black.

	aVRulerMorph := VRulerMorph new.

	aVRulerMorph tickLabelOnTheLeft: true.

	aVRulerMorph color: Color black.

	aSpace := BoxedMorph new.
	
	aSpace color: Color transparent.
	
	aSpace borderWidth: 0.

	morph := 		((aSpace -100f |100f) + (aHRulerMorph |100f -1.0p)) |100f / ((aVRulerMorph -100f |1.0p) + (aPlotMorph |1.0p - 1.0p)).

	self layoutMorph addMorph: morph. 

	self setLabel:'Plot Window'! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 20:41:02'!
drawOn: aCanvas

	| transformer n delta labelOffset tickOffset  |
	
	transformer := AffineTransformation transformFrom: (begin@0 corner:end@1)  to: (self localBounds insetBy: marginX @ marginY  ).
	
	n := 0.
	
	delta := (end - begin) / resolution.

	tickLabelAbove 
		ifTrue:[
			tickOffset := self morphHeight - tickHeight.
			labelOffset := tickOffset - rulerFont lineSpacing 			 ] 
		ifFalse:	[
			labelOffset := tickHeight.
			tickOffset := 0].
		
	resolution +1 timesRepeat: [ | pt alignment label x |
		x := begin + (n*delta).
		pt := transformer transform: x@0.

		aCanvas strokeWidth: 1.0 color: color do: [ :canvas |
		canvas
			moveTo: pt x @ tickOffset;
			lineTo: pt x@ (tickOffset+tickHeight) ].

		label := '{1}' format:{x printStringFractionDigits: 1}.
		
		alignment := (rulerFont widthOfString: label) / 2.

		aCanvas drawString: label at: (pt x - alignment ) @ labelOffset 	font: rulerFont color: color.
		n := n + 1.
		]
! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:23:18'!
from: aNumberBegin to: aNumberEnd

	begin := aNumberBegin. end := aNumberEnd! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:57:38'!
initialize

	super initialize .

	rulerFont := FontFamily defaultFamilyAndPointSize.

	marginX := 24.0.
	
	marginY := 4.
	
	resolution := 10.
	
	begin := -0.5.
	
	end := 0.5.
	
	tickHeight := 24.
	
	tickLabelAbove := false.! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:50:39'!
requiresVectorCanvas
	^true! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:18:19'!
resolution: anInteger
	resolution := anInteger! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:53:43'!
tickHeight: aNumber

	tickHeight := aNumber! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:57:27'!
tickLabelAbove: aBoolean
	tickLabelAbove := aBoolean! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 21:02:25'!
clipsSubmorphs
	^true ! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:06:49'!
data: anOrderedCollection
	data := anOrderedCollection ! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 21:07:20'!
drawOn: aCanvas

	| transformer |
	
	transformer := AffineTransformation transformFrom: space  to: (self localBounds insetBy: marginX @ marginY  ) :: scaledBy: 1@-1.
	
	data do:[:each | | p |
		p := transformer transform: each.
		
		aCanvas strokeWidth: 1.0 color: pointColor fillColor: pointColor do: [ :canvas |
		canvas
			circleCenter: p radius: pointDiameter/2].
		
		showLabel ifTrue:[
			aCanvas drawString: ('{1}' format:{each y}) at: p + labelOffset font: labelFont color: labelColor.
		 ].
	]
	
	
	! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:35:37'!
initialize

	super initialize.

	data := { 0@0 }.
	
	pointDiameter := 4.
	
	pointColor := Color black.
	
	marginX := 24.0.
	
	marginY := 24.0.
	
	showLabel := true.
	
	labelOffset := 5@ 0.
	
	labelFont := FontFamily defaultFamilyAndPointSize.
	
	labelColor := Color black.
	
	self space: (-0.5@-0.5 extent: 1.0@1.0).
	
! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:27:21'!
labelColor: aColor
	labelColor := aColor! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:27:14'!
labelFont: aFont
	labelFont := aFont! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:24:12'!
labelOffset: aPoint
	labelOffset := aPoint! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:07:37'!
marginX: aNumber
	marginX := aNumber! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:07:47'!
marginY: aNumber
	marginY := aNumber! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:05:49'!
pointColor: aColor
	pointColor := aColor! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:05:42'!
pointDiameter: aNumber
	pointDiameter := aNumber! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:49:50'!
requiresVectorCanvas
	^true! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:24:32'!
showLabel: aBoolean
	showLabel := aBoolean! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:11:14'!
space: aRectangle

	space := aRectangle.
	! !

!PlotMorph class methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:44:21'!
open: aModel

	| aHRulerMorph aPlotMorph aVRulerMorph aSpace |
	
	aPlotMorph := self new.

	aPlotMorph data: aModel fetch.

	aHRulerMorph := HRulerMorph new.

	aHRulerMorph tickLabelAbove: true.

	aVRulerMorph := VRulerMorph new.

	aVRulerMorph tickLabelOnTheLeft: true.

	aSpace := BoxedMorph new.
	
	aSpace color: Color transparent.
	
	aSpace borderWidth: 0.
	
	^((aSpace -100f |100f) + (aHRulerMorph |100f -1.0p)) |100f / ((aVRulerMorph -100f |1.0p) + (aPlotMorph |1.0p - 1.0p)) morphExtent:500@500 :: openInWorld! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 20:37:53'!
drawOn: aCanvas

	| transformer n delta labelOffset tickOffset |
	
	transformer := AffineTransformation transformFrom: (0@begin corner:1@end)  to: (self localBounds insetBy: marginX @ marginY  ) :: scaledBy: 1@-1.
	
	n := 0.
	
	delta := (end - begin) / resolution.

	tickLabelOnTheLeft 
		ifTrue:[
			tickOffset := self morphWidth - tickWidth.
			labelOffset := tickOffset - 4  ] 
		ifFalse:	[
			labelOffset := tickWidth.
			tickOffset := 4].
		
	resolution +1 timesRepeat: [ | pt y label alignment |
		
		y := begin + (n*delta) .
		pt := transformer transform: 0@y.

		aCanvas strokeWidth: 1.0 color: color do: [ :canvas | canvas
				moveTo: tickOffset @ pt y;
				lineTo: (tickOffset+tickWidth) @ pt y ].
			
		label := '{1}' format:{y printStringFractionDigits: 1}.
		
		alignment := tickLabelOnTheLeft 
			ifTrue:[	 rulerFont widthOfString: label ]
			ifFalse:[ 0 ].
		aCanvas drawString: label at: labelOffset - alignment @ (pt y -  (rulerFont lineSpacing / 2)) 	font: rulerFont color: color.
		n := n + 1.
	]
! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:12:39'!
from: aNumberBegin to: aNumberEnd

	begin := aNumberBegin. end := aNumberEnd! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:18:54'!
initialize

	super initialize .

	rulerFont := FontFamily defaultFamilyAndPointSize.

	marginX := 4.0.
	
	marginY := 24.
	
	resolution := 10.
	
	begin := -0.5.
	
	end := 0.5.
	
	tickWidth := 24.
	
	tickLabelOnTheLeft := false.! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:12:54'!
requiresVectorCanvas
	^true! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:12:33'!
resolution: anInteger
	resolution := anInteger! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:14:23'!
tickLabelOnTheLeft: aBoolean
	tickLabelOnTheLeft := aBoolean! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 17:13:50'!
tickWidth: aNumber

	tickWidth := aNumber! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 21:37:18'!
fetch

	| data |
	
	data := OrderedCollection new.

	file readStreamDo: [:aStream | 
	
		| x y |

		aStream useCharacters.
		
		x := aStream nextNumber.
		y := aStream nextNumber.
	
		[aStream atEnd] whileFalse:[
		
			data add: x@y.
			x := aStream nextNumber.
			y := aStream nextNumber.

		 ]
	].

	^data! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:56:55'!
file: aPath

	file := aPath asFileEntry! !
