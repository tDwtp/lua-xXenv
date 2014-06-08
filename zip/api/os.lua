--[[-----------------------------------------------------------------------------
 Operating System Facilities.
 This library is implemented through table os. 
 @module os
]]

--[[-----------------------------------------------------------------------------
 Returns an approximation of the amount in seconds of CPU time used by
 the program.
 @function [parent=#os] clock
 @return #number the amount in seconds of CPU time used by
 the program.
]]

--[[-----------------------------------------------------------------------------
 Returns a string or a table containing date and time, formatted according
 to the given string `format`.

 If the `time` argument is present, this is the time to be formatted
 (see the `os.time` function for a description of this value). Otherwise,
 `date` formats the current time.

 If `format` starts with '`!`', then the date is formatted in Coordinated
 Universal Time. After this optional character, if `format` is the string
 "`*t`", then `date` returns a table with the following fields:

   * `year` (four digits)
   * `month` (1--12)
   * `day` (1--31)
   * `hour` (0--23)
   * `min` (0--59)
   * `sec` (0--61)
   * `wday` (weekday, Sunday is 1)
   * `yday` (day of the year)
   * `isdst` (daylight saving flag, a boolean).

 If `format` is not "`*t`", then `date` returns the date as a string,
 formatted according to the same rules as the C function `strftime`.
 When called without arguments, `date` returns a reasonable date and time
 representation that depends on the host system and on the current locale
 (that is, `os.date()` is equivalent to `os.date("%c")`).
 @function [parent=#os] date
 @param #string format format of date. (optional)
 @param #number time time to format. (default value is current time) 
 @return #string a formatted string representation of `time`. 
]]

--[[-----------------------------------------------------------------------------
 Returns the number of seconds from time `t1` to time `t2`. In POSIX,
 Windows, and some other systems, this value is exactly `t2`*-*`t1`.
 @function [parent=#os] difftime
 @param #number t2
 @param #number t1 
 @return #number the number of seconds from time `t1` to time `t2`.
]]

--[[-----------------------------------------------------------------------------
 This function is equivalent to the C function `system`. It passes
 `command` to be executed by an operating system shell. It returns a status
 code, which is system-dependent. If `command` is absent, then it returns
 nonzero if a shell is available and zero otherwise.
 @function [parent=#os] execute
 @param #string command command to be executed.
 @return A status code which is system-dependent.
]]

--[[-----------------------------------------------------------------------------
 Calls the C function `exit`, with an optional `code`, to terminate the
 host program. The default value for `code` is the success code.
 @function [parent=#os] exit
 @param #number code an exit code. (default is the success code)
]]

--[[-----------------------------------------------------------------------------
 Returns the value of the process environment variable `varname`, or
 nil if the variable is not defined.
 @function [parent=#os] getenv
 @param #string varname an environment variable name.  
 @return The value of the process environment variable `varname`, or
 nil if the variable is not defined.
]]

--[[-----------------------------------------------------------------------------
 Deletes the file or directory with the given name. Directories must be
 empty to be removed. If this function fails, it returns nil, plus a string
 describing the error.
 @function [parent=#os] remove
 @param filename the path to the file or directory to delete.
 @return #nil, #string an error message if it failed.
]]

--[[-----------------------------------------------------------------------------
 Renames file or directory named `oldname` to `newname`. If this function
 fails, it returns nil, plus a string describing the error.
 @function [parent=#os] rename
 @param oldname the path to the file or directory to rename.
 @param newname the new path.
 @return #nil, #string an error message if it failed.
]]

--[[-----------------------------------------------------------------------------
 Sets the current locale of the program. `locale` is a string specifying
 a locale; `category` is an optional string describing which category to
 change: `"all"`, `"collate"`, `"ctype"`, `"monetary"`, `"numeric"`, or
 `"time"`; the default category is `"all"`. The function returns the name
 of the new locale, or nil if the request cannot be honored.
 
 If `locale` is the empty string, the current locale is set to an
 implementation-defined native locale. If `locale` is the string "`C`",
 the current locale is set to the standard C locale.
 
 When called with nil as the first argument, this function only returns
 the name of the current locale for the given category.
 @function [parent=#os] setlocale
 @param #string locale a string specifying a locale.
 @param #string category `"all"`, `"collate"`, `"ctype"`, `"monetary"`, `"numeric"`, or
 `"time"`; the default category is `"all"`.
 @return #string the current locale.
]]

--[[-----------------------------------------------------------------------------
 Returns the current time when called without arguments, or a time
 representing the date and time specified by the given table. This table
 must have fields `year`, `month`, and `day`, and may have fields `hour`,
 `min`, `sec`, and `isdst` (for a description of these fields, see the
 `os.date` function).
 
 The returned value is a number, whose meaning depends on your system. In
 POSIX, Windows, and some other systems, this number counts the number
 of seconds since some given start time (the "epoch"). In other systems,
 the meaning is not specified, and the number returned by `time` can be
 used only as an argument to `date` and `difftime`.
 @function [parent=#os] time
 @param #table table a table which describes a date.
 @return #number a number meaning a date.
]]

--[[-----------------------------------------------------------------------------
 Returns a string with a file name that can be used for a temporary
 file. The file must be explicitly opened before its use and explicitly
 removed when no longer needed.
 
 On some systems (POSIX), this function also creates a file with that
 name, to avoid security risks. (Someone else might create the file with
 wrong permissions in the time between getting the name and creating the
 file.) You still have to open the file to use it and to remove it (even
 if you do not use it).
 
 When possible, you may prefer to use `io.tmpfile`, which automatically
 removes the file when the program ends.
 @function [parent=#os] tmpname
 @return #string a string with a file name that can be used for a temporary file.
]]

--[[-----------------------------------------------------------------------------
 Get an environment value.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] getenv
 @param #string name name of the environment value
 @return the environment value (as #string)
]]

--[[-----------------------------------------------------------------------------
 Set/modify an environment value.
 If #nil is used as value it will remove that environment value.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] setenv
 @param #string name name of the environment value
 @param #string value the value of the environment value
]]

--[[-----------------------------------------------------------------------------
 Get a #table containing all environment values.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] environ
 @return #table a copy of the environment 
]]

--[[-----------------------------------------------------------------------------
 Change working directory.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] chdir
 @param #string pathname directory to change to
]]

--[[-----------------------------------------------------------------------------
 Create a directory.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] mkdir
 @param #string dir the directory to create
]]

--[[-----------------------------------------------------------------------------
 Remove a file or directory.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] remove
 @param #string pathname the file/directory to remove
]]

--[[-----------------------------------------------------------------------------
 Get working directory path.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] currentdir
 @usage pathname = os.currentdir()
]]

--[[-----------------------------------------------------------------------------
 Get an iterator for 'pathname'.
 Special directory entries such as "." and ".." are not returned.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] dir
 @param #string pathname directory to get the iterator for; if midsing the current working directory will be used
 @return #function a function like the next-function for iterating in a for-loop
 @usage for entry in os.dir(pathname) do ; end
]]

--[[-----------------------------------------------------------------------------
 Gets information about a directory entry via pathname or open file.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] dirent
 @param path_file a #string containing a path to directory or a @{io#file} handle
 @return #table containing name, size and type information {type=#string,size=#number,name=#string}
]]

--[[-----------------------------------------------------------------------------
 Suspends program execution for interval/unit seconds;
 'unit' defaults to 1 and either argument can be floating point.
 The particular sub-second precision is implementation-defined.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] sleep
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
 An implementation may provide special behavior if a zeroth argument
 (options.args[0] or options[0]) is provided. <br />
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#os] spawn
 @param param a #string containing the program name or #table of the format given above
]]

--[[-----------------------------------------------------------------------------
 A userdatum to get the exitcode returned by @{#os.spawn}
 <br /> <b>_NOTE:_</b> this type is only usable if you required @{ex} first.
 @type #proc
]]

--[[-----------------------------------------------------------------------------
 Wait for child process termination.
 <br /> <b>_NOTE:_</b> this function is only usable if you required @{ex} first.
 @function [parent=#proc] wait
 @param self
 @return #number the exitcode of the @{#proc}
 @usage exitcode = proc:wait()
 @return @{ex#proc} a userdatum of the #proc type. (so the "programm" itself)
]]

return nil
