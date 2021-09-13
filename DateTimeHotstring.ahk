#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Time (24-hr)
; Example: 09:12
::]t::
FormatTime, Time,, HH:mm 
sendinput %Time%
return

; Date only
; Example: 16.08.2021
::]d::
FormatTime, CurrentDate,, dd.MM.yyyy  
SendInput %CurrentDate%
return