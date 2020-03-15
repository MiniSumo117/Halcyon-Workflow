#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;================================= Selecting =====================================

; Selects all characters to the left of the I-beam on the same line
SelectLineLeft()    ;Tested
{
    Send, {Shift down}
    Send, {Home}
    Send, {Shift up}
}

; Selects all characters to the right of the I-beam on the same line
SelectLineRight()   ;Tested
{
    Send, {Shift down}
    Send, {End}
    Send, {Shift up}
}

; Selects all characters on the line of the I-beam
SelectLineWhole()   ;Tested
{
    Send, {Home}
    SelectLineRight()
}

; Selects the next block of text to the left of the I-beam
SelectChunkLeft()
{
    Send, {Control down}
    Send, {Shift down}
    Send, {Left}
    Send, {Shift up}
    Send, {Control up}
}

; Selects the next block of text to the right of the I-beam
SelectChunkRight()
{
    Send, {Control down}
    Send, {Shift down}
    Send, {Right}
    Send, {Shift up}
    Send, {Control up}
}

;=============================== Select + Cursor =================================

; Selects all characters to the left of the cursor the same line
SelectLineLeftCursor()  ;Tested
{
    Send, {LButton}
    SelectLineLeft()
}

; Selects all characters to the left of the cursor the same line
SelectLineRightCursor() ;Tested
{
    Send, {LButton}
    SelectLineRight()
}

; Selects all characters to the left of the cursor the same line
SelectLineWholeCursor() ;Tested
{
    Send, {LButton}
    SelectLineWhole()
}



