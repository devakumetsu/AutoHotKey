#SingleInstance force
;autor   : jacobromero 
;original: https://github.com/jacobromero/Counter/blob/master/hookCounter.ahk

hooksShot  = 0
hooksLanded = 0
combo = 0

#IfWinActive League of Legends (TM) Client
{
	NumpadAdd::
	;...
		hooksShot++
		hooksLanded++
		combo++
		Send {Enter}/all %hooksLanded%/%hooksShot% {Space}
		if(combo = 2){
			Send  hooking spree! {Enter}
		}else if(combo = 3){
			Send  Dominating! {Enter}
		} else if(combo = 4){
			Send  Mega Hooks! {Enter}
		} else if(combo = 5){
			Send  Unstoppable! {Enter}
		} else if(combo = 6){
			Send  Monster Hooks! {Enter}
		} else if(combo = 7){
			Send  Godlike! {Enter}
		}else if(combo > 7){
			Send Beyond Godlike! {Enter}
		}else{
			Send {Enter}
		}
		return
	;...

	NumpadSub::
	;...
		hooksShot++
		combo = 0
		Send {Enter}/all %hooksLanded%/%hooksShot%{Enter}
		return
	;...
}

Numpad0::
	;...
		hooksShot = 0
		hooksLanded = 0
		combo = 0
		return
	;...
