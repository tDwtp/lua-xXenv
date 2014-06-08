--[[---------------------------------------------------------------
 C library providing bitwise operations on fixed-sized bitfields implemented as Lua numbers.
 Has consistent semantics across 16, 32 and 64 bit platforms as
 well as IEEE 754 doubles, int32_t and int64_t lua_Number.
 @module bit
 @usage require("bit")
 @usage local bit = require("bit")
]]

--[[-----------------------------------------------------------------------------
 Normalize number to the numeric range of bit operations (all bit ops use this implicitly)
 @function [parent=#bit] tobit
 @param #number x the number to normalize
 @return #number normalized number
]]

--[[-----------------------------------------------------------------------------
 Convert x to hex with n digits. <br />
 + negative values for n will return uppercase A to F (for 10 to 15) <br />
 + positive values for n will return lowercase a to f (for 10 to 15) <br />
 _default:_ 8
 @function [parent=#bit]
 @param #number x number to normalize
 @param #number n return manipultation as described above
 @return #number 
]]

--[[-----------------------------------------------------------------------------
 bitwise not of x.
 @function [parent=#bit] bnot
 @param #number x number to perform operation on
 @return #number number as the result of the operation
]]

--[[-----------------------------------------------------------------------------
 bitwise and of x1, x2, ...
 @function [parent=#bit] band
 @param #number x1 first number of the operation
 @param #number x2 second number of the operation
 @param #number ... other numbers of the operation
 @return #number number as the result of the operation
]]

--[[-----------------------------------------------------------------------------
 bitwise or of x1, x2, ...
 @function [parent=#bit] bor
 @param #number x1 first number of the operation
 @param #number x2 second number of the operation
 @param #number ... other numbers of the operation
 @return #number number as the result of the operation
]]

--[[-----------------------------------------------------------------------------
 bitwise xor of x1, x2, ...
 @function [parent=#bit] bxor
 @param #number x1 first number of the operation
 @param #number x2 second number of the operation
 @param #number ... other numbers of the operation
 @return #number number as the result of the operation
]]

--[[-----------------------------------------------------------------------------
 left-shift of x by n bits
 @function [parent=#bit] lshift
 @param #number x number to shift
 @param #number n number to shift by
 @return #number the shifted number
]]

--[[-----------------------------------------------------------------------------
 logical right-shift of x by n bits
 @function [parent=#bit] rshift
 @param #number x number to shift
 @param #number n number to shift by
 @return #number the shifted number
]]

--[[-----------------------------------------------------------------------------
 arithmetic right-shift of x by n bits
 @function [parent=#bit] arshift
 @param #number x number to shift
 @param #number n number to shift by
 @return #number the shifted number
]]

--[[-----------------------------------------------------------------------------
 left-rotate of x by n bits
 @function [parent=#bit] rol
 @param #number x number to rotate
 @param #number n number to rotate by
 @return #number the rotated number
]]

--[[-----------------------------------------------------------------------------
 right-rotate of x by n bits
 @function [parent=#bit] ror
 @param #number x number to rotate
 @param #number n number to rotate by
 @return #number the rotated number
]]

--[[-----------------------------------------------------------------------------
 byte-swap of x (little-endian <-> big-endian)
 @function [parent=#bit] bswap
 @param #number x number to swap
 @return #number the swaped number
]]

return nil
