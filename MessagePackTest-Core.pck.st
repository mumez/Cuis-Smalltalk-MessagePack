'From Cuis 4.2 of 25 July 2013 [latest update: #1969] on 26 March 2014 at 2:53:24.278436 pm'!
'Description Please enter a description for this package'!
!provides: 'MessagePackTest-Core' 1 0!
!classDefinition: #MpTestCase category: #'MessagePackTest-Core'!
TestCase subclass: #MpTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePackTest-Core'!
!classDefinition: 'MpTestCase class' category: #'MessagePackTest-Core'!
MpTestCase class
	instanceVariableNames: ''!

!classDefinition: #MpPackUnpackTestCase category: #'MessagePackTest-Core'!
MpTestCase subclass: #MpPackUnpackTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePackTest-Core'!
!classDefinition: 'MpPackUnpackTestCase class' category: #'MessagePackTest-Core'!
MpPackUnpackTestCase class
	instanceVariableNames: ''!

!classDefinition: #MpSettingsTestCase category: #'MessagePackTest-Core'!
MpTestCase subclass: #MpSettingsTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePackTest-Core'!
!classDefinition: 'MpSettingsTestCase class' category: #'MessagePackTest-Core'!
MpSettingsTestCase class
	instanceVariableNames: ''!

!classDefinition: #MpStringUnpackTestCase category: #'MessagePackTest-Core'!
MpTestCase subclass: #MpStringUnpackTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MessagePackTest-Core'!
!classDefinition: 'MpStringUnpackTestCase class' category: #'MessagePackTest-Core'!
MpStringUnpackTestCase class
	instanceVariableNames: ''!


!MpTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:08'!
atRandom: integer	"For portability"	^ (MpPortableUtil default randomClass new next * integer) truncated + 1! !

!MpTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:42'!
collectionEquals: aCollection with: otherCollection	^MpPortableUtil default collectionEquals: aCollection with: otherCollection! !

!MpTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:09'!
newCollection: aCollectionClass sized: size withAll: elem	^MpPortableUtil default newCollection: aCollectionClass sized: size withAll: elem! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:45'!
complexArraysArray	^ self complexCollectionSizes collect: [:each | self createComplexArraySized: each]! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:44'!
complexCollectionSizes	^ #(0 1 31 32) "For avoiding timeout"! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:56'!
complexMapsArray	^ self complexCollectionSizes collect: [:each | self createComplexMapSized: each]! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:10'!
createArraySized: size	| col idx |	col := OrderedCollection withAll: #(true false nil 1 -1 3.14 -3.14).	"col add: (ByteArray new: 100 withAll: 100).	col add: (Array new: 200 withAll: #(2)).	col add: (Dictionary new at: 3 put: 333; yourself)."	idx := self atRandom: col size.	^self newCollection: Array sized: size withAll: (col at: idx)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 8/25/2013 23:44'!
createByteStringSized: size	^ (self createRawBytesSized: size) asString! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:11'!
createComplexArraySized: size	| col dict |	col := OrderedCollection new.	col add: (self newCollection: ByteArray sized: 100 withAll: 100).	col add: (self newCollection: Array sized: 200 withAll: #(2)).	col add: (Dictionary new at: 3 put: 333; yourself).		dict := Dictionary new: size.	1 to: size do: [:idx | dict at: (idx printString asByteArray) put: (self atRandom: col size)].	^dict! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:11'!
createComplexMapSized: size	| col idx |	col := OrderedCollection new.	col add: (self newCollection: ByteArray sized: 100 withAll: 100).	col add: (self newCollection: Array sized: 200 withAll: #(2)).	col add: (Dictionary new at: 3 put: 333; yourself).	idx := self atRandom: col size.	^ Array new: size withAll: (col at: idx)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 14:49'!
createExtSized: size	| data |	data := self createRawBytesSized: size.	^MpExtValue typeCode: 0 data: data	! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 15:31'!
createFixExtSized: size	| data |	data := self createRawBytesSized: size.	^MpFixextValue typeCode: 0 data: data	! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:14'!
createRawBytesSized: size	^ self newCollection: ByteArray sized: size withAll: (self atRandom: 255)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:12'!
createSimpleArraySized: size	| col idx |	col := OrderedCollection withAll: #(true false nil 1 -1 3.14 -3.14).	idx := self atRandom: col size.	^self newCollection: Array sized: size withAll: (col at: idx)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:53'!
createSimpleMapSized: size	| values dic |	values := #(true false nil 1 -1 3.14 -3.14).	dic := Dictionary new: size.	1 to: size do: [:idx | dic at: idx put: (values at: (idx - 1 \\ values size + 1))].	^dic	! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 22:36'!
floatsArray	^ #(3.14159 3.141592653589793)! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 21:20'!
integersArray	^ #(0 1 126 127 -1 -2 -31 -32 -128 -33 -32768 -129 128 32767 -2147483648 -32769 32768 2147483647 -9223372036854775808 -2147483649 2147483648 9223372036854775807 )! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 22:49'!
mapSizes	^ #(0 1 31 32 65535 65536)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:12'!
rawBytesArray	^ self rawBytesSizes collect: [:each | self createRawBytesSized: each]! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:13'!
rawBytesSizes	^ #(0 1 31 32 65535 65536)! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 14:55'!
rawExtValueArray	| exts |	exts := self rawBytesSizes collect: [:each | self createExtSized: each].	1 to: exts size do: [:idx | (exts at: idx) typeCode: idx].	^exts! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 15:25'!
rawFixExtValueArray	| sizes exts |	sizes := #(1 2 4 8 16).	exts := sizes collect: [:each | self createFixExtSized: each].	1 to: exts size do: [:idx | (exts at: idx) typeCode: idx].	^exts! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 8/25/2013 23:44'!
rawStringArray	^ self rawBytesSizes collect: [:each | self createByteStringSized: each]! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:45'!
simpleArraysArray	^ self simpleCollectionSizes collect: [:each | self createSimpleArraySized: each]! !

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:45'!
simpleCollectionSizes	^ #(0 1 31 32 65535 65536)! !

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:50'!
simpleMapsArray	^ self simpleCollectionSizes collect: [:each | self createSimpleMapSized: each]! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackArray	"self debug: #testPackUnpackArray"	self simpleArraysArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked with: each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/25/2013 23:22'!
testPackUnpackBinBytes	"self debug: #testPackUnpackBinBytes"	self rawBytesArray do: [:each | | packed unpacked |		packed := each messagePacked: [:settings | settings formatVersion: 2013].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked with: each].	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackComplexArray	"self debug: #testPackUnpackComplexArray"	self complexArraysArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked with: each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackComplexMap	"self debug: #testPackUnpackComplexMap"	self simpleMapsArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked with: each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 12/8/2013 15:27'!
testPackUnpackExt	"self debug: #testPackUnpackExt"	self rawExtValueArray do: [:each | | packed unpacked |		packed := each messagePacked: [:settings | settings formatVersion: 2013].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [unpacked isMemberOf: MpExtValue].		self should: [each typeCode = unpacked typeCode].		self should: [self collectionEquals: unpacked data with: each data].	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:39'!
testPackUnpackFalse	"self debug: #testPackUnpackFalse"	| packed unpacked |	packed := false messagePacked.	self should: [packed isMemberOf: ByteArray].	self should: [packed = (ByteArray with: MpConstants false)].	unpacked := Object fromMessagePack: packed.	self should: [unpacked = false]						! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 12/8/2013 15:27'!
testPackUnpackFixExt	"self debug: #testPackUnpackFixExt"	self rawFixExtValueArray do: [:each | | packed unpacked |		packed := each messagePacked: [:settings | settings formatVersion: 2013].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [unpacked isMemberOf: MpFixextValue].		self should: [each typeCode = unpacked typeCode].		self should: [self collectionEquals: unpacked data with: each data].	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:43'!
testPackUnpackFloatingPoint	"self debug: #testPackUnpackFloatingPoint"	self floatsArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [unpacked = each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:33'!
testPackUnpackInteger	"self debug: #testPackUnpackInteger"	self integersArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [unpacked = each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:44'!
testPackUnpackMap	"self debug: #testPackUnpackMap"	self simpleMapsArray do: [:each | | packed unpacked |		packed := each messagePacked.		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked with: each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:38'!
testPackUnpackNil	"self debug: #testPackUnpackNil"	| packed unpacked |	packed := nil messagePacked.	self should: [packed isMemberOf: ByteArray].	self should: [packed = (ByteArray with: MpConstants nil)].	unpacked := Object fromMessagePack: packed.	self should: [unpacked = nil]						! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/26/2013 00:09'!
testPackUnpackRawBytes	"self debug: #testPackUnpackRawBytes"	self rawBytesArray do: [:each | | packed unpacked |		packed := each messagePacked: [:settings | settings formatVersion: 2008].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked asByteArray with: each].		unpacked := Object fromMessagePack: packed setting: [:settings | settings formatVersion: 2008].		self should: [self collectionEquals: unpacked with: each]	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/25/2013 23:49'!
testPackUnpackStrBytes	"self debug: #testPackUnpackStrBytes"	self rawStringArray do: [:each | | packed unpacked |		packed := each messagePacked: [:settings | settings formatVersion: 2013].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed setting: [:settings | settings formatVersion: 2013].		self should: [unpacked = each].	]					! !

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:39'!
testPackUnpackTrue	"self debug: #testPackUnpackTrue"	| packed unpacked |	packed := true messagePacked.	self should: [packed isMemberOf: ByteArray].	self should: [packed = (ByteArray with: MpConstants true)].	unpacked := Object fromMessagePack: packed.	self should: [unpacked = true]						! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:59'!
arrayWithNil	^ Array with: nil with: 2! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:58'!
arrayWithUnknown	^ Array with: Date today with: 2! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:50'!
complexDictionaryAfterConverted	| dic dicIn|	dic := Dictionary new.	dicIn := Dictionary new.		self simpleIdentityDictionary keysAndValuesDo: [:k :v | dicIn at:  (MpPortableUtil default bytesFromString: k) put: (MpPortableUtil default bytesFromString: v)].		dic at: (MpPortableUtil default bytesFromString: #key1) put: (MpPortableUtil default bytesFromString: 'aaa').	dic at: (MpPortableUtil default bytesFromString: #key2) put: dicIn.	^dic! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:28'!
complexIdentityDictionary	| dic |	dic := IdentityDictionary new.	dic at: #key1 put: 'aaa'.	dic at: #key2 put: self simpleIdentityDictionary.	^dic! !

!MpSettingsTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:20'!
createStringSized: size	^ self newCollection: String sized: size withAll: (Character value: (self atRandom: 255))! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:01'!
dictionaryWithNil	| dic |	dic := Dictionary new.	dic at: 'key1' put: nil.	dic at: 'key2' put: 'bbb'.	^dic! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:02'!
dictionaryWithUnknown	| dic |	dic := Dictionary new.	dic at: 'key1' put: Time now.	dic at: 'key2' put: 'bbb'.	^dic! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:19'!
simpleIdentityDictionary	| dic |	dic := IdentityDictionary new.	dic at: #key1 put: 'aaa'.	dic at: #key2 put: 'bbb'.	^dic! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:47'!
simpleString	^'This is a test'! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:16'!
simpleStringContainedArray	^ #('this' 'is' 'a' 'test')! !

!MpSettingsTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:13'!
stringSizes	^ #(0 1 31 32 65535 65536)! !

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:17'!
stringsArray	^ self stringSizes collect: [:each | self createStringSized: each]! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:17'!
testPackStringArrayAsArrayOfBytes	"self debug: #testPackStringArrayAsArrayOfBytes"	| bytes |	self should: [self simpleStringContainedArray messagePacked] raise: MpError.		bytes := self simpleStringContainedArray messagePacked: [:settings | settings stringAsBytes: true].		self assert: (bytes = (self simpleStringContainedArray collect: [:each | (MpPortableUtil default bytesFromString: each)]) messagePacked)					! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 20:56'!
testPackStringAsBytes	"self debug: #testPackStringAsBytes"	| bytes |	self should: [self simpleString messagePacked] raise: MpError.		bytes := self simpleString messagePacked: [:settings | settings stringAsBytes: true].		self assert: (bytes = (MpPortableUtil default bytesFromString: self simpleString) messagePacked)					! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:03'!
testPackUnknownContainedArray	"self debug: #testPackUnknownContainedArray"	| bytes |	self should: [self arrayWithUnknown messagePacked] raise: MpError.		bytes := self arrayWithUnknown messagePacked: [:settings | settings encodeMode: #unknownAsNil].			self assert: (bytes = self arrayWithNil messagePacked)! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:07'!
testPackUnknownContainedDictionary	"self debug: #testPackUnknownContainedDictionary"	| bytes |	self should: [self dictionaryWithUnknown messagePacked] raise: MpError.		bytes := self dictionaryWithUnknown messagePacked: [:settings | settings stringAsBytes: true; encodeMode: #unknownAsNil].			self assert: (bytes = (self dictionaryWithNil messagePacked: [:settings | settings stringAsBytes: true]))! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:50'!
testPackUnpackComplexIdentityDictionary	"self debug: #testPackUnpackComplexIdentityDictionary"	| bytes convertedDic unpacked1 unpacked2 |	self should: [self complexIdentityDictionary messagePacked] raise: MpError.		bytes := self complexIdentityDictionary messagePacked: [:se | se stringAsBytes: true; encodeMode: #loose].		convertedDic := self complexDictionaryAfterConverted.		unpacked1 := Object fromMessagePack:  bytes setting: [:se | se bytesAsString: true].	unpacked2 := Object fromMessagePack:  convertedDic messagePacked setting: [:se | se bytesAsString: true].		self should: [self collectionEquals: unpacked1 with: unpacked2]					! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:35'!
testPackUnpackSimpleIdentityDictionary	"self debug: #testPackUnpackSimpleIdentityDictionary"	| bytes convertedDic unpacked1 unpacked2 |	self should: [self simpleIdentityDictionary messagePacked] raise: MpError.		bytes := self simpleIdentityDictionary messagePacked: [:se | se stringAsBytes: true; encodeMode: #loose].		convertedDic := Dictionary new.	self simpleIdentityDictionary keysAndValuesDo: [:k :v | convertedDic at:  (MpPortableUtil default bytesFromString: k) put: (MpPortableUtil default bytesFromString: v)].		unpacked1 := Object fromMessagePack:  bytes setting: [:se | se bytesAsString: true].	unpacked2 := Object fromMessagePack:  convertedDic messagePacked setting: [:se | se bytesAsString: true].		self should: [self collectionEquals: unpacked1 with: unpacked2]					! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:21'!
testPackUnpackStrings	"self debug: #testPackUnpackStrings"	self stringsArray do: [:each | | packed unpacked |		packed := each messagePacked: [:se | se stringAsBytes: true].		self should: [packed isMemberOf: ByteArray].		unpacked := Object fromMessagePack: packed.		self should: [self collectionEquals: unpacked asString with: each]	]! !

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 22:00'!
testUnpackBytesAsString	"self debug: #testUnpackBytesAsString"	| bytes unpackedAsByteArrays unpacked  |	bytes := self simpleStringContainedArray messagePacked: [:se | se stringAsBytes: true].	unpackedAsByteArrays := Object fromMessagePack: bytes.	self assert: (unpackedAsByteArrays = (self simpleStringContainedArray collect: [:each | MpPortableUtil default bytesFromString: each])).		unpacked := Object fromMessagePack: bytes setting: [:se | se bytesAsString: true].	self assert: (unpacked = self simpleStringContainedArray)					! !

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:17'!
encodeRandomBin16: size	| bytes encoded |	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.	encoded := bytes messagePacked at: 1 put: MpConstants bin16; yourself.	^{bytes. encoded}! !

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:17'!
encodeRandomBin32: size	| bytes encoded |	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.	encoded := bytes messagePacked at: 1 put: MpConstants bin32; yourself.	^{bytes. encoded}! !

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:14'!
encodeRandomBin8: size	| bytes encoded |	bytes :=  MpPackUnpackTestCase new createRawBytesSized: size.	encoded := (ByteArray with: MpConstants bin8 with: size), bytes.	^{bytes. encoded}! !

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 00:27'!
encodeString8: aString	| byteStream |	byteStream := WriteStream with: (ByteArray with: MpConstants str8 with: aString size).	byteStream nextPutAll: aString asByteArray.	^ byteStream contents	! !

!MpStringUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/12/2013 01:16'!
testUnpackBinFamilyBytes	"self debug: #testUnpackBinFamilyBytes"	| arr bytes1 encoded1 bytes2 encoded2 bytes3 encoded3 |	arr := self encodeRandomBin8: 130.	bytes1 := arr first.	encoded1 := arr second. 	self assert: (bytes1 = (MpMessagePack unpack: encoded1)).	arr := self encodeRandomBin16: 300.	bytes2 := arr first.	encoded2 := arr second. 	self assert: (bytes2 = (MpMessagePack unpack: encoded2)).	arr := self encodeRandomBin32: 67000.	bytes3 := arr first.	encoded3 := arr second. 	self assert: (bytes3 = (MpMessagePack unpack: encoded3))		! !

!MpStringUnpackTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 10/15/2013 01:04'!
testUnpackString8	"self debug: #testUnpackString8"	| str1 data1 data2 str2 |	str1 := 'hi'.	data1 := self encodeString8: str1.	"self assert: [(MpMessagePack unpack: data1) = str1]." 	self assert: ((Object fromMessagePack: data1 setting: [:se | se formatVersion: 2013]) = str1). "2013 would be default. It is temporary"		str2 := 'Str format family stores an byte array in 1, 2, 3, or 5 bytes of extra bytes in addition to the size of the byte array'.	data2 := self encodeString8: str2.	"self assert: [(MpMessagePack unpack: data2) = str2]"	self assert: ((Object fromMessagePack: data2 setting: [:se | se formatVersion: 2013]) = str2). "2013 would be default. It is temporary"	! !
