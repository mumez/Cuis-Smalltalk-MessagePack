'From Cuis 4.2 of 25 July 2013 [latest update: #1969] on 26 March 2014 at 3:17:53.7658 pm'!
'Description Please enter a description for this package'!
!provides: 'MessagePack-Cuis-Core' 1 4!
!classDefinition: #MpCuisPortableUtil category: #'MessagePack-Cuis-Core'!
MpPortableUtil subclass: #MpCuisPortableUtil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Cuis-Core'!
!classDefinition: 'MpCuisPortableUtil class' category: #'MessagePack-Cuis-Core'!
MpCuisPortableUtil class
	instanceVariableNames: ''!

!classDefinition: #MpCuisEncodeTypeMapper category: #'MessagePack-Cuis-Core'!
MpEncodeTypeMapper subclass: #MpCuisEncodeTypeMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Cuis-Core'!
!classDefinition: 'MpCuisEncodeTypeMapper class' category: #'MessagePack-Cuis-Core'!
MpCuisEncodeTypeMapper class
	instanceVariableNames: ''!


!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:42'!
int16
	"Answer the next signed, 16-bit integer from this (binary) stream."
	| n |
	n := self next.
	n := (n bitShift: 8) + (self next).
	n >= 16r8000 ifTrue: [n := n - 16r10000].
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:42'!
int16: anInteger
	"Store the given signed, 16-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r10000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:42'!
int32
	"Answer the next signed, 32-bit integer from this (binary) stream."
	"Details: As a fast check for negative number, check the high bit of the first digit"
	| n firstDigit |
	n := firstDigit := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	firstDigit >= 128 ifTrue: [n := -16r100000000 + n].  "decode negative 32-bit integer"
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int32: anInteger
	"Store the given signed, 32-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r100000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int64
	"Answer the next signed, 32-bit integer from this (binary) stream."
	"Details: As a fast check for negative number, check the high bit of the first digit"
	| n firstDigit |
	n := firstDigit := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	firstDigit >= 128 ifTrue: [n := -16r10000000000000000 + n].  "decode negative 64-bit integer"
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int64: anInteger
	"Store the given signed, 64-bit integer on this (binary) stream."

	| n |
	anInteger < 0
		ifTrue: [n := 16r10000000000000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 8).
	self nextPut: (n digitAt: 7).
	self nextPut: (n digitAt: 6).
	self nextPut: (n digitAt: 5).
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint16
	"Answer the next unsigned, 16-bit integer from this (binary) stream."
	| n |
	n := self next.
	n := (n bitShift: 8) + (self next).
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint16: anInteger
	"Store the given unsigned, 16-bit integer on this (binary) stream."
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint32
	"Answer the next unsigned, 32-bit integer from this (binary) stream."
	| n |
	n := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint32: anInteger
	"Store the given unsigned, 32-bit integer on this (binary) stream."
	self nextPut: (anInteger digitAt: 4).
	self nextPut: (anInteger digitAt: 3).
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint64
	"Answer the next unsigned, 64-bit integer from this (binary) stream."
	| n |
	n := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	^ n
! !

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:44'!
uint64: anInteger
	"Store the given unsigned, 64-bit integer on this (binary) stream."		
	self nextPut: (anInteger digitAt: 8).
	self nextPut: (anInteger digitAt: 7).
	self nextPut: (anInteger digitAt: 6).
	self nextPut: (anInteger digitAt: 5).
	self nextPut: (anInteger digitAt: 4).
	self nextPut: (anInteger digitAt: 3).
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
! !

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 17:03'!
int64
	"Answer the next signed, 32-bit integer from this (binary) stream."
	"Details: As a fast check for negative number, check the high bit of the first digit"

	| n firstDigit |
	n := firstDigit := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	firstDigit >= 128 ifTrue: [n := -16r10000000000000000 + n].  "decode negative 64-bit integer"
	^ n
