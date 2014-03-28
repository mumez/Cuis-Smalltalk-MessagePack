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
	"Override"
	"Only called if you select #loose encodeMode"
	^self asMpMap! !

!Object methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:32'!
asMpMap
	"Override"
	"Only called if you select #loose encodeMode"
	^Dictionary new! !

!Object methodsFor: '*MessagePack-Core-packing' stamp: 'mu 5/1/2011 21:26'!
messagePacked
	^ MpEncoder encode: self! !

!Object methodsFor: '*MessagePack-Core-packing' stamp: 'MasashiUmezawa 2/2/2013 00:41'!
messagePacked: settingBlock
	^ MpEncoder encode: self setting: settingBlock! !

!Object methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:34'!
mpWriteSelector
	^nil! !

!Behavior methodsFor: '*MessagePack-Core-unpacking' stamp: 'mu 5/1/2011 21:27'!
fromMessagePack: bytes
	^ MpDecoder decode: bytes! !

!Behavior methodsFor: '*MessagePack-Core-unpacking' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
fromMessagePack: bytes setting: settingBlock
	^ MpDecoder decode: bytes setting: settingBlock! !

!False methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:12'!
mpWriteSelector
	^#writeFalse:! !

!True methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:35'!
mpWriteSelector
	^#writeTrue:! !

