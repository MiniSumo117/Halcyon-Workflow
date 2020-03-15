#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


global DvorakOn := true

;Change between Dvorak and Qwerty
f18::
   if(DvorakOn = true)
   {
      DvorakOn := false
      MsgBox Qwerty Keboard Layout Active
   }
   else
   {
      DvorakOn := true
      MsgBox Dvorak Keboard Layout Active
   }
return

DvorakQwerty(Dvorak :=0, Qwerty:=0)
{
   ; Is Capslock on?
   CapsState := GetKeyState("CapsLock", "T")

   ;Dvorak of Qwerty?
   if(DvorakOn)
      {
         ;Is capslock on? If so capitalize the char
         if(CapsState)
         {
            StringUpper, DvorakCap, Dvorak
            return % DvorakCap
         }
         ;If capslocks off, return char
         return % Dvorak
      }
   else
      {
         ;Is capslock on? If so capitalize the char
         if(CapsState)
         {
            StringUpper, QwertyCap, Qwerty
            return % QwertyCap
         }
         ;If capslocks off, return char
         return % Qwerty
      }
}