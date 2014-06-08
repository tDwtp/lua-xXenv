hay,

just download xXenv-5.1.zip if you want to use it
rest:

luadocumentoring wx: (awesome name huh)

if you use the normal luadocumentor, there will be an awesome error saying
there is to much to unpack, you can easily fix that, through editing the file
'lexer.lua' inside '{luadocumentor_dir}\metalua\grammar'.
in the function 'M.new_comment(lines)' (line 170) instead of the default return-
line 'return setmetatable({ lineinfo=lineinfo, unpack(lines) }, MT.comment)'
write:
[=[
    local tt = { lineinfo=lineinfo }
    for k,v in pairs(lines) do tt[k] = v end
    return setmetatable(tt, MT.comment)
]=]

DO NOT (DO FUCKING NOT) EDIT THE FILES
'wx.lua', 'wxaui.lua', 'wxstc.lua', wxlua.lua',
'wx.html', 'wxaui.html', 'wxstc.html' or wxlua.html'
THEY WILL BE RESET UNTIL I FOUND A SOLUTION FOR THE DERIVATION AND CONSTRUCTORS
THESE ARE GENERATED (NOT ONLY THROUGH THE LUADOCUMENTOR)
_DO_ _NOT_ _EDIT_ _THEM_ _!!!_

if somebody can tell me where to get the licenses for the stuff i couldn't
find the licenses, tell me...