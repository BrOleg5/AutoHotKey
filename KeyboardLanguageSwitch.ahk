#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Source link: https://www.autohotkey.com/boards/viewtopic.php?t=42784

;This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/>.
#NoEnv
#SingleInstance force
FileEncoding UTF-8
Process Priority,, High

layouts := GetLayoutList()
~LControl Up:: SwtichLang(layouts[2])
~RControl Up:: SwtichLang(layouts[1])

SwtichLang(newLocale) {
    Thread Priority, 1 ; No re-entrance
    If (A_ThisHotkey == "~" A_PriorKey " Up") {
	If ( InputLocaleID := DllCall("GetKeyboardLayout", "UInt", ThreadID := DllCall("GetWindowThreadProcessId", "UInt", WinExist("A"), "UInt", 0), "UInt") ) {
	    If (InputLocaleID != newLocale) { ; if language is not english XOR requested non-english
		ControlGetFocus,ctl
		PostMessage 0x50,3,%newLocale%,%ctl%,A ;WM_INPUTLANGCHANGEREQUEST - change locale, documentation https://msdn.microsoft.com/en-us/library/windows/desktop/ms632630.aspx
		; wParam
		; INPUTLANGCHANGE_BACKWARD 0x0004 A hot key was used to choose the previous input locale in the installed list of input locales. This flag cannot be used with the INPUTLANGCHANGE_FORWARD flag.
		; INPUTLANGCHANGE_FORWARD 0x0002 A hot key was used to choose the next input locale in the installed list of input locales. This flag cannot be used with the INPUTLANGCHANGE_BACKWARD flag.
		; INPUTLANGCHANGE_SYSCHARSET 0x0001 The new input locale's keyboard layout can be used with the system character set.
		
	    }
	}
    }
}

GetLayoutList() { ; List of system loaded layouts, from Lyt.ahk / https://autohotkey.com/boards/viewtopic.php?p=132600#p132600
    aLayouts := []
    size := DllCall("GetKeyboardLayoutList", "UInt", 0, "Ptr", 0)
    VarSetCapacity(list, A_PtrSize*size)
    size := DllCall("GetKeyboardLayoutList", Int, size, Str, list)
    Loop % size
	aLayouts[A_Index] := NumGet(list, A_PtrSize*(A_Index - 1))
    Return aLayouts
}