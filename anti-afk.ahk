;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Title: League of Legends Anti-Idle Script
;; Description: This script will keep you from getting disconnected in League
;; 	of Legends when you leave. The way it accomplishes this is by sending (at
;;	random increments) a movement command and recalling back to base.
;;  https://github.com/joech4n/foolishscripts                               
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin Script
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Singleinstance force		;; Force single instance

IfWinExist ahk_class LeagueOfLegendsWindowClass 
{
	MsgBox, LoL Anti-Idle activated.
    WinActivate
	GoSub, CheckForEndOfGame
	SetTimer, CheckForEndOfGame, 600000 	; Check for win every 10 minutes
	Sleep 5000								; Hold up
	Gosub, AntiIdle 						; Start Anti-Idling
	return
}
else 
{
	MsgBox, LoL not running... terminating.
	ExitApp
}

AntiIdle:
	Loop 
	{
		Random, randomInterval, 8000, 25000 ; Run the anti-idling commands every 8-25 seconds
		Random, randomX, 50, 100
		Random, randomY, 50, 100
		If A_TimeIdle > %randomInterval%
		{
			IfWinNotActive ahk_class LeagueOfLegendsWindowClass
			{
				ExitApp ; If you've come back to alt tab out, you're probably not afk anymore.
			}
			MouseMove 775, 264 	; Move mouse to center-ish of the screen
			Random, randomInterval, 1000, 5000
			Sleep %RandomInterval%
			Send {Space}		; Center camera on your champion
			Random, randomInterval, 1000, 5000
			Sleep %RandomInterval%
			Send {Click right}	; Send movement command
			Random, randomInterval, 1000, 5000
			Sleep %RandomInterval%
			Send b				; Recall back to base
		}
	}
	return

CheckForEndOfGame:
	MouseMove 634, 500 	; Move cursor to "Victory" or "Defeat" button at the end of game
	Send {Click}		; Click said button
	Sleep 10000			; Wait for game client to close

	IfWinNotExist ahk_class LeagueOfLegendsWindowClass 
	{
		ExitApp			; If the game is over, go ahead and kill script.
	}
	return
