#SingleInstance force
;autor   : 17kimv 
;original: https://autohotkey.com/boards/viewtopic.php?f=19&t=15425

XButton2::
	ImageSearch, x, y, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, health.png
	if !ErrorLevel { ;if not ErrorLevel
		mousemove, %x%+42, %y%+100, 0 ;xa and xb omited
		slowSend("w", 100) ;avoid writing the same code
		slowSend("e",  50)
		sleep 30
		ImageSearch, x, y, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, health.png
		if !ErrorLevel { ;if not ErrorLevel
			mousemove, %x%+42, %y%+100, 0
			slowSend("q",  10)
	}	}
return
#!Q::ExitApp

slowSend(key, wait) {
	send {%key% down}
	sleep %wait%
	send {%key% up}
}
