#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;=============================== Row 1 ===================================

;1.1 : Dvorak/Qwerty Switch
1::F18 
return

2::
MsgBox, Test1
return

+2::
MsgBox, Test2
return

3::
return

4::
return

5::
return

6::
return

7::
return

8::
return


;=============================== Row 2 ===================================

a::
return

b::
return

c::
return

d::
return

e::
return

f::
return

g::
return

h::
return

;=============================== Row 3 ===================================

i::
return

j::
return

k::Fullscreen1()
return

l::Fullscreen2()
return

m::Fullscreen3()
return

n::
return

o::
return

p::
return

;=============================== Row 4 ===================================

q::Screen1Left()
return

r::Screen1Right()
return

s::Screen2Left()
return

t::Screen2Right()
return

u::Screen3Left()
return

v::Screen3Right()
return

w::
return

x::
return

;=============================== Row 5 ===================================

Numpad1::
return

Numpad2::
return

Numpad3::
return



Numpad4::
return

Numpad5::
return

;=============================== Row 6 ===================================

Numpad6::
Clipboard := "" 
Send, ^c
ClipWait, 2
Clip1 := ClipBoard
return

+Numpad6::
MsgBox, [ Options, Title, Text, Timeout]
ClipBoard := Clip1
Send ^v
return

Numpad7::
Clipboard := "" 
Send, ^c
ClipWait, 2
Clip2 := ClipBoard
return

Numpad8::
Clipboard := "" 
Send, ^c
ClipWait, 2
Clip3 := ClipBoard
return



Numpad9::
return

NumpadMult::SaveAs()
return

