--[[-----------------------------------------------------------------------------
 LuaSQL provides an database interface for Lua.
 The module has different submodules you can download and install seperately
 via lua-rocks. You cannot require it as it is. (so 'require("luasql")'
 does not work) You have to name the driver you want to use. (e.g.
 'require("luasql.odbc")')
 @module luasql
 @usage require("luasql.odbc")
 @usage require("luasql.oci8")
 @usage require("luasql.mysql")
 @usage require("luasql.postgresql")
 @usage require("luasql.sqlite3")
]]

--[[-----------------------------------------------------------------------------
 An environment object is created by calling the driver's initialization
 function that is stored in the luasql table, indexed with the same name as
 the driver (odbc, postgres etc).
 @type #environment
]]

--[[-----------------------------------------------------------------------------
 Connects to a data source specified in sourcename using username and
 password if they are supplied. The sourcename may vary according to each
 driver. Some use a simple database name, like PostgreSQL, MySQL and SQLite;
 the ODBC driver expects the name of the DSN; the Oracle driver expects the
 service name
 @function [parent=#environment] connect
 @param #string sourcename source (or address) of the connection
 @param #string username _(optional)_ username for the connection
 @param #string password _(optional)_ password of the user
 @param #string hostname _(optional|only for MySQL and PostgreSQL)_ hostname of the database server
 @param #string port _(optional|only for MySQL and PostgreSQL)_ port of the database server
 @return #connection the connection to the given source
]]

--[[-----------------------------------------------------------------------------
 Closes the environment env. Only successful if all connections pertaining
 to it were closed first.
 @function [parent=#environment] close
 @return true in case of success; false when the object is already closed.
]]

--[[-----------------------------------------------------------------------------
 connection object contains specific attributes and parameters of a single
 data source connection. A connection object is created by calling the
 environment:connect method.
 @type #connection
]]

--[[-----------------------------------------------------------------------------
 Closes the connection.
 Only successful if all cursors pertaining to it have been closed and the
 connection is still open.
 @function [parent=#connection] close
 @return #boolean true in case of success; false when already closed.
]]

--[[-----------------------------------------------------------------------------
 Commits the current transaction.
 This feature might not work on database systems that do not implement transactions.
 @function [parent=#connection] commit
 @return #boolean true in case of success; false when the operation could not be performed or when it is not implemented.
]]

--[[-----------------------------------------------------------------------------
 Executes the given SQL statement.
 @function [parent=#connection] execute
 @param #string statement the statement that should be executed
 @return #cursor if there are results, or the number of rows affected by the command otherwise.
]]

--[[-----------------------------------------------------------------------------
 Rolls back the current transaction.
 This feature might not work on database systems that do not implement transactions.
 @function [parent=#connection] rollback 
 @return #boolean true in case of success and false when the operation could not be performed or when it is not implemented.
]]

--[[-----------------------------------------------------------------------------
 Turns on or off the "auto commit" mode.
 This feature might not work on database systems that do not implement
 transactions. On database systems that do not have the concept of
 "auto commit mode", but do implement transactions, this mechanism is
 implemented by the driver.
 @function [parent=#connection] setautocommit
 @param #boolean true for turning the "auto commit" on; false for off
]]

--[[-----------------------------------------------------------------------------
 A cursor object is created by using the connection:execute function.
 A cursor object contains methods to retrieve data resulting from an
 executed statement.
 @type #cursor
]]

--[[-----------------------------------------------------------------------------
 Closes this cursor.
 @function [parent=#cursor] close
 @return #boolean true in case of success; false when already closed.
]]

--[[-----------------------------------------------------------------------------
 Retrieves the next row of results.
 If fetch is called without parameters, the results will be returned
 directly to the caller. If fetch is called with a table, the results will
 be copied into the table and the changed table will be returned. In this
 case, an optional modestring parameter can be used. It is just a string
 indicating how the resulting table should be constructed.
 The numerical indices are the positions of the fields in the SELECT
 statement; the alphanumerical indices are the names of the fields. The
 optional table parameter is a table that should be used to store the next
 row. This allows the use of a unique table for many fetches, which can
 improve the overall performance. There is no guarantee about the types of
 the results: they may or may not be converted to adequate Lua types by the
 driver. In the current implementation, the PostgreSQL and MySQL drivers
 return all values as strings while the ODBC and Oracle drivers convert them
 to Lua types.
 @function [parent=#cursor] fetch
 @param #table table where to save the data
 @param #string mode "n" for numerical table indices (default); "a" for alphanumerical tableindices.
 @return #table data, as above, or nil if there are no more rows. Note that this method could return nil as a valid result.
 @return #nil,#string #nil, errormessage 
]]

--[[-----------------------------------------------------------------------------
 Returns the Column names.
 @function [parent=#cursor] getcolnames
 @return #table a list (table) of column names.
]]

--[[-----------------------------------------------------------------------------
 Returns the column types
 @function [parent=#cursor] getcoltypes 
 @return #table a list (table) of column types.
]]

--[[-----------------------------------------------------------------------------
 Returns the number of rows in the query result.
 The documentation provides, that this funtion is only available at Oracle,
 MySQL and PostgreSQL.
 @function [parent=#cursor] numrows
 @return #table the number of rows in the query result.
]]

--[[-----------------------------------------------------------------------------
 SQLite3 interface
 This submodule of LuaSQL provides anything you need for using local stored
 @function [parent=#luasql] sqlite3
 @return #environment the sqltie3 environment
 @usage require("luasql.splite3")
]]

--[[-----------------------------------------------------------------------------
 ODBC interface
 This submodule of LuaSQL provides anything you need for using ODBC.
 @function [parent=#luasql] odbc 
 @return #environment the odbc environment
 @usage require("luasql.odbc")
]]

--[[-----------------------------------------------------------------------------
 PostgreSQL interface
 This submodule of LuaSQL provides anything you need for using PostgreSQL.
 @function [parent=#luasql] postgresql
 @return #environment the odbc environment
 @usage require("luasql.postgresql")
]]

--[[-----------------------------------------------------------------------------
 Oracle interface
 This submodule of LuaSQL provides anything you need for using OCI8.
 @function [parent=#luasql] oci8
 @return #environment the mysql environment
 @usage require("luasql.oci8")
]]

--[[-----------------------------------------------------------------------------
 MySQL interface
 This submodule of LuaSQL provides anything you need for using MySQL.
 @function [parent=#luasql] mysql
 @return #environment the mysql environment
 @usage require("luasql.mysql")
]]

return nil
