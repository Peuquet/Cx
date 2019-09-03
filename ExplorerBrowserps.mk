
ExplorerBrowserps.dll: dlldata.obj ExplorerBrowser_p.obj ExplorerBrowser_i.obj
	link /dll /out:ExplorerBrowserps.dll /def:ExplorerBrowserps.def /entry:DllMain dlldata.obj ExplorerBrowser_p.obj ExplorerBrowser_i.obj \
		kernel32.lib rpcndr.lib rpcns4.lib rpcrt4.lib oleaut32.lib uuid.lib \
.c.obj:
	cl /c /Ox /DWIN32 /D_WIN32_WINNT=0x0400 /DREGISTER_PROXY_DLL \
		$<

clean:
	@del ExplorerBrowserps.dll
	@del ExplorerBrowserps.lib
	@del ExplorerBrowserps.exp
	@del dlldata.obj
	@del ExplorerBrowser_p.obj
	@del ExplorerBrowser_i.obj
