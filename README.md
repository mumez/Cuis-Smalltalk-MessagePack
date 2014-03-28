# MessagePack for Cuis #

MessagePack serialization library for various Smalltalk dialects.

For more info, please see the official repository:
[https://github.com/msgpack/msgpack-smalltalk](https://github.com/msgpack/msgpack-smalltalk)

## Installation ##

Assuming Cuis 4.2 or higher.

Copy the 'Cuis-Smalltalk-MessagePack' folder to your Cuis root folder.

Open the workspace, then do it:
````Smalltalk
	Feature require: 'MessagePack-Core'.
	Feature require: 'MessagePack-Cuis-Core'.
	Feature require: 'MessagePackTest-Core'. "optional"
````

If you've installed MessagePackTest-Core, you can open "SUnit Test Runner" and see all-grean results.

## Limitation ##
- Original msgpack-smalltalk supports UTF-8 string serialization/deserialization.
Since Cuis currently only supports Latin-9 string, this feature is disabled. Please use ascii string if you think about interoperability.

- Cuis port is derived from the 'development' branch of msgpack-smalltalk, which includes newer type support (Bin, Str, and Ext). Some newer APIs are liable to change.

Enjoy!
___
Masashi Umezawa

