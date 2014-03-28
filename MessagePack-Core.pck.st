'From Cuis 4.2 of 25 July 2013 [latest update: #1969] on 26 March 2014 at 2:53:20.048436 pm'!
'Description Please enter a description for this package'!
!provides: 'MessagePack-Core' 1 0!
!classDefinition: #MpError category: #'MessagePack-Core'!
Error subclass: #MpError
	instanceVariableNames: 'type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpError class' category: #'MessagePack-Core'!
MpError class
	instanceVariableNames: ''!

!classDefinition: #MpConstants category: #'MessagePack-Core'!
Object subclass: #MpConstants
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpConstants class' category: #'MessagePack-Core'!
MpConstants class
	instanceVariableNames: ''!

!classDefinition: #MpDecoder category: #'MessagePack-Core'!
Object subclass: #MpDecoder
	instanceVariableNames: 'readStream typeMapper settings'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpDecoder class' category: #'MessagePack-Core'!
MpDecoder class
	instanceVariableNames: ''!

!classDefinition: #MpEncoder category: #'MessagePack-Core'!
Object subclass: #MpEncoder
	instanceVariableNames: 'writeStream typeMapper settings'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpEncoder class' category: #'MessagePack-Core'!
MpEncoder class
	instanceVariableNames: ''!

!classDefinition: #MpExtValue category: #'MessagePack-Core'!
Object subclass: #MpExtValue
	instanceVariableNames: 'typeCode data'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpExtValue class' category: #'MessagePack-Core'!
MpExtValue class
	instanceVariableNames: ''!

!classDefinition: #MpFixextValue category: #'MessagePack-Core'!
MpExtValue subclass: #MpFixextValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpFixextValue class' category: #'MessagePack-Core'!
MpFixextValue class
	instanceVariableNames: ''!

!classDefinition: #MpMemoryWriteStream category: #'MessagePack-Core'!
Object subclass: #MpMemoryWriteStream
	instanceVariableNames: 'chunks currentChunk chunkPosition chunkSize lastSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpMemoryWriteStream class' category: #'MessagePack-Core'!
MpMemoryWriteStream class
	instanceVariableNames: ''!

!classDefinition: #MpMessagePack category: #'MessagePack-Core'!
Object subclass: #MpMessagePack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpMessagePack class' category: #'MessagePack-Core'!
MpMessagePack class
	instanceVariableNames: ''!

!classDefinition: #MpPortableUtil category: #'MessagePack-Core'!
Object subclass: #MpPortableUtil
	instanceVariableNames: ''
	classVariableNames: 'Default DialectSpecificClass'
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpPortableUtil class' category: #'MessagePack-Core'!
MpPortableUtil class
	instanceVariableNames: ''!

!classDefinition: #MpSettings category: #'MessagePack-Core'!
Object subclass: #MpSettings
	instanceVariableNames: 'settingsDict'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpSettings class' category: #'MessagePack-Core'!
MpSettings class
	instanceVariableNames: ''!

!classDefinition: #MpTypeMapper category: #'MessagePack-Core'!
Object subclass: #MpTypeMapper
	instanceVariableNames: 'actionMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpTypeMapper class' category: #'MessagePack-Core'!
MpTypeMapper class
	instanceVariableNames: 'actionMap'!

!classDefinition: #MpDecodeTypeMapper category: #'MessagePack-Core'!
MpTypeMapper subclass: #MpDecodeTypeMapper
	instanceVariableNames: 'decoder isBytesAsString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpDecodeTypeMapper class' category: #'MessagePack-Core'!
MpDecodeTypeMapper class
	instanceVariableNames: ''!

!classDefinition: #MpEncodeTypeMapper category: #'MessagePack-Core'!
MpTypeMapper subclass: #MpEncodeTypeMapper
	instanceVariableNames: 'encoder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePack-Core'!
!classDefinition: 'MpEncodeTypeMapper class' category: #'MessagePack-Core'!
MpEncodeTypeMapper class
	instanceVariableNames: ''!


!Object methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:35'!
asMpConverted

!Object methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:32'!
asMpMap

!Object methodsFor: '*MessagePack-Core-packing' stamp: 'mu 5/1/2011 21:26'!
messagePacked

!Object methodsFor: '*MessagePack-Core-packing' stamp: 'MasashiUmezawa 2/2/2013 00:41'!
messagePacked: settingBlock

