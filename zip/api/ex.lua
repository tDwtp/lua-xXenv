--[[-----------------------------------------------------------------------------
 A recent (Jan 2006) discussion on the mailing list has prompted me to attempt
 to design an extended API which extends the Lua API by adding functions to
 the os and io namespaces. <br />
 This is not a proposal to modify the Lua core, but a design proposal for an
 API which extends the Lua core. This API is meant to provide a more complete
 programming environment for stand-alone Lua programs on today's popular
 operating systems (Windows, MacOSX and POSIX platforms).
 @module ex
 @usage require("ex")
 @usage local ex = require("ex")
]]

--[[-----------------------------------------------------------------------------
 Get an environment value.
 @function [parent=#ex] getenv
 @param #string name name of the environment value
 @return the environment value (as #string)
]]

--[[-----------------------------------------------------------------------------
 Set/modify an environment value.
 If #nil is used as value it will remove that environment value.
 @function [parent=#ex] setenv
 @param #string name name of the environment value
 @param #string value the value of the environment value
]]

--[[-----------------------------------------------------------------------------
 Get a #table containing all environment values.
 @function [parent=#ex] environ
 @return #table a copy of the environment 
]]

--[[-----------------------------------------------------------------------------
 Change working directory.
 @function [parent=#ex] chdir
 @param #string pathname directory to change to
]]

--[[-----------------------------------------------------------------------------
 Create a directory.
 @function [parent=#ex] mkdir
 @param #string dir the directory to create
]]

--[[-----------------------------------------------------------------------------
 Remove a file or directory.
 @function [parent=#ex] remove
 @param #string pathname the file/directory to remove
]]

--[[-----------------------------------------------------------------------------
 Get working directory path .
 @function [parent=#ex] currentdir
 @usage pathname = os.currentdir()
]]

--[[-----------------------------------------------------------------------------
 Get an iterator for 'pathname'.
 Special directory entries such as "." and ".." are not returned. 
 @function [parent=#ex] dir
 @param #string pathname directory to get the iterator for; if midsing the current working directory will be used
 @return #function a function like the next-function for iterating in a for-loop
 @usage for entry in os.dir(pathname) do ; end
]]

--[[-----------------------------------------------------------------------------
 Gets information about a directory entry via pathname or open file.
 @function [parent=#ex] dirent
 @param path_file a #string containing a path to directory or a @{io#file} handle
 @return #table containing name, size and type information {type=#string,size=#number,name=#string}
]]

--[[-----------------------------------------------------------------------------
 Lock or unlock a file or a portion of a file;
 'mode' is either "r" or "w" or "u"; 'offset' and 'length' are optional
 A mode of "r" requests a read lock, "w" requests a write lock, and "u" releases the lock. Note that the locks may be either advisory or mandatory. 
 @function [parent=#ex] lock
 @param file a #string containing path to file or a @{io#file} handle.
 @param #string mode ("r|"w"|"u")
 @param #number offset _(optional)_ offset in the file
 @param #number length buffer length
 @return @{io#file} handle
]]

--[[-----------------------------------------------------------------------------
 Equivalent to @{#ex.lock}(file, "u", offset, length).
 Note that both @{io#file.lock} and @{io#file.unlock} extend the metatable for Lua file objects.
 @function [parent=#ex] unlock
 @param #number offset _(optional)_ offset in the file
 @param #number length _(optional)_ buffer length
]]

--[[-----------------------------------------------------------------------------
 Create a pipe;
 'rd' and 'wr' are Lua file objects
 @function [parent=#ex] pipe
 @usage rd, wr = io.pipe()
]]

--[[-----------------------------------------------------------------------------
 Suspends program execution for interval/unit seconds;
 'unit' defaults to 1 and either argument can be floating point.
 The particular sub-second precision is implementation-defined.
 @function [parent=#ex] sleep
 @param #number sec_interval seconds or interval (if unit is defined) to sleep for
 @param #number unit unit of the interval to sleep for
 @usage os.sleep(3.8) -- sleep for 3.8 seconds
 @usage os.sleep(3800000, 1e6) -- sleep for 3 800 000 microseconds (1e-6/0.00001s = 1 microsecond)
 @usage os.sleep(380, 100) -- sleep for 380 ticks (0.01s = 1 tick)
]]

--[[-----------------------------------------------------------------------------
 Create a child process
 The parameter can be a #string containing the filename of the programm of a
 #table with ont of the following formats: <br />
 + {filename, [args-opts]} <br />
 + {command=filename, [args-opts]} <br />
 <br />
 If the (implementation-defined) pathname is not absolute, the program is
 found through an implementation-defined search method (the PATH environment
 variable on most systems). <br />
 <br />
 If specified, [args-opts] is one or more of the following keys:<br />
 + [1]..[n]= the command line arguments <br />
 + args = an array of command line arguments <br />
 + env = a table of environment variables <br />
 + stdin= stdout= stderr= @{io#file} objects for standard input, output, and error respectively <br />
 <br />
 It is an error if both integer keys and an 'args' key are specified. <br />
 An implementation may provide special behavior if a zeroth argument (options.args[0] or options[0]) is provided. 
 @function [parent=#ex] spawn
 @param param a #string containing the program name or #table of the format given above
 @return #proc a userdatum of the #proc type. (so the "programm" itself)
]]

--[[-----------------------------------------------------------------------------
 A userdatum to get the exitcode returned by @{#ex.spawn}
 @type #proc
]]

--[[-----------------------------------------------------------------------------
 Wait for child process termination.
 @function [parent=#proc] wait
 @param self
 @return #number the exitcode of the @{#proc}
 @usage exitcode = proc:wait()
]]

return nil
