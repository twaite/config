#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState Off
state:=false
Esc::
 state:= not state
 if (state) {
	 SetCapsLockState On
 } else {
	 SetCapsLockState Off
 }
 Return

*CapsLock::
	Send {LControl down}
	Return
*CapsLock up::
	Send {LControl Up}
	if (A_PriorKey=="CapsLock"){
		if (A_TimeSincePriorHotkey < 1000)
			Suspend On
			Send, {Esc}
			Suspend Off
	} Return

!j::Send {Down}
!h::Send {Left}
!l::Send {Right}
!k::Send {Up}

!c::
	id := WinExist("ahk_exe firefox.exe")
	if (id)
		WinActivate, ahk_id %id%
	Return


!v::
	id := WinExist("ahk_exe code.exe")
	if (id)
		WinActivate, ahk_id %id%
	Return

!t::
	id := WinExist("ahk_exe ConEmu64.exe")
	if (id)
		WinActivate, ahk_id %id%
	Return

!a::
	id := WinExist("ahk_exe slack.exe")
	if (id)
		WinActivate, ahk_id %id%
	else 
		Run, "C:\Users\tawai\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Slack Technologies\slack.exe"
	Return

; this isn't working WHYYYY
LWin::LCtrl
LWin & Space::Send {RWin}
