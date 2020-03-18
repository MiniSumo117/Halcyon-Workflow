#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;_________________________________
;| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
;---------------------------------
;| a | b | c | d | e | f | g | h |
;---------------------------------
;| i | j | k | l | m | n | o | p |
;---------------------------------
;| q | r | s | t | u | v | w | x |
;---------------------------------
;| - | = | [ |   |   |   | ] | # | 
;---------------------------------
;| ; | ' | , |   |   |   | . | / | 
;---------------------------------

;=============================== Row 1 ===================================

;1.1 : Dvorak/Qwerty Switch
$1::F18 
return

$2::
return

$+2::
return

$3::
return

$4::
return

$5::
return

$6::
return

$7::
return

$8::
return


;=============================== Row 2 ===================================

$a::
return

$b::
return

$c::
return

$d::
return

$e::
return

$f::
return

$g::
return

$h::
return

;=============================== Row 3 ===================================

$i::
return

$j::
return

$k::Fullscreen1()
return

$l::Fullscreen2()
return

$m::Fullscreen3()
return

$n::
return

$o::
return

$p::
return

;=============================== Row 4 ===================================

$q::Screen1Left()
return

$r::Screen1Right()
return

$s::Screen2Left()
return

$t::Screen2Right()
return

$u::Screen3Left()
return

$v::Screen3Right()
return

$w::
return

$x::
return

;=============================== Row 5 ===================================

$-:: 
return

$=:: 
return

$[:: 
return


$]:: 
return

$#:: 
return

;=============================== Row 6 ===================================

$`;::
Clipboard := "" 
Send, ^c
ClipWait, 2
Clip1 := ClipBoard
return

$+`;::
ClipBoard := Clip1
Send ^v
return

$'::
Clipboard := ""  
Send, ^c
ClipWait, 2
Clip2 := ClipBoard
return

$,::
Clipboard := "" 
Send, ^c
ClipWait, 2
Clip3 := ClipBoard
return

$.:: UnDo()
return

$/:: ReDo()
Return