!Object methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:34'!
mpWriteSelector

!Behavior methodsFor: '*MessagePack-Core-unpacking' stamp: 'mu 5/1/2011 21:27'!
fromMessagePack: bytes

!Behavior methodsFor: '*MessagePack-Core-unpacking' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
fromMessagePack: bytes setting: settingBlock

!False methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:12'!
mpWriteSelector

!True methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:35'!
mpWriteSelector

!Array methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:10'!
mpWriteSelector

!ByteArray methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 8/19/2013 00:56'!
mpWriteSelector

!Symbol methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:36'!
asMpConverted

!Dictionary methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:11'!
mpWriteSelector

!IdentityDictionary methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:25'!
asMpMap 

!IdentityDictionary methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:31'!
mpWriteSelector

!Integer methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:31'!
mpWriteSelector

!UndefinedObject methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:35'!
mpWriteSelector

!MpError methodsFor: 'accessing' stamp: 'mu 5/2/2011 14:11'!
type

!MpError methodsFor: 'accessing' stamp: 'mu 5/2/2011 14:11'!
type: anObject

!MpError class methodsFor: 'instance creation' stamp: 'mu 5/2/2011 14:11'!
decode

!MpError class methodsFor: 'instance creation' stamp: 'mu 5/2/2011 14:11'!
encode

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:00'!
array16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:00'!
array32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:51'!
bin16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:52'!
bin32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:51'!
bin8

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
double

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:33'!
ext16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:34'!
ext32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:33'!
ext8

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
false

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext1

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext2

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext4

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext8

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
float

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
int16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int64

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int8

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
map16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
map32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
nil

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:46'!
str16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:47'!
str32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:48'!
str8

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
true

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
uint16

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
uint32

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:03'!
uint64

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:03'!
uint8

!MpDecoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:53'!
atEnd

!MpDecoder methodsFor: 'building' stamp: 'mu 8/26/2013 00:15'!
buildTypeMapper: aTypeMapper

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/30/2011 23:46'!
createArray: size

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:40'!
createDictionary: size

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:40'!
createOrderedCollection: size

!MpDecoder methodsFor: 'decoding' stamp: 'mu 5/2/2011 14:15'!
decode

!MpDecoder methodsFor: 'decoding' stamp: 'mu 4/29/2011 23:40'!
decode: byteArray

!MpDecoder methodsFor: 'decoding' stamp: 'MasashiUmezawa 2/1/2013 23:13'!
decode: byteArray setting: settingBlock 

!MpDecoder methodsFor: 'decoding' stamp: 'mu 4/29/2011 23:40'!
decodeFrom: aStream

!MpDecoder methodsFor: 'decoding' stamp: 'MasashiUmezawa 2/1/2013 23:13'!
decodeFrom: aStream setting: settingBlock

!MpDecoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:54'!
next

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:43'!
read

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:45'!
readArray16

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:45'!
readArray32

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 4/30/2011 23:46'!
readArraySized: size

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:43'!
readBin16

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:43'!
readBin32

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:42'!
readBin8

!MpDecoder methodsFor: 'reading' stamp: 'mu 5/29/2011 23:59'!
readDouble

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt16

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt32

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt8

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:51'!
readExtSized: size as: type

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:15'!
readFalse

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/7/2011 21:00'!
readFixArray: firstByte

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/7/2011 21:00'!
readFixMap: firstByte

!MpDecoder methodsFor: 'reading' stamp: 'MasashiUmezawa 2/2/2013 01:10'!
readFixRaw: firstByte

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:55'!
readFixStr: firstByte

!MpDecoder methodsFor: 'reading-string' stamp: 'MasashiUmezawa 2/2/2013 00:55'!
readFixString: firstByte

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 12/8/2013 15:41'!
readFixext1

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext16

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext2

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext4

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext8

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:13'!
readFixext: data as: type

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/2/2011 12:24'!
readFloat

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:06'!
readInt16

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:06'!
readInt32

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:03'!
readInt64

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:50'!
readInt8

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:46'!
readMap16

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:46'!
readMap32

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 10/10/2011 16:32'!
readMapSized: size

