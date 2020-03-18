#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;===============================================================================
;                                 Mouse Buttons                                    
;===============================================================================

;=====================================1-3=======================================
; Button 1 
1::RightVirtualDestop()
return

; Button 2
2::ViewAllVirtualDesktops()
return

; Button 3
3::LeftVirtualDestop()
return

;=====================================3-6=======================================
; Button 4
4::NextTrack()
return

; Button 5
5::SpotifyPlayPause()
return

; Button 6
6::LastTrack()
return

;======================================7-9======================================
; Button 7  
7::UnDo()
return

; Button 8
8:: ;copy n paste bs
return

; Button 9
9::ReDo()
return

;=====================================10-12======================================
;Button 10
0::Delete
return

; Button 11
-::Enter
return

; Button 12
=::BackSpace
return

;=====================================X Buttons======================================
; #IfWinActive, ahk_exe chrome.exe

; XButton1::
;     Send, {XButton1}
; return


; XButton2::
;     Send, {XButton2}
; return

; #If

; XButton1::
;     UnDo()    
; return

; XButton2::
;     ReDo()
; return


   