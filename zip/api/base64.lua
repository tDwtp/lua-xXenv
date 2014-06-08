--[[-----------------------------------------------------------------------------
 A basic library to en-/decode binary strings with base64.
 @module base64
 @usage require("base64")
 @usage local base64 = require("base64")
]]

--[[-----------------------------------------------------------------------------
 Contains the name of this library, the Lua-version it was made for and when it was compiled
 @field [parent=#base64] #string version
]]

--[[-----------------------------------------------------------------------------
 This function is used to encode any binary #string with base64.
 @function [parent=#base64] encode
 @param #string message binary #string to encode with base64
 @return #string encoded ciphertext
]]

--[[-----------------------------------------------------------------------------
 This function is used to decode a cipher #string with base64.
 @function [parent=#base64] decode
 @param #string message cipher #string to decode with base64
 @return #string decoded message
]]

return nil
