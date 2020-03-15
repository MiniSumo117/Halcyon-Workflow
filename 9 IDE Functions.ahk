#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;================================ Visual Studio Functions ========================

; Comments out selected code
CommentOut()
{
Send, {Ctrl down}
Send, k
Send, c
Send, {Ctrl up}
}

; Uncomments selected code
UnComment()
{
Send, {Ctrl down}
Send, k
Send, u
Send, {Ctrl up}
}

; Delete Line
DeleteLine()
{
Send, {Ctrl down}
Send, {Shift down}
Send, l
Send, {Shift up}
Send, {Ctrl up}
Send, {Up}
Send, {End}
}

; Toggle Header File
HeaderFile()
{
Send, {Ctrl down}
Send, k
Send, o
Send, {Ctrl up}
}

; Add a Bookmark
AddBookmark()
{
    Send, {Control down}
    Send, {k}
    Send, {k}
    Send, {Control up}
}

; Opens the bookmark Window
OpenBookmarks()
{
    Send, {Control down}
    Send, {k}
    Send, {w}
    Send, {Control up}
}

; creates a region around the sellected text
CreateRegion() ;c# only probably
{
    Send, {Ctrl down}
    Send, k
    Send, s
    Send, {Ctrl up}
    SendRaw, #region
    Send, {Enter}
} 

; Go to specified line
GoToLine()
{
    Send, {Control down}
    Send, {g}
    Send, {Control up}
}

; Collapse the selected text
CollapseSelected()
{
    Send, {Control down}
    Send, {m}
    Send, {m} 
    Send, {Control up}
}

; Collapse all text
CollapseAll()
{
    Send, {Control down}
    Send, {m}
    Send, {a}
    Send, {Control up}
}

; Collapse all text
ExpandAll()
{
    Send, {Control down}
    Send, {m}
    Send, {l}
    Send, {Control up}
}

; Open find and replace window
FindAndReplace()
{
    Send, {Control down}
    Send, {h}
    Send, {Control up}
}

;================================== Code Text Functions ==========================

; Finish a function with () then add {} and backtrack the I-beam into the function
CompleteFunction()  ;Tested
{
    Send, ()
    Send, {Enter}
    Send, {{}
    Send, {Enter}
    Send, {Enter}
    Send, {}}
    Send, {Up}
    Send, {Tab}
}

PrintTitleLineSeperator()   ;Tested
{
    Send, {;}===============================================================================
}

;================================== Snippets ===================================

ForLoopSnippet()
{
    Send, for
    Send, {Tab}
    Send, {Tab}
}

IfStatementSnippet()
{
    Send, if
    Send, {Tab}
    Send, {Tab}
}

SwitchStatementSnippet()
{
    Send, switch
    Send, {Tab}
    Send, {Tab}
}

EnumSnippet()
{
    Send, enum
    Send, {Tab}
    Send, {Tab}
}


;================================== AHK Functions ==============================
;Completed syntax for a hotkey
CompleteHotKeyInsideF()    ; Tested, bit iffy
{
    Send, ::
    Send, {Enter}
    Send, {Enter}
    Send, retur
    Send, n
    Send, {Up}
    Send, {Tab}

}

CompleteHotKeyAfterF()    ; Tested, bit iffy
{
    Send, ::
    Send, {Left}
    Sleep, 100
    Send, {Right}
    Send, {Enter}
    Send, {Enter}
    Send, retur
    Send, n
    Send, {Enter}
    Send, {Enter}

}

; adds "Send, " where the cursor is
TypeSend()      ; Tested, could be better
{
    ;Send, {LButton}
    Send, Send 
    Send, , 
    Send, {Space}
}