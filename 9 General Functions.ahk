#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;==================================Media========================================

NextTrack()
{
    Send, {Media_Next}
}

LastTrack()
{
    Send, {Media_Prev}
}

PlayPause()
{
    Send, {Media_Play_Pause}
}

VolumeUp5()
{
    SoundSet +5
}

VolumeUp10()
{
    SoundSet +10
}

VolumeDown5()
{
    SoundSet -5
}

VolumeDown10()
{
    SoundSet -10
}

;================================Virtual Destop=================================

CreateNewVirtualDestop()
{
    Send, LWinDown 
    Send, {Control}
    Send, {D}
}

RightVirtualDestop()
{
    Send, {LWin down} 
    Send, {Control down}
    Send, {Right}
    Send, {LWin up} 
    Send, {Control up}
}


LeftVirtualDestop()
{
    Send, {LWin down} 
    Send, {Control down}
    Send, {Left}
    Send, {LWin up} 
    Send, {Control up}
}

DeleteVirtualDesktop()
{

}

ViewAllVirtualDesktops()
{
    Send, {LWin down} 
    Send, {Tab}
    Send, {LWin up} 
}

;=============================== Other Functions ================================

UnDo()
{
    Send, {Control down}
    Send, {z}
    Send, {Control up}
}

ReDo()
{
    Send, {Control down}
    Send, {y}
    Send, {Control up}
}

Save()
{
    Send, {Control down}
    Send, {s}
    Send, {Control up}

    ;Reloads this script if save is pressed in Visual Studio Code
    #IfWinActive, ahk_exe Code.exe  
        Reload
    #If
}

SaveAs()
{
    Send, {Control down}
    Send, {Shift up}
    Send, {s up}
    Send, {s down}
    Send, {Shift down}
    Send, {Control up}

    ;Reloads this script if save is pressed in Visual Studio Code
    #IfWinActive, ahk_exe Code.exe  
        Reload
    #If
}

TypeEmail()
{
    Send, Jakesumecki@outlook.com
}

;================================== C & P Stuffs ========================================


; Clipboard := "" 
; Send, ^c
; ClipWait, 2
; Clip1 := ClipBoard

; ClipBoard := Clip1
; Send ^v

Clip1 := ClipBoard
Clip2 := ClipBoard
Clip3 := ClipBoard
Clip4 := ClipBoard
Clip5 := ClipBoard
Clip6 := ClipBoard

ClipArray := Array(Clip1, Clip2, Clip3, Clip4, Clip5, Clip6)


AdvancedCopy(index := 0)
{

    Clipboard := "" 
    Send, ^c
    ClipWait, 2
    ; ClipArray[index] := ClipBoard
    MsgBox, "Should have copied"
    return

}

AdvancedPaste(index := 0)
{
    ; ClipBoard := ClipArray[index]
    Send ^v
    MsgBox, "Should have pasted"
    return
}

; AdvancedCopyPaste(index)
; {

;     if GetKeyState(Control,"P")
;     {
            
;         MsgBox, "Should have cut"
;         return
;     }
;     else if GetKeyState(Shift, "P")
;     {
;         ClipBoard := ClipArray[index]
;         Send ^v
;         MsgBox, "Should have pasted"
;         return
;     }
;     else
;     {
;         Clipboard := "" 
;         Send, ^c
;         ClipWait, 2
;         ClipArray[index] := ClipBoard
;         MsgBox, "Should have copied"
;         return
;     }
    

; }




; GetFromClipboard()
; { 
;   ClipSaved := ClipboardAll ;Save the clipboard
;   Clipboard = ;Empty the clipboard
;   SendInput, ^c
;   ClipWait, 2
;   if ErrorLevel
;   {
;     MsgBox % "Failed attempt to copy text to clipboard."
;     return
;   }
;   NewClipboard := Trim(Clipboard)
;   StringReplace, NewClipboard, NewClipBoard, `r`n, `n, All
;   Clipboard := ClipSaved ;Restore the clipboard
;   ClipSaved = ;Free the memory in case the clipboard was very large.
;   return NewClipboard
; }

;===================================== Shutdown ========================================

CloseAllApps()
{
    WinGet, id, list, , , Program Manager
    Loop, %id%
    {
        StringTrimRight, this_id, id%a_index%, 0
        WinGetTitle, this_title, ahk_id %this_id%
        Winclose,%this_title%
    }
    Return
}

CloseAppsAndShutdown()
{
    CloseAllApps()

    Sleep 3000

    Shutdown, 9
}

;===================================== Screen Placement Functions ========================================

Fullscreen1()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , -1687, 132 , 854, 1017, , 
    WinMaximize, %WindowTitle%
}

Fullscreen2()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , -7, 0 , 974, 1050, , 
    WinMaximize, %WindowTitle%
}

Fullscreen3()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , 1913, 216 , 854, 1017, , 
    WinMaximize, %WindowTitle%
}

Screen1Left()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , -1687, 132 , 854, 1017, , 
}

Screen1Right()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , -847, 132 , 854, 1017, ,
}

Screen2Left()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , -7, 0 , 974, 1050, , 
}

Screen2Right()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , 953, 0 , 974, 1050, , 
}

Screen3Left()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , 1913, 216 , 854, 1017, , 
}

Screen3Right()
{
    WinGetTitle, WindowTitle, A
    WinRestore ,%WindowTitle% , , ,
    WinMove, %WindowTitle%, , 2753, 216 , 854, 1017, , 
}
