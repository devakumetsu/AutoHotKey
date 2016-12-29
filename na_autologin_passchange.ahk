?::
#Persistent
SetTimer, PressTheKey, 10000
Return

copy_now := 0

F2::
Copy_now := !Copy_now
If (Copy_now)
    Send ^c
Else
    Send ^v
Return

PressTheKey:
sleep, 500
Click 60, 129
Click 60, 129
sleep, 500
send, {F2}
sleep, 500
send, {DEL}
sleep, 50
send, {DEL}
Sleep, 500
Click 89, 745
sleep, 3000
Click 137, 53
sleep, 700
send, na.leagueoflegends.com
sleep, 1000
send, {Enter}
sleep, 19000
Click 1154, 119
sleep, 18000
Click 520, 402
sleep, 2000
send, {F2}
sleep, 2000
Click 1275, 18
sleep, 2000
MouseClickDrag L, 63, 133, 350, 130, 25
sleep, 2000
send, {F2}
sleep, 2000
send, {DEL}
sleep, 2000
send, {DEL}
sleep, 2000
Click 89, 745
sleep, 3000
Click 517, 466
sleep, 3000
send, {F2}
sleep, 3000
Click  655, 650
sleep, 5000
Click 1238, 107
sleep, 2000
Click 1160, 226
sleep, 6000
Click 377, 382
sleep, 3000
Click 697, 382
sleep, 2900
send, ^v
sleep, 3000
Click 696, 461
sleep, 3000
send, NulledUser1
sleep, 6000
Click 699, 552
sleep, 6000
send, NulledUser1
sleep, 6000
Click 713, 612
sleep, 2000
Click 1238, 107
sleep, 2000
Click 1203, 440
sleep, 2000
Click 1338, 7
sleep, 5000
Return

F1::
ExitApp
Return
