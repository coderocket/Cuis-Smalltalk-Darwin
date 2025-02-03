'From Cuis7.3 [latest update: #7041] on 3 February 2025 at 10:11:33 am'!
'Description '!
!provides: 'Brocade' 1 20!



!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:09:31'!
intersect: anInterval
	
	^(start max: anInterval first) to: (stop min: anInterval last)! !

!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:15:25'!
isEmptySet
	^stop <= start! !

!MenuMorph methodsFor: '*Brocade' stamp: 'DF 1/7/2025 16:17:39'!
rtolAdd: aString action: aSymbol

	self rtolAdd: aString target: defaultTarget action: aSymbol  argumentList: #()! !

!MenuMorph methodsFor: '*Brocade' stamp: 'DF 1/11/2025 12:52:03'!
rtolAdd: aString target: target action: aSymbol argumentList: argList
	"Append a menu item with the given label. If the item is selected, it will send the given selector to the target object with the given arguments. If the selector takes one more argument than the number of arguments in the given list, then the triggering event is supplied as as the last argument.  Answer the appended menu item."

	| item |
	item := BidiMenuItemMorph new
		contents: aString;
		target: target selector: aSymbol arguments: argList asArray.
	self addMorphBack: item.
	^ item! !