! !

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 21:33'!
int64: anInteger
	"Store the given signed, 64-bit integer on this (binary) stream."

	| n |
	(anInteger < -16r8000000000000000) | (anInteger >= 16r8000000000000000)
		ifTrue: [self error: 'outside 64-bit integer range'].

	anInteger < 0
		ifTrue: [n := 16r10000000000000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 8).
	self nextPut: (n digitAt: 7).
	self nextPut: (n digitAt: 6).
	self nextPut: (n digitAt: 5).
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
! !

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 15:57'!
uint64
	"Answer the next unsigned, 64-bit integer from this (binary) stream."

	| n |
	n := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	^ n
! !

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 4/29/2011 15:48'!
uint64: anInteger
	"Store the given unsigned, 64-bit integer on this (binary) stream."

	(anInteger < 0) | (anInteger >= 16r10000000000000000)
		ifTrue: [self error: 'outside unsigned 64-bit integer range'].
		
	self nextPut: (anInteger digitAt: 8).
	self nextPut: (anInteger digitAt: 7).
	self nextPut: (anInteger digitAt: 6).
	self nextPut: (anInteger digitAt: 5).
	self nextPut: (anInteger digitAt: 4).
	self nextPut: (anInteger digitAt: 3).
	self nextPut: (anInteger digitAt: 2).
	self nextPut: (anInteger digitAt: 1).
! !

!MpCuisPortableUtil methodsFor: 'actions' stamp: 'MU 3/26/2014 14:53'!
bytesFromString: aString
	"aString isWideString ifTrue: [^(aString convertToEncoding: #utf8) asByteArray]."
	^super bytesFromString: aString! !

!MpCuisPortableUtil methodsFor: 'factory' stamp: 'MU 3/26/2014 14:50'!
encodeTypeMapperClass
	^MpCuisEncodeTypeMapper! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'MU 3/26/2014 15:05'!
readDoubleFrom: stream
	| float |
	float := Float new.
	float at: 1 put: (stream nextNumber: 4).
	float at: 2 put: (stream nextNumber: 4).
	^float! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/30/2011 00:03'!
readFloatFrom: stream
	"32 bit"
	^ Float fromIEEE32Bit: (stream nextNumber: 4)! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt16From: stream
	^stream int16! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readInt32From: stream
	^stream int32! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:36'!
readInt64From: stream
	^stream int64! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint16From: stream
	^stream uint16! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint32From: stream
	^stream uint32! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint64From: stream
	^stream uint64! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/1/2011 15:53'!
writeDouble: value to: stream
	self writeUint32: (value at:1) to: stream.
	self writeUint32: (value at:2) to: stream.
	! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/1/2011 15:23'!
writeFloat: value to: stream
	self writeInt32: value asIEEE32BitWord to: stream! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:51'!
writeInt16: value to: stream
	stream int16: value! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeInt32: value to: stream
	stream int32: value! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:55'!
writeInt64: value to: stream
	stream int64: value! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeUint16: value to: stream
	stream uint16: value! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeUint32: value to: stream
	stream uint32: value! !

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:49'!
writeUint64: value to: stream
	stream uint64: value! !

!MpCuisPortableUtil class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 23:36'!
initialize
	"MpSqPortableUtil initialize"
	super initialize.
	MpPortableUtil dialectSpecificClass: self! !

!MpCuisEncodeTypeMapper methodsFor: 'encode customization' stamp: 'MU 3/26/2014 14:54'!
stringAsBytes
	self actionMap at: String put: #writeString:.
	self actionMap at: Symbol put: #writeString:.! !

!MpCuisEncodeTypeMapper methodsFor: 'encode customization' stamp: 'MU 3/26/2014 14:55'!
stringAsError
	self actionMap at: String put: #signalError:.
	self actionMap at: Symbol put: #signalError:.! !

!MpCuisEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:13'!
defineDoubleActionTo: map
	map at: Float put: #writeDouble:! !

!MpCuisEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'MU 3/26/2014 14:55'!
defineStrBytesActionTo: map
	map at: String put: #writeString:.! !
MpCuisPortableUtil initialize!