!MpDecoder methodsFor: 'reading' stamp: 'mu 7/15/2011 23:47'!
readNegativeFixNum: firstByte

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/29/2011 23:40'!
readNil

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 5/8/2011 23:12'!
readObject

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 5/8/2011 23:11'!
readObjectOf: type

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 8/25/2013 23:54'!
readObjectOf: type ifNotApplied: aBlock

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:18'!
readPositiveFixNum: firstByte

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:59'!
readRaw16

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:59'!
readRaw32

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:58'!
readStr16

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:58'!
readStr32

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/26/2013 00:04'!
readStr8

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
readStream

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
readStream: anObject

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:05'!
readString16

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:05'!
readString32

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:06'!
readString8

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:16'!
readTrue

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 4/30/2011 23:33'!
readType

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:31'!
readUint16

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:32'!
readUint32

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:32'!
readUint64

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:30'!
readUint8

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
settings

!MpDecoder methodsFor: 'factory' stamp: 'mu 6/2/2011 17:41'!
settingsClass

!MpDecoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:15'!
signalError

!MpDecoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:15'!
signalError: message

!MpDecoder methodsFor: 'accessing' stamp: 'mu 8/26/2013 00:14'!
typeMapper

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:42'!
typeMapperClass

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
decode: byteArray

!MpDecoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
decode: byteArray setting: settingBlock 

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
decodeFrom: aStream

!MpDecoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
decodeFrom: aStream setting: settingBlock 

!MpDecoder class methodsFor: 'actions' stamp: 'mu 5/15/2011 00:40'!
on: aStream

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
onBytes: byteArray

!MpEncoder methodsFor: 'building' stamp: 'mu 8/19/2013 01:31'!
buildTypeMapper: aTypeMapper

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
contents

!MpEncoder methodsFor: 'factory' stamp: 'mu 10/29/2011 23:25'!
createWriteStream

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:07'!
encode: anObject

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:07'!
encode: anObject on: aStream

!MpEncoder methodsFor: 'encoding' stamp: 'MasashiUmezawa 2/1/2013 22:30'!
encode: anObject on: aStream setting: aBlock

!MpEncoder methodsFor: 'encoding' stamp: 'MasashiUmezawa 2/1/2013 22:34'!
encode: anObject setting: aBlock

!MpEncoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:50'!
nextPut: anObject

!MpEncoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:56'!
nextPutAll: aCollection

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
settings

!MpEncoder methodsFor: 'factory' stamp: 'mu 4/29/2011 15:13'!
settingsClass

!MpEncoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:13'!
signalError

!MpEncoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:13'!
signalError: message

!MpEncoder methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:41'!
typeMapper

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:08'!
typeMapperClass

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:12'!
write: anObject on: aStream

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/3/2011 23:24'!
writeArray: array

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/3/2011 23:24'!
writeArraySize: size

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:10'!
writeBinBytes: bytes

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 8/19/2013 01:10'!
writeBinBytesSize: size

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 16:23'!
writeDouble: aFloat

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:10'!
writeExt16: data as: type

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:10'!
writeExt32: data as: type

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:07'!
writeExt8: data as: type

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 11/5/2013 00:16'!
writeExt: mpExtValue

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:20'!
writeExt: data as: type

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeFalse: ignore

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext16: data as: type

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 12/8/2013 15:32'!
writeFixext1: data as: type

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext2: data as: type

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext4: data as: type

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext8: data as: type

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 11/5/2013 00:17'!
writeFixext: mpFixextValue

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:19'!
writeFixext: data as: type

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 16:22'!
writeFloat: aFloat

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt16: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt32: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt64: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/1/2011 16:54'!
writeInt8: value

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/2/2011 14:14'!
writeInteger: anInteger 

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/3/2011 23:28'!
writeMap: aDictionary

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/3/2011 23:27'!
writeMapSize: size

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 7/15/2011 23:47'!
writeNegativeFixNum: number

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeNil: ignore

!MpEncoder methodsFor: 'dispatching' stamp: 'mu 5/2/2011 14:14'!
writeObject: anObject 

!MpEncoder methodsFor: 'dispatching' stamp: 'mu 4/29/2011 15:07'!
writeObject: anObject ifNotApplied: aBlock 

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:27'!
writePositiveFixNum: number

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:13'!
writeRawBytes: bytes

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:11'!
writeStrBytes: bytes

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 8/19/2013 01:16'!
writeStrBytesSize: size

