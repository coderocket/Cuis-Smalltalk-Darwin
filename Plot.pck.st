'From Cuis7.1 [latest update: #6676] on 9 December 2024 at 8:35:30 pm'!
'Description '!
!provides: 'Plot' 1 68!
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

!classDefinition: #PlotMorph category: #Plot!
BoxedMorph subclass: #PlotMorph
	instanceVariableNames: 'pointDiameter pointColor model marginX marginY labelOffset labelFont labelColor data'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'PlotMorph class' category: #Plot!
PlotMorph class
	instanceVariableNames: ''!

!classDefinition: #RulerMorph category: #Plot!
BoxedMorph subclass: #RulerMorph
	instanceVariableNames: 'begin end rulerFont marginX marginY tickLength tickLabelMirror model tickLabelColor dimension'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'RulerMorph class' category: #Plot!
RulerMorph class
	instanceVariableNames: ''!

!classDefinition: #HRulerMorph category: #Plot!
RulerMorph subclass: #HRulerMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'HRulerMorph class' category: #Plot!
HRulerMorph class
	instanceVariableNames: ''!

!classDefinition: #VRulerMorph category: #Plot!
RulerMorph subclass: #VRulerMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'VRulerMorph class' category: #Plot!
VRulerMorph class
	instanceVariableNames: ''!

!classDefinition: #NamedPipe category: #Plot!
Object subclass: #NamedPipe
	instanceVariableNames: 'stream fileName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'NamedPipe class' category: #Plot!
NamedPipe class
	instanceVariableNames: ''!

!classDefinition: #PlotModel category: #Plot!
Object subclass: #PlotModel
	instanceVariableNames: 'namedPipe columns counter data row endOfRecord space xAxisFormatter yAxisFormatter dynamicX dynamicY showLabels resolutionX resolutionY'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Plot'!
!classDefinition: 'PlotModel class' category: #Plot!
PlotModel class
	instanceVariableNames: ''!


!PlotWindow methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:50:35'!
buildMorphicWindow

	| aHRulerMorph aPlotMorph aVRulerMorph aSpace morph bgcolor tickcolor |
	
	bgcolor := Color fromHexString: '#fffeeb'.
	tickcolor := Color fromHexString: '#888888'.
	
	aPlotMorph := PlotMorph new.

	aPlotMorph model: model.

	aPlotMorph borderWidth:0 ; color: bgcolor.
	
	aHRulerMorph := HRulerMorph new.

	aHRulerMorph model: model.
	
	aHRulerMorph borderWidth:0 ; color: bgcolor.
	
	aHRulerMorph tickLabelMirror: true.

	aHRulerMorph tickLabelColor: tickcolor. 

	aVRulerMorph := VRulerMorph new.

	aVRulerMorph borderWidth:0 ; color: bgcolor.

	aVRulerMorph tickLabelMirror: true.

	aVRulerMorph model: model.

	aVRulerMorph tickLabelColor: tickcolor.

	aSpace := BoxedMorph new.
	
	aSpace color: bgcolor. 
	
	aSpace borderWidth: 0.

	morph := 		((aSpace -100f |1p) + (aHRulerMorph |64f -1.0p)) |64f / ((aVRulerMorph -100f |1.0p) + (aPlotMorph |1.0p - 1.0p)).
	
	self layoutMorph addMorph: morph. 

	self setLabel:'Plot Window'.

	
	! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 21:02:25'!
clipsSubmorphs
	^true ! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:25:27'!
drawOn: aCanvas

	| transformer sspace space |
	
	super drawOn: aCanvas.
	
	space := model space.
	
	sspace := space origin x @ space corner y corner: space corner x @ space origin y.
	
	transformer := AffineTransformation transformFrom: sspace to: (self localBounds insetBy: marginX @ marginY  ) .
	
	data do:[:each | | p |
		p := transformer transform: ((each at:1) asNumber @ (each at:2) asNumber).
		
		aCanvas strokeWidth: 1.0 color: pointColor fillColor: pointColor do: [ :canvas |
		canvas
			circleCenter: p radius: pointDiameter/2].
		
		model showLabels ifTrue:[ 
			aCanvas drawString: ('{1}' format:{each at:2}) at: p + labelOffset font: labelFont color: labelColor.
		 ].
	]
	
	
	! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:32:19'!
