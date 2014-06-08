--[[-----------------------------------------------------------------------------
 
 
 @module wxlua
 @usage require("wx")
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxlua] #wxLuaObject 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaObject] wxLuaObject
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaObject] delete
 @param #wxLuaObject arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaObject] GetAllocationFlag
 @param #wxLuaObject arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaObject] SetObject
 @param #wxLuaObject arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaObject] GetObject
 @param #wxLuaObject arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxlua] #wxLuaState 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaState] delete
 @param #wxLuaState arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxlua] #wxLuaDebuggerServer 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] KillDebuggee
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] wxLuaDebuggerServer
 @param #number arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] GetDebuggeeProcessId
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] Step
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] AddBreakPoint
 @param #wxLuaDebuggerServer arg1 
 @param #string arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] Continue
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] StartClient
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] GetProgramName
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] delete
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] StopServer
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] DisplayStackDialog
 @param #wxLuaDebuggerServer arg1 
 @param #wxWindow arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] Run
 @param #wxLuaDebuggerServer arg1 
 @param #string arg2 
 @param #string arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] Break
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] StepOut
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] GetNetworkName
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] StepOver
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] StartServer
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] ClearAllBreakPoints
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] RemoveBreakPoint
 @param #wxLuaDebuggerServer arg1 
 @param #string arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] Reset
 @param #wxLuaDebuggerServer arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerServer] EvaluateExpr
 @param #wxLuaDebuggerServer arg1 
 @param #number arg2 
 @param #string arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxlua] #wxLuaDebuggerEvent 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerEvent] GetReference
 @param #wxLuaDebuggerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerEvent] GetMessage
 @param #wxLuaDebuggerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerEvent] GetFileName
 @param #wxLuaDebuggerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerEvent] GetLineNumber
 @param #wxLuaDebuggerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxLuaDebuggerEvent] delete
 @param #wxLuaDebuggerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] CompileLuaScript
 @param #string arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetTrackedWinDestroyCallbackInfo
 @param #boolean arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetTrackedWindowInfo
 @param #boolean arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] LuaStackDialog
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] type
 @param #lightuserdata arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetGCUserdataInfo
 @param #boolean arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetBindings
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] isgcobject
 @param #lightuserdata arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetTrackedObjectInfo
 @param #boolean arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] wxLUA_CHECK_VERSION
 @param #number arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] typename
 @param #number arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] iswxluatype
 @param #number arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] GetTrackedEventCallbackInfo
 @param #boolean arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] ungcobject
 @param #lightuserdata arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] isrefed
 @param #lightuserdata arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] wxLUA_CHECK_VERSION_FULL
 @param #number arg1 
 @param #number arg2 
 @param #number arg3 
 @param #number arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxlua] istrackedobject
 @param #lightuserdata arg1 
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxlua] LUA_TSTRING
]]

--[[-----------------------------------------------------------------------------
 
 value: -1
 @field [parent=#wxlua] LUA_TNONE
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxlua] LUA_TTABLE
]]

--[[-----------------------------------------------------------------------------
 
 value: 7
 @field [parent=#wxlua] WXLUA_TTABLE
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxlua] LUA_TLIGHTUSERDATA
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxlua] WXLUA_TNONE
]]

--[[-----------------------------------------------------------------------------
 
 value: 12
 @field [parent=#wxlua] WXLUA_TCFUNCTION
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxlua] WXLUAMETHOD_CFUNCTION
]]

--[[-----------------------------------------------------------------------------
 
 value: 10
 @field [parent=#wxlua] WXLUA_TTHREAD
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxlua] wxLUAOBJECT_STRING
]]

--[[-----------------------------------------------------------------------------
 
 value: 11
 @field [parent=#wxlua] WXLUA_TINTEGER
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxlua] WXLUA_TNIL
]]

--[[-----------------------------------------------------------------------------
 
 value: 3
 @field [parent=#wxlua] WXLUA_TBOOLEAN
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxlua] WXLUA_TLIGHTUSERDATA
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxlua] wxLUAOBJECT_INT
]]

--[[-----------------------------------------------------------------------------
 
 value: 4096
 @field [parent=#wxlua] WXLUAMETHOD_STATIC
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxlua] wxLUA_SUBRELEASE_NUMBER
]]

--[[-----------------------------------------------------------------------------
 
 value: 7
 @field [parent=#wxlua] LUA_TUSERDATA
]]

--[[-----------------------------------------------------------------------------
 
 value: 6
 @field [parent=#wxlua] WXLUA_TSTRING
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxlua] wxLUA_MAJOR_VERSION
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxlua] WXLUA_TNUMBER
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxlua] WXLUAMETHOD_GETPROP
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxlua] WXLUAMETHOD_CONSTRUCTOR
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxlua] LUA_TNIL
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxlua] LUA_TBOOLEAN
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxlua] wxLUAOBJECT_BOOL
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxlua] WXLUA_TFUNCTION
]]

--[[-----------------------------------------------------------------------------
 
 value: 3
 @field [parent=#wxlua] LUA_TNUMBER
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxlua] wxLUA_MINOR_VERSION
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxlua] WXLUAMETHOD_METHOD
]]

--[[-----------------------------------------------------------------------------
 
 value: 7
 @field [parent=#wxlua] wxLUA_RELEASE_NUMBER
]]

--[[-----------------------------------------------------------------------------
 
 value: 6
 @field [parent=#wxlua] LUA_TFUNCTION
]]

--[[-----------------------------------------------------------------------------
 
 value: 8192
 @field [parent=#wxlua] WXLUAMETHOD_DELETE
]]

--[[-----------------------------------------------------------------------------
 
 value: 65536
 @field [parent=#wxlua] WXLUAMETHOD_CHECKED_OVERLOAD
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxlua] WXLUAMETHOD_SETPROP
]]

--[[-----------------------------------------------------------------------------
 
 value: 9
 @field [parent=#wxlua] WXLUA_TUSERDATA
]]

--[[-----------------------------------------------------------------------------
 
 value: 12
 @field [parent=#wxlua] WXLUA_T_MAX
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxlua] LUA_TTHREAD
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxlua] wxLUAOBJECT_NONE
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxlua] wxLUAOBJECT_ARRAYINT
]]

--[[-----------------------------------------------------------------------------
 
 value: 'wxLua 2.8.7.0'
 @field [parent=#wxlua] wxLUA_VERSION_STRING
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10329) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_DEBUGGEE_CONNECTED
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10330) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_DEBUGGEE_DISCONNECTED
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10336) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_STACK_ENTRY_ENUM
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10335) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_STACK_ENUM
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10338) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_EVALUATE_EXPR
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10334) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_EXIT
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10337) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_TABLE_ENUM
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10333) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_ERROR
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10332) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_PRINT
]]

--[[-----------------------------------------------------------------------------
 
 event: wxLuaDebuggerEvent(10331) 
 @field [parent=#wxlua] wxEVT_WXLUA_DEBUGGER_BREAK
]]

return nil
