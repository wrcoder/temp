<!-- : (":" is required)
@echo off & setlocal
cscript.exe //nologo "%~f0?.wsf" //job:Print & exit /b
-->

<job id="Print">
  <script language="VBScript">
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run "notepad.exe", 9
    WScript.Sleep 500 
    WshShell.SendKeys "Hello World!"
    WshShell.SendKeys "{ENTER}"
    WshShell.SendKeys "{F5}"
  </script>
</job>