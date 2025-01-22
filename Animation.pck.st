'From Cuis7.1 [latest update: #6676] on 21 January 2025 at 8:40:27 pm'!
'Description '!
!provides: 'Animation' 1 0!
SystemOrganization addCategory: #Animation!


!classDefinition: #KeyFrame category: #Animation!
Object subclass: #KeyFrame
	instanceVariableNames: 'target duration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Animation'!
!classDefinition: 'KeyFrame class' category: #Animation!
KeyFrame class
	instanceVariableNames: ''!

!classDefinition: #AnimatedMorph category: #Animation!
PlacedMorph subclass: #AnimatedMorph
	instanceVariableNames: 'keyFrames keyFrameIndex keyFrameStartTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Animation'!
!classDefinition: 'AnimatedMorph class' category: #Animation!
AnimatedMorph class
	instanceVariableNames: ''!


!KeyFrame methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:22:20'!
duration
	^duration! !

!KeyFrame methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:17:55'!
duration: aDuration
	duration := aDuration! !

!KeyFrame methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:22:25'!
target
	^target! !

!KeyFrame methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:17:44'!
target: aPoint
	target := aPoint! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:22:03'!
initialize

	super initialize.
	
	keyFrameIndex := 1.! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 19:21:50'!
keyFrames: anOrderedCollection
	keyFrames := anOrderedCollection ! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 20:08:03'!
reset

	keyFrameIndex := 1.
	
	keyFrameStartTime := Time now. 
! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 20:08:09'!
startStepping

	self reset.	
	super startStepping! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 20:32:26'!
step

	keyFrameIndex <= keyFrames size
		ifTrue:[ | elapsedDuration remainingDuration speed |

			elapsedDuration := Time now - keyFrameStartTime.
	
			remainingDuration := keyFrames at: keyFrameIndex :: duration - elapsedDuration.

			[ remainingDuration <= Duration zero and: [keyFrameIndex < keyFrames size] ] 
				whileTrue:[
					elapsedDuration := remainingDuration * -1.
					keyFrameStartTime := Time now.
					keyFrameIndex := keyFrameIndex + 1.
					remainingDuration := keyFrames at: keyFrameIndex :: duration - elapsedDuration 					].
			
			remainingDuration totalMilliseconds > 0
				ifTrue:[
					speed := (keyFrames at: keyFrameIndex :: target - self morphPosition) / remainingDuration totalMilliseconds.
					"Transcript show: speed ; show: 'dt = '; show: remainingDuration totalMilliseconds; cr."
					self morphPosition: self morphPosition + (speed * self stepTime ) ] ]
		ifFalse:[
			self stopStepping]
				
			
		
			! !

!AnimatedMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/21/2025 20:36:05'!
stepTime
	^50! !
