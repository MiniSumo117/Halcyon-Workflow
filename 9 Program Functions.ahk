#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;===================================Functions====================================

; Runs Q-dir
RunQDir()   ;Tested
{
    Run, C:\Users\Jake\AppData\Roaming\Q-Dir\Q-Dir.exe
}

; Runs Visual Studio 2017
RunVisualStudio()   ;Tested
{
    Run, C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe
}

; Runs Visual Studio Code
RunVisualStudioCode()   ;Tested
{
    Run, C:\Users\Jake\AppData\Local\Programs\Microsoft VS Code\Code.exe
}

; Runs Unity
RunUnity()  ;Tested
{
    Run, C:\Program Files\Unity\Editor\Unity.exe
}

;Runs Spoitify
RunSpotify()    ;Tested
{
    Run, C:\Users\Jake\AppData\Roaming\Spotify\Spotify.exe
}

;Runs Reaper
RunReaper() ;Tested
{
    Run, C:\Program Files\REAPER (x64)\reaper.exe
}

;Runs Pod Farm
RunPodFarm()    ;Tested
{
    Run, C:\Program Files (x86)\Line6\POD Farm 2\POD Farm 2.exe
}

;Runs Excel
RunExcel()
{
    Run, C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE
}

;Runs Word
RunWord()   ;Tested
{
    Run, C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE
}

;Run Notepad
RunNotepad()
{
    Run, Notepad.exe
    ;Run, %windir%\system32\notepad.exe
}

;Run Notepad
RunChrome()
{
    Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
}

RunTaskManager()
{
    run taskmgr.exe
}

CloseTaskManager()
{
    if WinExist("Task Manager")
    WinClose ; use the window found aboveTask Manager

}

ToggleTaskManager()
{
    ;not working
    if WinExist("Task Manager")
    {
        ;WinClose, Task Manager
        ; WinActivate, Task Manager
        ; WinWaitActive, Task Manager
        ; Send, {Escape}
        ; MsgBox, "Yes"
        
    }
    Else
    {
        run taskmgr.exe
    }

}

RunSnippet()
{
    Run, SnippingTool.exe
    ;Run, %windir%\system32\SnippingTool.exe
}