--[[-----------------------------------------------------------------------------
 MD5 offers basic cryptographic facilities for Lua 5.1.
 It offers a hash (digest) function, a pair crypt/decrypt based on MD5 and
 CFB, and a pair crypt/decrypt based on DES with 56-bit keys.
 @module md5
 @usage require("md5")
 @usage local md5 = require("md5")
]]

--[[-----------------------------------------------------------------------------
 This function takes as input a message of arbitrary length and content and
 returns as output a 128-bit "fingerprint" (or "message digest") of the
 input. The output is formated as a binary string with 16 characters. It is
 conjectured that it is computationally infeasible to produce two messages
 having the same message digest, or to produce any message having a given
 pre-specified target message digest. (see RFC 1321) 
 @function [parent=#md5] sum 
 @param #string message the message to hash 
 @return #string the hash of the message (binary string)
]]

--[[-----------------------------------------------------------------------------
 This function takes as input a message of arbitrary length and content and
 returns as output a 128-bit "fingerprint" (or "message digest") of the
 input. The output is formated as a binary string with 16 characters. It is
 conjectured that it is computationally infeasible to produce two messages
 having the same message digest, or to produce any message having a given
 pre-specified target message digest. (see RFC 1321)
 @function [parent=#md5] sumhexa
 @param #string message the message to hash
 @return #string the hash of the message (string of hexdigits)
]]

--[[-----------------------------------------------------------------------------
 Encrypts a string, using MD5 in CFB (Cipher-feedback mode). message is an
 arbitrary binary string to be encrypted. key is an arbitrary binary string
 to be used as a key. seed is an arbitrary binary string to be used as a
 seed; Returns the cyphertext (as a binary string).
 If no seed is provided, the function uses the result of os.time() as a seed. It is recommended that you use different seeds for each message; the seed itself is not private, and should contain no private data, because it goes plain in the beginning of the encrypted message.
 The length of the cyphertext is the length of the message plus the length of the seed plus one. 
 @function [parent=#md5] crypt 
 @param #string message an arbitrary binary string to be encrypted
 @param #string key an arbitrary binary string to be used as a key
 @param #string seed an arbitrary binary string to be used as a seed; if not defined, os.time() will be used.
 @return #string the cyphertext (binary string)
]]

--[[-----------------------------------------------------------------------------
 Decrypts a string.
 The input message must be the result of a previous call to @{#md5.crypt}.
 For any msg, key, and seed, we have that...
 'md5.decrypt(md5.crypt(msg, key, seed), key) == msg'
 @function [parent=#md5] decrypt 
 @param #string message an arbitrary binary message to be encrypted
 @param #string key key for en-/decryption
 @return #string the cyphertext (binary string)
]]

--[[-----------------------------------------------------------------------------
 Does a bit-a-bit exclusive or of strings s1 and s2.
 Both strings must have the same length, which will be also the length of
 the resulting string. 
 @function [parent=#md5] exor
 @param #string s1 first string parameter
 @param #string s2 second string parameter
 @return #string exclusiv or of both strings
]]

--[[-----------------------------------------------------------------------------
 Contains a description of this module.
 @field [parent=#md5] #string _DESCRIPTION
]]

--[[-----------------------------------------------------------------------------
 Contains the name of this module.
 @field [parent=#md5] #string _NAME
]]

--[[-----------------------------------------------------------------------------
 Contains the copyright informations of this module.
 @field [parent=#md5] #string _COPYRIGHT
]]

--[[-----------------------------------------------------------------------------
 Contains the MD5 version of this module.
 @field [parent=#md5] #string _VERSION
]]

return nil
