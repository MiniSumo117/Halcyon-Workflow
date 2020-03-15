#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Intercept needs to be running for my other scripts to work so this opens and runs it at startup

Run, C:\Users\Jake\Documents\User Hub\3 Computer and Coding\Computer Stuff\intercept\intercept.exe
    WinWait, C:\Users\Jake\Documents\User Hub\3 Computer and Coding\Computer Stuff\intercept\intercept.exe, , 2, , 
    Sleep, 1000
    SendRaw, y     ;apply the program
    WinMinimize, C:\Users\Jake\Documents\User Hub\3 Computer and Coding\Computer Stuff\intercept\intercept.exe, , , 
Return