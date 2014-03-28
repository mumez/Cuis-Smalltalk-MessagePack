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
atRandom: integer

!MpTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:42'!
collectionEquals: aCollection with: otherCollection

!MpTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:09'!
newCollection: aCollectionClass sized: size withAll: elem

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:45'!
complexArraysArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:44'!
complexCollectionSizes

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:56'!
complexMapsArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:10'!
createArraySized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 8/25/2013 23:44'!
createByteStringSized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:11'!
createComplexArraySized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:11'!
createComplexMapSized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 14:49'!
createExtSized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 15:31'!
createFixExtSized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:14'!
createRawBytesSized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 6/23/2011 12:12'!
createSimpleArraySized: size

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:53'!
createSimpleMapSized: size

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 22:36'!
floatsArray

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 21:20'!
integersArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 22:49'!
mapSizes

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:12'!
rawBytesArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:13'!
rawBytesSizes

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 14:55'!
rawExtValueArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 12/8/2013 15:25'!
rawFixExtValueArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 8/25/2013 23:44'!
rawStringArray

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:45'!
simpleArraysArray

!MpPackUnpackTestCase methodsFor: 'private' stamp: 'mu 5/1/2011 23:45'!
simpleCollectionSizes

!MpPackUnpackTestCase methodsFor: 'fixtures' stamp: 'mu 5/1/2011 23:50'!
simpleMapsArray

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackArray

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/25/2013 23:22'!
testPackUnpackBinBytes

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackComplexArray

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:43'!
testPackUnpackComplexMap

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 12/8/2013 15:27'!
testPackUnpackExt

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:39'!
testPackUnpackFalse

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 12/8/2013 15:27'!
testPackUnpackFixExt

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:43'!
testPackUnpackFloatingPoint

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:33'!
testPackUnpackInteger

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 6/23/2011 12:44'!
testPackUnpackMap

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:38'!
testPackUnpackNil

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/26/2013 00:09'!
testPackUnpackRawBytes

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/25/2013 23:49'!
testPackUnpackStrBytes

!MpPackUnpackTestCase methodsFor: 'testing' stamp: 'mu 5/1/2011 21:39'!
testPackUnpackTrue

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:59'!
arrayWithNil

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:58'!
arrayWithUnknown

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:50'!
complexDictionaryAfterConverted

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:28'!
complexIdentityDictionary

!MpSettingsTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:20'!
createStringSized: size

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:01'!
dictionaryWithNil

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:02'!
dictionaryWithUnknown

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:19'!
simpleIdentityDictionary

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 20:47'!
simpleString

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:16'!
simpleStringContainedArray

!MpSettingsTestCase methodsFor: 'private' stamp: 'MasashiUmezawa 2/2/2013 21:13'!
stringSizes

!MpSettingsTestCase methodsFor: 'fixtures' stamp: 'MasashiUmezawa 2/2/2013 21:17'!
stringsArray

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:17'!
testPackStringArrayAsArrayOfBytes

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 20:56'!
testPackStringAsBytes

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:03'!
testPackUnknownContainedArray

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:07'!
testPackUnknownContainedDictionary

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:50'!
testPackUnpackComplexIdentityDictionary

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:35'!
testPackUnpackSimpleIdentityDictionary

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 21:21'!
testPackUnpackStrings

!MpSettingsTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 2/2/2013 22:00'!
testUnpackBytesAsString

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:17'!
encodeRandomBin16: size

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:17'!
encodeRandomBin32: size

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 01:14'!
encodeRandomBin8: size

!MpStringUnpackTestCase methodsFor: 'private' stamp: 'mu 8/12/2013 00:27'!
encodeString8: aString

!MpStringUnpackTestCase methodsFor: 'testing' stamp: 'mu 8/12/2013 01:16'!
testUnpackBinFamilyBytes

!MpStringUnpackTestCase methodsFor: 'testing' stamp: 'MasashiUmezawa 10/15/2013 01:04'!
testUnpackString8