'From Cuis7.3 [latest update: #6895] on 4 February 2025 at 4:29:28 pm'!
'Description '!
!provides: 'Brocade' 1 20!
SystemOrganization addCategory: #'Brocade-Morphic'!
SystemOrganization addCategory: #Brocade!



!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:09:31'!
intersect: anInterval
	
	^(start max: anInterval first) to: (stop min: anInterval last)! !

!Interval methodsFor: '*Brocade-sets' stamp: 'DF 1/28/2025 23:15:25'!
isEmptySet
	^stop <= start! !
