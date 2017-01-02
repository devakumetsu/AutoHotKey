;autor   : Capn Odin
;original: https://autohotkey.com/boards/viewtopic.php?f=18&t=17281

Switched := -1
SetTimer, WinChange, 1000
return

WinChange:
	WinGetTitle, title, A
	if(title = "PVP.net Client"){
		if(Switched = 0){
			Send {ctrl Down}
			sleep 50
			Send {F1 Down} 
			sleep 50
			Send {ctrl Up}{F1 Up}
		}
		Switched := 1
		
	} else if(title = "League of Legends (TM) Client") {
		if(Switched = 1){
			Send {ctrl Down}
			sleep 50
			Send {F2 Down} 
			sleep 50
			Send {ctrl Up}{F2 Up}
		}
		Switched := 0
	}
	return
