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

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:42'!
int16: anInteger

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:42'!
int32

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int32: anInteger

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int64

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
int64: anInteger

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint16

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint16: anInteger

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint32

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint32: anInteger

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:43'!
uint64

!MpMemoryWriteStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 10/22/2011 23:44'!
uint64: anInteger

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 17:03'!
int64

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 21:33'!
int64: anInteger

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 5/1/2011 15:57'!
uint64

!PositionableStream methodsFor: '*MessagePack-Cuis-Core' stamp: 'mu 4/29/2011 15:48'!
uint64: anInteger

!MpCuisPortableUtil methodsFor: 'actions' stamp: 'MU 3/26/2014 14:53'!
bytesFromString: aString
	^super bytesFromString: aString! !

!MpCuisPortableUtil methodsFor: 'factory' stamp: 'MU 3/26/2014 14:50'!
encodeTypeMapperClass

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'MU 3/26/2014 15:05'!
readDoubleFrom: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/30/2011 00:03'!
readFloatFrom: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt16From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readInt32From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:36'!
readInt64From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint16From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint32From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
readUint64From: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/1/2011 15:53'!
writeDouble: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/1/2011 15:23'!
writeFloat: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:51'!
writeInt16: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeInt32: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:55'!
writeInt64: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeUint16: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:41'!
writeUint32: value to: stream

!MpCuisPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:49'!
writeUint64: value to: stream

!MpCuisPortableUtil class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 23:36'!
initialize

!MpCuisEncodeTypeMapper methodsFor: 'encode customization' stamp: 'MU 3/26/2014 14:54'!
stringAsBytes
	self actionMap at: Symbol put: #writeString:.! !

!MpCuisEncodeTypeMapper methodsFor: 'encode customization' stamp: 'MU 3/26/2014 14:55'!
stringAsError
	self actionMap at: Symbol put: #signalError:.! !

!MpCuisEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:13'!
defineDoubleActionTo: map

!MpCuisEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'MU 3/26/2014 14:55'!
defineStrBytesActionTo: map
MpCuisPortableUtil initialize!