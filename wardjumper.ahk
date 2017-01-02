global Var
global Var2
global Champion
global activation
global buttontext
global Lee_Sin
global Jax
global Katarina
global Champion_Skill
global  password
activation = false
InputBox, password,Password,Enter Password:, hide ,200,120

gui,submit,nohide
if password = wards
{
	gui,destroy
gui,destroy
Var=No Ward
Var2=No Ward
gui,font,s11
gui,show,x350 y100 w290 h298,Sonic for Ward jumping
gui,add,text,,Click "T" to Active the First Ward Jump and`n"Y" to Active the Second Ward Jump.
gui,font,s8
gui,add,text,,Choose Champion:
gui,add, ComboBox, vChampion w100 r15,Lee Sin|Jax|Katarina
gui,add,text,,Choose Ward Key 1(Sightstone):
gui, add, ComboBox, vVar w100 r15,1|2|3|4|5|6|7|8|9
gui,add,text, ,Choose Ward Key 2(Trinket):
gui, add, ComboBox, vVar2 w100 r15,1|2|3|4|5|6|7|8|9
gui,add,button,gRun1 vbuttontext1,Run
gui,add,button,gClose w32 vButtonText2,Exit
gui,font,,s4
gui,add,text,x100,Created by Defade`n  EUNE SERVER
return
}
else
	if ErrorLevel
    exitapp
	else
		if ErrorLevel = 0
		if password is Space
			MsgBox, 48, Error, Please Enter a Password.
		else
	MsgBox, 48, Error, Invalid Password
	reload
return

run2:
gui, 2:font,s10,Times New Roman
Gui, 2:Show, w479 h427, Guide 
gui, 2:add,text,,Guide to make the Macro work perfectly:`n1.always run the program as Administrator.`n2.Measure the Distance Between the Champion spell and Ward before Clicking.`n3.Usefull trick:Use "Scout" Mastery in the "Utility" tree in Masteries to increase the `n   Cast range of trinket Wards.`n4.the champion  is Recommended to be stopped while it can work while the Champion`n   is Moving.`n5.Change or disable the "Y" Key in League of Legends Keyboard Option in the Game`n   Settings.`n6.This Program depends highly on your Ping,make sure you have a stable internet`n   connection and a good ping ( 1-150 Ms).`n
gui, 2:font,s8,tahoma
gui, 2:add,text,,Created by:`nDefade`n EUNE SERVER
gui, 2:font,s8
gui, 2:add,text,,Version: 0.8
gui, 2:add,text,,Email and Bugs Report:Kash.124@hotmail.com
gui, 2:add,text,,I Accept diffrent kinds of Macros ideas just DM me.
gui, 2:add,text,,I Accept Donations at my League of Legends Account :) .`n

gui, 2:add,button, ggui2close w100 h50 x195 ,OK
return

Champion:
if Champion = Lee Sin
	Champion_Skill = W
else
	if Champion = Jax
		Champion_Skill = Q
	else
		if Champion = Katarina
			Champion_Skill = E
		return

gui2close:
gui,2:destroy
return
2GuiClose:
gui,2:destroy
return

close:
guicontrolget, ButtonText2
if buttontext2=Stop
{
MsgBox, 64, Pause, Paused.
activation=false
guicontrol,,buttontext2,Exit
return
}
else
{
	exitapp
	
}
return

GuiClose:
ExitApp
return

run1:
guicontrolget,buttontext1
if buttontext1=Run
	gui,submit,nohide
	if champion is Space
{
MsgBox, 48, Error, You can't leave the Champion field a blank.
}
else
		if var is Space
{
MsgBox, 48, Error, You can't leave the first Ward field a blank.
}
else
		if var2 is Space
{
MsgBox, 48, Error, You can't leave the second Ward field a blank.
}
else
if Var = %Var2%
{
	if var > -1,if %var2% > -1
	{
MsgBox, 48, error 2, You Can't Choose the Same Key to Both Wards`,Please try again.
return
}
}
    else
{
	gosub,run2
	guicontrol,, buttontext2,Stop
	activation = true
	gui,submit,nohide
	gosub , Champion
msgbox,64,Success!,Click "T" to Move to Ward Number "%Var%",and "Y" to Move to ward Number "%Var2%" .
activation = true

return
}
if buttontext=Stop
{
	Activation=false
	guicontrol,,buttontext2,Start
}

#ifwinactive ahk_exe League of Legends.exe
~t::
if activation = true
{
blockinput, on
send,{shift down}
send,%Var%
sleep,198
send,%Champion_Skill%
send,{shift up}
blockinput, off
return
}

else
	MsgBox, 48, Error, Script is not Activated.
return

#ifwinactive ahk_exe League of Legends.exe
~y::
if activation = true
{
blockinput, mousemove
send,{shift down}
send,%Var2%
sleep,198
send,%Champion_Skill%
send,{shift up}
blockinput, mousemoveoff
return
}
else
	MsgBox, 48, Error, Script is not Activated.
return



#ifwinactive ahk_exe League of Legends.exe
Enter::
Suspend
Send {Enter}
return

#ifwinactive ahk_exe League of Legends.exe
+Enter::
Suspend
Send +{Enter}
return
