#SingleInstance force
;autor   : 17kimv 
;original: https://autohotkey.com/boards/viewtopic.php?f=19&t=15425
SendMode Event      ;AHKv2.0 needed for SetKeyDelay
SetKeyDelay, 30, 80 ;{down} sleep 80 {up} sleep 30

#Z::  ;for easy test
	ImageSearch, x, y, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, health.png
	if !ErrorLevel { ;if not ErrorLevel
		mousemove, %x%+42, %y%+100, 0 ;xa and xb omited
		send we
		ImageSearch, x, y, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, health.png
		if !ErrorLevel { ;if not ErrorLevel
			mousemove, %x%+42, %y%+100, 0
			send q
	}	}
return
#!Q::ExitApp