!MpEncoder methodsFor: 'accessing' stamp: 'mu 10/29/2011 22:47'!
writeStream

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
writeStream: anObject

!MpEncoder methodsFor: 'writing-string' stamp: 'mu 8/19/2013 01:13'!
writeString: aString

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeTrue: ignore

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:38'!
writeUint16: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:39'!
writeUint32: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:49'!
writeUint64: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:38'!
writeUint8: value

!MpEncoder methodsFor: 'writing-helper' stamp: 'MasashiUmezawa 2/2/2013 00:37'!
writeUnknown: unknown withHandler: aBlock

!MpEncoder methodsFor: 'writing-string' stamp: 'mu 8/19/2013 01:14'!
writeWideString: aString

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
encode: anObject 

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
encode: anObject on: aStream

!MpEncoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 22:31'!
encode: anObject on: aStream setting: aBlock

!MpEncoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 22:33'!
encode: anObject setting: settingBlock

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
on: aStream

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
onBytes: byteArray

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:51'!
data

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:51'!
data: anObject

!MpExtValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:29'!
printDescriptionOn: aStream

!MpExtValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:29'!
printOn: aStream

!MpExtValue methodsFor: 'accessing' stamp: 'mu 12/8/2013 15:03'!
size

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:27'!
typeCode

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:27'!
typeCode: anObject

!MpExtValue class methodsFor: 'instance creation' stamp: 'mu 11/4/2013 23:51'!
typeCode: anInteger data: data 

!MpFixextValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:30'!
printOn: aStream

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
asByteArray

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkPosition

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkPosition: anObject

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkSize

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkSize: anObject

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunks

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunks: anObject

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
contents

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
currentChunk

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
currentChunk: anObject

!MpMemoryWriteStream methodsFor: 'initialize-release' stamp: ' 22/10/11 23:23'!
initialize

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
lastSize

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
lastSize: anObject

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
makeSpace

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
moveToNext

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
nextPut: integer

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
nextPutAll: bytes

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
position

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
prepareCurrentChunk

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
putBytes: bytes sized: len

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
size

!MpMemoryWriteStream class methodsFor: 'instance creation' stamp: ' 22/10/11 23:23'!
chunkSized: chunkSize

!MpMemoryWriteStream class methodsFor: 'instance creation' stamp: ' 22/10/11 23:23'!
new

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 15:44'!
pack: anObject

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 21:16'!
packUnpack: anObject

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 15:44'!
unpack: aByteArray

!MpPortableUtil methodsFor: 'actions' stamp: 'mu 5/2/2012 12:35'!
bytesFromString: aString

!MpPortableUtil methodsFor: 'testing' stamp: 'mu 6/23/2011 12:36'!
collectionEquals: aCollection with: otherCollection

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 4/29/2011 23:24'!
encodeTypeMapperClass

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 6/23/2011 12:34'!
newCollection: aCollectionClass sized: size withAll: elem

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 6/23/2011 12:33'!
randomClass

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/29/2011 23:56'!
readDoubleFrom: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/29/2011 23:56'!
readFloatFrom: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt16From: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readInt32From: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt64From: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readUint16From: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readUint32From: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readUint64From: stream

!MpPortableUtil methodsFor: 'actions' stamp: 'mu 5/2/2011 13:53'!
signalException: anException

!MpPortableUtil methodsFor: 'defaults' stamp: 'mu 10/29/2011 23:23'!
useFastBulkWrite

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 16:16'!
writeDouble: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 16:16'!
writeFloat: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeInt16: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeInt32: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeInt64: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeUint16: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeUint32: value to: stream

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeUint64: value to: stream

!MpPortableUtil class methodsFor: 'instance creation' stamp: 'mu 4/29/2011 15:08'!
default

!MpPortableUtil class methodsFor: 'factory' stamp: 'mu 5/5/2011 22:14'!
dialectSpecificClass

!MpPortableUtil class methodsFor: 'factory' stamp: 'mu 4/29/2011 15:08'!
dialectSpecificClass: aClass

!MpPortableUtil class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 15:08'!
initialize

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key ifAbsent: aBlock

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key ifAbsentPut: aBlock

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 5/11/2011 23:24'!
at: key put: value

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:45'!
bytesAsString

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:45'!
bytesAsString: aBoolean

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/1/2013 23:33'!
decodeMode

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:31'!
decodeMode: aSymbol

