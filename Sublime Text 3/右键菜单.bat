@echo off
SET sublimeTextPath=F:\wx\sublime3\Sublime Text 3\sublime_text.exe
 
REM ADD REGISTRY KEYS
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text"         /t REG_SZ /v "" /d "Sublime Text 3"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text"         /t REG_EXPAND_SZ /v "Icon" /d "%sublimeTextPath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime Text\command" /t REG_SZ /v "" /d "%sublimeTextPath% \"%%1\"" /f
 
pause