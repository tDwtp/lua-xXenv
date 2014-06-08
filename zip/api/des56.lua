--[[-----------------------------------------------------------------------------
 Provides the DES-based functions.
 @module des56
 @usage require("des56")
 @usage local des56 = require("des56")
]]

--[[-----------------------------------------------------------------------------
 Encrypts a string, using DES with a 56-bit key.
 @function [parent=#des56] crypt
 @param #string message an arbitrary binary string to be encrypted
 @param #string key an 8-byte binary string to be used as a key
 @return #string the cyphertext (binary string)
]]

--[[-----------------------------------------------------------------------------
 Decrypts a string.
 The input message must be the result of a previous call to @{#des56.crypt}.
 For any msg and key, we have that
 'des56.decrypt(des56.crypt(msg, key), key) == msg'
 @function [parent=#des56] decrypt
 @param #string message an arbitrary binary cyphertext to be decrypted
 @param #string key key for en-/decryption
 @return #string the decrypted text (binary string)
]]

return nil
