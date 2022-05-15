package = "luajls"
version = "0.6-6"
source = {
   url = "git+https://github.com/javalikescript/luajls.git",
   tag = "0.6.6",
}
description = {
   summary = "luajls is a set of Lua modules for developing stand-alone Lua applications",
   detailed = [[
      luajls is a set of Lua modules for developing stand-alone Lua applications.
      The modules provide general-purpose functions such as class definition and promise, to operating system abstractions such as file system and network access. The modules support asynchronous I/O based on event loops.
      The main targeted operating systems are Linux and Windows.
      For dependencies use rock module luajls-lfs or luajls-luv
   ]],
   homepage = "https://github.com/javalikescript/luajls",
   license = "MIT",
   --labels = { "event", "linux", "windows", "filesystem", "http", "compression", "json" },
}
dependencies = {
   "lua >= 5.4",
   "dkjson",
   "sha1",
   "xml2lua",
   "luaunit", -- test dependency
}
build = {
   type = "builtin",
   modules = {
      ["jls.io.File"] = "jls/io/File.lua",
      ["jls.io.FileDescriptor"] = "jls/io/FileDescriptor.lua",
      ["jls.io.FileDescriptor-"] = "jls/io/FileDescriptor-.lua",
      ["jls.io.FileDescriptor-luv"] = "jls/io/FileDescriptor-luv.lua",
      ["jls.io.Path"] = "jls/io/Path.lua",
      ["jls.io.Pipe"] = "jls/io/Pipe.lua",
      ["jls.io.Pipe-luachild"] = "jls/io/Pipe-luachild.lua",
      ["jls.io.Pipe-luv"] = "jls/io/Pipe-luv.lua",
      ["jls.io.Serial"] = "jls/io/Serial.lua",
      ["jls.io.Serial-"] = "jls/io/Serial-.lua",
      ["jls.io.Serial-luv"] = "jls/io/Serial-luv.lua",
      ["jls.io.SerialBase"] = "jls/io/SerialBase.lua",
      ["jls.io.StreamHandler"] = "jls/io/StreamHandler.lua",
      ["jls.io.fs"] = "jls/io/fs.lua",
      ["jls.io.fs-lfs"] = "jls/io/fs-lfs.lua",
      ["jls.io.fs-luv"] = "jls/io/fs-luv.lua",
      ["jls.io.streams.BlockStreamHandler"] = "jls/io/streams/BlockStreamHandler.lua",
      ["jls.io.streams.BufferedStreamHandler"] = "jls/io/streams/BufferedStreamHandler.lua",
      ["jls.io.streams.CallbackStreamHandler"] = "jls/io/streams/CallbackStreamHandler.lua",
      ["jls.io.streams.ChunkedStreamHandler"] = "jls/io/streams/ChunkedStreamHandler.lua",
      ["jls.io.streams.DelayedStreamHandler"] = "jls/io/streams/DelayedStreamHandler.lua",
      ["jls.io.streams.FileStreamHandler"] = "jls/io/streams/FileStreamHandler.lua",
      ["jls.io.streams.LimitedStreamHandler"] = "jls/io/streams/LimitedStreamHandler.lua",
      ["jls.io.streams.PromiseStreamHandler"] = "jls/io/streams/PromiseStreamHandler.lua",
      ["jls.io.streams.RangeStreamHandler"] = "jls/io/streams/RangeStreamHandler.lua",
      ["jls.io.streams.StreamHandler"] = "jls/io/streams/StreamHandler.lua",
      ["jls.io.streams.WrappedStreamHandler"] = "jls/io/streams/WrappedStreamHandler.lua",
      ["jls.lang.ProcessBuilder"] = "jls/lang/ProcessBuilder.lua",
      ["jls.lang.ProcessHandle"] = "jls/lang/ProcessHandle.lua",
      ["jls.lang.ProcessHandle-"] = "jls/lang/ProcessHandle-.lua",
      ["jls.lang.ProcessHandle-linux"] = "jls/lang/ProcessHandle-linux.lua",
      ["jls.lang.ProcessHandle-luachild"] = "jls/lang/ProcessHandle-luachild.lua",
      ["jls.lang.ProcessHandle-luv"] = "jls/lang/ProcessHandle-luv.lua",
      ["jls.lang.ProcessHandle-win32"] = "jls/lang/ProcessHandle-win32.lua",
      ["jls.lang.ProcessHandleBase"] = "jls/lang/ProcessHandleBase.lua",
      ["jls.lang.Promise"] = "jls/lang/Promise.lua",
      ["jls.lang.StringBuffer"] = "jls/lang/StringBuffer.lua",
      ["jls.lang.Thread"] = "jls/lang/Thread.lua",
      ["jls.lang.Thread-llthreads"] = "jls/lang/Thread-llthreads.lua",
      ["jls.lang.Thread-luv"] = "jls/lang/Thread-luv.lua",
      ["jls.lang.class"] = "jls/lang/class.lua",
      ["jls.lang.event"] = "jls/lang/event.lua",
      ["jls.lang.event-"] = "jls/lang/event-.lua",
      ["jls.lang.event-luv"] = "jls/lang/event-luv.lua",
      ["jls.lang.formatCommandLine"] = "jls/lang/formatCommandLine.lua",
      ["jls.lang.loader"] = "jls/lang/loader.lua",
      ["jls.lang.logger"] = "jls/lang/logger.lua",
      ["jls.lang.loopWithTimeout"] = "jls/lang/loopWithTimeout.lua",
      ["jls.lang.luv_stream"] = "jls/lang/luv_stream.lua",
      ["jls.lang.protectedCall"] = "jls/lang/protectedCall.lua",
      ["jls.lang.protectedCallLog"] = "jls/lang/protectedCallLog.lua",
      ["jls.lang.runtime"] = "jls/lang/runtime.lua",
      ["jls.lang.setenv"] = "jls/lang/setenv.lua",
      ["jls.lang.sys"] = "jls/lang/sys.lua",
      ["jls.lang.sys-"] = "jls/lang/sys-.lua",
      ["jls.lang.sys-luv"] = "jls/lang/sys-luv.lua",
      ["jls.lang.sys-socket"] = "jls/lang/sys-socket.lua",
      ["jls.lang.system"] = "jls/lang/system.lua",
      ["jls.net.Selector-socket"] = "jls/net/Selector-socket.lua",
      ["jls.net.Tcp-luv"] = "jls/net/Tcp-luv.lua",
      ["jls.net.Tcp-socket"] = "jls/net/Tcp-socket.lua",
      ["jls.net.TcpClient"] = "jls/net/TcpClient.lua",
      ["jls.net.TcpClient-luv"] = "jls/net/TcpClient-luv.lua",
      ["jls.net.TcpClient-socket"] = "jls/net/TcpClient-socket.lua",
      ["jls.net.TcpServer"] = "jls/net/TcpServer.lua",
      ["jls.net.TcpServer-luv"] = "jls/net/TcpServer-luv.lua",
      ["jls.net.TcpServer-socket"] = "jls/net/TcpServer-socket.lua",
      ["jls.net.UdpSocket"] = "jls/net/UdpSocket.lua",
      ["jls.net.UdpSocket-luv"] = "jls/net/UdpSocket-luv.lua",
      ["jls.net.UdpSocket-socket"] = "jls/net/UdpSocket-socket.lua",
      ["jls.net.Url"] = "jls/net/Url.lua",
      ["jls.net.dns"] = "jls/net/dns.lua",
      ["jls.net.dns-luv"] = "jls/net/dns-luv.lua",
      ["jls.net.dns-socket"] = "jls/net/dns-socket.lua",
      ["jls.net.http.Attributes"] = "jls/net/http/Attributes.lua",
      ["jls.net.http.HeaderStreamHandler"] = "jls/net/http/HeaderStreamHandler.lua",
      ["jls.net.http.HttpClient"] = "jls/net/http/HttpClient.lua",
      ["jls.net.http.HttpContext"] = "jls/net/http/HttpContext.lua",
      ["jls.net.http.HttpExchange"] = "jls/net/http/HttpExchange.lua",
      ["jls.net.http.HttpFilter"] = "jls/net/http/HttpFilter.lua",
      ["jls.net.http.HttpHandler"] = "jls/net/http/HttpHandler.lua",
      ["jls.net.http.HttpHeaders"] = "jls/net/http/HttpHeaders.lua",
      ["jls.net.http.HttpMessage"] = "jls/net/http/HttpMessage.lua",
      ["jls.net.http.HttpRequest"] = "jls/net/http/HttpRequest.lua",
      ["jls.net.http.HttpResponse"] = "jls/net/http/HttpResponse.lua",
      ["jls.net.http.HttpServer"] = "jls/net/http/HttpServer.lua",
      ["jls.net.http.filter.BasicAuthenticationHttpFilter"] = "jls/net/http/filter/BasicAuthenticationHttpFilter.lua",
      ["jls.net.http.form"] = "jls/net/http/form.lua",
      ["jls.net.http.handler.FileHttpHandler"] = "jls/net/http/handler/FileHttpHandler.lua",
      ["jls.net.http.handler.ProxyHttpHandler"] = "jls/net/http/handler/ProxyHttpHandler.lua",
      ["jls.net.http.handler.RestHttpHandler"] = "jls/net/http/handler/RestHttpHandler.lua",
      ["jls.net.http.handler.TableHttpHandler"] = "jls/net/http/handler/TableHttpHandler.lua",
      ["jls.net.http.handler.WebDavHttpHandler"] = "jls/net/http/handler/WebDavHttpHandler.lua",
      ["jls.net.http.handler.ZipFileHttpHandler"] = "jls/net/http/handler/ZipFileHttpHandler.lua",
      ["jls.net.http.ws"] = "jls/net/http/ws.lua",
      ["jls.net.mqtt"] = "jls/net/mqtt.lua",
      ["jls.net.secure"] = "jls/net/secure.lua",
      ["jls.util.Channel"] = "jls/util/Channel.lua",
      ["jls.util.CoroutineScheduler"] = "jls/util/CoroutineScheduler.lua",
      ["jls.util.Date"] = "jls/util/Date.lua",
      ["jls.util.EventPublisher"] = "jls/util/EventPublisher.lua",
      ["jls.util.List"] = "jls/util/List.lua",
      ["jls.util.LocalDateTime"] = "jls/util/LocalDateTime.lua",
      ["jls.util.Map"] = "jls/util/Map.lua",
      ["jls.util.MessageDigest"] = "jls/util/MessageDigest.lua",
      ["jls.util.Scheduler"] = "jls/util/Scheduler.lua",
      ["jls.util.SerialWorker"] = "jls/util/SerialWorker.lua",
      ["jls.util.Struct"] = "jls/util/Struct.lua",
      ["jls.util.TableList"] = "jls/util/TableList.lua",
      ["jls.util.WebView"] = "jls/util/WebView.lua",
      ["jls.util.Worker"] = "jls/util/Worker.lua",
      ["jls.util.Worker-"] = "jls/util/Worker-.lua",
      ["jls.util.Worker-channel"] = "jls/util/Worker-channel.lua",
      ["jls.util.base64"] = "jls/util/base64.lua",
      ["jls.util.cd.base64"] = "jls/util/cd/base64.lua",
      ["jls.util.cd.cipher"] = "jls/util/cd/cipher.lua",
      ["jls.util.cd.deflate"] = "jls/util/cd/deflate.lua",
      ["jls.util.cd.gzip"] = "jls/util/cd/gzip.lua",
      ["jls.util.cd.hex"] = "jls/util/cd/hex.lua",
      ["jls.util.codec"] = "jls/util/codec.lua",
      ["jls.util.color"] = "jls/util/color.lua",
      ["jls.util.hex"] = "jls/util/hex.lua",
      ["jls.util.json"] = "jls/util/json.lua",
      ["jls.util.json-cjson"] = "jls/util/json-cjson.lua",
      ["jls.util.json-dkjson"] = "jls/util/json-dkjson.lua",
      ["jls.util.json-lunajson"] = "jls/util/json-lunajson.lua",
      ["jls.util.md.Crc32"] = "jls/util/md/Crc32.lua",
      ["jls.util.md.Crc32-"] = "jls/util/md/Crc32-.lua",
      ["jls.util.md.Crc32-zlib"] = "jls/util/md/Crc32-zlib.lua",
      ["jls.util.md.md5"] = "jls/util/md/md5.lua",
      ["jls.util.md.md5-"] = "jls/util/md/md5-.lua",
      ["jls.util.md.md5-openssl"] = "jls/util/md/md5-openssl.lua",
      ["jls.util.md.sha1"] = "jls/util/md/sha1.lua",
      ["jls.util.md.sha1-"] = "jls/util/md/sha1-.lua",
      ["jls.util.md.sha1-openssl"] = "jls/util/md/sha1-openssl.lua",
      ["jls.util.memprof"] = "jls/util/memprof.lua",
      ["jls.util.strings"] = "jls/util/strings.lua",
      ["jls.util.tables"] = "jls/util/tables.lua",
      ["jls.util.xml"] = "jls/util/xml.lua",
      ["jls.util.zip.Deflater"] = "jls/util/zip/Deflater.lua",
      ["jls.util.zip.Inflater"] = "jls/util/zip/Inflater.lua",
      ["jls.util.zip.ZipFile"] = "jls/util/zip/ZipFile.lua",
      ["jls.util.zip.gzip"] = "jls/util/zip/gzip.lua",
      ["jls.util.zip.tar"] = "jls/util/zip/tar.lua",
   },
   copy_directories = {
      "examples",
      "tests",
   }
}
