﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; OperaGX
#o::Run C:\Users\Oleg\AppData\Local\Programs\Opera GX\launcher.exe
; Joplin
#j::Run D:\Apps\Joplin\Joplin.exe
; Windows Terminal
#t::Run C:\Users\Oleg\AppData\Local\Microsoft\WindowsApps\wt.exe
; Windows Terminal as administrator
^#t::Run *RunAs C:\Users\Oleg\AppData\Local\Microsoft\WindowsApps\wt.exe
; Matlab
#m::Run D:\Apps\MatlabSimulink\bin\matlab.exe
; KeePass 2
#k::Run D:\Apps\KeePass Password Safe 2\KeePass.exe
; Word
#w::Run C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE