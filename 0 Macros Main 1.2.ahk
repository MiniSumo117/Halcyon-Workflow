#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;only allow one instance of this script
#SingleInstance, force

; Functions used in scripts
#Include 9 General Functions.ahk
#Include 9 Program Functions.ahk
#Include 9 Text Functions.ahk
#Include 9 IDE Functions.ahk

; Program Specific Layers (if control pressed skip these??)
#Include 2 Visual Studio Code.ahk
#Include 2 Spotify Functions.ahk

; Open and start intercept
;#Include 7 AutoRun Intercept.ahk           Not Working atm

;================================== Mouse ======================================
#if (getKeyState("F22", "P"))
F22::return
  
    #Include 1 Default Mouse.ahk
    
#if

;============================ Main Keyboard ====================================
;The Dvorak/Qwerty switch functionality has to be outside of the F21 wrapper
#Include 8 Sumo Dvorak Functions 1.1.ahk

#if (getKeyState("F21", "P"))
F21::return

    #Include 8 Sumo Dvorak 1.1.ahk

#if

;============================ Macro Keyboard ====================================

#if (getKeyState("F23", "P"))
F23::return

    #Include 1 Macro Keyboard 48.ahk

#if