!MpSettings methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:12'!
defaultStreamSize

!MpSettings methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:12'!
defaultStreamSize: anInteger

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/1/2013 23:22'!
encodeMode

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:30'!
encodeMode: aSymbol

!MpSettings methodsFor: 'accessing' stamp: 'mu 10/29/2011 23:24'!
fastBulkWrite

!MpSettings methodsFor: 'accessing' stamp: 'mu 10/29/2011 22:52'!
fastBulkWrite: aBoolean

!MpSettings methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:57'!
formatVersion

!MpSettings methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:37'!
formatVersion: anInteger

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
includesKey: key

!MpSettings methodsFor: 'class initialization' stamp: 'mu 4/29/2011 15:12'!
initialize

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
keys

!MpSettings methodsFor: 'printing' stamp: 'MasashiUmezawa 2/2/2013 00:18'!
printOn: aStream

!MpSettings methodsFor: 'accessing-private' stamp: 'mu 4/29/2011 15:12'!
settingsDict

!MpSettings methodsFor: 'accessing' stamp: 'mu 5/2/2012 12:04'!
stringAsBytes

!MpSettings methodsFor: 'accessing' stamp: 'mu 5/2/2012 12:04'!
stringAsBytes: aBoolean

!MpTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
actionMap

!MpTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
defaultActionMap

!MpTypeMapper methodsFor: 'initialization' stamp: 'mu 4/29/2011 15:15'!
initActionMaps

!MpTypeMapper class methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
actionMap

!MpTypeMapper class methodsFor: 'factory' stamp: 'mu 11/4/2013 23:59'!
createActionMap

!MpTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 15:15'!
defineCompoundsActionsTo: map

!MpTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 11/4/2013 23:58'!
defineExtsActionsTo: map

!MpTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
definePrimitivesActionsTo: map

!MpTypeMapper class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 22:38'!
initialize

!MpTypeMapper class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 22:19'!
initializeAll

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'mu 8/26/2013 00:20'!
bytesAsRaw

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'mu 8/12/2013 00:12'!
bytesAsString

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
decoder

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
decoder: anObject

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'MasashiUmezawa 2/2/2013 01:09'!
isBytesAsString

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 01:08'!
isBytesAsString: aBoolean

!MpDecodeTypeMapper methodsFor: 'actions' stamp: 'mu 4/30/2011 22:58'!
readObjectOf: typeCode ifNotApplied: aBlock 

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:51'!
defineArrayActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/12/2013 00:43'!
defineBinBytesActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:33'!
defineCompoundsActionsTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:44'!
defineDoubleActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 12/8/2013 15:35'!
defineExtsActionsTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineFalseActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineFloatActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:47'!
defineIntegerActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:51'!
defineMapActionTo: map	

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineNilActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/18/2013 22:31'!
definePrimitivesActionsTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/12/2013 00:14'!
defineStrBytesActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineTrueActionTo: map

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:46'!
defineUnsignedIntegerActionTo: map

!MpDecodeTypeMapper class methodsFor: 'instance creation' stamp: 'mu 11/20/2011 16:50'!
on: mpDecoder 

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 8/19/2013 00:59'!
bytesAsRaw

!MpEncodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
encoder

!MpEncodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
encoder: anObject

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 5/2/2012 12:19'!
stringAsBytes

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 8/19/2013 01:31'!
stringAsError

!MpEncodeTypeMapper methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:52'!
writeObject: anObject ifNotApplied: aBlock 

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 23:25'!
defineArrayActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/19/2013 00:17'!
defineBinBytesActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 22:38'!
defineCompoundsActionsTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:11'!
defineDoubleActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 11/5/2013 00:15'!
defineExtsActionsTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineFalseActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:12'!
defineFloatActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineIntegerActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 23:29'!
defineMapActionTo: map	

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineNilActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/18/2013 23:55'!
definePrimitivesActionsTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/19/2013 00:25'!
defineStrBytesActionTo: map

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineTrueActionTo: map

!MpEncodeTypeMapper class methodsFor: 'instance creation' stamp: 'mu 10/10/2011 17:27'!
on: mpEncoder 
MpPortableUtil initialize!
MpTypeMapper initialize!