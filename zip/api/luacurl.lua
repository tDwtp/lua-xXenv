--[[-----------------------------------------------------------------------------
 LuaCURL is a module providing Internet browsing capabilities based on the CURL library.
 The module interface follows strictly the CURl architecture and is very
 easy to use if the programmer has already experience with CURL. The only
 LuaCURL luaopen_luacurl public function register itself to the Lua context
 defining a namespace curl with one constructor and some utility functions.
 _COMENT OF THE DOCUMENTOR:_  Its just not well documented... so I played
 around with it. I just can't say if this all is right, but luacurl is
 awful to use! I even appreciate luasocket for this stuff. "(-.-)
 I also would appreciate somebody who can tell me how to use it correctly to
 document it correctly
 @module luacurl
 @usage require("luacurl")
 @usage local curl = require("luacurl")
]]

--[[-----------------------------------------------------------------------------
 Use this function to instantiate curl objects.
 @function [parent=#curl] new
 @return #curlobj the curl-object to perfom your actions on.
]]

--[[-----------------------------------------------------------------------------
 Escapes URL #strings.
 @function [parent=#curl] escape
 @param #string url the url to escape
 @return #curlobj the curl-object to perfom your actions on.
]]

--[[-----------------------------------------------------------------------------
 Unescapes URL encoding in #strings. 
 @function [parent=#curl] unescape
 @param #string url the url to unescape
 @return #curlobj the curl-object to perfom your actions on.
]]

--[[-----------------------------------------------------------------------------
 The current version of luacurl.
 @field [parent=#curl] #string _VERSION
]]

--[[-----------------------------------------------------------------------------
 The supported CURL version of this module.
 @field [parent=#curl] #string _SUPPORTED_CURLVERSION
]]

--[[-----------------------------------------------------------------------------
 The current used CURL version for this module.
 @field [parent=#curl] #string _CURLVERSION
]]

--[[-----------------------------------------------------------------------------
 A description of this module.
 @field [parent=#curl] #string _DESCRIPTION
]]

--[[-----------------------------------------------------------------------------
 Copyright information of this module.
 @field [parent=#curl] #string _COPYRIGHT
]]

--[[-----------------------------------------------------------------------------
 The name of this module.
 @field [parent=#curl] #string _NAME
]]

--[[-----------------------------------------------------------------------------
 The CURL-object to used for curl-actions and settings
 @type #curlobj
]]

--[[-----------------------------------------------------------------------------
 Sets options for the @{#curlobj} to be used on the @{#curlobj.perform} function.
 @function [parent=#curlobj] setopt
 @param #number option A field of the curl module (e.g. @{#curl.OPT_AUTOREFERER})
 @param ... parameter for the option (See the curl.OPT_??? fields for more information)
 @return optional return. They will be given in the OPT_??? descriptions.
]]

--[[-----------------------------------------------------------------------------
 Get informations for the @{#curlobj}.
 @function [parent=#curlobj] getinfo
 @param #number info infofield of @{#curl} (curl.INFO_???) (e.g. @{#curl.INFO_CONNECT_TIME})
 @return the information
]]

--[[-----------------------------------------------------------------------------
 Call this method to perform a file transfer after all @{#curlobj.setopt} calls are made.
 @function [parent=#curlobj] perform
]]

--[[-----------------------------------------------------------------------------
 This function closes a curl connection created by @{#curl.new}
 @function [parent=#curlobj] close
]]

--[[-- CALL BACK OPTIONS
--
]]

--[[0
]]

--[[-----------------------------------------------------------------------------
 This function gets called by libcurl as soon as it needs to read data in
 order to send it to the peer. Your function must return the actual #number
 of bytes that you stored in that memory area. Returning 0 will signal
 end-of-file to the library and cause it to stop the current transfer. <br />
 <br />
 If you stop the current transfer by returning 0 "pre-maturely"
 (i.e before the server expected it, like when you've said you will upload N
 bytes and you upload less than N bytes), you may experience that the server
 "hangs" waiting for the rest of the data that won't come. <br />
 <br />
 The read callback may return @{#curl.READFUNC_ABORT} to stop the current
 operation immediately. <br />
 <br />
 _Bugs:_ when doing TFTP uploads, you must return the exact amount of data
 that the callback wants, or it will be considered the final packet by the
 server end and the transfer will end there. <br />
 <br /> _needs:_ function(userparam, size)
 <br /> _returns:_ #string
 @field [parent=#curl] #number OPT_READFUNCTION
]]

--[[-----------------------------------------------------------------------------
 userparam to pass to the file read function. If you use the
 @{#curl.OPT_READFUNCTION@{#curl. option, this is the userparam you'll get as input. <br />
 <br />
 _NOTE:_ If you're using libcurl as a win32 DLL, you MUST use a
 @{#curl.OPT_READFUNCTION} if you set this option. <br />
 This option was also known by the older name @{#curl.OPT_INFILE}, the name
 @{#curl.OPT_READDATA} was introduced in 7.9.7. <br />
 <br /> _needs:_ userparam
 @field [parent=#curl] #number OPT_READDATA
]]

--[[-----------------------------------------------------------------------------
 This function gets called by libcurl as soon as there is data received that
 needs to be saved. Return the #number of bytes actually taken care of. If
 that amount differs from the amount passed to your function, it'll signal an
 error to the library. This will abort the transfer and return
 @{#curl.WRITE_ERROR}. <br />
 This function may be called with zero bytes data if the transferred file is empty. <br />
 Set this option to #nil to get the internal default function. The internal
 default function will write the data to the userparam given with @{#curl.OPT_WRITEDATA}. <br />
 Set the userdata argument with the @{#curl.OPT_WRITEDATA} option.
 The callback function will be passed as much data as possible in all invokes,
 but you cannot possibly make any assumptions. It may be one byte, it may be
 thousands. <br />
 <br /> _needs:_ function(userparam, buffer)
 <br /> _returns:_  #number
 @field [parent=#curl] #number OPT_WRITEFUNCTION
]]

--[[-----------------------------------------------------------------------------
 userparam to pass to the file write function. If you use the
 @{#curl.OPT_WRITEFUNCTION} option, this is the pointer you'll get as input. <br />
 <br />
 _NOTE:_ If you're using libcurl as a win32 DLL, you MUST use the
 @{#curl.OPT_WRITEFUNCTION} if you set this option or you will experience crashes. <br />
 <br />
 This option is also known with the older name CURLOPT_FILE, the name
 CURLOPT_WRITEDATA was introduced in 7.9.7. <br />
 The written data (a table)
 <br /> _needs:_ userparam
 @field [parent=#curl] #number OPT_WRITEDATA
]]

--[[-----------------------------------------------------------------------------
 This function gets called by libcurl as soon as it has received header data.
 The header callback will be called once for each header and only complete
 header lines are passed on to the callback. Parsing headers is very easy
 using this. The size of the data pointed to by ptr is size multiplied with
 nmemb. Do not assume that the header line is zero terminated! The pointer
 named userparam is the one you set with the @{#curl.OPT_HEADERDATA} option.
 The callback function must return the #number of bytes actually taken care
 of. If that amount differs from the amount passed to your function, it'll
 signal an error to the library. This will abort the transfer and return
 @{#curl.WRITE_ERROR}. <br/>
 <br/>
 It's important to note that the callback will be invoked for the headers of
 all responses received after initiating a request and not just the final
 response. This includes all responses which occur during authentication
 negotiation. If you need to operate on only the headers from the final
 response, you will need to collect headers in the callback yourself and use
 HTTP status lines, for example, to delimit response boundaries. <br/>
 <br/>
 When a server sends a chunked encoded transfer, it may contain a trailer.
 That trailer is identical to a HTTP header and if such a trailer is received
 it is passed to the application using this callback as well. There are
 several ways to detect it being a trailer and not an ordinary header: 1) it
 comes after the response-body. 2) it comes after the final header line
 (CR LF) 3) a Trailer: header among the regular response-headers mention what
 header(s) to expect in the trailer. <br/>
 <br/>
 For non-HTTP protocols like FTP, POP3, IMAP and SMTP this function will get
 called with the server responses to the commands that libcurl sends. <br/>
 <br /> _returns:_ #number
 @field [parent=#curl] #number OPT_HEADERFUNCTION
]]

--[[-----------------------------------------------------------------------------
 Userparam of @{#curl.OPT_HEADERFUNCTION}
 <br /> _needs:_ userparam
 @field [parent=#curl] #number OPT_HEADERDATA
]]

--[[-----------------------------------------------------------------------------
 This function gets called by libcurl instead of its internal equivalent with
 a frequent interval. While data is being transferred it will be called very
 frequently, and during slow periods like when nothing is being transferred
 it can slow down to about one call per second. <br />
 <br />
 userparam is the pointer set with @{#curl.OPT_PROGRESSDATA}, it is not
 actually used by libcurl but is only passed along from the application to
 the callback. <br />
 <br />
 The callback gets told how much data libcurl will transfer and has
 transferred, in #number of bytes. dltotal is the total #number of bytes
 libcurl expects to download in this transfer. dlnow is the #number of bytes
 downloaded so far. ultotal is the total #number of bytes libcurl expects to
 upload in this transfer. ulnow is the #number of bytes uploaded so far. <br />
 <br />
 Unknown/unused argument values passed to the callback will be set to zero
 (like if you only download data, the upload size will remain 0). Many times
 the callback will be called one or more times first, before it knows the
 data sizes so a program must be made to handle that. <br />
 CURLOPT_NOPROGRESS must be set to 0 to make this function actually get called. <br />
 <br /> _needs:_ function(userparam, dltotal, dlnow, uptotal, upnow)
 <br /> _returns:_  #number
 @field [parent=#curl] #number OPT_PROGRESSFUNCTION
]]

--[[-----------------------------------------------------------------------------
 userparam of @{#curl.OPT_PROGRESSFUNCTION}
 <br /> _needs:_ userparam
 @field [parent=#curl] #number OPT_PROGRESSDATA
]]

--[[-----------------------------------------------------------------------------
 This function gets called by libcurl when something special I/O-related
 needs to be done that the library can't do by itself. For now, rewinding the
 read data stream is the only action it can request. The rewinding of the
 read data stream may be necessary when doing a HTTP PUT or POST with a
 multi-pass authentication method. <br />
 <br /> _needs:_ function(userparam, command)
 <br /> _returns:_  #number
 <br /> _default:_ #nil (Option added in 7.12.3). 
 @field [parent=#curl] #number OPT_IOCTLFUNCTION
]]

--[[-----------------------------------------------------------------------------
 Pass a pointer that will be untouched by libcurl and passed as the 3rd
 argument in the ioctl callback set with CURLOPT_IOCTLFUNCTION. <br />
 Userparam of @{#curl.OPT_IOCTLDATA}
 <br /> _needs:_ userparam
 <br /> _default:_ #nil (Option added in 7.12.3). 
 @field [parent=#curl] #number OPT_IOCTLDATA
]]

--[[-----------------------------------------------------------------------------
 I cannot find anything about this...
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_SOURCE_QUOTE
]]

--[[-----------------------------------------------------------------------------
 Pass a list of FTP or SFTP commands to pass to the server prior to your FTP request.
 This will be done before any other commands are issued (even before the CWD
 command for FTP). <br />
 The list should be a fully valid list of one of the values below. <br />
 Disable this operation again by setting a #nil to this option. When speaking
 to a FTP (or SFTP since 7.24.0) server, prefix the command with an asterisk
 (&#47;) to make libcurl continue even if the command fails as by default libcurl
 will stop at first failure. <br />
 <br />
 The set of valid FTP commands depends on the server (see
 <a target="_blank" href="http://tools.ietf.org/html/rfc959"> RFC 959 </a> for a list of
 mandatory commands). <br />
 <br />
 The valid SFTP commands are: <br />
 + chgrp <br />
 + chmod <br />
 + chown <br />
 + ln <br />
 + mkdir <br />
 + pwd <br />
 + rename <br />
 + rm <br />
 + rmdir <br />
 + symlink <br />
 (see curl (1); I don't know what that means... I can't find it...)
 (SFTP support added in 7.16.3) <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_QUOTE
]]

--[[-----------------------------------------------------------------------------
 Pass a list of FTP or SFTP commands to pass to the server after your FTP transfer request.
 The commands will only be run if no error occurred. The linked list should
 be a fully valid list of struct curl_slist structs properly filled in as
 described for @{#curl.OPT_QUOTE}. Disable this operation again by setting a #nil
 to this option. <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_POSTQUOTE
]]

--[[-----------------------------------------------------------------------------
 Provide a pointer to a list with variables to pass to the telnet negotiations.
 The variables should be in the format <option=value>. libcurl supports the
 options 'TTYPE', 'XDISPLOC' and 'NEW_ENV'. See the TELNET standard for details. <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_TELNETOPTIONS
]]

--[[-----------------------------------------------------------------------------
 Pass a list of FTP commands to pass to the server after the transfer type is set.
 The linked list should be a fully valid list of properly filled in as described below.
 Disable this operation again by setting a #nil to this option. Before
 version 7.16.0, if you also set @{#curl.OPT_NOBODY} to true, this option
 didn't work. <br />
 <br />
 The valid FTP commands are: <br />
 + chgrp <br />
 + chmod <br />
 + chown <br />
 + ln <br />
 + mkdir <br />
 + pwd <br />
 + rename <br />
 + rm <br />
 + rmdir <br />
 + symlink <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_PREQUOTE
]]

--[[-----------------------------------------------------------------------------
 List of aliases to be treated as valid HTTP 200 responses.
 Some servers respond with a custom header response line. For example,
 IceCast servers respond with "ICY 200 OK". By including this string in your
 list of aliases, the response will be treated as a valid HTTP header line
 such as "HTTP/1.0 200 OK". (Added in 7.10.3) <br />
 <br />
 The alias itself is not parsed for any version strings. Before libcurl
 7.16.3, Libcurl used the value set by option @{#curl.OPT_HTTP_VERSION},
 but starting with 7.16.3 the protocol is assumed to match HTTP 1.0 when an
 alias matched. <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_HTTP200ALIASES
]]

--[[-----------------------------------------------------------------------------
 I cannot find anything about this...
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_SOURCE_PREQUOTE
]]

--[[-----------------------------------------------------------------------------
 I cannot find anything about this...
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_SOURCE_POSTQUOTE
]]

--[[-----------------------------------------------------------------------------
 HTTP headers to pass to the server in your HTTP request.
 If you add a header with no content as in 'Accept:' (no data on the right
 side of the colon), the internally used header will get disabled. Thus,
 using this option you can add new headers, replace internal headers and
 remove internal headers. To add a header with no content (nothing to the
 right side of the colon), use the form 'MyHeader;' (note the ending
 semicolon). <br />
 <br />
 The headers included in the list must not be CRLF-terminated, because curl
 adds CRLF after each header item. Failure to comply with this will result
 in strange bugs because the server will most likely ignore part of the
 headers you specified. <br />
 <br />
 The first line in a request (containing the method, usually a GET or POST)
 is not a header and cannot be replaced using this option. Only the lines
 following the request-line are headers. Adding this method line in this list
 of headers will only cause your request to send an invalid header. <br />
 <br />
 Pass a #nil to this to reset back to no custom headers. <br />
 <br />
 The most commonly replaced headers have "shortcuts" in the options
 @{#curl.OPT_COOKIE}, @{#curl.OPT_USERAGENT} and @{#curl.OPT_REFERER}. <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_HTTPHEADER
]]

--[[-----------------------------------------------------------------------------
 Tells libcurl you want a multipart/formdata HTTP POST to be made and you
 instruct what data to pass on to the server. Pass a pointer to a linked list
 of curl_httppost structs as parameter. The data in this list must remain
 intact until you close this curl handle again with @{#curlobj.close}. <br />
 <br />
 Using POST with HTTP 1.1 implies the use of a "Expect: 100-continue" header.
 You can disable this header with @{#curl.OPT_HTTPHEADER} as usual. <br />
 <br />
 When setting @{#curl.OPT_HTTPPOST}, it will automatically set
 @{#curl.OPT_NOBODY} to false (since 7.14.1). <br />
 <br /> _needs:_ #string, ..., #string
 @field [parent=#curl] #number OPT_HTTPPOST
]]

--[[-- #boolean --
--
]]

--[[-----------------------------------------------------------------------------
 If the value is set to true, libcurl converts Unix newlines to CRLF newlines on transfers.
 Disable this option again by setting the value to false. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_CRLF
]]

--[[-----------------------------------------------------------------------------
 Set the parameter to true to get the library to display a lot of verbose
 information about its operations. Very useful for libcurl and/or protocol
 debugging and understanding. The verbose information will be sent to stderr.
 You hardly ever want this set in production use, you will almost always want
 this when you debug/report problems.
 <br /> <br /> _needs:_ #boolean
 <br /> _default:_ false
 @field [parent=#curl] #number OPT_VERBOSE
]]

--[[-----------------------------------------------------------------------------
 A parameter set to true tells the library to include the header in the body output.
 This is only relevant for protocols that actually have headers preceding 
 <br /> _needs:_ #boolean
 <br /> _default:_ false
 @field [parent=#curl] #number OPT_HEADER
]]

--[[-----------------------------------------------------------------------------
 If set to true, it tells the library to shut off the progress
 meter completely. It will also prevent the @{#curl.OPT_PROGRESSFUNCTION} from
 getting called..
 Future versions of libcurl are likely to not have any built-in progress meter at all. 
 <br /> _needs:_ #boolean
 <br /> _default:_ true.
 @field [parent=#curl] #number OPT_NOPROGRESS
]]

--[[-----------------------------------------------------------------------------
 If it is true, libcurl will not use any functions that install signal
 handlers or any functions that cause signals to be sent to the process.
 This option is mainly here to allow multi-threaded unix applications to
 still set/use all timeout options etc, without risking getting signals. <br />
 <br />
 If this option is set and libcurl has been built with the standard name
 resolver, timeouts will not occur while the name resolve takes place.
 Consider building libcurl with c-ares support to enable asynchronous DNS
 lookups, which enables nice timeouts for name resolves without signals. <br />
 <br />
 Setting @{#curl.OPT_NOSIGNAL} to 1 makes libcurl NOT ask the system to ignore
 SIGPIPE signals, which otherwise are sent by the system when trying to send
 data to a socket which is closed in the other end. libcurl makes an effort
 to never cause such SIGPIPEs to trigger, but some operating systems have no
 way to avoid them and even on those that have there are some corner cases
 when they may still happen, contrary to our desire. In addition, using
 CURLAUTH_NTLM_WB authentication could cause a SIGCHLD signal to be raised. <br />
 <br />
 <br /> _needs:_ #boolean
 <br /> _default:_ false (Added in 7.10)
 @field [parent=#curl] #number OPT_NOSIGNAL
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library to not include the body-part in the output.
 This is only relevant for protocols that have separate header and body parts.
 On HTTP(S) servers, this will make libcurl do a HEAD request. <br />
 <br />
 To change request to GET, you should use @{#curl.OPT_HTTPGET}. Change request
 to POST with @{#curl.OPT_POST} etc. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_NOBODY
]]

--[[-----------------------------------------------------------------------------
 A parameter set to true tells the library to fail silently if the HTTP code
 returned is equal to or larger than 400. The default action would be to
 return the page normally, ignoring that code. <br />
 <br />
 This method is not fail-safe and there are occasions where non-successful
 response codes will slip through, especially when authentication is involved
 (response codes 401 and 407). <br />
 <br />
 You might get some amounts of headers transferred before this situation is
 detected, like when a "100-continue" is received as a response to a POST/PUT
 and a 401 or 407 is received immediately afterwards. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FAILONERROR
]]

--[[-----------------------------------------------------------------------------
 A parameter set to 1 tells the library to prepare for an upload. The
 @{#curl.OPT_READDATA} and @{#curl.OPT_INFILESIZE} or @{#curl.OPT_INFILESIZE_LARGE}
 options are also interesting for uploads. If the protocol is HTTP, uploading
 means using the PUT request unless you tell libcurl otherwise. <br />
 <br />
 Using PUT with HTTP 1.1 implies the use of a "Expect: 100-continue" header.
 You can disable this header with @{#curl.OPT_HTTPHEADER} as usual. <br />
 <br />
 If you use PUT to a HTTP 1.1 server, you can upload data without knowing the
 size before starting the transfer if you use chunked encoding. You enable
 this by adding a header like "Transfer-Encoding: chunked" with @{#curl.OPT_HTTPHEADER}.
 With HTTP 1.0 or without chunked transfer, you must specify the size. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_UPLOAD
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library to do a regular HTTP post.
 This will also make the library use a
 "Content-Type: application/x-www-form-urlencoded" header. (This is by far
 the most commonly used POST method). <br />
 <br />
 Use @{#curl.OPT_POSTFIELDS} option to specify what data to post and
 @{#curl.OPT_POSTFIELDSIZE} or @{#curl.OPT_POSTFIELDSIZE_LARGE} to set the data size. <br />
 Optionally, you can provide data to POST using the @{#curl.OPT_READFUNCTION}
 and @{#curl.OPT_READDATA} options but then you must make sure to not set
 @{#curl.OPT_POSTFIELDS} to anything but #nil. When providing data with a
 callback, you must transmit it using chunked transfer-encoding or you must
 set the size of the data with the @{#curl.OPT_POSTFIELDSIZE} or
 @{#curl.OPT_POSTFIELDSIZE_LARGE} option. To enable chunked encoding, you
 simply pass in the appropriate Transfer-Encoding header. <br />
 <br />
 You can override the default POST Content-Type: header by setting your own
 with @{#curl.OPT_HTTPHEADER}. <br />
 Using POST with HTTP 1.1 implies the use of a "Expect: 100-continue" header.
 You can disable this header with CURLOPT_HTTPHEADER as usual. <br />
 If you use POST to a HTTP 1.1 server, you can send data without knowing the
 size before starting the POST if you use chunked encoding. You enable this
 by adding a header like "Transfer-Encoding: chunked" with @{#curl.OPT_HTTPHEADER}.
 With HTTP 1.0 or without chunked transfer, you must specify the size in the
 request. <br />
 <br />
 When setting @{#curl.OPT_POST} to true, it will automatically set
 @{#curl.OPT_NOBODY} to false (since 7.14.1). <br />
 <br />
 If you issue a POST request and then want to make a HEAD or GET using the
 same re-used handle, you must explicitly set the new request type using
 @{#curl.OPT_NOBODY} or @{#curl.OPT_HTTPGET} or similar. 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_POST
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library to follow any Location:
 header that the server sends as part of a HTTP header. <br />
 <br />
 This means that the library will re-send the same request on the new
 location and follow new Location: headers all the way until no more such
 headers are returned. @{#curl.OPT_MAXREDIRS} can be used to limit the number of
 redirects libcurl will follow. <br />
 <br />
 Since 7.19.4, libcurl can limit what protocols it will automatically follow.
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FOLLOWLOCATION
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library to use ASCII mode for FTP
 transfers, instead of the default binary transfer. For win32 systems it does
 not set the stdout to binary mode. This option can be usable when
 transferring text data between systems with different views on certain
 characters, such as newlines or similar. <br />
 <br />
 libcurl does not do a complete ASCII conversion when doing ASCII transfers
 over FTP. This is a known limitation/flaw that nobody has rectified. libcurl
 simply sets the mode to ASCII and performs a standard transfer. <br /> 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_TRANSFERTEXT
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library to use HTTP PUT to transfer data.
 The data should be set with @{#curl.OPT_READDATA} and @{#curl.OPT_INFILESIZE}. <br />
 <br />
 This option is deprecated and starting with version 7.12.1 you should
 instead use @{#curl.OPT_UPLOAD}. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_PUT
]]

--[[-----------------------------------------------------------------------------
 Pass a #boolean set to true to enable this.
 When enabled, libcurl will automatically set the Referer: field in requests
 where it follows a Location: redirect. 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_AUTOREFERER
]]

--[[-----------------------------------------------------------------------------
 Pass a #number specifying whether the @{#curl.OPT_TCP_NODELAY} option is to be set or
 cleared (true = set, false = clear). This will have no effect after the
 connection has been established. <br />
 <br />
 Setting this option will disable TCP's Nagle algorithm. The purpose of this
 algorithm is to try to minimize the #number of small packets on the network
 (where "small packets" means TCP segments less than the Maximum Segment Size
 (MSS) for the network). <br />
 <br />
 Maximizing the amount of data sent per TCP segment is good because it
 amortizes the overhead of the send. However, in some cases (most notably
 telnet or rlogin) small segments may need to be sent without delay. This is
 less efficient than sending larger amounts of data at a time, and can
 contribute to congestion on the network if overdone. <br />
 <br /> _needs:_ #boolean
 <br /> _default:_ false
 @field [parent=#curl] #number OPT_TCP_NODELAY
]]

--[[-----------------------------------------------------------------------------
 A #boolean set to true tells the library it can continue to send
 authentication (user+password) when following locations, even when hostname
 changed. This option is meaningful only when setting @{#curl.OPT_FOLLOWLOCATION}. <br /> 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_UNRESTRICTED_AUTH
]]

--[[-----------------------------------------------------------------------------
 Pass a #boolean set to true to mark this as a new cookie "session". It will
 force libcurl to ignore all cookies it is about to load that are
 "session cookies" from the previous session. By default, libcurl always
 stores and loads all cookies, independent if they are session cookies or
 not. Session cookies are cookies without expiry date and they are meant to
 be alive and existing for this "session" only. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_COOKIESESSION
]]

--[[-----------------------------------------------------------------------------
 If the value is true, it tells curl to use a global DNS cache that will
 survive between easy handle creations and deletions. This is not thread-safe
 and this will use a global variable. <br />
 <br />
 _WARNING:_ This option is considered obsolete. Stop using it. Switch over to
 using the share interface instead! (Not implemented in luacurl? Maybe as
 OPT_DNS_USE_GLOBAL_CACHE?) <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_DNS_USE_GLOBAL_CACHE
]]

--[[-----------------------------------------------------------------------------
 If the #boolean is true, libcurl will attempt to get the modification date
 of the remote document in this operation. This requires that the remote
 server sends the time or replies to a time querying command. The @{curl.getinfo}
 function with the @{curl.INFO_FILETIME} argument can be used after a
 transfer to extract the received time (if any). <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FILETIME
]]

--[[-----------------------------------------------------------------------------
 Set to true to make the next transfer use a new (fresh) connection by force.
 If the connection cache is full before this connection, one of the existing
 connections will be closed as according to the selected or default policy.
 This option should be used with caution and only if you understand what it
 does. <br />
 Set this to false to have libcurl attempt re-using an existing connection
 (default behavior).  <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FRESH_CONNECT
]]

--[[-----------------------------------------------------------------------------
 Set to ture to make the next transfer explicitly close the connection when done.
 Normally, libcurl keeps all connections alive when done with one transfer in
 case a succeeding one follows that can re-use them. This option should be
 used with caution and only if you understand what it does. <br />
 Set to false to have libcurl keep the connection open for possible later re-use (default behavior). <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FORBID_REUSE
]]

--[[-- #number --
--
]]

--[[-----------------------------------------------------------------------------
 Pass a #number. The set #number will be the redirection limit. If that many
 redirections have been followed, the next redirect will cause an error
 (@{#curl.TOO_MANY_REDIRECTS}). This option only makes sense if the
 @{#curl.OPT_FOLLOWLOCATION} is used at the same time. <br />
 Added in 7.15.1: Setting the limit to 0 will make libcurl refuse any
 redirect. Set it to -1 for an infinite number of redirects
 (which is the default) 
 <br /> _needs:_ #number
 <br /> _default:_ -1
 @field [parent=#curl] #number OPT_MAXREDIRS
]]

--[[-----------------------------------------------------------------------------
 The set number will be the persistent connection cache size.
 The set amount will be the maximum amount of simultaneously open connections
 that libcurl may cache in this easy handle. Default is 5, and there isn't
 much point in changing this value unless you are perfectly aware of how this
 works and changes libcurl's behaviour. This concerns connections using any of
 the protocols that support persistent connections. <br />
 <br />
 When reaching the maximum limit, curl closes the oldest one in the cache to
 prevent increasing the number of open connections. <br />
 <br />
 If you already have performed transfers with this curl handle, setting a
 smaller @{#curl.OPT_MAXCONNECTS} than before may cause open connections to
 get closed unnecessarily. <br /> 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_MAXCONNECTS
]]

--[[-----------------------------------------------------------------------------
 _(Obsolete)_ This option does nothing. 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_CLOSEPOLICY
]]

--[[-----------------------------------------------------------------------------
 The #number should contain the maximum time in seconds that you allow the connection to the server to take.
 This only limits the connection phase, once it has connected, this option is
 of no more use. Set to zero to switch to the default built-in connection
 timeout - 300 seconds. See also the @{#curl.OPT_TIMEOUT} option. <br />
 <br />
 In unix-like systems, this might cause signals to be used unless @{#curl.OPT_NOSIGNAL}
 is set. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_CONNECTTIMEOUT
]]

--[[-----------------------------------------------------------------------------
 This sets the timeout in seconds. Name resolves will be kept in memory for
 this #number of seconds. Set to zero to completely disable caching, or set to
 -1 to make the cached entries remain forever. By default, libcurl caches
 this info for 60 seconds. <br />
 <br />
 The name resolve functions of various libc implementations don't re-read
 name server information unless explicitly told so. This may cause libcurl to
 keep using the older server even if DHCP has updated the server info, and
 this may look like a DNS cache issue to the casual libcurl-app user. <br /> 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_DNS_CACHE_TIMEOUT
]]

--[[-----------------------------------------------------------------------------
 Pass a #number specifying your preferred size (in bytes) for the receive
 buffer in libcurl. The main point of this would be that the write callback
 gets called more often and with smaller chunks. This is just treated as a
 request, not an order. You cannot be guaranteed to actually get the given
 size. (Added in 7.10) <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_BUFFERSIZE
]]

--[[-----------------------------------------------------------------------------
 Available options for this are: <br />
 + @{#curl.PROXY_HTTP} <br />
 + @{#curl.PROXY_HTTP_1_0} (added in 7.19.4) <br />
 + @{#curl.PROXY_SOCKS4} (added in 7.10) <br />
 + @{#curl.PROXY_SOCKS5} <br />
 + @{#curl.PROXY_SOCKS4A} (added in 7.18.0) <br />
 + @{#curl.PROXY_SOCKS5_HOSTNAME} (added in 7.18.0) <br />
 The HTTP type is default. (Added in 7.10)
 If you set @{#curl.OPT_PROXYTYPE} to @{#curl.PROXY_HTTP_1_0}, it will only
 affect how libcurl speaks to a proxy when CONNECT is used. The HTTP version
 used for "regular" HTTP requests is instead controlled with @{#curl.OPT_HTTP_VERSION}. <br />
 <br /> _needs:_ #number
 <br /> _default:_ @{#curl.HTTP} (Added in 7.10)
 @field [parent=#curl] #number OPT_PROXYTYPE
]]

--[[-----------------------------------------------------------------------------
 Use this to set the size of the @{#curl.OPT_POSTFIELDS} data to prevent
 libcurl from doing strlen() (C-function, similar to string.len() in Lua)
 on the data to figure out the size. This is the large file version of the
 @{#curl.OPT_POSTFIELDSIZE} option. (Added in 7.11.1) <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_POSTFIELDSIZE_LARGE
]]

--[[-----------------------------------------------------------------------------
 Pass a #number as parameter, which is set to a bitmask, to tell libcurl which
 authentication method(s) you want it to use for your proxy authentication.
 If more than one bit is set, libcurl will first query the site to see what
 authentication methods it supports and then pick the best one you allow it
 to use. For some methods, this will induce an extra network round-trip. Set
 the actual name and password with the @{#curl.OPT_PROXYUSERPWD} option. The
 bitmask can be constructed by or'ing together the bits listed above for the
 @{#curl.OPT_HTTPAUTH} option. As of this writing, only Basic, Digest and NTLM work.
 (Added in 7.10.7) <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_PROXYAUTH
]]

--[[-----------------------------------------------------------------------------
 Allows an application to select what kind of IP addresses to use when resolving host names.
 This is only interesting when using host names that resolve addresses using
 more than one version of IP. <br />
 <br />
 The allowed values are: <br />
 @{#curl.IPRESOLVE_WHATEVER} : Default, resolves addresses to all IP versions that your system allows. <br />
 @{#curl.CURL_IPRESOLVE_V4} : Resolve to IPv4 addresses. <br />
 @{#curl.IPRESOLVE_V6} : Resolve to IPv6 addresses. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_IPRESOLVE
]]

--[[-----------------------------------------------------------------------------
 This allows you to specify the maximum size (in bytes) of a file to download.
 If the file requested is larger than this value, the transfer will not start
 and @{#curl.FILESIZE_EXCEEDED} will be returned. <br />
 <br />
 The file size is not always known prior to download, and for such files this
 option has no effect even if the file transfer ends up being larger than
 this given limit. This concerns both FTP and HTTP transfers. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_MAXFILESIZE
]]

--[[-----------------------------------------------------------------------------
 When uploading a file to a remote site, this option should be used to tell
 libcurl what the expected size of the infile is. <br />
 <br />
 For uploading using SCP, this option or @{#curl.OPT_INFILESIZE} is mandatory. <br />
 <br />
 This option does not limit how much data libcurl will actually send, as that
 is controlled entirely by what the read callback returns. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_INFILESIZE_LARGE
]]

--[[-----------------------------------------------------------------------------
 The #number contains the offset in number of bytes that you want the transfer to start from. (Added in 7.11.0) <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_RESUME_FROM_LARGE
]]

--[[-----------------------------------------------------------------------------
 This allows you to specify the maximum size (in bytes) of a file to download.
 If the file requested is larger than this value, the transfer will not start
 and @{#curl.FILESIZE_EXCEEDED} will be returned. (Added in 7.11.0) <br />
 <br />
 The file size is not always known prior to download, and for such files this
 option has no effect even if the file transfer ends up being larger than
 this given limit. This concerns both FTP and HTTP transfers. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_MAXFILESIZE_LARGE
]]

--[[-----------------------------------------------------------------------------
 Pass a #number specifying what remote port #number to connect to, instead of
 the one specified in the @{#curl.OPT_URL} or the default port for the used protocol. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_PORT
]]

--[[-----------------------------------------------------------------------------
 Pass a #number as parameter containing the maximum time in seconds that you
 allow the libcurl transfer operation to take.
 Normally, name lookups can take a considerable time and limiting operations
 to less than a few minutes risk aborting perfectly normal operations. This
 option will cause curl to use the SIGALRM to enable time-outing system calls. <br />
 <br />
 In unix-like systems, this might cause signals to be used unless
 @{#curl.OPT_NOSIGNAL} is set. <br />
 <br />
 Default timeout is 0 (zero) which means it never times out. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_TIMEOUT
]]

--[[-----------------------------------------------------------------------------
 When uploading a file to a remote site, this option should be used to tell
 libcurl what the expected size of the infile is. See also @{#curl.OPT_INFILESIZE_LARGE}. <br />
 <br />
 For uploading using SCP, this option or @{#curl.OPT_INFILESIZE_LARGE} is mandatory. <br />
 <br />
 When sending emails using SMTP, this command can be used to specify the
 optional SIZE parameter for the MAIL FROM command. (Added in 7.23.0) <br />
 <br />
 This option does not limit how much data libcurl will actually send, as
 that is controlled entirely by what the read callback returns. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_INFILESIZE
]]

--[[-----------------------------------------------------------------------------
 The #number contains the transfer speed in bytes per second that the transfer
 should be below during @{#curl.OPT_LOW_SPEED_TIME} seconds for the library
 to consider it too slow and abort. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_LOW_SPEED_LIMIT
]]

--[[-----------------------------------------------------------------------------
 The #number contains the time in seconds that the transfer should be below
 the @{#curl.OPT_LOW_SPEED_LIMIT} for the library to consider it too slow and abort. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_LOW_SPEED_TIME
]]

--[[-----------------------------------------------------------------------------
 The #number contains the offset in number of bytes that you want the transfer to start from.
 Set this option to 0 to make the transfer start from the beginning
 (effectively disabling resume). For FTP, set this option to -1 to make the
 transfer start from the end of the target file (useful to continue an
 interrupted upload). <br />
 <br />
 When doing uploads with FTP, the resume position is where in the local/source
 file libcurl should try to resume the upload from and it will then append
 the source file to the remote target file. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_RESUME_FROM
]]

--[[-----------------------------------------------------------------------------
 This defines how the @{#curl.OPT_TIMEVALUE} time value is treated.
 You can set this parameter to @{#curl.TIMECOND_IFMODSINCE} or @{#curl.TIMECOND_IFUNMODSINCE}.
 This feature applies to HTTP, FTP, RTSP, and FILE. <br />
 <br />
 The last modification time of a file is not always known and in such
 instances this feature will have no effect even if the given time condition
 would not have been met. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_TIMECONDITION
]]

--[[-----------------------------------------------------------------------------
 This should be the time in seconds since 1 Jan 1970,
 and the time will be used in a condition as specified with @{#curl.OPT_TIMECONDITION}. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_TIMEVALUE
]]

--[[-----------------------------------------------------------------------------
 This parameter controls the preference of libcurl between using user names
 and passwords from your ~/.netrc file, relative to user names and passwords
 in the URL supplied with @{#curl.OPT_URL}. <br />
 libcurl uses a user name (and supplied or prompted password) supplied with
 @{#curl.OPT_USERPWD} in preference to any of the options controlled by this
 parameter.<br />
 Pass a #number, set to one of the values described below. <br />
 + @{#curl.NETRC_OPTIONAL} <br />
 + @{#curl.NETRC_IGNORED}  <br />
 + @{#curl.NETRC_REQUIRED} <br />
 <br /> _needs:_ #number
 <br /> _default:_ @{#curl.NETRC_IGNORED}
 @field [parent=#curl] #number OPT_NETRC
]]

--[[-----------------------------------------------------------------------------
 Set the proxy port to connect to unless it is specified in the proxy #string @{#curl.OPT_PROXY}. 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_PROXYPORT
]]

--[[-----------------------------------------------------------------------------
 If you want to post data to the server without letting libcurl do a strlen()
 (C-function, similar to string.len() in Lua) to measure the data size, this
 option must be used. When this option is used you can post fully binary data,
 which otherwise is likely to fail. If this size is set to -1, the library
 will use strlen() to get the size. <br /> 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_POSTFIELDSIZE
]]

--[[-- #string --
--
]]

--[[-----------------------------------------------------------------------------
 The URL used to receive/send data.
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_URL
]]

--[[-----------------------------------------------------------------------------
 IP-address of the proxy.
 The proxy #string may be prefixed with [protocol]:// since any such prefix
 will be ignored. The proxy's port #number may optionally be specified with
 the separate option. If not specified, libcurl will default to using port
 1080 for proxies. @{#curl.OPT_PROXYPORT}. <br />
 <br />
 When you tell the library to use a HTTP proxy, libcurl will transparently
 convert operations to HTTP even if you specify an FTP URL etc. This may
 have an impact on what other features of the library you can use, such as
 @{#curl.OPT_QUOTE} and similar FTP specifics that don't work unless you tunnel
 through the HTTP proxy. Such tunneling is activated with
 @{#curl.OPT_HTTPPROXYTUNNEL}. <br /> 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_PROXY
]]

--[[-----------------------------------------------------------------------------
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_USERPWD
]]

--[[-----------------------------------------------------------------------------
 The #string should be [user name]:[password] to use for the connection to the
 HTTP proxy. <br />
 Use @{#curl.OPT_PROXYAUTH} to specify the authentication method. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_PROXYUSERPWD
]]

--[[-----------------------------------------------------------------------------
 Pass a #string as parameter, which should contain the specified range you want.
 It should be in the format "X-Y", where X or Y may be left out. HTTP transfers
 also support several intervals, separated with commas as in "X-Y,N-M".
 Using this kind of multiple intervals will cause the HTTP server to send the
 response document in pieces (using standard MIME separation techniques). For
 RTSP, the formatting of a range should follow RFC 2326 Section 12.29. For RTSP,
 byte ranges are not permitted. Instead, ranges should be given in npt, utc,
 or smpte formats. <br />
 <br />
 Pass a #nil to this option to disable the use of ranges. <br />
 <br />
 Ranges work on HTTP, FTP, FILE (since 7.18.0), and RTSP (since 7.20.0) transfers only. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_RANGE
]]

--[[-----------------------------------------------------------------------------
 The full data to post in a HTTP POST operation.
 You must make sure that the data is formatted the way you want the server to
 receive it. libcurl will not convert or encode it for you. Most web servers
 will assume this data to be url-encoded. <br />
 <br />
 The data #string are NOT copied by the library: as a consequence, they must
 be preserved by the calling application until the transfer finishes. <br />
 <br />
 This POST is a normal application/x-www-form-urlencoded kind (and libcurl
 will set that Content-Type by default when this option is used), which is
 the most commonly used one by HTML forms. See also the @{#curl.OPT_POST}.
 Using @{#curl.OPT_POSTFIELDS} implies @{#curl.OPT_POST}. <br />
 <br />
 If you want to do a zero-byte POST, you need to set @{#curl.OPT_POSTFIELDSIZE}
 explicitly to zero, as simply setting @{#curl.OPT_POSTFIELDS} to #nil or ""
 just effectively disables the sending of the specified string. libcurl will
 instead assume that you'll send the POST data using the read callback! <br />
 <br />
 Using POST with HTTP 1.1 implies the use of a "Expect: 100-continue" header.
 You can disable this header with @{#curl.OPT_HTTPHEADER} as usual. <br />
 <br />
 To make multipart/formdata posts (aka <a target="_blank" href="http://tools.ietf.org/html/rfc2388"> RFC 2388 </a> -posts), check out the
 @{#curl.OPT_HTTPPOST} option. 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_POSTFIELDS
]]

--[[-----------------------------------------------------------------------------
 It will be used to set the Referer:
 header in the http request sent to the remote server. This can be used to
 fool servers or scripts. You can also set any custom header with
 @{#curl.OPT_HTTPHEADER}. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_REFERER
]]

--[[-----------------------------------------------------------------------------
 It will be used to set the User-Agent:
 header in the http request sent to the remote server. This can be used to
 fool servers or scripts. You can also set any custom header with
 @{#curl.OPT_HTTPHEADER}. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_USERAGENT
]]

--[[-----------------------------------------------------------------------------
 It will be used to set a cookie in the http request.
 The format of the string should be NAME=CONTENTS, where NAME is the cookie
 name and CONTENTS is what the cookie should contain. <br />
 <br />
 If you need to set multiple cookies, you need to set them all using a single
 option and thus you need to concatenate them all in one single string.
 Set multiple cookies in one string like this:
 "name1=content1; name2=content2;" etc. <br />
 <br />
 This option sets the cookie header explicitly in the outgoing request(s).
 If multiple requests are done due to authentication, followed redirections
 or similar, they will all get this cookie passed on. <br />
 <br />
 Using this option multiple times will only make the latest string override
 the previous ones. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_COOKIE
]]

--[[-----------------------------------------------------------------------------
 The #string should contain the name of your file holding cookie data to read.
 The cookie data may be in Netscape / Mozilla cookie data format or just
 regular HTTP-style headers dumped to a file. <br />
 <br />
 Given an empty or non-existing file or by passing the empty string (""),
 this option will enable cookies for this curl handle, making it understand
 and parse received cookies and then use matching cookies in future requests. <br />
 <br />
 If you use this option multiple times, you just add more files to read.
 Subsequent files will add more cookies. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_COOKIEFILE
]]

--[[-----------------------------------------------------------------------------
 The #string can be used to specify the request instead of GET or HEAD when
 performing HTTP based requests, instead of LIST and NLST when performing
 FTP directory listings and instead of LIST and RETR when issuing POP3 based
 commands. This is particularly useful, for example, for performing a HTTP
 DELETE request or a POP3 DELE command. <br />
 <br />
 Please don't perform this at will, on HTTP based requests, by making sure
 your server supports the command you are sending first. <br />
 <br />
 When you change the request method by setting @{#curl.OPT_CUSTOMREQUEST}
 to something, you don't actually change how libcurl behaves or acts in
 regards to the particular request method, it will only change the actual
 string sent in the request. <br />
 <br />
 For example: <br />
 + With the HTTP protocol when you tell libcurl to do a HEAD request, but then
 specify a GET though a custom request libcurl will still act as if it sent
 a HEAD. To switch to a proper HEAD use @{#curl.OPT_NOBODY}, to switch to a
 proper POST use @{#curl.OPT_POST} or @{#curl.OPT_POSTFIELDS} and to switch
 to a proper GET use @{#curl.OPT_HTTPGET}. <br />
 + With the POP3 protocol when you tell libcurl to use a custom request it
 will behave like a LIST or RETR command was sent where it expects data to
 be returned by the server. As such @{#curl.OPT_NOBODY} should be used when
 specifying commands such as DELE and NOOP for example. <br />
 <br />
 Restore to the internal default by setting this to #nil. <br />
 <br />
 Many people have wrongly used this option to replace the entire request
 with their own, including multiple headers and POST contents. While that
 might work in many cases, it will cause libcurl to send invalid requests
 and it could possibly confuse the remote server badly. Use
 @{#curl.OPT_POST} and @{#curl.OPT_POSTFIELDS} to set POST data. Use
 @{#curl.OPT_HTTPHEADER} to replace or extend the set of headers sent by
 libcurl. Use @{#curl.OPT_HTTP_VERSION} to change HTTP version. <br />
 <br /> (Support for POP3 added in 7.26.0) <br /> 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_CUSTOMREQUEST
]]

--[[-----------------------------------------------------------------------------
 I am not sure... I can't do anything with it, but it says it sets write informations.
 It is given in the <a target="_blank" href="http://luacurl.luaforge.net/">documentation</a>, that it needs a string... but there is nochting more about it
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_WRITEINFO
]]

--[[-----------------------------------------------------------------------------
 This sets the interface name to use as outgoing network interface. The name
 can be an interface name, an IP address, or a host name. <br />
 <br />
 Starting with 7.24.0: If the parameter starts with "if!" then it is treated
 as only as interface name and no attempt will ever be named to do treat it
 as an IP address or to do name resolution on it. If the parameter starts
 with "host!" it is treated as either an IP address or a hostname. Hostnames
 are resolved synchronously. Using the if! format is highly recommended when
 using the multi interfaces to avoid allowing the code to block. If "if!" is
 specified but the parameter does not match an existing interface,
 @{#curl.INTERFACE_FAILED} is returned. 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_INTERFACE
]]

--[[-----------------------------------------------------------------------------
 _It has got an update... I cannot say which number means which string!_
 Set the kerberos security level for FTP; this also enables kerberos awareness.
 This is a string (the <a target="_blank" href="http://luacurl.luaforge.net/">doc</a> says "NO!"), 'clear', 'safe', 'confidential' or 'private'.
 If the string is set but doesn't match one of these, 'private' will be used.
 Set the string to #nil to disable kerberos support for FTP. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_KRB4LEVEL
]]

--[[-----------------------------------------------------------------------------
 Pass a #string naming a file holding one or more certificates to verify the peer with.
 This makes sense only when used in combination with the @{#curl.OPT_SSL_VERIFYPEER}
 option. If @{#curl.OPT_SSL_VERIFYPEER} is zero, @{#curl.OPT_CAINFO} need not
 even indicate an accessible file. <br />
 <br />
 This option is by default set to the system path where libcurl's cacert
 bundle is assumed to be stored, as established at build time. <br />
 <br />
 If curl is built against the NSS SSL library, the NSS PEM PKCS#11 module
 (libnsspem.so) needs to be available for this option to work properly. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_CAINFO
]]

--[[-----------------------------------------------------------------------------
 Pass a file name. The file will be used to read from to seed the random
 engine for SSL. The more random the specified file is, the more secure the
 SSL connection will become. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_RANDOM_FILE
]]

--[[-----------------------------------------------------------------------------
 Pass a path name to the Entropy Gathering Daemon socket.
 It will be used to seed the random engine for SSL. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_EGDSOCKET
]]

--[[-----------------------------------------------------------------------------
 Pass a file name as #string.
 This will make libcurl write all internally known cookies to the specified
 file when @{#curlobj.close} is called.
 If no cookies are known, no file will be created. Specify "-" to instead
 have the cookies written to stdout. Using this option also enables cookies
 for this session, so if you for example follow a location it will make
 matching cookies get sent accordingly. <br />
 <br />
 If the cookie jar file can't be created or written to (when the 
 @{#curlobj.close}  is called), libcurl will not and cannot report an error
 for this. Using @{#curl.OPT_VERBOSE} will get a warning to display, but that
 is the only visible feedback you get about this possibly lethal situation. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_COOKIEJAR
]]

--[[-----------------------------------------------------------------------------
 Pass a #string naming a directory holding multiple CA certificates to verify the peer with.
 If libcurl is built against OpenSSL, the certificate directory must be
 prepared using the openssl c_rehash utility. This makes sense only when used
 in combination with the @{#curl.OPT_SSL_VERIFYPEER} option. If @{#curl.OPT_SSL_VERIFYPEER}
 is zero, @{#curl.OPT_CAPATH} need not even indicate an accessible path.
 The @{#curl.OPT_CAPATH} function apparently does not work in Windows due to
 some limitation in openssl. This option is OpenSSL-specific and does nothing
 if libcurl is built to use GnuTLS. NSS-powered libcurl provides the option
 only for backward compatibility. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_CAPATH
]]

--[[-----------------------------------------------------------------------------
 _It has got an update... I cannot say which number means which string!_
 Sets the contents of the Accept-Encoding: header sent in a HTTP request,
 and enables decoding of a response when a Content-Encoding: header is received.
 Three encodings are supported: <br />
 + identity : which does nothing <br />
 + deflate : which requests the server to compress its response using the zlib algorithm <br />
 + gzip which requests the gzip algorithm <br />
 If a zero-length string is set, then an Accept-Encoding: header containing all supported encodings is sent. <br />
 <br />
 This is a request, not an order; the server may or may not do it.
 This option must be set (to any non-#nil value) or else any unsolicited
 encoding done by the server is ignored. (perhaps not in Lua available: See
 the special file lib/README.encoding for details.) <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_ENCODING
]]

--[[-----------------------------------------------------------------------------
 The full path name to the file you want libcurl to use as .netrc file. If
 this option is omitted, and @{#curl.OPT_NETRC} is set, libcurl will attempt
 to find a &#47;.netrc file in the current user's home directory. (Added in 7.10.9) <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_NETRC_FILE
]]

--[[-----------------------------------------------------------------------------
 Login details #string for the connection.
 The format of which is: [user name]:[password];[options]. <br />
 When using NTLM, you can set the domain by prepending it to the user name
 and separating the domain and name with a forward (/) or backward slash (\).
 Like this: "domain/user:password" or "domain\user:password". Some HTTP
 servers (on Windows) support this style even for Basic authentication. <br />
 <br />
 When using HTTP and @{#curl.OPT_FOLLOWLOCATION}, libcurl might perform several
 requests to possibly different hosts. libcurl will only send this user and
 password information to hosts using the initial host name (unless
 @{#curl.OPT_UNRESTRICTED_AUTH} is set), so if libcurl follows locations to
 other hosts it will not send the user and password to those. This is enforced
 to prevent accidental information leakage. <br />
 <br />
 At present only IMAP, POP3 and SMTP support login options as part of the
 details #string. For more information about the login options please see <a target="_blank" href="http://tools.ietf.org/html/rfc2384"> RFC 2384 </a>,
 <a target="_blank" href="http://tools.ietf.org/html/rfc5092"> RFC5092 </a> and IETF draft <a target="_blank" href="http://tools.ietf.org/html/draft-earhart-url-smtp-00"> draft-earhart-url-smtp-00.txt </a> (Added in 7.31.0).
 Use @{#curl.OPT_HTTPAUTH} to specify the authentication method for HTTP
 based connections. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SOURCE_USERPWD
]]

--[[-----------------------------------------------------------------------------
 I cannot find anything about this...
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SOURCE_URL
]]

--[[-- SSL --
--
]]

--[[-----------------------------------------------------------------------------
 The #string should be the format of your private key.
 Supported formats are "PEM", "DER" and "ENG". <br />
 <br />
 The format "ENG" enables you to load the private key from a crypto engine.
 In this case @{#curl.OPT_SSLKEY} is used as an identifier passed to the
 engine. You have to set the crypto engine with @{#curl.OPT_SSLENGINE}.
 "DER" format key file currently does not work because of a bug in OpenSSL. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLKEYTYPE
]]

--[[-----------------------------------------------------------------------------
 It will be used as the identifier for the crypto engine you want to use for your private key.
 If the crypto device cannot be loaded, @{#curl.SSL_ENGINE_NOTFOUND} is returned. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLENGINE
]]

--[[-----------------------------------------------------------------------------
 The #string should be the file name of your private key.
 The default format is "PEM" and can be changed with @{#curl.OPT_SSLKEYTYPE}. <br />
 <br />
 (iOS and Mac OS X only) This option is ignored if curl was built against
 Secure Transport. Secure Transport expects the private key to be already
 present in the keychain containing the certificate. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLKEY
]]

--[[-----------------------------------------------------------------------------
 The #string should be the file name of your certificate.
 The default format is "PEM" and can be changed with @{#curl.OPT_SSLCERTTYPE}. <br />
 <br />
 With NSS this can also be the nickname of the certificate you wish to authenticate with. <br />
 If you want to use a file from the current directory, please precede it with "./" prefix,
 in order to avoid confusion with a nickname. <br />
 <br />
 (iOS and Mac OS X only) With Secure Transport, this string must match the name
 of a certificate that's in the system or user keychain. You should encode this
 string in UTF-8 format in case it contains non-ASCII characters. The private
 key corresponding to the certificate, and certificate chain (if any), must
 also be present in the keychain. (Added in 7.31.0) <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLCERT
]]

--[[-----------------------------------------------------------------------------
 Pass a #string holding the list of ciphers to use for the SSL connection.
 The list must be syntactically correct, it consists of one or more cipher
 strings separated by colons. Commas or spaces are also acceptable separators
 but colons are normally used, !, - and + can be used as operators. <br />
 <br />
 For OpenSSL and GnuTLS valid examples of cipher lists include <br />
 + 'RC4-SHA' <br />
 + 'SHA1+DES' <br />
 + 'TLSv1' <br />
 + 'DEFAULT' <br />
 The default list is normally set when you compile OpenSSL.
 You'll find more details about cipher lists on this URL: <a target="_blank" href="http://www.openssl.org/docs/apps/ciphers.html">http://www.openssl.org/docs/apps/ciphers.html </a> <br />
 <br />
 For NSS, valid examples of cipher lists include 'rsa_rc4_128_md5',
 'rsa_aes_128_sha', etc. With NSS you don't add/remove ciphers. If one uses
 this option then all known ciphers are disabled and only those passed in
 are enabled. <br />
 <br />
 You'll find more details about the NSS cipher lists on this URL:
 <a target="_blank" href="http://git.fedorahosted.org/cgit/mod_nss.git/plain/docs/mod_nss.html#Directives">http://git.fedorahosted.org/cgit/mod_nss.git/plain/docs/mod_nss.html#Directives</a> <br /> 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSL_CIPHER_LIST
]]

--[[-----------------------------------------------------------------------------
 It will be used as the password required to use the @{#curl.OPT_SSLKEY} or
 private key. You never needed a pass phrase to load a certificate but you
 need one to load your private key. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLKEYPASSWD
]]

--[[-----------------------------------------------------------------------------
 The #string should be the format of your certificate.
 Supported formats are "PEM" and "DER". (Added in 7.9.3) 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_SSLCERTTYPE
]]

--[[-----------------------------------------------------------------------------
 Pass a änumber as parameter to control what version of SSL/TLS to attempt to use. <br />
 <br />
 _The available options are:_ <br />
 + @{#curl.SSLVERSION_DEFAULT} : The default action. This will attempt to
   figure out the remote SSL protocol version, i.e. either SSLv3 or TLSv1
   (but not SSLv2, which became disabled by default with 7.18.1). <br />
 + @{#curl.CURL_SSLVERSION_TLSv1} : Force TLSv1 <br />
 + @{#curl.CURL_SSLVERSION_SSLv2} : Force SSLv2 <br />
 + @{#curl.CURL_SSLVERSION_SSLv3} : Force SSLv3  <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_SSLVERSION
]]

--[[-----------------------------------------------------------------------------
 This option determines whether libcurl verifies that the server cert is for the server it is known as.
 When negotiating a SSL connection, the server sends a certificate indicating its identity. <br />
 + When @{#curl.OPT_SSL_VERIFYHOST} is 2, that certificate must indicate that
 the server is the server to which you meant to connect, or the connection fails. <br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 Curl considers the server the intended one when the Common Name field or a
 Subject Alternate Name field in the certificate matches the host name in
 the @{curl.OPT_URL} to which you told Curl to connect. <br />
 + When the value is 1, libcurl will return a failure. <br />
 <br />
 It was previously (in 7.28.0 and earlier) a debug option of some sorts, but
 it is no longer supported due to frequently leading to programmer mistakes. <br />
 <br />
 When the value is 0, the connection succeeds regardless of the names in the certificate. <br />
 <br />
 This option controls checking the server's certificate's claimed identity.
 The server could be lying. To control lying, see @{#curl.OPT_SSL_VERIFYPEER}.
 If libcurl is built against NSS and @{#curl.OPT_SSL_VERIFYPEER} is false, @{#curl.OPT_SSL_VERIFYHOST} is ignored. 
 <br /> _needs:_ #number
 <br /> _default:_ 2
 @field [parent=#curl] #number OPT_SSL_VERIFYHOST
]]

--[[-----------------------------------------------------------------------------
 Sets the actual crypto engine as the default for (asymmetric) crypto operations.
 If the crypto device cannot be set, @{#curl.SSL_ENGINE_SETFAILED} is returned.<br />
 <br />
 Even though this option doesn't need any parameter, in some configurations
 @{#curlobj.setopt} might be defined as a macro taking exactly three arguments.
 Therefore, it's recommended to pass 1 as parameter to this option. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_SSLENGINE_DEFAULT
]]

--[[-----------------------------------------------------------------------------
 This option determines whether curl verifies the authenticity of the peer's certificate.
 true means curl verifies; false means it doesn't. <br />
 <br />
 When negotiating a SSL connection, the server sends a certificate indicating
 its identity. Curl verifies whether the certificate is authentic, i.e. that
 you can trust that the server is who the certificate says it is. This trust
 is based on a chain of digital signatures, rooted in certification authority
 (CA) certificates you supply. curl uses a default bundle of CA certificates
 (the path for that is determined at build time) and you can specify alternate
 certificates with the @{#curl.OPT_CAINFO} option or the @{#curl.OPT_CAPATH} option. <br />
 <br />
 When @{#curl.OPT_SSL_VERIFYPEER} is true, and the verification fails to
 prove that the certificate is authentic, the connection fails. When the
 option is false, the peer certificate verification succeeds regardless. <br />
 <br />
 Authenticating the certificate is not by itself very useful. You typically
 want to ensure that the server, as authentically identified by its certificate
 is the server you mean to be talking to. Use @{#curl.OPT_SSL_VERIFYHOST} to
 control that. The check that the host name in the certificate is valid for
 the host name you're connecting to is done independently of the @{#curl.OPT_SSL_VERIFYPEER} option. <br />
 <br /> _needs:_ #boolean
 <br /> _default:_ true
 @field [parent=#curl] #number OPT_SSL_VERIFYPEER
]]

--[[-- FTP --
--
]]

--[[-----------------------------------------------------------------------------
 The #string will be used to get the IP address to use for the FTP PORT instruction.
 The PORT instruction tells the remote server to connect to our specified
 IP address. The string may be a plain IP address, a host name, a network
 interface name (under Unix) or just a '-' symbol to let the library use your
 system's default IP address. Default FTP operations are passive, and thus
 won't use PORT. <br />
 <br />
 The address can be followed by a ':' to specify a port, optionally followed
 by a '-' to specify a port range. If the port specified is 0, the operating
 system will pick a free port. If a range is provided and all ports in the
 range are not available, libcurl will report @{#curl.FTP_PORT_FAILED} for
 the handle. Invalid port/range settings are ignored. IPv6 addresses followed
 by a port or portrange have to be in brackets. IPv6 addresses without
 port/range specifier can be in brackets. (added in 7.19.5) <br />
 <br />
 Examples with specified ports: <br />
 'eth0:0' <br />
 '192.168.1.2:32000-33000' <br />
 'curl.se:32123' <br />
 '[::1]:1234-4567'' <br />
 <br />
 You disable PORT again and go back to using the passive version by
 setting this option to #nil. <br /> 
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_FTPPORT
]]

--[[-----------------------------------------------------------------------------
 When an FTP server asks for "account data" after user name and password has
 been provided, this data is sent off using the ACCT command. (Added in 7.13.0) <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number OPT_FTP_ACCOUNT
]]

--[[-----------------------------------------------------------------------------
 Pass a #number using one of the values from below, to make libcurl use your
 desired level of SSL for the transfer. (Added in 7.11.0) <br />
 This is for enabling SSL/TLS when you use FTP, SMTP, POP3, IMAP etc. <br />
 + @{#curl.FTPSSL_NONE} : Don't attempt to use SSL. <br />
 + @{#curl.FTPSSL_TRY} : Try using SSL, proceed as normal otherwise. <br />
 + @{#curl.FTPSSL_CONTROL} : Require SSL for the control connection or fail with CURLE_USE_SSL_FAILED. <br />
 + @{#curl.FTPSSL_ALL} : Require SSL for all communication or fail with CURLE_USE_SSL_FAILED. <br /> 
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_FTP_SSL
]]

--[[-----------------------------------------------------------------------------
 Pass a #number using one of the values from below, to alter how libcurl
 issues "AUTH TLS" or "AUTH SSL" when FTP over SSL is activated . (Added in 7.12.2) <br />
 <br />
 _Values:_ <br />
 + @{#curl.FTPAUTH_DEFAULT} : Allow libcurl to decide. <br />
 + @{#curl.FTPAUTH_SSL} : Try "AUTH SSL" first, and only if that fails try "AUTH TLS". <br />
 + @{#curl.FTPAUTH_TLS} : Try "AUTH TLS" first, and only if that fails try "AUTH SSL". <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_FTPSSLAUTH
]]

--[[-----------------------------------------------------------------------------
 Causes curl to set a timeout period (in seconds) on the amount of time that
 the server is allowed to take in order to generate a response message for a
 command before the session is considered hung. While curl is waiting for a
 response, this value overrides @{#curl.OPT_TIMEOUT}. It is recommended that
 if used in conjunction with @{#curl.OPT_TIMEOUT}, you set
 @{#curl.OPT_FTP_RESPONSE_TIMEOUT} to a value smaller than @{#curl.OPT_TIMEOUT}.
 (Added in 7.10.8) <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_FTP_RESPONSE_TIMEOUT
]]

--[[----------------------------------------------------------------------------
 A parameter set to true tells the library to append to the remote file instead of overwrite it.
 This is only useful when uploading to an FTP site. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FTPAPPEND
]]

--[[-----------------------------------------------------------------------------
 A parameter set to true tells the library to just list the names of files in
 a directory, instead of doing a full directory listing that would include
 file sizes, dates etc. This works for FTP and SFTP URLs. <br />
 <br />
 This causes an FTP NLST command to be sent on an FTP server. Beware that some
 FTP servers list only files in their response to NLST; they might not include
 subdirectories and symbolic links. <br />
 <br />
 Setting this option to true also implies a directory listing even if the URL
 doesn't end with a slash, which otherwise is necessary. <br /> 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FTPLISTONLY
]]

--[[-----------------------------------------------------------------------------
 If the value is true, it tells curl to use the EPRT (and LPRT) command when
 doing active FTP downloads (which is enabled by @{#curl.OPT_FTPPORT}).
 Using EPRT means that it will first attempt to use EPRT and then LPRT before
 using PORT, but if you pass zero to this option, it will not try using EPRT
 or LPRT, only plain PORT. (Added in 7.10.5) <br />
 <br />
 If the server is an IPv6 host, this option will have no effect as of 7.12.3. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FTP_USE_EPRT
]]

--[[-----------------------------------------------------------------------------
 If the value is true, it tells curl to use the EPSV command when doing
 passive FTP downloads (which it always does by default). Using EPSV means
 that it will first attempt to use EPSV before using PASV, but if you pass
 zero to this option, it will not try using EPSV, only plain PASV. <br />
 <br />
 If the server is an IPv6 host, this option will have no effect as of 7.12.3. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FTP_USE_EPSV
]]

--[[-----------------------------------------------------------------------------
 If the value is true, curl will attempt to create any remote directory that
 it fails to CWD into. CWD is the command that changes working directory. (Added in 7.10.7) <br />
 <br />
 This setting also applies to SFTP-connections. curl will attempt to create
 the remote directory if it can't obtain a handle to the target-location.
 The creation will fail if a file of the same name as the directory to create
 already exists or lack of permissions prevents creation. (Added in 7.16.3) <br /> 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_FTP_CREATE_MISSING_DIRS
]]

--[[-- HTTP --
--
]]

--[[-----------------------------------------------------------------------------
 Pass a long as parameter, which is set to a bitmask, to tell libcurl which
 authentication method(s) you want it to use. The available bits are listed
 below. If more than one bit is set, libcurl will first query the site to see
 which authentication methods it supports and then pick the best one you
 allow it to use. For some methods, this will induce an extra network
 round-trip. Set the actual name and password with the @{#curl.OPT_USERPWD}
 option (or with the CURLOPT_USERNAME and the CURLOPT_PASSWORD options : NOT IMPLEMENTED??).
 (Added in 7.10.6) <br /> 
 <br />
 Pass a #number, set to one of the values described below. <br />
 + @{#curl.AUTH_BASIC} <br />
 + @{#curl.AUTH_DIGEST} <br />
 + @{#curl.AUTH_GSSNEGOTIATE} <br />
 + @{#curl.AUTH_NTLM} <br />
 + @{#curl.AUTH_ANY} <br />
 + @{#curl.AUTH_ANYSAFE} <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_HTTPAUTH
]]

--[[-----------------------------------------------------------------------------
 Pass a #number, set to one of the values described below.
 They force libcurl to use the specific HTTP versions.
 This is not sensible to do unless you have a good reason. <br />
 <br />
 _Values:_
 + @{#curl.HTTP_VERSION_NONE} : We don't care about what version the library uses. libcurl will use whatever it thinks fit. <br />
 + @{#curl.HTTP_VERSION_1_0} : Enforce HTTP 1.0 requests. <br />
 + @{#curl.HTTP_VERSION_1_1} : Enforce HTTP 1.1 requests. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number OPT_HTTP_VERSION
]]

--[[-----------------------------------------------------------------------------
 Set the parameter to true to make the library tunnel all operations through
 a given HTTP proxy. There is a big difference between using a proxy and to
 tunnel through it. If you don't know what this means, you probably don't
 want this tunneling option. <br /> 
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_HTTPPROXYTUNNEL
]]

--[[-----------------------------------------------------------------------------
 If the #boolean is true, this forces the HTTP request to get back to GET.
 Usable if a POST, HEAD, PUT, or a custom request has been used previously
 using the same curl handle. <br />
 <br />
 When setting @{#curl.OPT_HTTPGET} to true, it will automatically set
 @{#curl.OPT_NOBODY} to false and @{#curl.OPT_UPLOAD} to false. <br />
 <br /> _needs:_ #boolean
 @field [parent=#curl] #number OPT_HTTPGET
]]

--[[-----------------------------------------------------------------------------
 The #string provides the copy-name.
 libcurl copies the string so your application doesn't need to keep it around
 after this function call. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number COPYNAME
]]

--[[-----------------------------------------------------------------------------
 The #string provides the pointer-name.
 libcurl will use the pointer and refer to the data in your application, so
 you must make sure it remains until curl no longer needs it. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number PTRNAME
]]

--[[-----------------------------------------------------------------------------
 The actual data to send away.
 libcurl copies the provided data, so your application doesn't need to
 keep it around after this function call. If the data isn't null terminated,
 or if you'd like it to contain zero bytes, you must set the length of the
 name with @{#curl.CONTENTSLENGTH}. <br />
 <br /> _needs:_ #table
 @field [parent=#curl] #number COPYCONTENTS
]]

--[[-----------------------------------------------------------------------------
 The actual data to send away.
 libcurl will use the pointer and refer to the data in your application, so
 you must make sure it remains until curl no longer needs it. If the data
 isn't NUL-terminated, or if you'd like it to contain zero bytes, you must
 set its length with @{#curl.CONTENTSLENGTH}. <br />
 <br /> _needs:_ #table
 @field [parent=#curl] #number PTRCONTENTS
]]

--[[-----------------------------------------------------------------------------
 The length of the contents.
 <br /> _needs:_ #number
 @field [parent=#curl] #number CONTENTSLENGTH
]]

--[[-----------------------------------------------------------------------------
 Causes that file to be read and its contents used as data in this part.
 This part does _not_ automatically become a file upload part simply because
 its data was read from a file. <br />
 <br /> _needs:_ #string (filename)
 @field [parent=#curl] #number FILECONTENT
]]

--[[-----------------------------------------------------------------------------
 Makes this part a file upload part.
 It sets the filename field to the basename of the provided filename, it
 reads the contents of the file and passes them as data and sets the
 content-type if the given file match one of the internally known file
 extensions. For @{#curl.FILE} the user may send one or more files in one
 part by providing multiple @{#curl.FILE} arguments each followed by the
 filename (and each @{#curl.FILE} is allowed to have a @{#curl.CONTENTTYPE}). <br />
 <br /> _needs:_ #string (filename)
 @field [parent=#curl] #number FILE
]]

--[[-----------------------------------------------------------------------------
 The #string which provides the content-type for this part, possibly instead
 of an internally chosen one. <br />
 This is used in combination with @{#curl.FILE}. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number CONTENTTYPE
]]

--[[-----------------------------------------------------------------------------
 The #string tells libcurl to use the given string as the filename in the
 file upload part instead of the actual file name. <br />
 This is used in combination with @{#curl.FILE}. <br />
 <br /> _needs:_ #string
 @field [parent=#curl] #number FILENAME
]]

--[[-----------------------------------------------------------------------------
 It tells libcurl that the file contents are already present in a buffer.
 This is used for custom file upload parts without use of @{#curl.FILE}. <br />
 <br /> _needs:_ #string (filename)
 @field [parent=#curl] #number BUFFER
]]

--[[-----------------------------------------------------------------------------
 The parameter is a #number which gives the length of the buffer. 
 This is used in combination with @{#curl.BUFFER}. <br />
 <br /> _needs:_ #number
 @field [parent=#curl] #number BUFFERLENGTH
]]

--[[-----------------------------------------------------------------------------
 The parameter is a (pointer) to the buffer to be uploaded.
 This buffer must not be freed until after @{#curlobj.close} is called. You
 must also use @{#curl.BUFFERLENGTH} to set the number of bytes in the buffer. 
 This is used in combination with @{#curl.BUFFER}.
 @field [parent=#curl] #number BUFFERPTR
]]

--[[-----------------------------------------------------------------------------
 Another possibility to send options is the @{#curl.ARRAY} option, that
 passes a #table of valid options. Each curl_forms structure element has a
 CURLformoption and a char pointer. The final element in the array must be
 a @{#curl.END}. All available options can be used in an array, except the
 @{#curl.ARRAY} option itself! The last argument in such an array must always
 be @{#curl.END}.
 <br /> _needs:_ #table (with  at end)
 @field [parent=#curl] #number ARRAY
]]

--[[-----------------------------------------------------------------------------
 Specifies extra headers for the form POST section.
 This takes a #table. The list must exist while the POST occurs, if you free
 it before the post completes you may experience problems. <br />
 <br />
 When you've passed the HttpPost pointer to @{#curlobj.setopt} (using the
 @{#curl.OPT_HTTPPOST} option), you must not free the list until after you've
 called @{#curlobj.close} for the curl handle.
 <br /> _needs:_ #table
 @field [parent=#curl] #number CONTENTHEADER
]]

--[[-----------------------------------------------------------------------------
 Put this at the end of the #table passed to @{curl.ARRAY}.
 @field [parent=#curl] #number END
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number IOE_OK
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number IOE_UNKNOWNCMD
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number IOE_FAILRESTART
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number IOCMD_NOP
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number IOCMD_RESTARTREAD
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_OK
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_MEMORY
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_UNKNOWN_OPTION
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_OPTION_TWICE
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_NULL
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_INCOMPLETE
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_ILLEGAL_ARRAY
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number CURL_FORMADD_DISABLED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number GOT_NOTHING
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FILESIZE_EXCEEDED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number UNSUPPORTED_PROTOCOL
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FAILED_INIT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number URL_MALFORMAT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number URL_MALFORMAT_USER
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number COULDNT_RESOLVE_PROXY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number COULDNT_RESOLVE_HOST
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number COULDNT_CONNECT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WEIRD_SERVER_REPLY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_ACCESS_DENIED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_USER_PASSWORD_INCORRECT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_PORT_FAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WEIRD_PASS_REPLY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WEIRD_USER_REPLY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WEIRD_PASV_REPLY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WEIRD_227_FORMAT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_CANT_GET_HOST
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_CANT_RECONNECT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_SET_BINARY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number PARTIAL_FILE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_RETR_FILE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_WRITE_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_QUOTE_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number HTTP_RETURNED_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number WRITE_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number MALFORMAT_USER
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_STOR_FILE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number READ_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number OUT_OF_MEMORY
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number OPERATION_TIMEOUTED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_SET_ASCII
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_USE_REST
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_COULDNT_GET_SIZE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number HTTP_RANGE_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number HTTP_POST_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_CONNECT_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number BAD_DOWNLOAD_RESUME
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FILE_COULDNT_READ_FILE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number LDAP_CANNOT_BIND
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number LDAP_SEARCH_FAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number LIBRARY_NOT_FOUND
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FUNCTION_NOT_FOUND
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number ABORTED_BY_CALLBACK
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number BAD_FUNCTION_ARGUMENT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number BAD_CALLING_ORDER
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number INTERFACE_FAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number BAD_PASSWORD_ENTERED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number TOO_MANY_REDIRECTS
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number UNKNOWN_TELNET_OPTION
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number TELNET_OPTION_SYNTAX
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_ENGINE_SETFAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_ENGINE_NOTFOUND
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SEND_ERROR
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SHARE_IN_USE
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_CERTPROBLEM
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_CIPHER
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_CACERT
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number BAD_CONTENT_ENCODING
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number LDAP_INVALID_URL
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number FTP_SSL_FAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SEND_FAIL_REWIND
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number SSL_ENGINE_INITFAILED
]]

--[[-----------------------------------------------------------------------------
 Its a selfdescribing error...
 @field [parent=#curl] #number LOGIN_DENIED
]]

--[[-----------------------------------------------------------------------------
 This is a convenience macro that sets all bits except Basic and thus makes
 libcurl pick any it finds suitable. libcurl will automatically select the
 one it finds most secure. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_ANYSAFE
]]

--[[-----------------------------------------------------------------------------
 This is a convenience macro that sets all bits and thus makes libcurl pick any it finds suitable.
 libcurl will automatically select the one it finds most secure. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_ANY
]]

--[[-----------------------------------------------------------------------------
 No HTTP authentication. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_NONE
]]

--[[-----------------------------------------------------------------------------
 HTTP Basic authentication.
 This is the default choice, and the only method that is in wide-spread use
 and supported virtually everywhere. This sends the user name and password
 over the network in plain text, easily captured by others. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_BASIC
]]

--[[-----------------------------------------------------------------------------
 HTTP Digest authentication.
 Digest authentication is defined in <a target="_blank" href="http://tools.ietf.org/html/rfc2617">RFC 2617</a>
 and is a more secure way to do authentication over public networks than the
 regular old-fashioned Basic method. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_DIGEST
]]

--[[-----------------------------------------------------------------------------
 HTTP GSS-Negotiate authentication. The GSS-Negotiate (also known as plain "Negotiate")
 method was designed by Microsoft and is used in their web applications. It is
 primarily meant as a support for Kerberos5 authentication but may also be
 used along with other authentication methods. For more information see IETF
 draft <a target="_blank" href="http://tools.ietf.org/html/draft-brezak-spnego-http-04">draft-brezak-spnego-http-04.txt</a>. <br />
 <br />
 You need to build libcurl with a suitable GSS-API library for this to work. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_GSSNEGOTIATE
]]

--[[-----------------------------------------------------------------------------
 HTTP NTLM authentication.
 A proprietary protocol invented and used by Microsoft. It uses a
 challenge-response and hash concept similar to Digest, to prevent the
 password from being eavesdropped. <br />
 You need to build libcurl with either OpenSSL, GnuTLS or NSS support for this
 option to work, or build libcurl on Windows with SSPI support. <br />
 Used for @{#curl.OPT_HTTPAUTH}
 @field [parent=#curl] #number AUTH_NTLM
]]

--[[-----------------------------------------------------------------------------
 Allow libcurl to decide. <br />
 Used for @{#curl.OPT_FTPSSLAUTH}
 @field [parent=#curl] #number FTPAUTH_DEFAULT
]]

--[[-----------------------------------------------------------------------------
 Try "AUTH SSL" first, and only if that fails try "AUTH TLS". <br />
 Used for @{#curl.OPT_FTPSSLAUTH}
 @field [parent=#curl] #number FTPAUTH_SSL
]]

--[[-----------------------------------------------------------------------------
 Try "AUTH TLS" first, and only if that fails try "AUTH SSL". <br />
 Used for @{#curl.OPT_FTPSSLAUTH}
 @field [parent=#curl] #number FTPAUTH_TLS
]]

--[[-----------------------------------------------------------------------------
 Don't attempt to use SSL. <br />
 Used for @{#curl.OPT_FTP_SSL}
 @field [parent=#curl] #number FTPSSL_NONE
]]

--[[-----------------------------------------------------------------------------
 Try using SSL, proceed as normal otherwise. <br />
 Used for @{#curl.OPT_FTP_SSL}
 @field [parent=#curl] #number FTPSSL_TRY
]]

--[[-----------------------------------------------------------------------------
 Require SSL for the control connection. <br />
 Used for @{#curl.OPT_FTP_SSL}
 @field [parent=#curl] #number FTPSSL_CONTROL
]]

--[[-----------------------------------------------------------------------------
 Require SSL for all communication. <br />
 Used for @{#curl.OPT_FTP_SSL}
 @field [parent=#curl] #number FTPSSL_ALL
]]

--[[-----------------------------------------------------------------------------
 No time condition <br />
 Used for @{#curl.OPT_TIMECONDITION}
 @field [parent=#curl] #number TIMECOND_NONE
]]

--[[-----------------------------------------------------------------------------
 Condition: last modified <br />
 Used for @{#curl.OPT_TIMECONDITION}
 @field [parent=#curl] #number TIMECOND_LASTMOD
]]

--[[-----------------------------------------------------------------------------
 Condition: If modified since ? <br />
 Used for @{#curl.OPT_TIMECONDITION}
 @field [parent=#curl] #number TIMECOND_IFMODSINCE
]]

--[[-----------------------------------------------------------------------------
 Condition: If unmodified since ? <br />
 Used for @{#curl.OPT_TIMECONDITION}
 @field [parent=#curl] #number TIMECOND_IFUNMODSINCE
]]

--[[-----------------------------------------------------------------------------
 The default action.
 This will attempt to figure out the remote SSL protocol version, i.e. either
 SSLv3 or TLSv1 (but not SSLv2, which became disabled by default with 7.18.1). <br />
 Used for @{#curl.OPT_SSLVERSION}
 @field [parent=#curl] #number SSLVERSION_DEFAULT
]]

--[[-----------------------------------------------------------------------------
 Force TLSv1 <br />
 Used for @{#curl.OPT_SSLVERSION}
 @field [parent=#curl] #number SSLVERSION_TLSv1
]]

--[[-----------------------------------------------------------------------------
 Force SSLv2 <br />
 Used for @{#curl.OPT_SSLVERSION}
 @field [parent=#curl] #number SSLVERSION_SSLv2
]]

--[[-----------------------------------------------------------------------------
 Force SSLv3 <br />
 Used for @{#curl.OPT_SSLVERSION}
 @field [parent=#curl] #number SSLVERSION_SSLv3
]]

--[[-----------------------------------------------------------------------------
 The library will ignore the file and use only the information in the URL.
 This is the default. <br />
 Used for @{#curl.OPT_NETRC}
 @field [parent=#curl] #number NETRC_IGNORED
]]

--[[-----------------------------------------------------------------------------
 The use of your ~/.netrc file is optional, and information in the URL is to be preferred.
 The file will be scanned for the host and user name (to find the password only)
 or for the host only, to find the first user name and password after that
 machine, which ever information is not specified in the URL. <br />
 <br />
 Undefined values of the option will have this effect. <br />
 Used for @{#curl.OPT_NETRC}
 @field [parent=#curl] #number NETRC_OPTIONAL
]]

--[[-----------------------------------------------------------------------------
 This value tells the library that use of the file is required, to ignore
 the information in the @{#curl.OPT_URL}, and to search the file for the host
 only. <br />
 Used for @{#curl.OPT_NETRC}
 @field [parent=#curl] #number NETRC_REQUIRED
]]

--[[-----------------------------------------------------------------------------
 We don't care about what version the library uses. libcurl will use whatever it thinks fit. <br />
 Used for @{#curl.OPT_HTTP_VERSION}
 @field [parent=#curl] #number HTTP_VERSION_NONE
]]

--[[-----------------------------------------------------------------------------
 Enforce HTTP 1.0 requests. <br />
 Used for @{#curl.OPT_HTTP_VERSION}
 @field [parent=#curl] #number HTTP_VERSION_1_0
]]

--[[-----------------------------------------------------------------------------
 Enforce HTTP 1.1 requests. <br />
 Used for @{#curl.OPT_HTTP_VERSION}
 @field [parent=#curl] #number HTTP_VERSION_1_1
]]

--[[-----------------------------------------------------------------------------
 _(obsolete)_ The oldest close-policy <br />
 Used for @{#curl.OPT_CLOSEPOLICY}
 @field [parent=#curl] #number CLOSEPOLICY_OLDEST
]]

--[[-----------------------------------------------------------------------------
 _(obsolete)_ The least recently used close-policy <br />
 Used for @{#curl.OPT_CLOSEPOLICY}
 @field [parent=#curl] #number CLOSEPOLICY_LEAST_RECENTLY_USED
]]

--[[-----------------------------------------------------------------------------
 _(obsolete)_ The least traffic using close-policy <br />
 Used for @{#curl.OPT_CLOSEPOLICY}
 @field [parent=#curl] #number CLOSEPOLICY_LEAST_TRAFFIC
]]

--[[-----------------------------------------------------------------------------
 _(obsolete)_ The slowest close-policy <br />
 Used for @{#curl.OPT_CLOSEPOLICY}
 @field [parent=#curl] #number CLOSEPOLICY_SLOWEST
]]

--[[-----------------------------------------------------------------------------
 _(obsolete)_ The callback of @{#curl.OPT_CLOSEPOLICY} <br />
 Used for @{#curl.OPT_CLOSEPOLICY}
 @field [parent=#curl] #number CLOSEPOLICY_CALLBACK
]]

--[[-----------------------------------------------------------------------------
 HTTP-type proxy <br />
 Used for @{#curl.OPT_PROXYTYPE}
 @field [parent=#curl] #number PROXY_HTTP
]]

--[[-----------------------------------------------------------------------------
 SOCKS4-type proxy <br />
 Used for @{#curl.OPT_PROXYTYPE}
 @field [parent=#curl] #number PROXY_SOCKS4
]]

--[[-----------------------------------------------------------------------------
 SOCKS5-type proxy <br />
 Used for @{#curl.OPT_PROXYTYPE}
 @field [parent=#curl] #number PROXY_SOCKS5
]]

--[[-----------------------------------------------------------------------------
 Default, resolves addresses to all IP versions that your system allows. <br />
 Used for @{#curl.OPT_IPRESOLVE}
 @field [parent=#curl] #number IPRESOLVE_WHATEVER
]]

--[[-----------------------------------------------------------------------------
 Resolve to IPv4 addresses. <br />
 Used for @{#curl.OPT_IPRESOLVE}
 @field [parent=#curl] #number IPRESOLVE_V4
]]

--[[-----------------------------------------------------------------------------
 Resolve to IPv6 addresses. <br />
 Used for @{#curl.OPT_IPRESOLVE}
 @field [parent=#curl] #number IPRESOLVE_V6
]]

--[[-----------------------------------------------------------------------------
 Returnd by any @{#curl} related function to say anything went well.
 @field [parent=#curl] #number OK
]]

--[[-----------------------------------------------------------------------------
 
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_NONE
]]

--[[-----------------------------------------------------------------------------
 The last used effective URL. 
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_EFFECTIVE_URL
]]

--[[-----------------------------------------------------------------------------
 The content-type of the downloaded object.
 This is the value read from the Content-Type: field. If you get #nil, it
 means that the server didn't send a valid Content-Type header or that the
 protocol used doesn't support this.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_CONTENT_TYPE
]]

--[[-----------------------------------------------------------------------------
 The pointer to the private data associated with the curl handle.
 As @{#curl.OPT_PRIVATE} is missing, you can't use it...
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_PRIVATE
]]

--[[-----------------------------------------------------------------------------
 The last received HTTP, FTP or SMTP response code.
 This option was previously known as CURLINFO_HTTP_CODE in libcurl 7.10.7
 and earlier. The value will be zero if no server response code has been
 received. Note that a proxy's CONNECT response should be read with
 @{#curl.INFO_HTTP_CONNECTCODE} and not this.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_RESPONSE_CODE
]]

--[[-----------------------------------------------------------------------------
 The total size of all the headers received. Measured in number of bytes.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_HEADER_SIZE
]]

--[[-----------------------------------------------------------------------------
 The total size of the issued requests.
 This is so far only for HTTP requests.
 Note that this may be more than one request if FOLLOWLOCATION is true.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_REQUEST_SIZE
]]

--[[-----------------------------------------------------------------------------
 The result of the certification verification that was requested
 (using the @{#curl.OPT_SSL_VERIFYPEER} option to @{#curlobj.setopt}).
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SSL_VERIFYRESULT
]]

--[[-----------------------------------------------------------------------------
 The remote time of the retrieved document
 (in number of seconds since 1 Jan 1970 in the GMT/UTC time zone).
 If you get -1, it can be because of many reasons (unknown, the server hides
 it or the server doesn't support the command that tells document time etc)
 and the time of the document is unknown. Note that you must tell the server
 to collect this information before the transfer is made, by using the
 @{#curl.OPT_FILETIME} option to @{#curlobj.setopt} or you will unconditionally
 get a -1 back. (Added in 7.5)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_FILETIME
]]

--[[-----------------------------------------------------------------------------
 The total number of redirections that were actually followed. (Added in 7.9.7)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_REDIRECT_COUNT
]]

--[[-----------------------------------------------------------------------------
 The last received proxy response code to a CONNECT request.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_HTTP_CONNECTCODE
]]

--[[-----------------------------------------------------------------------------
 Bitmask indicating the authentication method(s) available.
 The meaning of the bits is explained in the @{#curl.OPT_HTTPAUTH} option
 for @{#curlobj.setopt}. (Added in 7.10.8)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_HTTPAUTH_AVAIL
]]

--[[-----------------------------------------------------------------------------
 Bitmask indicating the authentication method(s) available for your proxy
 authentication. (Added in 7.10.8)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_PROXYAUTH_AVAIL
]]

--[[-----------------------------------------------------------------------------
 How many new connections libcurl had to create to achieve the previous
 transfer (only the successful connects are counted). Combined with
 @{#curl.INFO_REDIRECT_COUNT} you are able to know how many times libcurl
 successfully reused existing connection(s) or not. See the Connection Options
 of @{#curlobj.setopt} to see how libcurl tries to make persistent connections
 to save time. (Added in 7.12.3) 
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_NUM_CONNECTS
]]

--[[-----------------------------------------------------------------------------
 The errno variable from a connect failure.
 Note that the value is only set on failure, it is not reset upon a successful
 operation. (Added in 7.12.2)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_OS_ERRNO
]]

--[[-----------------------------------------------------------------------------
 The last socket used by this curl session. 
 If the socket is no longer valid, -1 is returned. When you finish working
 with the socket, you must call @{#curlobj.close} as usual and let libcurl
 close the socket and cleanup other resources associated with the handle. <br />
 <br />
 _NOTE:_ this API is not really working on win64, since the SOCKET type on
 win64 is 64 bit large while its 'long' is only 32 bits.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_LASTSOCKET
]]

--[[-----------------------------------------------------------------------------
 The total time in seconds for the previous transfer, including name resolving, TCP connect etc.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_TOTAL_TIME
]]

--[[-----------------------------------------------------------------------------
 The time, in seconds, it took from the start until the name resolving was completed.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_NAMELOOKUP_TIME
]]

--[[-----------------------------------------------------------------------------
 The time, in seconds, it took from the start until the connect to the remote host (or proxy) was completed.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_CONNECT_TIME
]]

--[[-----------------------------------------------------------------------------
 The time, in seconds, it took from the start until the file transfer is just about to begin.
 This includes all pre-transfer commands and negotiations that are specific
 to the particular protocol(s) involved. It does not involve the sending of
 the protocol- specific request that triggers a transfer.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_PRETRANSFER_TIME
]]

--[[-----------------------------------------------------------------------------
 The total amount of bytes that were uploaded.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SIZE_UPLOAD
]]

--[[-----------------------------------------------------------------------------
 The total amount of bytes that were downloaded. The amount is only for the latest transfer and will be reset again for each new transfer.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SIZE_DOWNLOAD
]]

--[[-----------------------------------------------------------------------------
 The average download speed that curl measured for the complete download.
 Measured in bytes/second.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SPEED_DOWNLOAD
]]

--[[-----------------------------------------------------------------------------
 The average upload speed that curl measured for the complete upload.
 Measured in bytes/second.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SPEED_UPLOAD
]]

--[[-----------------------------------------------------------------------------
 The total time, in seconds, it took for all redirection steps include name
 lookup, connect, pretransfer and transfer before final transaction was started.
 #curl.INFO_REDIRECT_TIME} contains the complete execution time for multiple
 redirections. (Added in 7.9.7)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_REDIRECT_TIME
]]

--[[-----------------------------------------------------------------------------
 The content-length of the download.
 This is the value read from the Content-Length: field.
 Since 7.19.4, this returns -1 if the size isn't known.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_CONTENT_LENGTH_DOWNLOAD
]]

--[[-----------------------------------------------------------------------------
 The specified size of the upload.
 Since 7.19.4, this returns -1 if the size isn't known.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_CONTENT_LENGTH_UPLOAD
]]

--[[-----------------------------------------------------------------------------
 The time, in seconds, it took from the start until the first byte is received by libcurl.
 This includes @{#curl.INFO_PRETRANSFER_TIME} and also the time the server
 needs to calculate the result.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_STARTTRANSFER_TIME
]]

--[[-----------------------------------------------------------------------------
 Pass a #table of OpenSSL crypto-engines supported.
 Note that engines are normally implemented in separate dynamic libraries.
 Hence not all the returned engines may be available at run-time.
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_SSL_ENGINES
]]

--[[-----------------------------------------------------------------------------
 Pass a #table of all cookies cURL knows (expired ones, too).
 If there are no cookies (cookies for the handle have not been enabled or
 simply none have been received) it will return  #nil. (Added in 7.14.1)
 <br /> Used as parameter for @{#curlobj.getinfo}
 @field [parent=#curl] #number INFO_COOKIELIST
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number OBSOLETE
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number OBSOLETE2
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number NAMELENGTH
]]

--[[-----------------------------------------------------------------------------
 UNDOCUMENTED/NOTHING FOUND
 @field [parent=#curl] #number SSL_PEER_CERTIFICATE
]]

--[[-----------------------------------------------------------------------------
 Aborts the read-function.
 I can't really say if its usefull in Lua, as Lua does not provide cross-thread
 used variables in threading...
 @field [parent=#curl] #number READFUNC_ABORT
]]

return nil