initialize

	super initialize.

	data := OrderedCollection new.
	
	pointDiameter := 4.
	
	pointColor := Color black.
	
	marginX := 24.0.
	
	marginY := 24.0.
	
	labelOffset := 5@ 0.
	
	labelFont := FontFamily defaultFamilyAndPointSize.
	
	labelColor := Color black.
	
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

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 09:57:21'!
model: aPlotModel

	model := aPlotModel.
	
	model addDependent: self.! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:05:49'!
pointColor: aColor
	pointColor := aColor! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 14:05:42'!
pointDiameter: aNumber
	pointDiameter := aNumber! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/7/2024 15:49:50'!
requiresVectorCanvas
	^true! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 16:03:50'!
update: aSymbol

	data := model fetch.
	
	self redrawNeeded ! !

!PlotMorph class methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 11:12:16'!
open: aModel

	| aHRulerMorph aPlotMorph aVRulerMorph aSpace |
	
	aPlotMorph := self new.

	aPlotMorph model: aModel.

	aHRulerMorph := HRulerMorph new.

	aHRulerMorph tickLabelAbove: true.

	aVRulerMorph := VRulerMorph new.

	aVRulerMorph tickLabelOnTheLeft: true.

	aSpace := BoxedMorph new.
	
	aSpace color: Color transparent.
	
	aSpace borderWidth: 0.
	
	^((aSpace -100f |100f) + (aHRulerMorph |100f -1.0p)) |100f / ((aVRulerMorph -100f |1.0p) + (aPlotMorph |1.0p - 1.0p)) morphExtent:500@500 :: openInWorld! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:47:20'!
dimension: anInteger
	dimension := anInteger! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:44:03'!
from: aNumberBegin to: aNumberEnd

	begin := aNumberBegin. end := aNumberEnd! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:55:01'!
initialize

	super initialize .

	rulerFont := FontFamily defaultFamilyAndPointSize.

	marginX := 24.0.
	
	marginY := 24.
	
	begin := -0.5.
	
	end := 0.5.
	
	tickLength := 15.
	
	tickLabelMirror := false.
	
	tickLabelColor := Color black.
! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:44:08'!
model: aPlotModel

	model := aPlotModel.
	
	model addDependent: self.! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:43:48'!
requiresVectorCanvas
	^true! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:44:36'!
tickLabelColor: aColor
	tickLabelColor := aColor! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:46:14'!
tickLabelMirror: aBoolean
	tickLabelMirror := aBoolean! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:45:57'!
tickLength: aNumber

	tickLength := aNumber! !

!RulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 18:59:24'!
update: aSymbol

	| message |
	
	message := dimension = 1 ifTrue:[#x] ifFalse:[#y].
	
	begin := model space origin perform: message.
	end := model space corner perform: message.
		
	self redrawNeeded ! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:49:18'!
drawOn: aCanvas

	| transformer n delta labelOffset tickOffset  |
	
	super drawOn: aCanvas.
	
	transformer := AffineTransformation transformFrom: (begin@0 corner:end@1)  to: (self localBounds insetBy: marginX @ marginY  ).
	
	n := 0.
	
	delta := (end - begin) / model resolutionX.

	tickLabelMirror 
		ifTrue:[
			tickOffset := self morphHeight - tickLength.
			labelOffset := tickOffset - rulerFont lineSpacing 			 ] 
		ifFalse:	[
			labelOffset := tickLength.
			tickOffset := 0].
		
	model resolutionX +1 timesRepeat: [ | pt alignment label x |
		x := begin + (n*delta).
		pt := transformer transform: x@0.

		aCanvas strokeWidth: 1.0 color: tickLabelColor do: [ :canvas |
		canvas
			moveTo: pt x @ tickOffset;
			lineTo: pt x@ (tickOffset+tickLength) ].

		label := model formatX:x.
		
		alignment := (rulerFont widthOfString: label) / 2.

		aCanvas drawString: label at: (pt x - alignment ) @ labelOffset 	font: rulerFont color: tickLabelColor.
		n := n + 1.
		]
! !

!HRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:47:36'!
initialize

	super initialize.
	
	dimension := 1.! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:49:09'!
drawOn: aCanvas

	| transformer n delta labelOffset tickOffset |

	super drawOn: aCanvas.
	
	transformer := AffineTransformation transformFrom: (0@end corner:1@begin)  to: (self localBounds insetBy: marginX @ marginY  ) .
	
	n := 0.
	
	delta := (end - begin) / model resolutionY.

	tickLabelMirror
		ifTrue:[
			tickOffset := self morphWidth - tickLength.
			labelOffset := tickOffset - 4  ] 
		ifFalse:	[
			labelOffset := tickLength.
			tickOffset := 4].
		
	model resolutionY +1 timesRepeat: [ | pt y label alignment |
		
		y := begin + (n*delta) .
		pt := transformer transform: 0@y.

		aCanvas strokeWidth: 1.0 color: tickLabelColor do: [ :canvas | canvas
				moveTo: tickOffset @ pt y;
				lineTo: (tickOffset+tickLength) @ pt y ].
			
		label := model formatY: y.
		
		alignment := tickLabelMirror
			ifTrue:[	 rulerFont widthOfString: label ]
			ifFalse:[ 0 ].
		aCanvas drawString: label at: labelOffset - alignment @ (pt y -  (rulerFont lineSpacing / 2)) 	font: rulerFont color: tickLabelColor.
		n := n + 1.
	]
! !

!VRulerMorph methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 15:49:01'!
initialize

	super initialize .

	dimension := 2.! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:26:19'!
atEnd
	^stream atEndOfFile ! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:23:07'!
close
	^stream close! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:16:50'!
fileName: aString
	fileName := aString! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:41:19'!
nextToken

	| c token |
	
	c := stream next.
	
	" first eat all the prefix separators "
	
	[ c notNil and:[c isSeparator] ]
		whileTrue:[c := stream next]. 
	
	" now read the token characters "

	token := WriteStream on:''.
		
	[ c isNil or:[c isSeparator] ]
		whileFalse:[
			token nextPut: c. 
			c := stream next. ].
	
	^token contents! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:16:25'!
stream: anAsyncFileStream
	stream := anAsyncFileStream ! !

!NamedPipe methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:21:47'!
update: aSymbol

	self changed: fileName ! !

!NamedPipe class methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:21:04'!
open: aStringFileName forWrite: aBooleanWriteMode

	| aNamedPipe fileID stream |
	
	fileID := self primOpen: aStringFileName asUtf8Bytes writable: aBooleanWriteMode.
	
	fileID ifNil: [^ nil].  "allows sender to detect failure"
	
	aNamedPipe := self new.
	
	stream := BufferedAsyncFileReadStream name: #notUsed attachTo: fileID writable: aBooleanWriteMode.
	
	aNamedPipe fileName: aStringFileName ; stream: stream.
	
	stream addDependent: aNamedPipe.
	
	^aNamedPipe
! !

!NamedPipe class methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:19:39'!
primOpen: fileNameAsUtf8Bytes writable: writableFlag
	"Open a file of the given name, and return the file ID obtained.
	If writableFlag is true, then
		if there is none with this name, then create one
		else prepare to overwrite the existing from the beginning
	otherwise
		if the file exists, open it read-only
		else return nil"

	<primitive: 'primitiveFileOpen' module: 'FilePlugin'>
	^ nil
! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 10:47:43'!
columns: anOrderedCollection
	columns := anOrderedCollection ! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:12:20'!
dynamicX: aBoolean
	dynamicX := aBoolean! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:12:24'!
dynamicY: aBoolean
	dynamicY := aBoolean! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 11:19:54'!
fetch

	^data copy! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 18:45:12'!
formatX: aNumber

	^xAxisFormatter value: aNumber 
	! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 18:45:02'!
formatY: aNumber

	^yAxisFormatter value: aNumber
	! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:54:10'!
initialize

	columns := { Number . Number }.
	
	row := OrderedCollection new.
	
	data := OrderedCollection new.
	
	space := -0.5@-0.5 extent: 1.0@1.0.

	resolutionX := 10.

	resolutionY := 10.
		
	dynamicX := true.

	dynamicY := true.
	
	showLabels := true.
	
	endOfRecord := 'END'.
	
	xAxisFormatter := [:x | '{1}' format:{x printStringFractionDigits: 1}].
	
	yAxisFormatter := [:y | '{1}' format:{y printStringFractionDigits: 1}].! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 11:22:51'!
namedPipe: aNamedPipe

	namedPipe := aNamedPipe.
	
	aNamedPipe addDependent: self.! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:47:18'!
resolutionX
	^resolutionX ! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:46:12'!
resolutionX: aNumber
	resolutionX := aNumber! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:48:27'!
resolutionY
	^resolutionY! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:48:43'!
resolutionY: aNumber
	resolutionY := aNumber! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:25:23'!
showLabels
	^showLabels ! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:25:23'!
showLabels: aBoolean
	showLabels := aBoolean! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 16:01:46'!
space
	^space! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:12:52'!
update: aSymbol

	| aToken |
	
	aToken := namedPipe nextToken.
	
	[aToken notEmpty and: [aToken ~= endOfRecord ] ]
		whileTrue:[			
			[ aToken notEmpty and: [aToken ~= endOfRecord ] and:[row size < columns size ] ]
				whileTrue: [		
					row add: aToken.
					aToken := namedPipe nextToken ].
	
			row size = columns size 
				ifTrue:[
					data add: (columns with: row collect: [:class :string | | aReadStream | aReadStream := ReadStream on: string.  class readFrom: aReadStream]).
					row removeAll. ] ].
			
	aToken = endOfRecord ifTrue:[
		
		dynamicX ifTrue:[self updateXSpace].
		dynamicY ifTrue:[self updateYSpace].
		
		self changed: aSymbol.
		
		data removeAll. ].! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:37:36'!
updateXSpace

	data notEmpty 
		ifTrue:[ | xs minx maxx |
			
			xs := data collect:[:each | each at:1 ].
			
			minx := xs min asNumber. 
			maxx := xs max asNumber.
			
			space := minx@space origin y corner: maxx@space corner y.
				
			space width = 0 
				ifTrue:[space := space origin - (0.5 @ 0) corner: space corner + (0.5@0) ]. ]
		ifFalse:[
			space := -0.5@space origin y corner: 0.5@space corner y ].
! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:37:07'!
updateYSpace

	data notEmpty 
		ifTrue:[ | ys miny maxy |
						
			ys := data collect: [:each | each at:2 ].
			
			miny := ys min asNumber.
			maxy := ys max asNumber.
			
			space := space origin x@miny corner: space corner x@maxy.
				
			space height = 0 
				ifTrue:[space := space origin - (0 @ 0.5) corner: space corner + (0 @ 0.5)] 			] 
		ifFalse:[
			space := space origin x @-0.5 corner: space corner x@0.5 ].
! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 18:43:21'!
xAxisFormatter: aBlock
	xAxisFormatter := aBlock! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:16:12'!
xFrom: b to: e
	space := b @ space origin y corner: e @ space corner y! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 18:43:29'!
yAxisFormatter: aBlock
	yAxisFormatter := aBlock! !

!PlotModel methodsFor: 'as yet unclassified' stamp: 'DF 12/9/2024 19:17:15'!
yFrom: b to: e
	space := space origin x @ b corner: space corner x @ e! !

!Time methodsFor: '*Plot' stamp: 'DF 12/9/2024 19:05:07'!
asNumber
	^ self asDurationSinceMidnight totalMilliseconds // 100 "tenths of a second is good enough for plotting purposes and avoids floating point errors "! !
