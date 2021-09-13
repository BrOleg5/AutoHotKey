#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff
CapsLock::Send {BackSpace}
Return

>!m::Send {Del}
Return

;Home/End/PgUp/PgDown/
>!h::Send {PgUp}
Return
>!n::Send {PgDn}
Return
>!u::Send {Home}
Return
>!o::Send {End}
Return
 
;Shift + /Home/End/PgUp/PgDown/
>!+h::Send +{PgUp}
Return
>!+n::Send +{PgDn}
Return
>!+u::Send +{Home}
Return
>!+o::Send +{End}
Return
 
 
;Simple arrows
>!i::Send {Up}
Return
>!j::Send {Left}
Return
>!k::Send {Down}
Return
>!l::Send {Right}
 
;Shift-Arrows
>!+i::Send +{Up}
Return
>!+j::Send +{Left}
Return
>!+k::Send +{Down}
Return
>!+l::Send +{Right}
Return
 
;Alt-Arrows
<!>!i::SendInput,!{Up}
<!>!j::SendInput,!{Left}
<!>!k::SendInput,!{Down}
<!>!l::SendInput,!{Right}
 
;Ctrl-Arrows
>!^o::SendInput,^{Up}
>!^k::SendInput,^{Left}
>!^l::SendInput,^{Down}
>!^;::SendInput,^{Right}
 
;Shift-Ctrl-Arrows
>!^+o::SendInput,^{Up}
>!^+k::SendInput,^{Left}
>!^+l::SendInput,^{Down}
>!^+;::SendInput,^{Right}
 
 
; Arithmetic symbols
>!s::SendInput,{-}
>!d::SendInput,{+}
>!f::SendInput,{*}
>!g::SendInput,{=}
 
 
; Parens
>!w::SendInput,{(}
>!e::SendInput,{)}
>!x::SendInput,{{}
>!c::SendInput,{}}
 
; Quotes
>!v::SendInput,{"}
>!b::SendInput,{'}