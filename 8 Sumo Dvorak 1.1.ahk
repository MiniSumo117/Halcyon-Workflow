
;   -----------------------------------------------
;============QWERTY to Sumo Dvorak mapping============
;   -----------------------------------------------

;-----------------Number Row Raw---------------
$1::  SendRaw, % DvorakQwerty("$","1")    return
$2::  SendRaw, % DvorakQwerty(,"2")       return ; Dvorak Not Working
$3::  SendRaw, % DvorakQwerty("(","3")    return
$4::  SendRaw, % DvorakQwerty(")","4")    return
$5::  SendRaw, % DvorakQwerty("{","5")    return
$6::  SendRaw, % DvorakQwerty("}","6")    return
$7::  SendRaw, % DvorakQwerty("/","7")    return
$8::  SendRaw, % DvorakQwerty("*","8")    return
$9::  SendRaw, % DvorakQwerty("+","9")    return
$0::  SendRaw, % DvorakQwerty("-","0")    return
$-::  SendRaw, % DvorakQwerty("=","-")    return
$=::  SendRaw, % DvorakQwerty("^","=")    return

;--------------Number Row Shift-----------------
$+1:: SendRaw, % DvorakQwerty("@","!")    return
$+2:: SendRaw, `'   ;Doesnt Work rn
$+3:: SendRaw, % DvorakQwerty("(","£")    return
$+4:: SendRaw, % DvorakQwerty(")","$")    return
$+5:: SendRaw, % DvorakQwerty("[","%")    return
$+6:: SendRaw, % DvorakQwerty("]","^")    return
$+7:: SendRaw, % DvorakQwerty("%","&")    return
$+8:: SendRaw, % DvorakQwerty("&","*")    return
$+9:: SendRaw, % DvorakQwerty("<","(")    return
$+0:: SendRaw, % DvorakQwerty(">",")")    return
$+-:: SendRaw, % DvorakQwerty("!","_")    return
$+=:: SendRaw, % DvorakQwerty("|","+")    return

;-------------First Alphabet Row----------------
$q::  SendRaw, % DvorakQwerty("#","q")    return
$w::  SendRaw, % DvorakQwerty(",","w")    return
$e::  SendRaw, % DvorakQwerty(";","e")    return
$r::  SendRaw, % DvorakQwerty("p","r")    return
$t::  SendRaw, % DvorakQwerty("y","t")    return
$y::  SendRaw, % DvorakQwerty("f","y")    return
$u::  SendRaw, % DvorakQwerty("g","u")    return
$i::  SendRaw, % DvorakQwerty("c","i")    return
$o::  SendRaw, % DvorakQwerty("r","o")    return
$p::  SendRaw, % DvorakQwerty("l","p")    return
$[::  SendRaw, % DvorakQwerty("_","[")    return
$]::  SendRaw, % DvorakQwerty(":","]")    return

$+q:: SendRaw, % DvorakQwerty("#","Q")    return
$+w:: SendRaw, % DvorakQwerty(",","W")    return
$+e:: SendRaw, % DvorakQwerty(";","E")    return
$+r:: SendRaw, % DvorakQwerty("P","R")    return
$+t:: SendRaw, % DvorakQwerty("Y","T")    return
$+y:: SendRaw, % DvorakQwerty("F","Y")    return
$+u:: SendRaw, % DvorakQwerty("G","U")    return
$+i:: SendRaw, % DvorakQwerty("C","I")    return
$+o:: SendRaw, % DvorakQwerty("R","O")    return
$+p:: SendRaw, % DvorakQwerty("L","P")    return
$+[:: SendRaw, % DvorakQwerty("_","{")    return
$+]:: SendRaw, % DvorakQwerty(":","}")    return

;-------------Second Alphabet Row----------------
$a::  SendRaw, % DvorakQwerty("a","a")    return
$s::  SendRaw, % DvorakQwerty("o","s")    return
$d::  SendRaw, % DvorakQwerty("e","d")    return
$f::  SendRaw, % DvorakQwerty("u","f")    return
$g::  SendRaw, % DvorakQwerty("i","g")    return
$h::  SendRaw, % DvorakQwerty("d","h")    return
$j::  SendRaw, % DvorakQwerty("h","j")    return
$k::  SendRaw, % DvorakQwerty("t","k")    return
$l::  SendRaw, % DvorakQwerty("n","l")    return
$`;:: SendRaw, % DvorakQwerty("s",";")    return
$'::  SendRaw, % DvorakQwerty(".","'")    return

$+a:: SendRaw, % DvorakQwerty("A","A")    return
$+s:: SendRaw, % DvorakQwerty("O","S")    return
$+d:: SendRaw, % DvorakQwerty("E","D")    return
$+f:: SendRaw, % DvorakQwerty("U","F")    return
$+g:: SendRaw, % DvorakQwerty("I","G")    return
$+h:: SendRaw, % DvorakQwerty("D","H")    return
$+j:: SendRaw, % DvorakQwerty("H","J")    return
$+k:: SendRaw, % DvorakQwerty("T","K")    return
$+l:: SendRaw, % DvorakQwerty("N","L")    return
$+`;::SendRaw, % DvorakQwerty("S",":")    return
$+':: SendRaw, % DvorakQwerty(".","@")    return

;-------------Third Alphabet Row----------------
$z::  SendRaw, % DvorakQwerty("?","z")    return
$x::  SendRaw, % DvorakQwerty("q","x")    return
$c::  SendRaw, % DvorakQwerty("j","c")    return
$v::  SendRaw, % DvorakQwerty("k","v")    return
$b::  SendRaw, % DvorakQwerty("x","b")    return
$n::  SendRaw, % DvorakQwerty("b","n")    return
$m::  SendRaw, % DvorakQwerty("m","m")    return
$,::  SendRaw, % DvorakQwerty("w",",")    return
$.::  SendRaw, % DvorakQwerty("v",".")    return
$/::  SendRaw, % DvorakQwerty("z","/")    return

$+z:: SendRaw, % DvorakQwerty("/","Z")    return
$+x:: SendRaw, % DvorakQwerty("Q","X")    return
$+c:: SendRaw, % DvorakQwerty("J","C")    return
$+v:: SendRaw, % DvorakQwerty("K","V")    return
$+b:: SendRaw, % DvorakQwerty("X","B")    return
$+n:: SendRaw, % DvorakQwerty("B","N")    return
$+m:: SendRaw, % DvorakQwerty("M","M")    return
$+,:: SendRaw, % DvorakQwerty("W","<")    return
$+.:: SendRaw, % DvorakQwerty("V",">")    return
$+/:: SendRaw, % DvorakQwerty("Z","?")    return

$#::Delete