!Array methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:10'!
mpWriteSelector
	self class == Array ifTrue: [^#writeArray:].
	^nil! !

!ByteArray methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 8/19/2013 00:56'!
mpWriteSelector
	self class == ByteArray ifTrue: [^#writeBinBytes:].
	^nil! !

!Symbol methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:36'!
asMpConverted
	^self asString! !

!Dictionary methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:11'!
mpWriteSelector
	self class == Dictionary ifTrue: [^#writeMap:].
	^nil! !

!IdentityDictionary methodsFor: '*MessagePack-Core-converting' stamp: 'MasashiUmezawa 2/2/2013 00:25'!
asMpMap 
	| dic |
	dic := Dictionary new: self size.
	self keysAndValuesDo: [:k :v | dic at: k put: v].
	^dic! !

!IdentityDictionary methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:31'!
mpWriteSelector
	^nil! !

!Integer methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:31'!
mpWriteSelector
	^#writeInteger:! !

!UndefinedObject methodsFor: '*MessagePack-Core-optimization' stamp: 'mu 10/10/2011 16:35'!
mpWriteSelector
	^#writeNil:! !

!MpError methodsFor: 'accessing' stamp: 'mu 5/2/2011 14:11'!
type
	"Answer the value of type"

	^ type! !

!MpError methodsFor: 'accessing' stamp: 'mu 5/2/2011 14:11'!
type: anObject
	"Set the value of type"

	type := anObject! !

!MpError class methodsFor: 'instance creation' stamp: 'mu 5/2/2011 14:11'!
decode
	^self new type: #decode! !

!MpError class methodsFor: 'instance creation' stamp: 'mu 5/2/2011 14:11'!
encode
	^self new type: #encode! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:00'!
array16
	^16rDC! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:00'!
array32
	^16rDD! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:51'!
bin16
	^16rC5! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:52'!
bin32
	^16rC6! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:51'!
bin8
	^16rC4! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
double
	^16rCB! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:33'!
ext16
	^16rC8! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:34'!
ext32
	^16rC9! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 9/22/2013 00:33'!
ext8
	^16rC7! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
false
	^16rC2! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext1
	^16rD4! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext16
	^16rD8! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext2
	^16rD5! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext4
	^16rD6! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:54'!
fixext8
	^16rD7! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
float
	^16rCA! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:01'!
int16
	^16rD1! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int32
	^16rD2! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int64
	^16rD3! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
int8
	^16rD0! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
map16
	^16rDE! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
map32
	^16rDF! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
nil
	^16rC0! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:46'!
str16
	^16rDA! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:47'!
str32
	^16rDB! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 8/11/2013 23:48'!
str8
	^16rD9! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
true
	^16rC3! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
uint16
	^16rCD! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:02'!
uint32
	^16rCE! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:03'!
uint64
	^16rCF! !

!MpConstants class methodsFor: 'typecodes' stamp: 'mu 6/23/2011 12:03'!
uint8
	^16rCC! !

!MpDecoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:53'!
atEnd
	^self readStream atEnd! !

!MpDecoder methodsFor: 'building' stamp: 'mu 8/26/2013 00:15'!
buildTypeMapper: aTypeMapper
	self settings formatVersion = 2008 ifTrue: [
		aTypeMapper bytesAsRaw.
		self settings bytesAsString ifTrue: [aTypeMapper bytesAsString].
	].
	^ aTypeMapper! !

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/30/2011 23:46'!
createArray: size
	^Array new: size! !

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:40'!
createDictionary: size
	^Dictionary new: size! !

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:40'!
createOrderedCollection: size
	^OrderedCollection new: size! !

!MpDecoder methodsFor: 'decoding' stamp: 'mu 5/2/2011 14:15'!
decode
	self readStream atEnd ifTrue: [^self signalError: 'No data to read'].
	^self read! !

!MpDecoder methodsFor: 'decoding' stamp: 'mu 4/29/2011 23:40'!
decode: byteArray
	^self decodeFrom: byteArray readStream! !

!MpDecoder methodsFor: 'decoding' stamp: 'MasashiUmezawa 2/1/2013 23:13'!
decode: byteArray setting: settingBlock 
	settingBlock value: self settings.
	^self decodeFrom: byteArray readStream! !

!MpDecoder methodsFor: 'decoding' stamp: 'mu 4/29/2011 23:40'!
decodeFrom: aStream
	self readStream: aStream "binary".
	^self decode! !

!MpDecoder methodsFor: 'decoding' stamp: 'MasashiUmezawa 2/1/2013 23:13'!
decodeFrom: aStream setting: settingBlock
	settingBlock value: self settings.
	self readStream: aStream "binary".
	^self decode! !

!MpDecoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:54'!
next
	^self read! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:43'!
read
	^self readObject.
	! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:45'!
readArray16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^ self readArraySized: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:45'!
readArray32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^ self readArraySized: size! !

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 4/30/2011 23:46'!
readArraySized: size
	| array |
	array := self createArray: size.
	1 to: size do: [:idx |
		array at: idx put: (self readObject)
	].
	^array! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:43'!
readBin16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^self readStream next: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:43'!
readBin32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^self readStream next: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/12/2013 00:42'!
readBin8
	| size |
	size := self readStream next.
	^(self readStream next: size)! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 5/29/2011 23:59'!
readDouble
	"64 bit"
	^MpPortableUtil default readDoubleFrom: self readStream! !

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt16
	| size type |
	size := MpPortableUtil default readUint16From: self readStream.
	type := self readStream next.
	^self readExtSized: size as: type! !

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt32
	| size type |
	size := MpPortableUtil default readUint32From: self readStream.
	type := self readStream next.
	^self readExtSized: size as: type! !

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:39'!
readExt8
	| size type |
	size := self readStream next.
	type := self readStream next.
	^self readExtSized: size as: type! !

!MpDecoder methodsFor: 'reading-ext' stamp: 'mu 11/4/2013 23:51'!
readExtSized: size as: type
	^MpExtValue typeCode: type data: (self readStream next: size)! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:15'!
readFalse
	^false! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/7/2011 21:00'!
readFixArray: firstByte
	| size |
	size := (firstByte bitAnd: 2r1111).
	^ self readArraySized: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/7/2011 21:00'!
readFixMap: firstByte
	| size |
	size := (firstByte bitAnd: 2r1111).
	^self readMapSized: size! !

!MpDecoder methodsFor: 'reading' stamp: 'MasashiUmezawa 2/2/2013 01:10'!
readFixRaw: firstByte
	| size |
	self typeMapper isBytesAsString ifTrue: [^self readFixString: firstByte].
	size := (firstByte bitAnd: 2r11111).
	^self readStream next: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:55'!
readFixStr: firstByte
	self settings formatVersion = 2008 ifTrue: [^self readFixRaw: firstByte].
	^self readFixString: firstByte! !

!MpDecoder methodsFor: 'reading-string' stamp: 'MasashiUmezawa 2/2/2013 00:55'!
readFixString: firstByte
	| size |
	size := (firstByte bitAnd: 2r11111).
	^(self readStream next: size) asString! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 12/8/2013 15:41'!
readFixext1
	| data type |
	type := self readStream next.
	data := ByteArray with: self readStream next.
	^self readFixext: data as: type! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext16
	| data type |
	type := self readStream next.
	data := self readStream next: 16.
	^self readFixext: data as: type! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext2
	| data type |
	type := self readStream next.
	data := self readStream next: 2.
	^self readFixext: data as: type! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext4
	| data type |
	type := self readStream next.
	data := self readStream next: 4.
	^self readFixext: data as: type! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:02'!
readFixext8
	| data type |
	type := self readStream next.
	data := self readStream next: 8.
	^self readFixext: data as: type! !

!MpDecoder methodsFor: 'reading-fixext' stamp: 'mu 11/5/2013 00:13'!
readFixext: data as: type
	^MpFixextValue typeCode: type data: data! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 6/2/2011 12:24'!
readFloat
	"32 bit"
	^MpPortableUtil default readFloatFrom: self readStream
	! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:06'!
readInt16
	^ MpPortableUtil default readInt16From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:06'!
readInt32
	^ MpPortableUtil default readInt32From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:03'!
readInt64
	^ MpPortableUtil default readInt64From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 5/1/2011 16:50'!
readInt8
	| val |
	val := self readStream next.
	val >= 128 ifTrue: [^(256 - val) negated].
	^val! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:46'!
readMap16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^ self readMapSized: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:46'!
readMap32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^ self readMapSized: size! !

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 10/10/2011 16:32'!
readMapSized: size
	| dic |
	dic := self createDictionary: size.
	size timesRepeat: [
		dic at: self readObject put: self readObject
	].
	^dic! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 7/15/2011 23:47'!
readNegativeFixNum: firstByte
	| val |
	val := (firstByte bitAnd: 2r11111).
	^ val - 32! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/29/2011 23:40'!
readNil
	^nil! !

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 5/8/2011 23:12'!
readObject
	| type |
	type := self readType.
	^ self readObjectOf: type
	! !

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 5/8/2011 23:11'!
readObjectOf: type
	^ self readObjectOf: type ifNotApplied: [self signalError]
	
	! !

!MpDecoder methodsFor: 'dispatching' stamp: 'mu 8/25/2013 23:54'!
readObjectOf: type ifNotApplied: aBlock
	
	type <=16rBF ifTrue: [ | fixMapOrArray |
		type <= 16r7F ifTrue: [^ self readPositiveFixNum: type].
		fixMapOrArray := type bitShift: -4.
		fixMapOrArray = 2r1000 ifTrue: [^ self readFixMap: type].
		fixMapOrArray = 2r1001 ifTrue: [^ self readFixArray: type].
		^ self readFixStr: type.
	].
	(type bitShift: -5) = 2r111 ifTrue: [^ self readNegativeFixNum: type].
	^self typeMapper readObjectOf: type ifNotApplied: aBlock! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:18'!
readPositiveFixNum: firstByte
	"0 - 127"
	^ firstByte! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:59'!
readRaw16
	"Obsolete"
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^self readStream next: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:59'!
readRaw32
	"Obsolete"
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^self readStream next: size! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:58'!
readStr16
	^self readString16! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/25/2013 23:58'!
readStr32
	^self readString32! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 8/26/2013 00:04'!
readStr8
	^self readString8! !

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
readStream
	"Answer the value of readStream"

	^ readStream! !

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
readStream: anObject
	"Set the value of readStream"

	readStream := anObject! !

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:05'!
readString16
	| size |
	size := MpPortableUtil default readUint16From: self readStream.
	^(self readStream next: size) asString! !

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:05'!
readString32
	| size |
	size := MpPortableUtil default readUint32From: self readStream.
	^(self readStream next: size) asString! !

!MpDecoder methodsFor: 'reading-string' stamp: 'mu 8/26/2013 00:06'!
readString8
	| size |
	size := self readStream next.
	^(self readStream next: size) asString! !

!MpDecoder methodsFor: 'reading' stamp: 'mu 4/30/2011 23:16'!
readTrue
	^true! !

!MpDecoder methodsFor: 'reading-helper' stamp: 'mu 4/30/2011 23:33'!
readType
	^self readStream next! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:31'!
readUint16
	^ MpPortableUtil default readUint16From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:32'!
readUint32
	^ MpPortableUtil default readUint32From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:32'!
readUint64
	^ MpPortableUtil default readUint64From: self readStream! !

!MpDecoder methodsFor: 'reading-integer' stamp: 'mu 4/30/2011 23:30'!
readUint8
	^ self readStream next! !

!MpDecoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
settings
	^settings ifNil: [settings := self settingsClass new]! !

!MpDecoder methodsFor: 'factory' stamp: 'mu 6/2/2011 17:41'!
settingsClass
	^MpSettings! !

!MpDecoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:15'!
signalError
	self signalError: 'Cannot decode'! !

!MpDecoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:15'!
signalError: message
	^MpPortableUtil default signalException: (MpError decode messageText: message) ! !

!MpDecoder methodsFor: 'accessing' stamp: 'mu 8/26/2013 00:14'!
typeMapper
	^ typeMapper
		ifNil: [typeMapper := self typeMapperClass on: self.
			self buildTypeMapper: typeMapper]! !

!MpDecoder methodsFor: 'factory' stamp: 'mu 4/29/2011 23:42'!
typeMapperClass
	^MpDecodeTypeMapper! !

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
decode: byteArray
	^self new decode: byteArray! !

!MpDecoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
decode: byteArray setting: settingBlock 
	^self new decode: byteArray setting: settingBlock ! !

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
decodeFrom: aStream
	^self new decodeFrom: aStream! !

!MpDecoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:14'!
decodeFrom: aStream setting: settingBlock 
	^self new decodeFrom: aStream setting: settingBlock ! !

!MpDecoder class methodsFor: 'actions' stamp: 'mu 5/15/2011 00:40'!
on: aStream
	^self new readStream: aStream "binary"! !

!MpDecoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 23:40'!
onBytes: byteArray
	^self on: (ReadStream on: byteArray)! !

!MpEncoder methodsFor: 'building' stamp: 'mu 8/19/2013 01:31'!
buildTypeMapper: aTypeMapper
	self settings formatVersion = 2008 ifTrue: [
		aTypeMapper bytesAsRaw.
		self settings stringAsBytes 
			ifTrue: [aTypeMapper stringAsBytes]
			ifFalse: [aTypeMapper stringAsError]
	].
	^aTypeMapper
	! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
contents
	^self writeStream contents! !

!MpEncoder methodsFor: 'factory' stamp: 'mu 10/29/2011 23:25'!
createWriteStream
	self settings fastBulkWrite ifTrue: [
		^MpMemoryWriteStream chunkSized: self settings defaultStreamSize.	
	].

	^WriteStream on: (ByteArray new: self settings defaultStreamSize).
	
	! !

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:07'!
encode: anObject
	^self encode: anObject on: self writeStream! !

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:07'!
encode: anObject on: aStream
	self write: anObject on: aStream.
	^self contents.! !

!MpEncoder methodsFor: 'encoding' stamp: 'MasashiUmezawa 2/1/2013 22:30'!
encode: anObject on: aStream setting: aBlock
	aBlock value: self settings.
	self write: anObject on: aStream.
	^self contents.! !

!MpEncoder methodsFor: 'encoding' stamp: 'MasashiUmezawa 2/1/2013 22:34'!
encode: anObject setting: aBlock
	^self encode: anObject on: self writeStream setting: aBlock ! !

!MpEncoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:50'!
nextPut: anObject
	self writeObject: anObject! !

!MpEncoder methodsFor: 'stream-like' stamp: 'mu 6/7/2011 17:56'!
nextPutAll: aCollection
	aCollection do: [:each | self nextPut: each]! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
settings
	^settings ifNil: [settings := self settingsClass new]! !

!MpEncoder methodsFor: 'factory' stamp: 'mu 4/29/2011 15:13'!
settingsClass
	^MpSettings! !

!MpEncoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:13'!
signalError
	self signalError: 'Cannot encode'! !

!MpEncoder methodsFor: 'signaling error' stamp: 'mu 5/2/2011 14:13'!
signalError: message
	^MpPortableUtil default signalException: (MpError encode messageText: message) ! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:41'!
typeMapper
	^ typeMapper
		ifNil: [typeMapper := self typeMapperClass on: self.
			self buildTypeMapper: typeMapper]! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:08'!
typeMapperClass
	^MpPortableUtil default encodeTypeMapperClass! !

!MpEncoder methodsFor: 'encoding' stamp: 'mu 4/29/2011 15:12'!
write: anObject on: aStream
	self writeStream: aStream "binary".
	self writeObject: anObject! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/3/2011 23:24'!
writeArray: array
	| size |
	size := array size.
	self writeArraySize: size.
	array do: [:each | self writeObject: each].
	! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/3/2011 23:24'!
writeArraySize: size
	size < 16r10 ifTrue: [^ self writeStream nextPut: (2r10010000 bitOr: size)].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants array16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants array32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:10'!
writeBinBytes: bytes
	| size |
	size := bytes size.
	self writeBinBytesSize: size.
	self writeStream nextPutAll: bytes! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 8/19/2013 01:10'!
writeBinBytesSize: size
	size < 16r10 ifTrue: [
		self writeStream nextPut: MpConstants bin8.
		^ self writeStream nextPut: size].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants bin16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants bin32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 16:23'!
writeDouble: aFloat
	self writeStream nextPut: MpConstants double.
	MpPortableUtil default writeDouble: aFloat to: self writeStream! !

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:10'!
writeExt16: data as: type
	self writeStream nextPut: MpConstants ext16.
	MpPortableUtil default writeUint16: data size to: self writeStream.
	self writeStream
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:10'!
writeExt32: data as: type
	self writeStream nextPut: MpConstants ext32.
	MpPortableUtil default writeUint32: data size to: self writeStream.
	self writeStream
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:07'!
writeExt8: data as: type
	self writeStream nextPut: MpConstants ext8;
		nextPut: data size;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 11/5/2013 00:16'!
writeExt: mpExtValue
	^self writeExt: mpExtValue data as: mpExtValue typeCode! !

!MpEncoder methodsFor: 'writing-ext' stamp: 'mu 9/22/2013 01:20'!
writeExt: data as: type
	| sz |
	sz := data size.
	sz < 256 ifTrue: [^self writeExt8: data as: type].
	sz < 65536 ifTrue: [^self writeExt16: data as: type].
	sz < 4294967296 ifTrue: [^self writeExt32: data as: type].! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeFalse: ignore
	self writeStream nextPut: MpConstants false! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext16: data as: type
	self writeStream nextPut: MpConstants fixext16;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 12/8/2013 15:32'!
writeFixext1: data as: type
	self writeStream nextPut: MpConstants fixext1;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext2: data as: type
	self writeStream nextPut: MpConstants fixext2;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext4: data as: type
	self writeStream nextPut: MpConstants fixext4;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:02'!
writeFixext8: data as: type
	self writeStream nextPut: MpConstants fixext8;
		nextPut: type;
		nextPutAll: data! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 11/5/2013 00:17'!
writeFixext: mpFixextValue
	^self writeFixext: mpFixextValue data as: mpFixextValue typeCode! !

!MpEncoder methodsFor: 'writing-fixext' stamp: 'mu 9/22/2013 01:19'!
writeFixext: data as: type
	| sz |
	sz := data size.
	sz = 1 ifTrue: [^self writeFixext1: data as: type].
	sz = 2 ifTrue: [^self writeFixext2: data as: type].
	sz = 4 ifTrue: [^self writeFixext4: data as: type].
	sz = 8 ifTrue: [^self writeFixext8: data as: type].
	sz = 16 ifTrue: [^self writeFixext16: data as: type].
	
	self signalError! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 16:22'!
writeFloat: aFloat
	self writeStream nextPut: MpConstants float.
	MpPortableUtil default writeFloat: aFloat to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt16: value
	self writeStream nextPut: MpConstants int16.
	MpPortableUtil default writeInt16: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt32: value
	self writeStream nextPut: MpConstants int32.
	MpPortableUtil default writeInt32: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:51'!
writeInt64: value
	self writeStream nextPut: MpConstants int64.
	MpPortableUtil default writeInt64: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/1/2011 16:54'!
writeInt8: value
	| val |
	self writeStream nextPut: MpConstants int8.
	val := value < 0 ifTrue: [256 + value] ifFalse: [value].
	self writeStream nextPut: val! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/2/2011 14:14'!
writeInteger: anInteger 
	(anInteger between: 0 and: 127)
		ifTrue: [^self writePositiveFixNum: anInteger].
		
	(anInteger between: -32 and: -1)
		ifTrue: [^self writeNegativeFixNum: anInteger].
	
	anInteger >= 128 ifTrue: [
		anInteger <= 255 ifTrue: [^self writeUint8: anInteger].
		anInteger <= 65535 ifTrue: [^self writeUint16: anInteger].
		anInteger <= 4294967295 ifTrue: [^self writeUint32: anInteger].
		anInteger <= 18446744073709551615 ifTrue: [^self writeUint64: anInteger].
	].
	
	anInteger >= -128 ifTrue: [^self writeInt8: anInteger].
	anInteger >= -32768 ifTrue: [^self writeInt16: anInteger].
	anInteger >= -2147483648 ifTrue: [^self writeInt32: anInteger].
	anInteger >= -9223372036854775808 ifTrue: [^self writeInt64: anInteger].
	
	self signalError! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 5/3/2011 23:28'!
writeMap: aDictionary
	| size |
	size := aDictionary size.
	self writeMapSize: size.
	aDictionary keysAndValuesDo: [:key :value | self writeObject: key; writeObject: value].! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 5/3/2011 23:27'!
writeMapSize: size
	size < 16r10 ifTrue: [^ self writeStream nextPut: (2r10000000 bitOr: size)].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants map16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants map32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 7/15/2011 23:47'!
writeNegativeFixNum: number
	"-32 to -1"
	| val |
	val :=  256 + number.
	self writeStream nextPut: val! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeNil: ignore
	self writeStream nextPut: MpConstants nil! !

!MpEncoder methodsFor: 'dispatching' stamp: 'mu 5/2/2011 14:14'!
writeObject: anObject 
	^self
		writeObject: anObject
		ifNotApplied: [self signalError]! !

!MpEncoder methodsFor: 'dispatching' stamp: 'mu 4/29/2011 15:07'!
writeObject: anObject ifNotApplied: aBlock 

	^self typeMapper writeObject: anObject ifNotApplied: aBlock! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:27'!
writePositiveFixNum: number

	self writeStream nextPut: number
	! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:13'!
writeRawBytes: bytes
	"Obsolete"
	self writeStrBytes: bytes! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 8/19/2013 01:11'!
writeStrBytes: bytes
	| size |
	size := bytes size.
	self writeStrBytesSize: size.
	self writeStream nextPutAll: bytes! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 8/19/2013 01:16'!
writeStrBytesSize: size
	size < 16r10 ifTrue: [^ self writeStream nextPut: (2r10100000 bitOr: size)].
	size < 16r10000  ifTrue: [
		self writeStream nextPut: MpConstants str16.
		^MpPortableUtil default writeUint16: size to: self writeStream
	].
	size < 16r100000000  ifTrue: [
		self writeStream nextPut: MpConstants str32.
		^MpPortableUtil default writeUint32: size to: self writeStream
	].
	
	self signalError! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 10/29/2011 22:47'!
writeStream
	writeStream isNil
		ifTrue: [writeStream := self createWriteStream].
	^ writeStream! !

!MpEncoder methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:07'!
writeStream: anObject
	"Set the value of writeStream"

	writeStream := anObject! !

!MpEncoder methodsFor: 'writing-string' stamp: 'mu 8/19/2013 01:13'!
writeString: aString
	self writeStrBytes: aString asByteArray! !

!MpEncoder methodsFor: 'writing' stamp: 'mu 4/29/2011 15:24'!
writeTrue: ignore
	self writeStream nextPut: MpConstants true! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:38'!
writeUint16: value
	self writeStream nextPut: MpConstants uint16.
	MpPortableUtil default writeUint16: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:39'!
writeUint32: value
	self writeStream nextPut: MpConstants uint32.
	MpPortableUtil default writeUint32: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:49'!
writeUint64: value
	self writeStream nextPut: MpConstants uint64.
	MpPortableUtil default writeUint64: value to: self writeStream! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'mu 4/29/2011 15:38'!
writeUint8: value
	self writeStream nextPut: MpConstants uint8.
	self writeStream nextPut: value! !

!MpEncoder methodsFor: 'writing-helper' stamp: 'MasashiUmezawa 2/2/2013 00:37'!
writeUnknown: unknown withHandler: aBlock
	| mode |
	mode := self settings encodeMode.
	mode == #strict ifTrue: [^aBlock value].
	mode == #unknownAsNil ifTrue: [^self writeNil: unknown].
	mode == #loose ifTrue: [^self writeObject: unknown asMpConverted].
	
	"If non supported mode, we just use handler"
	^aBlock value
	! !

!MpEncoder methodsFor: 'writing-string' stamp: 'mu 8/19/2013 01:14'!
writeWideString: aString
	self writeStrBytes: (MpPortableUtil default bytesFromString: aString)! !

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
encode: anObject 
	^self new encode: anObject! !

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
encode: anObject on: aStream
	^self new encode: anObject on: aStream! !

!MpEncoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 22:31'!
encode: anObject on: aStream setting: aBlock
	^self new encode: anObject on: aStream setting: aBlock! !

!MpEncoder class methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 22:33'!
encode: anObject setting: settingBlock
	^self new encode: anObject setting: settingBlock! !

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
on: aStream
	^self new writeStream: aStream; yourself! !

!MpEncoder class methodsFor: 'actions' stamp: 'mu 4/29/2011 15:07'!
onBytes: byteArray
	^self on: (WriteStream on: byteArray).! !

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:51'!
data

	^ data! !

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:51'!
data: anObject

	data := anObject! !

!MpExtValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:29'!
printDescriptionOn: aStream
	self typeCode printOn: aStream.
	aStream space.
	aStream nextPutAll: 'data: '.
	self data printOn: aStream! !

!MpExtValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:29'!
printOn: aStream
	aStream nextPutAll: 'Ext: '.
	self printDescriptionOn: aStream! !

!MpExtValue methodsFor: 'accessing' stamp: 'mu 12/8/2013 15:03'!
size
	^self data size! !

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:27'!
typeCode

	^ typeCode! !

!MpExtValue methodsFor: 'accessing' stamp: 'mu 11/4/2013 23:27'!
typeCode: anObject

	typeCode := anObject! !

!MpExtValue class methodsFor: 'instance creation' stamp: 'mu 11/4/2013 23:51'!
typeCode: anInteger data: data 
	^ self new typeCode: anInteger;
		 data: data! !

!MpFixextValue methodsFor: 'printing' stamp: 'mu 12/8/2013 15:30'!
printOn: aStream
	aStream nextPutAll: 'FixExt('.
	aStream nextPutAll: self size printString. 
	aStream nextPutAll: '): '.
	self printDescriptionOn: aStream! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
asByteArray
	"Answer receiver as byte array."
	
	| bytes pos idx len coll bytesSize |
	bytes := ByteArray new: (bytesSize := self size).
	pos := 0.
	idx := 1.
	[coll := self chunks at: idx.
	len := coll size.
	pos + len < bytesSize]
		whileTrue:
			[bytes
				replaceFrom: pos + 1
				to: (pos := pos + len)
				with: coll
				startingAt: 1.
			idx := idx + 1].
	bytes
		replaceFrom: pos + 1
		to: bytesSize
		with: coll
		startingAt: 1.
	^bytes! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkPosition
	
	^chunkPosition! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkPosition: anObject
	
	^chunkPosition := anObject! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkSize
	
	^chunkSize ifNil: [chunkSize := 1024]! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunkSize: anObject
	
	chunkSize := anObject! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunks
	
	^chunks! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
chunks: anObject
	
	chunks := anObject! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
contents
	
	^self asByteArray! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
currentChunk
	
	^currentChunk! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
currentChunk: anObject
	
	^currentChunk := anObject! !

!MpMemoryWriteStream methodsFor: 'initialize-release' stamp: ' 22/10/11 23:23'!
initialize
	
	chunks := OrderedCollection new.
	self makeSpace! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
lastSize
	
	^lastSize! !

!MpMemoryWriteStream methodsFor: 'accessing' stamp: ' 22/10/11 23:23'!
lastSize: anObject
	
	lastSize := anObject! !

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
makeSpace
	
	self chunks add: self prepareCurrentChunk.
	self chunkPosition: 0.
	self lastSize: 0! !

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
moveToNext
	
	| curChunk |
	self chunkPosition: 0.
	curChunk := self currentChunk.
	(curChunk isNil or: [curChunk == self chunks last])
		ifTrue: [self makeSpace]
		ifFalse:
			[1
				to: self chunks size
				do:
					[:idx | 
					(self chunks at: idx) == curChunk
						ifTrue:
							[self currentChunk: (self chunks at: idx + 1).
							^self]]]! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
nextPut: integer
	
	self chunkPosition >= self chunkSize ifTrue: [self moveToNext].
	self chunkPosition: self chunkPosition + 1.
	self currentChunk
		at: self chunkPosition
		put: integer! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
nextPutAll: bytes
	
	self
		putBytes: bytes
		sized: bytes size! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
position
	
	| idx size coll |
	self currentChunk isNil ifTrue: [^0].
	idx := 1.
	size := 0.
	[(coll := self chunks at: idx) == self currentChunk]
		whileFalse:
			[idx := idx + 1.
			size := size + coll size].
	^size + self chunkPosition! !

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
prepareCurrentChunk
	
	^self currentChunk: (ByteArray new: self chunkSize)! !

!MpMemoryWriteStream methodsFor: 'private' stamp: ' 22/10/11 23:23'!
putBytes: bytes sized: len
	
	len > (self chunkSize - self chunkPosition)
		ifTrue:
			[(self currentChunk notNil
				and: [self chunks last == self currentChunk and: [len > 64]])
				ifTrue:
					[self chunks
						at: self chunks size
						put:
							(self currentChunk
								copyFrom: 1
								to: self chunkPosition).
					self chunks add: bytes.
					self makeSpace]
				ifFalse:
					[1
						to: len
						do: [:i | self nextPut: (bytes at: i)]]]
		ifFalse:
			[self currentChunk
				replaceFrom: self chunkPosition + 1
				to: self chunkPosition + len
				with: bytes
				startingAt: 1.
			self chunkPosition: self chunkPosition + len]! !

!MpMemoryWriteStream methodsFor: 'actions' stamp: ' 22/10/11 23:23'!
size
	
	| size count |
	self currentChunk isNil ifTrue: [^0].
	size := 0.
	count := self chunks size.
	1
		to: count - 1
		do: [:idx | size := size + (self chunks at: idx) size].
	self currentChunk == (self chunks at: count)
		ifTrue:
			[self lastSize < self chunkPosition
				ifTrue: [self lastSize: self chunkPosition]].
	^size + self lastSize! !

!MpMemoryWriteStream class methodsFor: 'instance creation' stamp: ' 22/10/11 23:23'!
chunkSized: chunkSize
	
	^(self basicNew)
		chunkSize: chunkSize;
		initialize;
		yourself! !

!MpMemoryWriteStream class methodsFor: 'instance creation' stamp: ' 22/10/11 23:23'!
new
	
	^super new initialize! !

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 15:44'!
pack: anObject
	^ MpEncoder encode: anObject! !

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 21:16'!
packUnpack: anObject
	^self unpack: (self pack: anObject)! !

!MpMessagePack class methodsFor: 'utilities' stamp: 'mu 5/1/2011 15:44'!
unpack: aByteArray
	^ MpDecoder decode: aByteArray! !

!MpPortableUtil methodsFor: 'actions' stamp: 'mu 5/2/2012 12:35'!
bytesFromString: aString
	^aString asByteArray! !

!MpPortableUtil methodsFor: 'testing' stamp: 'mu 6/23/2011 12:36'!
collectionEquals: aCollection with: otherCollection
	"For testing"
	^ aCollection = otherCollection! !

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 4/29/2011 23:24'!
encodeTypeMapperClass
	^MpEncodeTypeMapper! !

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 6/23/2011 12:34'!
newCollection: aCollectionClass sized: size withAll: elem
	"For testing"
	^ aCollectionClass new: size withAll: elem! !

!MpPortableUtil methodsFor: 'factory' stamp: 'mu 6/23/2011 12:33'!
randomClass
	"For testing"
	^Smalltalk at: #Random! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/29/2011 23:56'!
readDoubleFrom: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 5/29/2011 23:56'!
readFloatFrom: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt16From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readInt32From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readInt64From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readUint16From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
readUint32From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
readUint64From: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions' stamp: 'mu 5/2/2011 13:53'!
signalException: anException
	"Ansi"

	^anException signal! !

!MpPortableUtil methodsFor: 'defaults' stamp: 'mu 10/29/2011 23:23'!
useFastBulkWrite
	^ false! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 16:16'!
writeDouble: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 16:16'!
writeFloat: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeInt16: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeInt32: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeInt64: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeUint16: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/29/2011 15:08'!
writeUint32: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil methodsFor: 'actions-stream' stamp: 'mu 4/30/2011 23:35'!
writeUint64: value to: stream
	self subclassResponsibility ! !

!MpPortableUtil class methodsFor: 'instance creation' stamp: 'mu 4/29/2011 15:08'!
default
	^Default ifNil: [Default := self dialectSpecificClass new]! !

!MpPortableUtil class methodsFor: 'factory' stamp: 'mu 5/5/2011 22:14'!
dialectSpecificClass
	^DialectSpecificClass ifNil: [DialectSpecificClass := self subclasses at: 1]! !

!MpPortableUtil class methodsFor: 'factory' stamp: 'mu 4/29/2011 15:08'!
dialectSpecificClass: aClass
	DialectSpecificClass := aClass! !

!MpPortableUtil class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 15:08'!
initialize
	Default := nil.
	DialectSpecificClass := nil! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key
	^self settingsDict at: key! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key ifAbsent: aBlock
	^self settingsDict at: key ifAbsent: aBlock! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
at: key ifAbsentPut: aBlock
	^self settingsDict at: key ifAbsentPut: aBlock! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 5/11/2011 23:24'!
at: key put: value
	^self settingsDict at: key put: value! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:45'!
bytesAsString
	^self at: #bytesAsString ifAbsentPut: [false]! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:45'!
bytesAsString: aBoolean
	^self at: #bytesAsString ifAbsentPut: aBoolean! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/1/2013 23:33'!
decodeMode
	^self at: #decodeMode ifAbsent: [#strict]! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:31'!
decodeMode: aSymbol
	"#strict #unknownAsNil #loose"
	^self at: #decodeMode ifAbsentPut: aSymbol! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:12'!
defaultStreamSize
	^self at: #defaultStreamSize ifAbsentPut: [1024]! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:12'!
defaultStreamSize: anInteger
	^self at: #defaultStreamSize put: anInteger! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/1/2013 23:22'!
encodeMode
	^self at: #encodeMode ifAbsent: [#strict]! !

!MpSettings methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 00:30'!
encodeMode: aSymbol
	"#strict #unknownAsNil #loose"
	^self at: #encodeMode ifAbsentPut: aSymbol! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 10/29/2011 23:24'!
fastBulkWrite
	^self at: #fastBulkWrite ifAbsentPut: [MpPortableUtil default useFastBulkWrite]! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 10/29/2011 22:52'!
fastBulkWrite: aBoolean
	^self at: #fastBulkWrite put: aBoolean! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:57'!
formatVersion
	"2008, 2013"
	^self at: #formatVersion ifAbsent: [2008]! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 8/19/2013 00:37'!
formatVersion: anInteger
	^self at: #formatVersion ifAbsentPut: anInteger! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
includesKey: key
	^self settingsDict includesKey: key! !

!MpSettings methodsFor: 'class initialization' stamp: 'mu 4/29/2011 15:12'!
initialize
	settingsDict := nil! !

!MpSettings methodsFor: 'actions-dictionary' stamp: 'mu 4/29/2011 15:12'!
keys
	^self settingsDict keys! !

!MpSettings methodsFor: 'printing' stamp: 'MasashiUmezawa 2/2/2013 00:18'!
printOn: aStream
	aStream nextPutAll: 'a MpSettings('.
	self settingsDict printOn: aStream.
	aStream nextPutAll: ')'.
! !

!MpSettings methodsFor: 'accessing-private' stamp: 'mu 4/29/2011 15:12'!
settingsDict
	^ settingsDict ifNil: [settingsDict := IdentityDictionary new]! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 5/2/2012 12:04'!
stringAsBytes
	^self at: #stringAsBytes ifAbsentPut: [false]! !

!MpSettings methodsFor: 'accessing' stamp: 'mu 5/2/2012 12:04'!
stringAsBytes: aBoolean
	^self at: #stringAsBytes ifAbsentPut: aBoolean! !

!MpTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
actionMap

	^ actionMap ifNil: [actionMap := IdentityDictionary new]! !

!MpTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
defaultActionMap

	^ self class actionMap! !

!MpTypeMapper methodsFor: 'initialization' stamp: 'mu 4/29/2011 15:15'!
initActionMaps
	"override for custom mapping"
	actionMap := nil! !

!MpTypeMapper class methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
actionMap
	^ actionMap ifNil: [actionMap := self createActionMap]! !

!MpTypeMapper class methodsFor: 'factory' stamp: 'mu 11/4/2013 23:59'!
createActionMap
	| map |
	map := IdentityDictionary new.
	self definePrimitivesActionsTo: map.
	self defineCompoundsActionsTo: map.
	self defineExtsActionsTo: map.
	^map! !

!MpTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 15:15'!
defineCompoundsActionsTo: map
	"override"! !

!MpTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 11/4/2013 23:58'!
defineExtsActionsTo: map
	"override"! !

!MpTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
definePrimitivesActionsTo: map
	"override"! !

!MpTypeMapper class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 22:38'!
initialize
	"self initialize"
	actionMap  := nil.
	self actionMap
	! !

!MpTypeMapper class methodsFor: 'class initialization' stamp: 'mu 4/29/2011 22:19'!
initializeAll
	"self initializeAll"
	self allSubclasses do: [:each | each initialize]! !

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'mu 8/26/2013 00:20'!
bytesAsRaw
	"For older MP specification"
	| map |
	map := self actionMap.
	map at: MpConstants str8 put: #signalError.
	map at: MpConstants str16 put: #readRaw16.
	map at: MpConstants str32 put: #readRaw32.
	
	self isBytesAsString: false! !

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'mu 8/12/2013 00:12'!
bytesAsString
	| map |
	map := self actionMap.
	map at: MpConstants str8 put: #readString8.
	map at: MpConstants str16 put: #readString16.
	map at: MpConstants str16 put: #readString32.
	
	self isBytesAsString: true! !

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
decoder
	"Answer the value of decoder"

	^ decoder! !

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 23:40'!
decoder: anObject
	"Set the value of decoder"

	decoder := anObject! !

!MpDecodeTypeMapper methodsFor: 'decode customization' stamp: 'MasashiUmezawa 2/2/2013 01:09'!
isBytesAsString
	isBytesAsString ifNil: [isBytesAsString := false].
	^ isBytesAsString! !

!MpDecodeTypeMapper methodsFor: 'accessing' stamp: 'MasashiUmezawa 2/2/2013 01:08'!
isBytesAsString: aBoolean

	isBytesAsString := aBoolean == true! !

!MpDecodeTypeMapper methodsFor: 'actions' stamp: 'mu 4/30/2011 22:58'!
readObjectOf: typeCode ifNotApplied: aBlock 
	| actionSelector |
	
	actionMap
		ifNotNil: [actionSelector := self actionMap at: typeCode ifAbsent: [].
			actionSelector ifNotNil: [^ self decoder perform: actionSelector]].
	
	actionSelector := self defaultActionMap
				at: typeCode
				ifAbsent: [^ aBlock value].
	^ self decoder perform: actionSelector! !

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:51'!
defineArrayActionTo: map
	map at: MpConstants array16 put: #readArray16.
	map at: MpConstants array32 put: #readArray32.
	
	! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/12/2013 00:43'!
defineBinBytesActionTo: map
	map at: MpConstants bin8 put: #readBin8.
	map at: MpConstants bin16 put: #readBin16.
	map at: MpConstants bin32 put: #readBin32.! !

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:33'!
defineCompoundsActionsTo: map
	self defineArrayActionTo: map.
	self defineMapActionTo: map.! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:44'!
defineDoubleActionTo: map
	map at: MpConstants double put: #readDouble! !

!MpDecodeTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 12/8/2013 15:35'!
defineExtsActionsTo: map
	map at: MpConstants fixext1 put: #readFixext1.
	map at: MpConstants fixext2 put: #readFixext2.
	map at: MpConstants fixext4 put: #readFixext4.
	map at: MpConstants fixext8 put: #readFixext8.
	map at: MpConstants fixext16 put: #readFixext16.
	map at: MpConstants ext8 put: #readExt8.
	map at: MpConstants ext16 put: #readExt16.
	map at: MpConstants ext32 put: #readExt32.! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineFalseActionTo: map
	map at: MpConstants false put: #readFalse! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineFloatActionTo: map
	map at: MpConstants float put: #readFloat! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:47'!
defineIntegerActionTo: map
	map at: MpConstants int8 put: #readInt8.
	map at: MpConstants int16 put: #readInt16.
	map at: MpConstants int32 put: #readInt32.
	map at: MpConstants int64 put: #readInt64.! !

!MpDecodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/30/2011 22:51'!
defineMapActionTo: map	
	map at: MpConstants map16 put: #readMap16.
	map at: MpConstants map32 put: #readMap32.! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineNilActionTo: map
	map at: MpConstants nil put: #readNil! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/18/2013 22:31'!
definePrimitivesActionsTo: map
	self defineNilActionTo: map.
	self defineTrueActionTo: map.
	self defineFalseActionTo: map.
	self defineFloatActionTo: map.
	self defineDoubleActionTo: map.
	self defineUnsignedIntegerActionTo: map.
	self defineIntegerActionTo: map.
	self defineBinBytesActionTo: map.
	self defineStrBytesActionTo: map.
	! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/12/2013 00:14'!
defineStrBytesActionTo: map
	map at: MpConstants str8 put: #readStr8.
	map at: MpConstants str16 put: #readStr16.
	map at: MpConstants str32 put: #readStr32.! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:43'!
defineTrueActionTo: map
	map at: MpConstants true put: #readTrue! !

!MpDecodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/30/2011 22:46'!
defineUnsignedIntegerActionTo: map
	map at: MpConstants uint8 put: #readUint8.
	map at: MpConstants uint16 put: #readUint16.
	map at: MpConstants uint32 put: #readUint32.
	map at: MpConstants uint64 put: #readUint64.! !

!MpDecodeTypeMapper class methodsFor: 'instance creation' stamp: 'mu 11/20/2011 16:50'!
on: mpDecoder 
	^ self new decoder: mpDecoder;
		 initActionMaps;
		 yourself! !

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 8/19/2013 00:59'!
bytesAsRaw
	"For older MP specification"
	self actionMap at: ByteArray put: #writeRawBytes:.
! !

!MpEncodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
encoder
	"Answer the value of encoder"

	^ encoder! !

!MpEncodeTypeMapper methodsFor: 'accessing' stamp: 'mu 4/29/2011 15:15'!
encoder: anObject
	"Set the value of encoder"

	encoder := anObject! !

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 5/2/2012 12:19'!
stringAsBytes
	self actionMap at: String put: #writeString:! !

!MpEncodeTypeMapper methodsFor: 'encode customization' stamp: 'mu 8/19/2013 01:31'!
stringAsError
	"For older MP specification"! !

!MpEncodeTypeMapper methodsFor: 'actions' stamp: 'MasashiUmezawa 2/1/2013 23:52'!
writeObject: anObject ifNotApplied: aBlock 
	| actionSelector |
	actionMap
		ifNotNil: [actionSelector := self actionMap at: anObject class ifAbsent: [].
			actionSelector ifNotNil: [^ self encoder perform: actionSelector with: anObject]].
		
	actionSelector := anObject mpWriteSelector.
	actionSelector ifNil: [
		actionSelector := self defaultActionMap at: anObject class ifAbsent: [^ self encoder writeUnknown: anObject withHandler: aBlock ]
	].
	^ self encoder perform: actionSelector with: anObject! !

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 23:25'!
defineArrayActionTo: map
	map at: Array put: #writeArray:.! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/19/2013 00:17'!
defineBinBytesActionTo: map
	map at: ByteArray put: #writeBinBytes:! !

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 22:38'!
defineCompoundsActionsTo: map
	self defineArrayActionTo: map.
	self defineMapActionTo: map.
	! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:11'!
defineDoubleActionTo: map
	"Some dialect does not support Double"
	"map at: Double put: #writeDouble:"! !

!MpEncodeTypeMapper class methodsFor: 'actions for exts' stamp: 'mu 11/5/2013 00:15'!
defineExtsActionsTo: map
	map at: MpExtValue put: #writeExt:.
	map at: MpFixextValue put: #writeFixext:! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineFalseActionTo: map
	map at: False put: #writeFalse:! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 23:12'!
defineFloatActionTo: map
	"Suppose 32 bit float - Some dialect does not support it"
	"map at: Float put: #writeFloat:"! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineIntegerActionTo: map
	Integer allSubclasses do: [:each |
		map at: each put: #writeInteger:
	]! !

!MpEncodeTypeMapper class methodsFor: 'actions for compounds' stamp: 'mu 4/29/2011 23:29'!
defineMapActionTo: map	
	map at: Dictionary put: #writeMap:.
	"map at: IdentityDictionary put: #writeDictionary:"
	
	! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineNilActionTo: map
	map at: UndefinedObject put: #writeNil:! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/18/2013 23:55'!
definePrimitivesActionsTo: map
	self defineNilActionTo: map.
	self defineTrueActionTo: map.
	self defineFalseActionTo: map.
	self defineIntegerActionTo: map.
	self defineFloatActionTo: map.
	self defineDoubleActionTo: map.
	self defineBinBytesActionTo: map.
	self defineStrBytesActionTo: map.! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 8/19/2013 00:25'!
defineStrBytesActionTo: map
	map at: String put: #writeStrBytes:! !

!MpEncodeTypeMapper class methodsFor: 'actions for primitives' stamp: 'mu 4/29/2011 15:15'!
defineTrueActionTo: map
	map at: True put: #writeTrue:! !

!MpEncodeTypeMapper class methodsFor: 'instance creation' stamp: 'mu 10/10/2011 17:27'!
on: mpEncoder 
	^ self new encoder: mpEncoder;
		 initActionMaps;
		 yourself! !
MpPortableUtil initialize!
MpTypeMapper initialize!
