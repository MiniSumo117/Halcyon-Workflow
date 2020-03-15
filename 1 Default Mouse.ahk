#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;===============================================================================
;                                 Mouse Buttons                                    
;===============================================================================

;=====================================1-3=======================================
; Button 1 
F1::RightVirtualDestop()
return

; Button 2
F2::ViewAllVirtualDesktops()
return

; Button 3
F3::LeftVirtualDestop()
return

;=====================================3-6=======================================
; Button 4
F4::NextTrack()
return

; Button 5
F5::SpotifyPlayPause()
return

; Button 6
F6::LastTrack()
return

;======================================7-9======================================
; Button 7  
F7::
return

; Button 8
F8::PlayPause()
return

; Button 9
F9::
return

;=====================================10-12======================================
;Button 10
F10::CloseTaskManager()
return

; Button 11
F11::RunTaskManager()
return

; Button 12
F12::
return

;=====================================X Buttons======================================
#IfWinActive, ahk_exe chrome.exe

XButton1::
    Send, {XButton1}
return


XButton2::
    Send, {XButton2}
return

#If

XButton1::
    UnDo()    
return

XButton2::
    ReDo()
return

