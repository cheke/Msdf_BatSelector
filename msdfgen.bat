<# : chooser.bat
:: launches a File... Open sort of file chooser and outputs choice(s) to the console
:: https://stackoverflow.com/a/15885133/1683264
:: Cheke 2018 Spending third day of Spring UEGameJam to do it :( , better days comes after hard work :)

@echo off
setlocal
ECHO Type Width:
SET /P Width=
ECHO Type Height:
SET /P Height=
ECHO Type Range:
SET /P Range=
for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
"msdfgen.exe" "msdf" -svg "%%~I" -o "%%~I".png -size %Width% %Height% -pxrange %Range% -autoframe -testrender "%%~I"_render.png 128 128
    echo You chose %%~I
)


PAUSE>NUL
goto :EOF

: end Batch portion / begin PowerShell hybrid chimera #>

Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.OpenFileDialog
$f.InitialDirectory = pwd
$f.Filter = "Text Files (*.svg)|*.svg|All Files (*.*)|*.*"
$f.ShowHelp = $true
$f.Multiselect = $true
[void]$f.ShowDialog()
if ($f.Multiselect) { $f.FileNames } else { $f.FileName }


