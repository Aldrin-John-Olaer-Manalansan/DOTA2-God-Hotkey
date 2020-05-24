full_command_line := DllCall("GetCommandLine", "str")

if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}

#SingleInstance ignore
#NoEnv
#IfWinActive, Dota 2
hotkeyname=A.J.O.M's D.O.T.A. 2 Developer Tool
k_MenuItemHide = Hide %hotkeyname%
k_MenuItemShow = Show %hotkeyname%
Menu, Tray, Add, %k_MenuItemHide%, k_ShowHide
Menu, Tray, Add, &Exit, k_MenuExit
Menu, Tray, Default, %k_MenuItemHide%
Menu, Tray, NoStandard
k_IsVisible = y

if (FileExist("Settings.aldrin_ini"))
{
GoSub,preloader
}
else
{
GoSub,defaultsetting

GoSub,preloader
}

GodGUI:
Suspend, On
;Gui, MainGUI:Default
Gui, MainGUI:Add, Tab2, x0 y0 h510 w510 , General|Invoker Hotkey|Meepo Hotkey|Manage Custom Combinations|Operations  ; Tab2 vs. Tab requires v1.0.47.05.
Gui, MainGUI:Add, Text, h475 w475, This Tool was Created by ALDRIN JOHN OLAER MANALANSAN.`n`nThis Hotkey is a "Powerful" tool that can manupulate a "God Move" by a single press of a certain hotkey`, pressing multiple key bind combinations and all within milliseconds as possible. It boosts the compability of control on a certain "Hero" by sacrificing less effort on using them`, that the User's "Inner Potential" will do exactly as how Professional Normal Players are. What is including in this Tool were:`n	*Invoker Manipulation Hotkey			*Meepo Manipulation Hotkey`n`nThis Genre's serves as slaves which they will help users to control the "Hero" and lessen worries when using this complicated "Heroes".`n`nOnly Training and Mastery of being familiar on this Hotkey is the only thing you will sacrifice`, and also battlefield effort in-game.`n`n --)On every section of this tool`, There will be some "Hotkey Boxes" that is "REQUIRED!!!" to be modeified or else`, The Map of this hotkey will not be accurate`, leading UNSTABLE CAUSE or INCORRECT MANIPULATION executed by indivudual hotkey. So PLEASE`, consider the consiquences and dont leave them BLANK or INCORRECT.`n`n--)You CANNOT ACTIVATE TWO GENRES AT THE SAME TIME! Because each Genre(INVOKER HOTKEY`,MEEPO HOTKEY) has their specific routines that is incompatible to each other`, they both cannot be use at the same time for the "Greater Good".`n`n--)You are not allowed to bind a "single hotkey" against multiple Manipulations on every "Genre"`, it's because it might cause unstable use of their specific routine and also cause unspecific relocations of their routines.`n`n"Custom Combination" is a "create your own press button combinations" that allows users to invent their own "Manipulations" when pressing its unique "Hotkey". In this version, "Custom Combination" IS AT BETA STAGE!!! You are responsible reporting any "BUG" which you will encounter`, give your feedback at my email "aldrinjohnolaermanalansan@gmail.com".`n`n*Multiple "Custom Combination"s is supported in this version.
Gui, MainGUI:Add, Text, x195 y475 cBlue gcredits, >>>Credits<<<
Gui, MainGUI:Add, Text, x350 y30 cRed, vPROTOTYPE
Gui, MainGUI:Tab, 2
Gui, MainGUI:Add, CheckBox,checked%invhkon% x32 y49 w160 h20 ginvboxfilter vEnInvokerHK, Active Invoker Hotkey
Gui, MainGUI:Add, Text, x22 y80 w100 h25 cBlue, Quas Hotkey`n(REQUIRED)
Gui, MainGUI:Add, Hotkey, x22 y109 w102 h30 ginvcusthot vspell1, %invo1%
Gui, MainGUI:Add, Text, x132 y80 w100 h25 cGreen, Wex Hotkey`n(REQUIRED)
Gui, MainGUI:Add, Hotkey, x132 y109 w100 h30 ginvcusthot vspell2, %invo2%
Gui, MainGUI:Add, Text, x242 y80 w100 h25 cRed, Exort Hotkey`n(REQUIRED)
Gui, MainGUI:Add, Hotkey, x242 y109 w100 h30 ginvcusthot vspell3, %invo3%
Gui, MainGUI:Add, Text, x352 y80 w100 h25 , Invoke Hotkey`n(REQUIRED)
Gui, MainGUI:Add, Hotkey, x352 y109 w100 h30 ginvcusthot vspell4, %invo4%
Gui, MainGUI:Add, Text, x242 y159 w100 h20 , Sunstrike
Gui, MainGUI:Add, Hotkey, x242 y179 w100 h30 ginvcusthot vspell5, %invo5%
Gui, MainGUI:Add, Text, x132 y159 w100 h20 , EMP
Gui, MainGUI:Add, Hotkey, x132 y179 w100 h30 ginvcusthot vspell6, %invo6%
Gui, MainGUI:Add, Text, x22 y159 w100 h20 , ColdSnap
Gui, MainGUI:Add, Hotkey, x22 y179 w102 h30 ginvcusthot vspell7, %invo7%
Gui, MainGUI:Add, Text, x242 y229 w100 h20 , Chaos Meteor
Gui, MainGUI:Add, Hotkey, x242 y249 w100 h30 ginvcusthot vspell8, %invo8%
Gui, MainGUI:Add, Text, x242 y299 w100 h20 , Forge Spirit
Gui, MainGUI:Add, Hotkey, x242 y319 w100 h30 ginvcusthot vspell9, %invo9%
Gui, MainGUI:Add, Text, x132 y229 w100 h20 , Alacrity
Gui, MainGUI:Add, Hotkey, x132 y249 w102 h30 ginvcusthot vspell10, %invo10%
Gui, MainGUI:Add, Text, x132 y299 w100 h20 , Tornado
Gui, MainGUI:Add, Hotkey, x132 y319 w100 h30 ginvcusthot vspell11, %invo11%
Gui, MainGUI:Add, Text, x22 y229 w100 h20 , Ice Wall
Gui, MainGUI:Add, Hotkey, x22 y249 w102 h30 ginvcusthot vspell12, %invo12%
Gui, MainGUI:Add, Text, x22 y299 w100 h20 , Ghost Walk
Gui, MainGUI:Add, Hotkey, x22 y319 w102 h30 ginvcusthot vspell13, %invo13%
Gui, MainGUI:Add, Text, x352 y159 w100 h20 , Deafening Blast
Gui, MainGUI:Add, Hotkey, x352 y179 w100 h30 ginvcusthot vspell14, %invo14%
Gui, MainGUI:Add, Button,x250 y400  ginvcustcomb, Create Custom Combinations.
Gui, MainGUI:Add, CheckBox, checked%orb3x% x252 y49 w240 h20 vtripplepress, Active Tripple Press of Quas, Wex, Exort
Gui, MainGUI:Tab, 3
Gui, MainGUI:Add, Checkbox, x12 y29 w120 h20 checked%mpohkon% gmpoboxfilter vEnMeepoHK, Active Meepo Hotkey
Gui, MainGUI:Add, Checkbox, x152 y29 w170 h20 checked%qcon% vquickcaston, Is QuickCast On?(REQUIRED)
Gui, MainGUI:Add, Text, x12 y69 w130 h20,  Poof Hotkey(REQUIRED)
Gui, MainGUI:Add, Hotkey, x142 y69 w120 h20 gmpocusthot vspell18, %invo18%
Gui, MainGUI:Add, Text, x12 y99 w80 h20, All Meepo Poof
Gui, MainGUI:Add, Hotkey,x92 y99 w120 h20 gmpocusthot vspell15, %invo15%
Gui, MainGUI:Add, Text,x12 y129 w220 h20 , All Clone Meepo Poof(Prime Meepo Exempted)
Gui, MainGUI:Add, Hotkey,x232 y129 w120 h20 gmpocusthot vspell16, %invo16%
Gui, MainGUI:Add, Text,x12 y159 w190 h20 , Item Boots Hotkey"if usable"(Optional) 
Gui, MainGUI:Add, Hotkey,x202 y159 w120 h20 gmpocusthot vspell19, %invo19%
Gui, MainGUI:Add, Text, x12 y189 w280 h20, All Meepo will Use Item Boots(requires "item boots hotkey")
Gui, MainGUI:Add, Hotkey,x292 y189 w120 h20 gmpocusthot vspell17, %invo17%
Gui, MainGUI:Add, Text, x12 y219 w380 h20, EarthBind Hotkey(Optional:Required at "Meepo CUSTOM COMBINATIONS")
Gui, MainGUI:Add, Hotkey,x380 y219 w100 h20 gmpocusthot vspell20, %invo20%
Gui, MainGUI:Add, Text, x12 y249 w470 h200,Meepo Mapping Manual(REQUIRED TO BE FOLLOWED OR ELSE`, ALL POOF AND CLONE POOF WILL NOT WORK):`n`nMeepo has exactly 4 clones max of himself`, remapping them individually on groupings is the only way to make the Manipulation work. Lets start:`n`nSet "Group 7" to the "First Clone Meepo"(Required if present)`nSet "Group 8" to the "Second Clone Meepo"(Required if present)`nSet "Group 9" to the "Third Clone Meepo"(Required if present)`nSet "Group 0" to the "Fourth Clone Meepo"(Required if present)`nRegroup all Meepos(Prime and the Four Clones) to "Group 6"(Required)`n`nNOTE:AVOID GROUPING MULTIPLE UNITS(Greater than 1) to the "Clone Groups"(Group 7,8,9,0) or ELSE THE MANIPULATIONS WILL BE USELESS!!! Always make sure that only one unit(which is the clone meepo assigned to that group) is registered to those GROUPS!
Gui, MainGUI:Add, Button, x150 y460 gmpocustcomb, Create Custom Combinations.
Gui, MainGUI:Tab, 4
Gui, MainGUI:Add, Button, x150 y475 w160 h23 ginvccabout, About Custom Combination
Gui, MainGUI:Add, Edit, vinvshow x4 y52 w155 h350 +ReadOnly,
Gui, MainGUI:Add, CheckBox, checked%invcusthotwason% x4 y409 vinvcusthoton, Active Custom Combination
Gui, MainGUI:Add, Text, x4 y429 w180 h20 , Stop the Combo Execution Hotkey
Gui, MainGUI:Add, Hotkey, x4 y445 w160 h20 ginvcusthot vinvcustcombcan, %mapinvcustcombcan%
Gui, MainGUI:Add, DropDownList,choose1 x260 y42 w155 h21 vinvdirbox,
Gui, MainGUI:Add, Button, x415 y42 w84 h21 ginvbrowse, Browse
Gui, MainGUI:Add, Button, x173 y67 w84 h23 ginvupdate, Update
Gui, MainGUI:Add, Button, x260 y67 w86 h23 ginvdelete, Delete
Gui, MainGUI:Add, ListView, vinvlv ginvlv x173 y93 w325 h355 checked AltSubmit, Hotkey|Directory
Gui, MainGUI:Add, Text, x173 y450 w422 h13 , (It is forbidden to register hotkeys that are currently present)
Gui, MainGUI:Add, Text, x173 y26 w83 h13 , Hotkey:
Gui, MainGUI:Add, Text, x260 y26 w116 h13 , Directory:
Gui, MainGUI:Add, Hotkey, x173 y42 w84 h23 vinvfilehk,%mapinvfilehk%
Gui, MainGUI:Add, CheckBox, checked%waspgrmode% vpgrmode gpgrmode x6 y26 w120 h23,Programmer Mode
IniRead,RegisteredDirectory,Settings.aldrin_ini,Edits,RegisteredDirectory
GoSub,reloadcc
Loop, %RegisteredDirectory%
{
	IniRead,CCDirectory%A_Index%,Settings.aldrin_ini,Edits,CCDirectory%A_Index%
	IniRead,CCDirectory%A_Index%Hotkey,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Hotkey
	IniRead,CCDirectory%A_Index%Enabled,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Enabled
	mapinvfilehk:=CCDirectory%A_Index%Hotkey
	invwaschecked:=CCDirectory%A_Index%Enabled
	modifiers=!,^,+
	stringmodifiers=Alt-,CTRL-,Shift-
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,mapinvfilehk,mapinvfilehk,%modifierloopfield%,%A_LoopField%,All
			}
		}
	}
	StringReplace,mapinvfilehk,mapinvfilehk,-,+,All
	if invwaschecked=+
	{
		LV_Add("Check",mapinvfilehk,CCDirectory%A_Index%)
	}
	else
	{
		LV_Add("-Check",mapinvfilehk,CCDirectory%A_Index%)
	}
	LV_ModifyCol(1,"AutoHdr")
	LV_ModifyCol(2,"AutoHdr")
}
LV_Modify(0,"Select")
LV_Modify(0,"-Select")
Gui, MainGUI:Tab, 5
Gui, MainGUI:Add, CheckBox,checked%runasadmin% vrunadmin,Run as Administrator every Start of this Application?
Gui, MainGUI:Add, Text,cBlue,Suspend this Tool Hotkey
Gui, MainGUI:Add, Hotkey,gparsecusthot vhotkeysuspend, %suspendhotkey%
Gui, MainGUI:Add, Text,cRed,Terminate this Tool Hotkey
Gui, MainGUI:Add, Hotkey,gparsecusthot vhotkeyterminate, %terminatehotkey%
Gui, MainGUI:Add, Text,cGreen,Auto-Match Accepter(presses ENTER/Return every 2 seconds)
Gui, MainGUI:Add, Hotkey,gparsecusthot vhotkeyautoaccept, %autoaccepthotkey%
Gui, MainGUI:Tab  ; i.e. subsequently-added controls will not belong to the tab control.
Gui, MainGUI:Add, Button, x2 y475 w50 h20 gselectok, OK
Gui, MainGUI:Add, Button, x398 y475 w100 h20 ghidetotray, Hide to Tray
Gui, MainGUI:Submit, NoHide
if (EnInvokerHK = "1")
{
	hktempparam=quas,wex,exort,NONE,sunstrike,emp,coldsnap,chaosmeteor,forgespirit,alacrity,tornado,icewall,ghostwalk,deafeningblast
	tempparam=^+!,^+,+!,^!
	tempparam1=!+^,!^+,+!^,+^!,^!+,^+!
	tempparam2=+^,^+
	tempparam3=+!,!+
	tempparam4=^!,!^
	loop,parse,tempparam,`,
	{
		existedvar=%A_LoopField%
		if A_Index=1
		{
			integer=1
		}
		else if A_Index=2
		{
			integer=2
		}
		else if A_Index=3
		{
			integer=3
		}
		else if A_Index=4
		{
			integer=4
		}
		loop,14
		{
			if A_Index<>4
			{
				integer2=%A_Index%
				IfInString,spell%A_Index%, %existedvar%
				{
					StringLen,templength,existedvar
					StringTrimLeft, tempstring, spell%A_Index%, %templength%
					loop,parse,tempparam%integer%,`,
					{
						existedvar2=$%A_LoopField%%tempstring%
						loop,parse,hktempparam,`,
						{
							if integer2=%A_Index%
							{
								Hotkey,%existedvar2%,%A_LoopField%
							}
						}
					}
				}
				else
				{
					if limiter%integer2%=
					{
						loop,parse,hktempparam,`,
						{
							if integer2=%A_Index%
							{
								tempmorph:=spell%A_Index%
								existedvar2=$%tempmorph%
								Hotkey,%existedvar2%,%A_LoopField%
								limiter%integer2%=1
							}
						}
					}
				}
			}
		}
	}
	raremodifier=Enter,Insert,Up,Down,Left,Right,Home,End,CapsLock,ScrollLock,NumLock
	raremodifier1=Page Up,Page Down
	raremodifier2=PgUp,PgDn
	loop 4
	{
		Loop,parse,raremodifier,`,
		{
			IfInString,spell%A_Index%, %A_LoopField%
			{
				StringReplace,spell%A_Index%,spell%A_Index%,%A_LoopField%,{%A_LoopField%},1
			}
		}
		Loop,parse,raremodifier1,`,
		{
			IfInString,spell%A_Index%, %A_LoopField%
			{
				modsaver=%A_LoopField%
				modint=%A_Index%
				Loop,parse,raremodifier2,`,
				{
					if modint=%A_Index%
					{
						StringReplace,spell%modint%,spell%modint%,%modsaver%,{%A_LoopField%},1
					}
				}
			}
		}
	}
}
if (EnMeepoHK = "1")
{
	hktempparam=allpoof,clonepoof,allboots
	tempparam=^+!,^+,+!,^!
	tempparam1=!+^,!^+,+!^,+^!,^!+,^+!
	tempparam2=+^,^+
	tempparam3=+!,!+
	tempparam4=^!,!^
	loop,parse,tempparam,`,
	{
		existedvar=%A_LoopField%
		if A_Index=1
		{
			integer=1
		}
		else if A_Index=2
		{
			integer=2
		}
		else if A_Index=3
		{
			integer=3
		}
		else if A_Index=4
		{
			integer=4
		}
		loop,17
		{
			if A_Index>14
			{
				pairer:=A_Index-14
				integer2=%A_Index%
				IfInString,spell%A_Index%, %existedvar%
				{
					StringLen,templength,existedvar
					StringTrimLeft, tempstring, spell%A_Index%, %templength%
					loop,parse,tempparam%integer%,`,
					{
						existedvar2=$%A_LoopField%%tempstring%
						loop,parse,hktempparam,`,
						{
							if pairer=%A_Index%
							{
								Hotkey,%existedvar2%,%A_LoopField%
							}
						}
					}
				}
				else
				{
					if limiter%integer2%=
					{
						loop,parse,hktempparam,`,
						{
							if pairer=%A_Index%
							{
								tempmorph:=spell%integer2%
								existedvar2=$%tempmorph%
								Hotkey,%existedvar2%,%A_LoopField%
								limiter%integer2%=1
							}
						}
					}
				}
			}
		}
	}
	raremodifier=Enter,Insert,Up,Down,Left,Right,Home,End,CapsLock,ScrollLock,NumLock
	raremodifier1=Page Up,Page Down
	raremodifier2=PgUp,PgDn
	loop 20
	{
		if A_Index>17
		{
			Loop,parse,raremodifier,`,
			{
				IfInString,spell%A_Index%, %A_LoopField%
				{
					StringReplace,spell%A_Index%,spell%A_Index%,%A_LoopField%,{%A_LoopField%},1
				}
			}
			Loop,parse,raremodifier1,`,
			{
				IfInString,spell%A_Index%, %A_LoopField%
				{
					modsaver=%A_LoopField%
					modint=%A_Index%
					Loop,parse,raremodifier2,`,
					{
						if modint=%A_Index%
						{
							StringReplace,spell%modint%,spell%modint%,%modsaver%,{%A_LoopField%},1
						}
					}
				}
			}
		}
	}
}
if (invcusthoton = "1")
{
	if invcustcombcan<>
	{
		if invcustcombcan<>ERROR
		{
			hktempparam=invcustcombcanhk
			temphk=%invcustcombcan%
			GoSub,modifiercheck
		}
	}
	if RegisteredDirectory<>ERROR
	{
		if RegisteredDirectory>0
		{
			Loop, %RegisteredDirectory%
			{
				IniRead,CCDirectory%A_Index%,Settings.aldrin_ini,Edits,CCDirectory%A_Index%
				IniRead,CCDirectory%A_Index%Enabled,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Enabled
				IniRead,CCDirectory%A_Index%Hotkey,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Hotkey
				if CCDirectory%A_Index%Enabled=+
				{
					hktempparam=reginvfilehk
					temphk:=CCDirectory%A_Index%Hotkey
					GoSub,modifiercheck
				}
			}
		}
	}
}
hktempparam=suspendhk
temphk=%hotkeysuspend%
GoSub,modifiercheck
hktempparam=terminatehk
temphk=%hotkeyterminate%
GoSub,modifiercheck
hktempparam=autoaccepthk
temphk=%hotkeyautoaccept%
GoSub,modifiercheck
Gui, MainGUI:Show, h500 w500 ,%hotkeyname%
return

modifiercheck:
tempparam=^+!,^+,+!,^!
tempparam1=!+^,!^+,+!^,+^!,^!+,^+!
tempparam2=+^,^+
tempparam3=+!,!+
tempparam4=^!,!^
loop,parse,tempparam,`,
{
	existedvar=%A_LoopField%
	integer=%A_Index%
	IfInString,temphk, %existedvar%
	{
		integer2=%A_Index%
		StringLen,templength,existedvar
		StringTrimLeft, tempstring,temphk, %templength%
		loop,parse,tempparam%integer%,`,
		{
			existedvar2=$%A_LoopField%%tempstring%
			if integer2=%A_Index%
			{
				Hotkey,%existedvar2%,%hktempparam%
			}
		}
	}
	else
	{
		existedvar2=$%temphk%
		Hotkey,%existedvar2%,%hktempparam%
	}
}
return

selectok:
Gui, MainGUI:Submit, NoHide
GoSub, Settings_save
RegisteredDirectory=0
Loop % LV_GetCount()
{
	RegisteredDirectory:=RegisteredDirectory+1
	LV_GetText(mapinvfilehk,A_Index,1)
	LV_GetText(mapinvdirbox,A_Index,2)
	modifiers=!,^,+
	stringmodifiers=Alt+,CTRL+,Shift+
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,mapinvfilehk,mapinvfilehk,%A_LoopField%,%modifierloopfield%,All
			}
		}
	}
	IfNotExist,Settings.aldrin_ini
	{
		FileAppend,, Settings.aldrin_ini
	}
	if ( A_Index = LV_GetNext(A_Index-1,"Checked"))
	{
		checker=+
	}
	else
	{
		checker=-
	}
	IniWrite, %mapinvdirbox%, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%A_Index%
	IniWrite, %mapinvfilehk%, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%A_Index%Hotkey
	IniWrite, %checker%, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%A_Index%Enabled
}
IniWrite, %RegisteredDirectory%, %A_ScriptDir%\Settings.aldrin_ini, Edits, RegisteredDirectory
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox,The script could not be reloaded. Please Reopen this Script Manually.
return

terminatehk:
k_MenuExit:
MainGUIGuiClose:
GoSub,invcustcombcanhk
ExitApp
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

mpoguicustcombGUISize:
invguicustcombGUISize:
if (A_EventInfo="1")
{
	Gui,MainGUI:Show,Minimize
}
else if (A_EventInfo="0")
{
	Gui,MainGUI:Show,Restore
}
return

hidetotray:
GoSub, k_ShowHide
return

quas:
if (EnInvokerHK = "1")
{
if (tripplepress = "1")
{
sendinput, %spell1%%spell1%%spell1%
}
else
{
sendinput, %spell1%
}
}
else
{
sendinput, %spell1%
}
return

wex:
if (EnInvokerHK = "1")
{
if (tripplepress = "1")
{
sendinput, %spell2%%spell2%%spell2%
}
else
{
sendinput, %spell2%
}
}
else
{
sendinput, %spell2%
}
return

exort:
if (EnInvokerHK = "1")
{
if (tripplepress = "1")
{
sendinput, %spell3%%spell3%%spell3%
}
else
{
sendinput, %spell3%
}
}
else
{
sendinput, %spell3%
}
return

sunstrike:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,+
{
KeyWait, Shift
}
sendinput, %spell3%%spell3%%spell3%%spell4%
return
}
else
sendinput, %spell5%
return

emp:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell2%%spell2%%spell2%%spell4%
return
}
else
sendinput, %spell6%
return

coldsnap:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell1%%spell1%%spell1%%spell4%
return
}
else
sendinput, %spell7%
return

chaosmeteor:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell3%%spell3%%spell2%%spell4%
return
}
else
sendinput, %spell8%
return

forgespirit:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell3%%spell3%%spell1%%spell4%
return
}
else
sendinput, %spell9%
return

alacrity:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell2%%spell2%%spell3%%spell4%
return
}
else
sendinput, %spell10%
return

tornado:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell2%%spell2%%spell1%%spell4%
return
}
else
sendinput, %spell11%
return

icewall:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell1%%spell1%%spell3%%spell4%
return
}
else
sendinput, %spell12%
return

ghostwalk:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell1%%spell1%%spell2%%spell4%
return
}
else
sendinput, %spell13%
return

deafeningblast:
if (EnInvokerHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, %spell3%%spell2%%spell1%%spell4%
return
}
else
sendinput, %spell14%
return

allpoof:
if (EnMeepoHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
if (quickcaston = "1")
{
sendinput, 1%spell18%7%spell18%8%spell18%9%spell18%0%spell18%6
}
else
{
sendinput, 1%spell18%{Click}7%spell18%{Click}8%spell18%{Click}9%spell18%{Click}0%spell18%{Click}6
}
return
}
else
sendinput, %spell15%
return

clonepoof:
if (EnMeepoHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
if (quickcaston = "1")
{
sendinput, 7%spell18%8%spell18%9%spell18%0%spell18%6
}
else
{
sendinput, 7%spell18%{Click}8%spell18%{Click}9%spell18%{Click}0%spell18%{Click}6
}
return
}
else
sendinput, %spell16%
return

allboots:
if (EnMeepoHK = "1")
{
ifinstring,A_ThisHotkey,`!
{
KeyWait, Alt
}
ifinstring,A_ThisHotkey,`^
{
KeyWait, Ctrl
}
ifinstring,A_ThisHotkey,`+
{
KeyWait, Shift
}
sendinput, 1%spell19%7%spell19%8%spell19%9%spell19%0%spell19%6
return
}
else
sendinput, %spell17%
return

preloader:
loop, 20
{
IniRead, invo%A_Index%, %A_ScriptDir%\Settings.aldrin_ini, Edits, invo%A_Index%
}
guiparam=invhkon,orb3x,mpohkon,qcon,fcon,invcusthotwason,mapinvcustcombcan,waspgrmode,pgren,suspendhotkey,terminatehotkey,runasadmin,autoaccepthotkey
Loop, parse, guiparam, `,
{
	IniRead, %A_LoopField%, %A_ScriptDir%\Settings.aldrin_ini, Edits,%A_LoopField%
}
return

defaultsetting:
FileAppend,, %A_ScriptDir%\Settings.aldrin_ini
hkparam=Q|W|E|R|^T|^C|^Y|^D|^F|^Z|^X|^G|^V|^B|R|Q|``|F|!Q|E|Home|End|0|+ReadOnly|1|F11
param=invo1|invo2|invo3|invo4|invo5|invo6|invo7|invo8|invo9|invo10|invo11|invo12|invo13|invo14|invo15|invo16|invo17|invo18|invo19|invo20|suspendhotkey|terminatehotkey|waspgrmode|pgren|runasadmin|autoaccepthotkey
Loop, parse,hkparam,|
{
	tempvar=%A_LoopField%
	tempint=%A_Index%
	Loop, parse,param,|
	{
		if A_Index=%tempint%
		{
			IniWrite, %tempvar%, %A_ScriptDir%\Settings.aldrin_ini, Edits, %A_LoopField%
			Break
		}
	}
}
return

Settings_load:
if (FileExist("Settings.aldrin_ini"))
{
	GoSub,preloader
}
else
{
	GoSub, defaultsetting
}
return

Settings_save:
if not (FileExist("Settings.aldrin_ini"))
{
	FileAppend,, %A_ScriptDir%\Settings.aldrin_ini
}
loop, 20
{
IniWrite, % spell%A_Index%, %A_ScriptDir%\Settings.aldrin_ini, Edits, invo%A_Index%
}
hkparam=%EnInvokerHK%|%tripplepress%|%EnMeepoHK%|%quickcaston%|%fastcaston%|%invcusthoton%|%invcustcombcan%|%hotkeysuspend%|%hotkeyterminate%|%runadmin%|%hotkeyautoaccept%
param=invhkon|orb3x|mpohkon|qcon|fcon|invcusthotwason|mapinvcustcombcan|suspendhotkey|terminatehotkey|runasadmin|autoaccepthotkey
Loop, parse,hkparam,|
{
	tempvar=%A_LoopField%
	tempint=%A_Index%
	Loop, parse,param,|
	{
		if A_Index=%tempint%
		{
			IniWrite, %tempvar%, %A_ScriptDir%\Settings.aldrin_ini, Edits, %A_LoopField%
			Break
		}
	}
}
return

k_ShowHide:
if k_IsVisible = y
{
    Gui, MainGUI:Destroy
	GoSub, Settings_load
    Menu, Tray, Rename, %k_MenuItemHide%, %k_MenuItemShow%
    k_IsVisible = n
	Suspend, Off
}
else
{
    loop, 20
	{
	Object.Delete(spell%A_Index%)
	}
	guiparam=EnInvokerHK,tripplepress,invcustcombcan,EnMeepoHK,quickcaston,invcusthoton,hotkeysuspend,hotkeyterminate,runadmin,invshow,invdirbox,invlv,invfilehk,pgrmode,hotkeyautoaccept
	Loop, parse, guiparam, `,
	{
		Object.Delete(%A_LoopField%)
	}
	GoSub, Settings_load
	GoSub, GodGUI
    Menu, Tray, Rename, %k_MenuItemShow%, %k_MenuItemHide%
    k_IsVisible = y
}
return

invcusthot:
If %A_GuiControl% in +,^,!,+^,+!,^!,+^!
{
	return
}
num := SubStr(A_GuiControl,6)              ;Get the index number of the hotkey control.
Gui, MainGUI:Submit, NoHide
newhook:=spell%num%
Loop, 14
{
	varloop:=spell%A_Index%
	if A_Index<>%num%
	{
		If newhook=%varloop%        ;  Check for duplicate hotkey...
		{
			GuiControl,,spell%A_Index%,% spell%A_Index% :=""
		}
	}
}
param=hotkeysuspend|hotkeyterminate|hotkeyautoaccept
Loop,Parse,param,|
{
	varloop:=%A_LoopField%
	If newhook=%varloop%        ;  Check for duplicate hotkey...
	{
		GuiControl,,spell%A_Index%,% spell%A_Index% :=""
	}
}
GoSub,checkcchk
varloop=
newhook=
return

parsecusthot:
If %A_GuiControl% in +,^,!,+^,+!,^!,+^!
{
	return
}
Gui, MainGUI:Submit, NoHide
newhook:=%A_GuiControl%
Loop, 14
{
	varloop:=spell%A_Index%
	If newhook=%varloop%        ;  Check for duplicate hotkey...
	{
		GuiControl,,spell%A_Index%,% spell%A_Index% :=""
		Break
	}
}
param=hotkeysuspend|hotkeyterminate|hotkeyautoaccept
Loop,Parse,param,|
{
	varloop:=%A_LoopField%
	if A_GuiControl<>%A_LoopField%
	{
		newhook:=%A_GuiControl%
		If newhook=%varloop%        ;  Check for duplicate hotkey...
		{
			GuiControl,,spell%A_Index%,% spell%A_Index% :=""
		}
	}
}
GoSub,checkcchk
varloop=
newhook=
return

mpocusthot:
If %A_GuiControl% in +,^,!,+^,+!,^!,+^!
{
	return
}
num := SubStr(A_GuiControl,6)              ;Get the index number of the hotkey control.
Gui, MainGUI:Submit, NoHide
newhook:=spell%num%
loop, 20
{
	if A_Index>14
	{
		varloop:=spell%A_Index%
		if A_Index<>%num%
		{
			If newhook=%varloop%        ;  Check for duplicate hotkey...
			{
				GuiControl,,spell%A_Index%,% spell%A_Index% :=""
			}
		}
	}
}
param=hotkeysuspend|hotkeyterminate|hotkeyautoaccept
Loop,Parse,param,|
{
	varloop:=%A_LoopField%
	If newhook=%varloop%        ;  Check for duplicate hotkey...
	{
		GuiControl,,spell%A_Index%,% spell%A_Index% :=""
	}
}
GoSub,checkcchk
varloop=
newhook=
return

checkcchk:
Loop % LV_GetCount()
{
	LV_GetText(mapinvfilehk,A_Index ,1)
	if mapinvfilehk=Hotkey
	{
		return
	}
	modifiers=!,^,+
	stringmodifiers=Alt+,CTRL+,Shift+
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,mapinvfilehk,mapinvfilehk,%A_LoopField%,%modifierloopfield%,All
			}
		}
	}
	if newhook=%mapinvfilehk%
	{
		LV_Modify(A_Index, "-Check")
	}
}
return

invboxfilter:
Gui, MainGUI:Submit, NoHide
if (EnInvokerHK = "1")
{
	GuiControl,,EnMeepoHK,0
}
return

mpoboxfilter:
Gui, MainGUI:Submit, NoHide
if (EnMeepoHK = "1")
{
	if (EnInvokerHK = "1")
	{
		GuiControl,,EnInvokerHK,0
	}
}
return

mpocustcomb:
Gui, mpoguicustcomb:+ownerMainGUI
Gui, MainGUI:+Disabled
Gui, mpoguicustcomb:Add, CheckBox, x12 y9 w360 h20 checked%qcon% vmpoqc, QuickCast On?(Modify this first before creating your custom Manipulation)
Gui, mpoguicustcomb:Add, Text, x12 y39 w180 h30 gmpobt1, >> 1st Prime Meepo EarthBind <<`n               ({F1}`%spell20`%)
Gui, mpoguicustcomb:Add, Text, x392 y39 w180 h30 gmpobt2, >> 1st Clone Meepo Poof <<`n            (7`%spell18`%)
Gui, mpoguicustcomb:Add, Text, x202 y39 w180 h30 gmpobt3, >> 1st Clone Meepo EarthBind <<`n                 (7`%spell20`%)
Gui, mpoguicustcomb:Add, Text, x12 y79 w180 h30 gmpobt4, >> 1st Prime Meepo Poof <<`n           ({F1}`%spell18`%)
Gui, mpoguicustcomb:Add, Text, x202 y79 w180 h30 gmpobt5, >> 2nd Clone Meepo EarthBind <<`n                 (8`%spell20`%)
Gui, mpoguicustcomb:Add, Text, x392 y79 w180 h30 gmpobt6, >> 2nd Clone Meepo Poof <<`n            (8`%spell18`%)
Gui, mpoguicustcomb:Add, Text, x202 y159 w180 h30 gmpobt7, >> 4th Clone Meepo EarthBind <<`n                 (0`%spell20`%)
Gui, mpoguicustcomb:Add, Text, x202 y119 w180 h30 gmpobt8, >> 3rd Clone Meepo EarthBind <<`n                 (9`%spell20`%)
Gui, mpoguicustcomb:Add, Text, x392 y119 w180 h30 gmpobt9, >> 3rd Clone Meepo Poof <<`n            (9`%spell18`%)
Gui, mpoguicustcomb:Add, Text, x392 y159 w180 h30 gmpobt10, >> 4th Clone Meepo Poof <<`n            (0`%spell18`%)
Gui, mpoguicustcomb:Add, Text, x12 y119 w150 h30 gmpobt11, >>Move to Mouse Selection<<`n	{Click up right}
Gui, mpoguicustcomb:Add, Text, x12 y159 w140 h30 gmpowait, >> Wait For Millisecond/'s <<`n      (sleep `%mposec`%000)
Gui, mpoguicustcomb:Add, DropDownList, x32 y199 w100 h90 Choose4 vmposec, 0.25|0.50|0.75|1|1.25|1.50|1.75|2|2.25|2.50|2.75|3|3.25|3.50|3.75|4|4.25|4.50|4.75|5|5.25|5.50|5.75|6|6.25|6.50|6.75|7|7.25|7.50|7.75|8|8.25|8.50|8.75|9|9.25|9.50|9.75|10|10.25|10.50|10.75|11|11.25|11.50|11.75|12|12.25|12.50|12.75|13|13.25|13.50|13.75|14|14.25|14.50|14.75|15|15.25|15.50|15.75|16|16.25|16.50|16.75|17|17.25|17.50|17.75|18|18.25|18.50|18.75|19|19.25|19.50|19.75|20
Gui, mpoguicustcomb:Add, Text, x192 y199 w70 h20 cGreen gmpoinstance, Do Instance:
Gui, mpoguicustcomb:Add, DropDownList, x262 y199 w210 h90 Choose1 vselectinstance, Cast EarthBind|Cast Poof|Select Prime Meepo|Select 1st Clone Meepo|Select 2nd Clone Meepo|Select 3rd Clone Meepo|Select 4th Clone Meepo|Select All Meepos
Gui, mpoguicustcomb:Add, Text, x152 y229 w150 h30 , Generated Custom Combination
if pgren=ERROR
{
	pgren=+ReadOnly
}
Gui, mpoguicustcomb:Add, Edit, x12 y249 w450 h120 %pgren% vmpocustbox,
Gui, mpoguicustcomb:Add, Text, x472 y349 w100 h20 cRed gmpoclear, Clear Combination
Gui, mpoguicustcomb:Add, Button, x472 y249 w100 h30 gmposave, Save
Gui, mpoguicustcomb:Add, Button, x472 y284 w100 h30 gmposelect, Browse
Gui, mpoguicustcomb:Add, CheckBox, x472 y319 w120 h23 checked%waspgrmode% vpgrmode3 gpgrmode3, Programmer Mode
if waspgrmode=1
{
	Gui, mpoguicustcomb:Add, Text, x12 y369 w450 h30 vpgrnote, You are free to edit the Field above ONLY IF YOU KNOW WHAT YOU'RE DOING! It is not advisable doing a FREEHAND if you're not a PROFESSIONAL SCRIPTER.
}
else
{
	Gui, mpoguicustcomb:Add, Text, x12 y369 w450 h30 vpgrnote,
}
Gui, mpoguicustcomb:Show, x268 y155 h411 w598, New GUI Window
Return

mpoguicustcombGUIClose:
GUI, mpoguicustcomb:Destroy
mpoparam=mpoqc,mposec,mpocustbox,selectinstance,pgrmode3,pgrnote
Loop, parse, mpoparam, `,
{
	Object.Delete(%A_LoopField%)
}
Gui, MainGUI:-Disabled
Gui, MainGUI:Show
return

mpowait:
Gui, mpoguicustcomb:Submit, NoHide
computer:=mposec * 1000
if invcustcomb:=""
{
	GuiControl,Text,mpocustbox,sleep %computer%`n
}
else
{
	GuiControl,Text,mpocustbox,%mpocustbox%sleep %computer%`n
}
GoSub,pgrmode3
return

mposave:
Gui, mpoguicustcomb:Submit, NoHide
FileSelectFile,ccsavefile,S16,,Save File as,Custom Combinations (*.aldrin_cc)
if ccsavefile=
{
	return
}
if SubStr(ccsavefile,-9,10)<>.aldrin_cc
{
	ccsavefile=%ccsavefile%.aldrin_cc
}
IfExist,%ccsavefile%
{
	FileDelete, %ccsavefile%
}
pgrstring=sendinput`, {F1}`%spell20`%|sendinput`, 7`%spell18`%|sendinput`, 7`%spell20`%|sendinput`, {F1}`%spell18`%|sendinput`, 8`%spell20`%|sendinput`, 8`%spell18`%|sendinput`, 0`%spell20`%|sendinput`, 9`%spell20`%|sendinput`, 9`%spell18`%|sendinput`, 0`%spell18`%|sendinput`, {Click up right}|sendinput`, `%spell20`%|sendinput`, `%spell18`%|sendinput`, {F1}|sendinput`, 7|sendinput`, 8|sendinput`, 9|sendinput`, 0|sleep|sendinput`,6
langstring=Make Prime Meepo Cast EarthBind|Make 1st Clone Meepo Cast Poof|Make 1st Clone Meepo Cast EarthBind|Make Prime Meepo Cast Poof|Make 2nd Clone Meepo Cast EarthBind|Make 2nd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast Poof|Right-Click Mouse|Cast EarthBind|Cast Poof|Select Prime Meepo|Select 1st Clone Meepo|Select 2nd Clone Meepo|Select 3rd Clone Meepo|Select 4th Clone Meepo|After Milliseconds >|Select All Meepos
Loop,Parse,pgrstring,|
{
	tempvar:=A_Index
	tempstring:=A_LoopField
	Loop,Parse,langstring,|
	{
		IfInString,mpocustbox,%A_LoopField%
		{
			if tempvar=%A_Index%
			{
				StringReplace,mpocustbox,mpocustbox,%A_LoopField%,%tempstring%,1
			}
		}
	}
}
FileAppend,%mpocustbox%,%ccsavefile%
return

mpoclear:
GuiControl,Text,mpocustbox,
return

mpoinstance:
Gui, mpoguicustcomb:Submit, NoHide
pgrstring=sendinput`, `%spell20`%|sendinput`, `%spell18`%|sendinput`, {F1}|sendinput`, 7|sendinput`, 8|sendinput`, 9|sendinput`, 0|sendinput`,6
langstring=Cast EarthBind|Cast Poof|Select Prime Meepo|Select 1st Clone Meepo|Select 2nd Clone Meepo|Select 3rd Clone Meepo|Select 4th Clone Meepo|Select All Meepos
Loop, parse, langstring,|
{
	if selectinstance=%A_LoopField%
	{
		tempnum:=A_Index
		Loop, parse, pgrstring,|
		{
			if tempnum=%A_Index%
			{
				if (mpoqc = "1")
				{
					GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%`n
				}
				else
				{
					if A_Index<3
					{
						GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%{Click}`n
					}
					else
					{
						GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%`n
					}
				}
				Break
			}
		}
	}
}
GoSub,pgrmode3
return

mpobt1:
mpobt2:
mpobt3:
mpobt4:
mpobt5:
mpobt6:
mpobt7:
mpobt8:
mpobt9:
mpobt10:
mpobt11:
Gui,mpoguicustcomb:Submit,NoHide
btnamecheck := SubStr(A_ThisLabel,1,5)
btcode=sendinput`, {F1}`%spell20`%|sendinput`, 7`%spell18`%|sendinput`, 7`%spell20`%|sendinput`, {F1}`%spell18`%|sendinput`, 8`%spell20`%|sendinput`, 8`%spell18`%|sendinput`, 0`%spell20`%|sendinput`, 9`%spell20`%|sendinput`, 9`%spell18`%|sendinput`, 0`%spell18`%|sendinput`, {Click up right}
Loop, parse, btcode,|,
{
	if A_ThisLabel=%btnamecheck%%A_Index%
	{
		if mpoqc=1
		{
			GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%`n
		}
		else
		{
			if A_Index<>11
			{
				GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%{Click}`n
			}
			else
			{
				GuiControl,Text,mpocustbox,%mpocustbox%%A_LoopField%`n
			}
		}
	}
}
GoSub,pgrmode3
return

pgrmode3:
IfNotExist,Settings.aldrin_ini
{
	GoSub,defaultsetting
}
Gui,mpoguicustcomb:Submit,NoHide
IniWrite,%pgrmode3%, %A_ScriptDir%\Settings.aldrin_ini, Edits,waspgrmode
waspgrmode:=pgrmode3
pgrstring=sendinput`, {F1}`%spell20`%|sendinput`, 7`%spell18`%|sendinput`, 7`%spell20`%|sendinput`, {F1}`%spell18`%|sendinput`, 8`%spell20`%|sendinput`, 8`%spell18`%|sendinput`, 0`%spell20`%|sendinput`, 9`%spell20`%|sendinput`, 9`%spell18`%|sendinput`, 0`%spell18`%|sendinput`, {Click up right}|sendinput`, `%spell20`%|sendinput`, `%spell18`%|sendinput`, {F1}|sendinput`, 7|sendinput`, 8|sendinput`, 9|sendinput`, 0|sleep|sendinput`,6
langstring=Make Prime Meepo Cast EarthBind|Make 1st Clone Meepo Cast Poof|Make 1st Clone Meepo Cast EarthBind|Make Prime Meepo Cast Poof|Make 2nd Clone Meepo Cast EarthBind|Make 2nd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast Poof|Right-Click Mouse|Cast EarthBind|Cast Poof|Select Prime Meepo|Select 1st Clone Meepo|Select 2nd Clone Meepo|Select 3rd Clone Meepo|Select 4th Clone Meepo|After Milliseconds >|Select All Meepos
Loop,Parse,pgrstring,|
{
	if pgrmode3=1
	{
		tempvar:=A_Index
		tempstring:=A_LoopField
		Loop,Parse,langstring,|
		{
			IfInString,mpocustbox,%A_LoopField%
			{
				if tempvar=%A_Index%
				{
					StringReplace,mpocustbox,mpocustbox,%A_LoopField%,%tempstring%,1
				}
			}
		}
	}
	else
	{
		IfInString,mpocustbox,%A_LoopField%
		{
			tempvar:=A_Index
			tempstring:=A_LoopField
			Loop,Parse,langstring,|
			{
				if tempvar=%A_Index%
				{
					StringReplace,mpocustbox,mpocustbox,%tempstring%,%A_LoopField%,1
				}
			}
		}
	}
}
GuiControl,Text,mpocustbox,%mpocustbox%
if pgrmode3=0
{
	IniWrite,+ReadOnly, %A_ScriptDir%\Settings.aldrin_ini, Edits,pgren
	GuiControl,+ReadOnly,mpocustbox
	GuiControl,Text,pgrnote,
}
else
{
	IniWrite,-ReadOnly, %A_ScriptDir%\Settings.aldrin_ini, Edits,pgren
	GuiControl,-ReadOnly,mpocustbox
	GuiControl,Text,pgrnote,You are free to edit the Field above ONLY IF YOU KNOW WHAT YOU'RE DOING! It is not advisable doing a FREEHAND if you're not a PROFESSIONAL SCRIPTER.
}
IniRead, pgren, %A_ScriptDir%\Settings.aldrin_ini, Edits, pgren
return

invcustcomb:
Gui, invguicustcomb:+ownerMainGUI
Gui, MainGUI:+Disabled
Gui, invguicustcomb:Add, CheckBox,checked%qcon% vinvqc, QuickCast On?(Modify this first before creating your custom Manipulation)
Gui, invguicustcomb:Add, CheckBox,checked%fcon% vinvfc, FastCast On?(After Invoking the spell`, it will instantly cast the spell. Modify this first before creating your Manipulation)
Gui, invguicustcomb:Add, Text, x12 y39 w180 h30 gbtcoldsnap, >	> Coldsnap <	<`n(`%spell1`%`%spell1`%`%spell1`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x392 y39 w180 h30 gbtsunstrike, >	> SunStrike <	<`n(`%spell3`%`%spell3`%`%spell3`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x202 y39 w180 h30 gbtemp, >	> E.M.P. <	<`n(`%spell2`%`%spell2`%`%spell2`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x12 y79 w180 h30 gbticewall, >> Ice Wall(AutoQuickCast) <<`n(`%spell1`%`%spell1`%`%spell3`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x202 y79 w180 h30 gbtalacrity, >	>Alacrity(SelfCast)<	<`n(`%spell2`%`%spell2`%`%spell3`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x392 y79 w180 h30 gbtchaosmeteor, >	> Chaos Meteor <	<`n(`%spell3`%`%spell3`%`%spell2`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x12 y119 w180 h30 gbtghostwalk, >> Ghost Walk(AutoQuickCast) <<`n(`%spell1`%`%spell1`%`%spell2`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x202 y119 w180 h30 gbttornado, >	> Tornado <	<`n(`%spell2`%`%spell2`%`%spell1`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x392 y119 w180 h30 gbtforgespirit, >> Forge Spirit(AutoQuickCast) <<`n(`%spell3`%`%spell3`%`%spell1`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x192 y159 w150 h30 gbtclickright, >>Move to Mouse Selection<<`n	{Click up right}
Gui, invguicustcomb:Add, Text, x12 y159 w140 h30 gwait, >> Wait For Millisecond/'s <<`n      (sleep `%invsec`%000)
Gui, invguicustcomb:Add, DropDownList, x32 y199 w100 h90 Choose4 vinvsec, 0.25|0.50|0.75|1|1.25|1.50|1.75|2|2.25|2.50|2.75|3|3.25|3.50|3.75|4|4.25|4.50|4.75|5|5.25|5.50|5.75|6|6.25|6.50|6.75|7|7.25|7.50|7.75|8|8.25|8.50|8.75|9|9.25|9.50|9.75|10|10.25|10.50|10.75|11|11.25|11.50|11.75|12|12.25|12.50|12.75|13|13.25|13.50|13.75|14|14.25|14.50|14.75|15|15.25|15.50|15.75|16|16.25|16.50|16.75|17|17.25|17.50|17.75|18|18.25|18.50|18.75|19|19.25|19.50|19.75|20
Gui, invguicustcomb:Add, Text, x192 y199 w60 h20 cGreen gcastability, Cast Ability:
Gui, invguicustcomb:Add, DropDownList, x252 y199 w210 h90 Choose1 vselectability, SunStrike|EMP|Cold Snap|Chaos Meteor|Forge Spirit|Alacrity(SelfCast)|Tornado|Ghost Walk|Ice Wall|Deafening Blast
Gui, invguicustcomb:Add, Text, x152 y229 w150 h30 , Generated Custom Combination
if mapinvocustbox=ERROR
{
	mapinvocustbox=
}
if pgren=ERROR
{
	pgren=+ReadOnly
}
Gui, invguicustcomb:Add, Edit,%pgren% x12 y249 w450 h120 vinvocustbox, %mapinvocustbox%
Gui, invguicustcomb:Add, Text, x392 y159 w180 h30 gbtdeafeningblast, >	> Deafening Blast <	<`n(`%spell1`%`%spell2`%`%spell3`%`%spell4`%)
Gui, invguicustcomb:Add, Text, x472 y349 w100 h20 cRed ginvclear, Clear Combination
Gui, invguicustcomb:Add, Button, x472 y249 w100 h30 ginvsave, Save
Gui, invguicustcomb:Add, Button, x472 y284 w100 h30 ginvselect, Browse
Gui, invguicustcomb:Add, CheckBox, checked%waspgrmode% vpgrmode2 gpgrmode2 x472 y319 w120 h23,Programmer Mode
if waspgrmode=1
{
	Gui, invguicustcomb:Add, Text, x12 y369 w450 h30 vpgrnote, You are free to edit the Field above ONLY IF YOU KNOW WHAT YOU'RE DOING! It is not advisable doing a FREEHAND if you're not a PROFESSIONAL SCRIPTER.
}
else
{
	Gui, invguicustcomb:Add, Text, x12 y369 w450 h30 vpgrnote,
}
Gui, invguicustcomb:Show, x268 y155 h403 w590, Invoker Custom Combinations
Return

btcoldsnap:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`n
}
GoSub,pgrmode2
return

btsunstrike:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`n
}
GoSub,pgrmode2
return

btemp:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`n
}
GoSub,pgrmode2
return

bticewall:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, g`n
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%`n
}
GoSub,pgrmode2
return

btalacrity:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, !z`n
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%`n
}
GoSub,pgrmode2
return

btchaosmeteor:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`n
}
GoSub,pgrmode2
return

btghostwalk:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, v`n
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%`n
}
GoSub,pgrmode2
return

bttornado:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`n
}
GoSub,pgrmode2
return

btforgespirit:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, f`n
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%`n
}
GoSub,pgrmode2
return

btdeafeningblast:
Gui, invguicustcomb:Submit, NoHide
if (invfc = "1")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b{Click}`n
	}
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`n
}
GoSub,pgrmode2
return

btclickright:
Gui, invguicustcomb:Submit, NoHide
GuiControl,Text,invocustbox,%invocustbox%sendinput`, {Click up right}`n
return

wait:
Gui, invguicustcomb:Submit, NoHide
computer:=invsec * 1000
if invcustcomb:=""
{
	GuiControl,Text,invocustbox,sleep %computer%`n
}
else
{
	GuiControl,Text,invocustbox,%invocustbox%sleep %computer%`n
}
GoSub,pgrmode2
return

invclear:
GuiControl,Text,invocustbox,
return

invsave:
Gui, invguicustcomb:Submit, NoHide
FileSelectFile,ccsavefile,S16,,Save File as,Custom Combinations (*.aldrin_cc)
if ccsavefile=
{
	return
}
if SubStr(ccsavefile,-9,10)<>.aldrin_cc
{
	ccsavefile=%ccsavefile%.aldrin_cc
}
IfExist,%ccsavefile%
{
	FileDelete, %ccsavefile%
}
pgrstring=sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y{Click}|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t{Click}|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c{Click}|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, g|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, !z|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d{Click}|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, v|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x{Click}|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, f|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b{Click}|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, {Click up right}|sleep|sendinput`, t{Click}|sendinput`, t|sendinput`, c{Click}|sendinput`, c|sendinput`, y{Click}|sendinput`, y|sendinput`, d{Click}|sendinput`, d|sendinput`, f|sendinput`, !z|sendinput`, x{Click}|sendinput`, x|sendinput`, v|sendinput`, g|sendinput`, b{Click}|sendinput`, b|`%spell1`%`%spell1`%`%spell1`%`%spell4`%|`%spell3`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell3`%`%spell4`%|`%spell3`%`%spell3`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell2`%`%spell4`%|`%spell2`%`%spell1`%`%spell2`%`%spell4`%|`%spell1`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell1`%`%spell3`%`%spell4`%|{Click}
langstring=InvokeCast Coldsnap|InvokeCast Coldsnap|Invoke Coldsnap|InvokeCast SunStrike|InvokeCast SunStrike|Invoke SunStrike|InvokeCast EMP|InvokeCast EMP|Invoke EMP|InvokeCast IceWall|Invoke IceWall|InvokeSelfCast Alacrity|Invoke Alacrity|InvokeCast Chaos Meteor|InvokeCast Chaos Meteor|Invoke Chaos Meteor|InvokeCast GhostWalk|Invoke GhostWalk|InvokeCast Tornado|InvokeCast Tornado|Invoke Tornado|InvokeCast Forge Spirit|Invoke Forge Spirit|InvokeCast Deafening Blast|InvokeCast Deafening Blast|Invoke Deafening Blast|Move-to Mouse-Selection|After Milliseconds >|Cast Sunstrike|Cast Sunstrike|Cast EMP|Cast EMP|Cast ColdSnap|Cast ColdSnap|Cast Chaos Meteor|Cast Chaos Meteor|Cast Forge Spirit|Cast Alacrity|Cast Tornado|Cast Tornado|Cast GhostWalk|Cast IceWall|Cast Deafening Blast|Cast Deafening Blast|ColdSnap|SunStrike|EMP|IceWall|Alacrity|Chaos Meteor|GhostWalk|Tornado|Forge Spirit|Deafening Blast|(Left-Click Mouse)
Loop,Parse,pgrstring,|
{
	tempvar:=A_Index
	tempstring:=A_LoopField
	Loop,Parse,langstring,|
	{
		IfInString,invocustbox,%A_LoopField%
		{
			if tempvar=%A_Index%
			{
				StringReplace,invocustbox,invocustbox,%A_LoopField%,%tempstring%,1
			}
		}
	}
}
FileAppend,%invocustbox%,%ccsavefile%
return

invguicustcombGUIClose:
GUI, invguicustcomb:Destroy
invparam=invqc,invsec,invocustbox,invfc,selectability,pgrmode2,pgrnote
Loop, parse, invparam, `,
{
	Object.Delete(%A_LoopField%)
}
Gui, MainGUI:-Disabled
Gui, MainGUI:Show
return

autoaccepthk:
if accepton=1
{
	accepton=0
	SetTimer,timeraccept,off
	ToolTip
}
else
{
	accepton=1
	accepter=%A_ThisHotkey%
	stringtrimleft,accepter,accepter,1
	modifiers=!,^,+
	stringmodifiers=Alt-,CTRL-,Shift-
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,accepter,accepter,%modifierloopfield%,%A_LoopField%,All
			}
		}
	}
	SetTimer,timeraccept, 2000
	ifWinActive,Dota 2
	{
		;sendinput {Enter}
		PixelSearch, xta, yta, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x395B4B,,fast RGB
		if errorlevel=0
		{
			MouseGetPos,xta1,yta1
			mouseclick,,xta,yta,2,0
			MouseMove,xta1,xta1,0
		}
		ToolTip, Dota2 Accepter is active`nPress %accepter% to deactivate,0,0
	}
}
return

timeraccept:
if (WinActive("Dota 2")) and (accepton=1)
{
	;sendinput {Enter}
	PixelSearch, xta, yta, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x395B4B,,fast RGB
	if errorlevel=0
	{
		MouseGetPos,xta1,yta1
		mouseclick,,xta,yta,2,0
		MouseMove,xta1,xta1,0
	}
	ToolTip, Dota2 Accepter is active`nPress %accepter% to deactivate,0,0
}
return

suspendhk:
Suspend
if (A_IsSuspended="1")
{
	accepton=0
	SetTimer,timeraccept,off
	ToolTip
	ToolTip, A.J.O.M.'s Tool is Suspended
	SetTimer, RemoveToolTip, 1000
}
else
{
	ToolTip, A.J.O.M.'s Tool is Resumed
	SetTimer, RemoveToolTip, 1000
}
return

pgrmode2:
IfNotExist,Settings.aldrin_ini
{
	GoSub,defaultsetting
}
Gui,invguicustcomb:Submit,NoHide
IniWrite,%pgrmode2%, %A_ScriptDir%\Settings.aldrin_ini, Edits,waspgrmode
waspgrmode:=pgrmode2
pgrstring=sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y{Click}|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t{Click}|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c{Click}|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, g|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, !z|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d{Click}|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, v|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x{Click}|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, f|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b{Click}|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, {Click up right}|sleep|sendinput`, t{Click}|sendinput`, t|sendinput`, c{Click}|sendinput`, c|sendinput`, y{Click}|sendinput`, y|sendinput`, d{Click}|sendinput`, d|sendinput`, f|sendinput`, !z|sendinput`, x{Click}|sendinput`, x|sendinput`, v|sendinput`, g|sendinput`, b{Click}|sendinput`, b|`%spell1`%`%spell1`%`%spell1`%`%spell4`%|`%spell3`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell3`%`%spell4`%|`%spell3`%`%spell3`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell2`%`%spell4`%|`%spell2`%`%spell1`%`%spell2`%`%spell4`%|`%spell1`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell1`%`%spell3`%`%spell4`%|{Click}
langstring=Invoke-Cast Coldsnap|InvokeCast Coldsnap|Invoke Coldsnap|Invoke-Cast SunStrike|InvokeCast SunStrike|Invoke SunStrike|Invoke-Cast EMP|InvokeCast EMP|Invoke EMP|InvokeCast IceWall|Invoke IceWall|InvokeSelfCast Alacrity|Invoke Alacrity|Invoke-Cast Chaos Meteor|InvokeCast Chaos Meteor|Invoke Chaos Meteor|InvokeCast GhostWalk|Invoke GhostWalk|Invoke-Cast Tornado|InvokeCast Tornado|Invoke Tornado|InvokeCast Forge Spirit|Invoke Forge Spirit|Invoke-Cast Deafening Blast|InvokeCast Deafening Blast|Invoke Deafening Blast|Move-to Mouse-Selection|After Milliseconds >|Cast-Sunstrike|Cast Sunstrike|Cast-EMP|Cast EMP|Cast-ColdSnap|Cast ColdSnap|Cast-Chaos Meteor|Cast Chaos Meteor|Cast Forge Spirit|Cast Alacrity|Cast-Tornado|Cast Tornado|Cast GhostWalk|Cast IceWall|Cast-Deafening Blast|Cast Deafening Blast|ColdSnap|SunStrike|EMP|IceWall|Alacrity|Chaos Meteor|GhostWalk|Tornado|Forge Spirit|Deafening Blast|(Left-Click Mouse)
Loop,Parse,pgrstring,|
{
	if pgrmode2=1
	{
		tempvar:=A_Index
		tempstring:=A_LoopField
		Loop,Parse,langstring,|
		{
			IfInString,invocustbox,%A_LoopField%
			{
				if tempvar=%A_Index%
				{
					StringReplace,invocustbox,invocustbox,%A_LoopField%,%tempstring%,1
				}
			}
		}
	}
	else
	{
		IfInString,invocustbox,%A_LoopField%
		{
			tempvar:=A_Index
			tempstring:=A_LoopField
			Loop,Parse,langstring,|
			{
				if tempvar=%A_Index%
				{
					StringReplace,invocustbox,invocustbox,%tempstring%,%A_LoopField%,1
				}
			}
		}
	}
}
GuiControl,Text,invocustbox,%invocustbox%
if pgrmode2=0
{
	IniWrite,+ReadOnly, %A_ScriptDir%\Settings.aldrin_ini, Edits,pgren
	GuiControl,+ReadOnly,invocustbox
	GuiControl,Text,pgrnote,
}
else
{
	IniWrite,-ReadOnly, %A_ScriptDir%\Settings.aldrin_ini, Edits,pgren
	GuiControl,-ReadOnly,invocustbox
	GuiControl,Text,pgrnote,You are free to edit the Field above ONLY IF YOU KNOW WHAT YOU'RE DOING! It is not advisable doing a FREEHAND if you're not a PROFESSIONAL SCRIPTER.
}
IniRead, pgren, %A_ScriptDir%\Settings.aldrin_ini, Edits, pgren
return

pgrmode:
IfNotExist,Settings.aldrin_ini
{
	GoSub,defaultsetting
}
Gui,MainGUI:Submit,NoHide
IniWrite,%pgrmode%, %A_ScriptDir%\Settings.aldrin_ini, Edits,waspgrmode
waspgrmode:=pgrmode
if invshow<>
{
	GoSub,pgrtranslate
}
GuiControl,Text,invshow,%invshow%
return

pgrtranslate:
pgrstring=sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y{Click}|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%`nsleep 200`nsendinput`, y|sendinput`, `%spell1`%`%spell1`%`%spell1`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t{Click}|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, t|sendinput`, `%spell3`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c{Click}|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, c|sendinput`, `%spell2`%`%spell2`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, g|sendinput`, `%spell1`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, !z|sendinput`, `%spell2`%`%spell2`%`%spell3`%`%spell4`%|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d{Click}|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, d|sendinput`, `%spell3`%`%spell3`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, v|sendinput`, `%spell1`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x{Click}|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%`nsleep 200`nsendinput`, x|sendinput`, `%spell2`%`%spell1`%`%spell2`%`%spell4`%|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, f|sendinput`, `%spell1`%`%spell3`%`%spell3`%`%spell4`%|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b{Click}|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%`nsleep 200`nsendinput`, b|sendinput`, `%spell2`%`%spell1`%`%spell3`%`%spell4`%|sendinput`, {Click up right}|sleep|sendinput`, t{Click}|sendinput`, t|sendinput`, c{Click}|sendinput`, c|sendinput`, y{Click}|sendinput`, y|sendinput`, d{Click}|sendinput`, d|sendinput`, f|sendinput`, !z|sendinput`, x{Click}|sendinput`, x|sendinput`, v|sendinput`, g|sendinput`, b{Click}|sendinput`, b|`%spell1`%`%spell1`%`%spell1`%`%spell4`%|`%spell3`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell3`%`%spell4`%|`%spell2`%`%spell2`%`%spell3`%`%spell4`%|`%spell3`%`%spell3`%`%spell2`%`%spell4`%|`%spell1`%`%spell1`%`%spell2`%`%spell4`%|`%spell2`%`%spell1`%`%spell2`%`%spell4`%|`%spell1`%`%spell3`%`%spell3`%`%spell4`%|`%spell2`%`%spell1`%`%spell3`%`%spell4`%|{Click}|sendinput`, {F1}`%spell20`%|sendinput`, 7`%spell18`%|sendinput`, 7`%spell20`%|sendinput`, {F1}`%spell18`%|sendinput`, 8`%spell20`%|sendinput`, 8`%spell18`%|sendinput`, 0`%spell20`%|sendinput`, 9`%spell20`%|sendinput`, 9`%spell18`%|sendinput`, 0`%spell18`%|sendinput`, `%spell20`%|sendinput`, `%spell18`%|sendinput`, {F1}|sendinput`, 7|sendinput`, 8|sendinput`, 9|sendinput`, 0|sendinput`,6
langstring=Invoke-Cast Coldsnap|InvokeCast Coldsnap|Invoke Coldsnap|Invoke-Cast SunStrike|InvokeCast SunStrike|Invoke SunStrike|Invoke-Cast EMP|InvokeCast EMP|Invoke EMP|InvokeCast IceWall|Invoke IceWall|InvokeSelfCast Alacrity|Invoke Alacrity|Invoke-Cast Chaos Meteor|InvokeCast Chaos Meteor|Invoke Chaos Meteor|InvokeCast GhostWalk|Invoke GhostWalk|Invoke-Cast Tornado|InvokeCast Tornado|Invoke Tornado|InvokeCast Forge Spirit|Invoke Forge Spirit|Invoke-Cast Deafening Blast|InvokeCast Deafening Blast|Invoke Deafening Blast|Move-to Mouse-Selection|After Milliseconds >|Cast-Sunstrike|Cast Sunstrike|Cast-EMP|Cast EMP|Cast-ColdSnap|Cast ColdSnap|Cast-Chaos Meteor|Cast Chaos Meteor|Cast Forge Spirit|Cast Alacrity|Cast-Tornado|Cast Tornado|Cast GhostWalk|Cast IceWall|Cast-Deafening Blast|Cast Deafening Blast|ColdSnap|SunStrike|EMP|IceWall|Alacrity|Chaos Meteor|GhostWalk|Tornado|Forge Spirit|Deafening Blast|(Left-Click Mouse)|Make Prime Meepo Cast EarthBind|Make 1st Clone Meepo Cast Poof|Make 1st Clone Meepo Cast EarthBind|Make Prime Meepo Cast Poof|Make 2nd Clone Meepo Cast EarthBind|Make 2nd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast EarthBind|Make 3rd Clone Meepo Cast Poof|Make 4th Clone Meepo Cast Poof|Cast EarthBind|Cast Poof|Select Prime Meepo|Select 1st Clone Meepo|Select 2nd Clone Meepo|Select 3rd Clone Meepo|Select 4th Clone Meepo|Select All Meepos
Loop,Parse,pgrstring,|
{
	if pgrmode=1
	{
		tempvar:=A_Index
		tempstring:=A_LoopField
		Loop,Parse,langstring,|
		{
			IfInString,invshow,%A_LoopField%
			{
				if tempvar=%A_Index%
				{
					StringReplace,invshow,invshow,%A_LoopField%,%tempstring%,1
				}
			}
		}
	}
	else
	{
		IfInString,invshow,%A_LoopField%
		{
			tempvar:=A_Index
			tempstring:=A_LoopField
			Loop,Parse,langstring,|
			{
				if tempvar=%A_Index%
				{
					StringReplace,invshow,invshow,%tempstring%,%A_LoopField%,1
				}
			}
		}
	}
}
return

invbrowse:
Gui,MainGUI:Submit,NoHide
FileSelectFile,invfile,3,,.aldrin_cc,*.aldrin_cc
If InStr(invfile,.aldrin_cc,-1)
{
	GuiControl,Text,invdirbox,%invfile%||
	FileRead,invshow,%invfile%
	GuiControl,Text,invshow,%invshow%
	GoSub,pgrmode
}
return

invselect:
FileSelectFile,invfile,3,,.aldrin_cc,*.aldrin_cc
If InStr(invfile,.aldrin_cc,-1)
{
	FileRead,invshow,%invfile%
	GuiControl,Text,invocustbox,%invshow%
	GoSub,pgrmode2
}
return

mposelect:
FileSelectFile,invfile,3,,.aldrin_cc,*.aldrin_cc
If InStr(invfile,.aldrin_cc,-1)
{
	FileRead,invshow,%invfile%
	GuiControl,Text,mpocustbox,%invshow%
	GoSub,pgrmode3
}
return

reloadcc:
rollback=0
Loop, %RegisteredDirectory%
{
	IniRead,CCDirectory%A_Index%,Settings.aldrin_ini,Edits,CCDirectory%A_Index%
	IniRead,CCDirectory%A_Index%Hotkey,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Hotkey
	IniRead,CCDirectory%A_Index%Enabled,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Enabled
	IfExist, % CCDirectory%A_Index%
	{
		if rollback>0
		{
			computer:=A_Index-rollback
			IniWrite, % CCDirectory%A_Index%, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%computer%
			IniWrite, % CCDirectory%A_Index%Hotkey, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%computer%Hotkey
			IniWrite, % CCDirectory%A_Index%Enabled, %A_ScriptDir%\Settings.aldrin_ini, Edits, CCDirectory%computer%Enabled
		}
	}
	else
	{
		IniDelete,Settings.aldrin_ini,Edits,CCDirectory%A_Index%
		IniDelete,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Hotkey
		IniDelete,Settings.aldrin_ini,Edits,CCDirectory%A_Index%Enabled
		computer:=RegisteredDirectory-1
		IniWrite,%computer%,Settings.aldrin_ini,Edits,RegisteredDirectory
		IniRead,RegisteredDirectory,Settings.aldrin_ini,Edits,RegisteredDirectory
		rollback:=rollback+1
	}
}
return

invupdate:
Gui,MainGUI:Submit,NoHide
if invfilehk=
{
	return
}
else if invdirbox=
{
	return
}
booleanexist=0
invstringhk:=invfilehk
modifiers=!,^,+
stringmodifiers=Alt-,CTRL-,Shift-
Loop,Parse,modifiers, `,
{
	modifierindex:=A_Index
	modifierloopfield:=A_LoopField
	Loop,Parse,stringmodifiers, `,
	{
		if modifierindex=%A_Index%
		{
			StringReplace,invstringhk,invstringhk,%modifierloopfield%,%A_LoopField%,All
		}
	}
}
StringReplace,invstringhk,invstringhk,-,+,All
Loop % LV_GetCount()
{
	LV_GetText(checker,A_Index ,1)
	if checker=%invstringhk%
	{
		LV_GetText(tempdir,A_Index ,2)
		msgbox,0,HOTKEY EXISTS,Registration Denied! The Hotkey Paramater Currently Exist/was Registered:`n`nDirectory:`n" %tempdir% "`n`nHotkey:`n" %invstringhk% "
		return
	}
	LV_GetText(checker,A_Index ,2)
	if checker=%invdirbox%
	{
		LV_Modify(A_Index,"Select",invstringhk)
		booleanexist=1
	}
}
if booleanexist=0
{
	LV_Add("Select" "Check", invstringhk, invdirbox)
}
LV_ModifyCol(1,"AutoHdr")
LV_ModifyCol(2,"AutoHdr")
LV_Modify(0, "Select")
LV_Modify(0, "-Select")
return

invdelete:  ; The user selected "Clear" in the context menu.
invrownumber = 0  ; This causes the first iteration to start the search at the top.
Loop
{
    ; Since deleting a row reduces the invrownumber of all other rows beneath it,
    ; subtract 1 so that the search includes the same row number that was previously
    ; found (in case adjacent rows are selected):
    invrownumber := LV_GetNext(invrownumber - 1)
    if not invrownumber  ; The above returned zero, so there are no more selected rows.
        break
    LV_Delete(invrownumber)  ; Clear the row from the ListView.
}
LV_ModifyCol(1,"AutoHdr")
LV_ModifyCol(2,"AutoHdr")
return

invlv:
if A_GuiEvent = DoubleClick
{
	LV_GetText(mapinvfilehk, A_EventInfo,1)  ; Get the text from the row's first field.
	LV_GetText(mapinvdirbox, A_EventInfo,2)
	if mapinvfilehk=Hotkey
	{
		return
	}
	else if mapinvdirbox=Directory
	{
		return
	}
	modifiers=!,^,+
	stringmodifiers=Alt+,CTRL+,Shift+
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,mapinvfilehk,mapinvfilehk,%A_LoopField%,%modifierloopfield%,All
			}
		}
	}
	GuiControl,Text,invfilehk,%mapinvfilehk%
	GuiControl,Text,invdirbox,%mapinvdirbox%||
	Gui,MainGUI:Submit,NoHide
	FileRead,invshow,%mapinvdirbox%
	GoSub,pgrtranslate
	GuiControl,Text,invshow,%invshow%
}
else if InStr(ErrorLevel, "C", true)
{
	LV_GetText(mapinvfilehk, A_EventInfo,1)  ; Get the text from the row's first field.
	if mapinvfilehk=Hotkey
	{
		return
	}
	modifiers=!,^,+
	stringmodifiers=Alt+,CTRL+,Shift+
	Loop,Parse,modifiers, `,
	{
		modifierindex:=A_Index
		modifierloopfield:=A_LoopField
		Loop,Parse,stringmodifiers, `,
		{
			if modifierindex=%A_Index%
			{
				StringReplace,mapinvfilehk,mapinvfilehk,%A_LoopField%,%modifierloopfield%,All
			}
		}
	}
	loop, 20
	{
		varloop:=spell%A_Index%
		If mapinvfilehk=%varloop%        ;  Check for duplicate hotkey...
		{
			if A_Index>14
			{
				tempnote1=Meepo Hotkeys
			}
			else
			{
				tempnote1=Invoker Hotkeys
			}
			param=Quas Hotkey|Wex Hotkey|Exort Hotkey|Invoke Hotkey|Sunstrike|EMP|ColdSnap|Chaos Meteor|Forge Spirit|Alacrity|Tornado|Ice Wall|Ghost Walk|Deafening Blast|All Meepo Poof|All Clone Meepo Poof(Prime Meepo Exempted)|All Meepo will Use Item Boots(requires "item boots hotkey")|Poof Hotkey(REQUIRED)|Item Boots Hotkey"if usable"(Optional) |EarthBind Hotkey(Optional:Required at "Meepo CUSTOM COMBINATIONS")
			tempint=%A_Index%
			Loop,Parse,param,|
			{
				if A_Index=%tempint%
				{
					tempnote2=%A_LoopField%
				}
			}
			LV_Modify(A_EventInfo, "-Check")
			msgbox,0,HOTKEY EXISTS,Activation Denied! The Hotkey Paramater Currently Exist/was Registered on %tempnote1%`n`nName:`n" %tempnote2% "`n`nHotkey:`n" %invstringhk% "
			return
		}
	}
	param=hotkeysuspend,hotkeyterminate,hotkeyautoaccept
	nameparam=Suspend this Tool Hotkey|Terminate this Tool Hotkey|DOTA2 Auto-Accepter
	Loop,parse,param,`,
	{
		tempvar:=%A_LoopField%
		if mapinvfilehk=%tempvar%
		{
			tempint=%A_Index%
			loop,parse,nameparam,|
			{
				if A_Index=%tempint%
				{
					LV_Modify(A_EventInfo, "-Check")
					msgbox,0,HOTKEY EXISTS,Activation Denied! The Hotkey Paramater Currently Exist/was Registered on Operational Hotkeys`n`nName:`n" %A_Loopfield% "`n`nHotkey:" %invstringhk% "
					return
				}
			}
		}
	}
}
return

invccabout:
msgbox,0,About Custom Combinations,"Custom Combination" System is a "Custom Script" designed to expand the "Default Manipulations" inside this Tool`, adding new "features of executions" with their individual "Hotkey".This "Feature" was allowed by the presence of external "Custom Scripts" or "*.aldrin_cc" files. The purpose of "*.aldrin_cc" is to add an execution when pressing its registered "Hotkey". Since these "Custom Scripts" Files are externalized`,the user of this tool can add/create their "Custom AutoHotkey Languaged Script" and execute that Script with this Powerful Tool.`n`nWhat is inside this TAB where:`n*Directory`n-shows the active directory that was currently selected`n-it has a "Browse" Button to locate your desired External Script`n`n*Hotkey`n-relocates the use of script by the user's desired hotkey`n`n*Update`n-register's both "Hotkey" and "Directory" that are currently present`n`n*Hotkey(Registered)`n-the Column of Registered hotkey/s with respect to its own external directory/s relative to its row`n`n*Directory(Registered)`n-the Column of Registered external directory/s with respect to its own hotkey/s relative to its row`n`n*Delete`n-removes the currently selected "row" on the registered list`n`n*External Script Overview`n-shows what's written inside the currently selected "external script"`n`n*Programmer Mode`n-control's the translation of the "external script" according to the user's predefined ability to recognize Programming Methodology`n-if unchecked(User Mode)`, translates the script into an understandable language if the words are supported`n-User Mode(unchecked)'s articulation on programming language translation only supports words generated from "Invoker Custom Combination" and "Meepo Custom Combination"
return

credits:
msgbox,,Credits,I would like to thank the following for helping me build this powerful hotkey:`n`n`nJohn Brell Ladiero`n`n`n`nThis Tool is POWERED BY "C++ Language" "Javascript" "Python"
return

castability:
Gui, invguicustcomb:Submit, NoHide
if (selectability = "SunStrike")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, t`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, t{Click}`n
	}
}
if (selectability = "EMP")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, c`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, c{Click}`n
	}
}
if (selectability = "Cold Snap")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, y`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, y{Click}`n
	}
}
if (selectability = "Chaos Meteor")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, d`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, d{Click}`n
	}
}
if (selectability = "Forge Spirit")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, f`n
}
if (selectability = "Alacrity(SelfCast)")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, !z`n
}
if (selectability = "Tornado")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, x`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, x{Click}`n
	}
}
if (selectability = "Ghost Walk")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, v`n
}
if (selectability = "Ice Wall")
{
	GuiControl,Text,invocustbox,%invocustbox%sendinput`, g`n
}
if (selectability = "Deafening Blast")
{
	if (invqc = "1")
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, b`n
	}
	else
	{
		GuiControl,Text,invocustbox,%invocustbox%sendinput`, b{Click}`n
	}
}
GoSub,pgrmode2
return

reginvfilehk:
if invcusthoton=1
{
	StringReplace,tempvarhk,A_ThisHotkey,$,,1
	IniRead,RegisteredDirectory,Settings.aldrin_ini,Edits,RegisteredDirectory
	Loop,%RegisteredDirectory%
	{
		If tempvarhk= % CCDirectory%A_Index%Hotkey
		{
			if CCDirectory%A_Index%Enabled=-
			{
				return
			}
			FileRead,cctempstring,% CCDirectory%A_Index%
			global cctempint:=A_Index
			Break
		}
	}
	ifinstring,A_ThisHotkey,!
	{
	KeyWait, Alt
	}
	ifinstring,A_ThisHotkey,^
	{
	KeyWait, Ctrl
	}
	ifinstring,A_ThisHotkey,+
	{
	KeyWait, Shift
	}
	cctempdir:=A_ScriptDir
	Includer=#SingleInstance ignore`r`n#NoEnv`r`n#IfWinActive`, Dota 2`r`nifnotexist`,%cctempdir%\Settings.aldrin_ini`r`n{`r`nFileAppend`,`, %cctempdir%\Settings.aldrin_ini`r`nIniWrite`, Q`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo1`r`nIniWrite`, W`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo2`r`nIniWrite`, E`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo3`r`nIniWrite`, R`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo4`r`nIniWrite`, ^T`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo5`r`nIniWrite`, ^C`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo6`r`nIniWrite`, ^Y`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo7`r`nIniWrite`, ^D`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo8`r`nIniWrite`, ^F`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo9`r`nIniWrite`, ^Z`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo10`r`nIniWrite`, ^X`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo11`r`nIniWrite`, ^G`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo12`r`nIniWrite`, ^V`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo13`r`nIniWrite`, ^B`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo14`r`nIniWrite`, F`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo18`r`nIniWrite`, R`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo15`r`nIniWrite`, Q`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo16`r`nIniWrite`, !Q`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo19`r`nIniWrite`, ```, %cctempdir%\Settings.aldrin_ini`, Edits`, invo17`r`nIniWrite`, 0`, %cctempdir%\Settings.aldrin_ini`, Edits`, waspgrmode`r`nIniWrite`, +ReadOnly`, %cctempdir%\Settings.aldrin_ini`, Edits`, pgren`r`n}`r`nloop`, 20`r`n{`r`nIniRead`, spell`%A_Index`%`, %cctempdir%\Settings.aldrin_ini`, Edits`, invo`%A_Index`%`r`n}`r`nIniRead`, invhkon`, %cctempdir%\Settings.aldrin_ini`, Edits`, invhkon`r`nIniRead`, orb3x`, %cctempdir%\Settings.aldrin_ini`, Edits`, orb3x`r`nIniRead`, mpohkon`, %cctempdir%\Settings.aldrin_ini`, Edits`, mpohkon`r`nIniRead`, qcon`, %cctempdir%\Settings.aldrin_ini`, Edits`, qcon`r`nIniRead`, fcon`, %cctempdir%\Settings.aldrin_ini`, Edits`, fcon`r`nIniRead`, invcusthotwason`, %cctempdir%\Settings.aldrin_ini`, Edits`, invcusthotwason`r`nIniRead`, mapinvcustcombcan`, %cctempdir%\Settings.aldrin_ini`, Edits`, mapinvcustcombcan`r`nIniRead`, waspgrmode`, %cctempdir%\Settings.aldrin_ini`, Edits`, waspgrmode`r`nIniRead`, pgren`, %cctempdir%\Settings.aldrin_ini`, Edits`, pgren`r`n%cctempstring%
	DynaRun(Includer,"Custom Combination Handler")
}
return

DynaRun(s, pn:="", pr:=""){ ; s=Script,pn=PipeName,n:=,pr=Parameters,p1+p2=hPipes,P=PID
   executer="%A_ScriptDir%\AutoHotkey.exe" "
   static AhkPath:="""" A_AhkPath """" (A_IsCompiled|(A_IsDll&&DllCall(A_AhkPath "\ahkgetvar","Str","A_IsCompiled"))?" /E":"") " """
   if (-1=p1 := DllCall("CreateNamedPipe","str",pf:="\\.\pipe\" (pn!=""?pn:"AHK" A_TickCount),"uint",2,"uint",0,"uint",255,"uint",0,"uint",0,"Ptr",0,"Ptr",0))
      | (-1=p2 := DllCall("CreateNamedPipe","str",pf,"uint",2,"uint",0,"uint",255,"uint",0,"uint",0,"Ptr",0,"Ptr",0))
      Return 0
   ; allow compiled executable to execute dynamic scripts. Requires AHK_H
   Run, % executer pf """ " pr,,UseErrorLevel HIDE,P
   global cchandler:=P
   GoSub,ccvarsaver
   If ErrorLevel
      return 0,DllCall("CloseHandle","Ptr",p1),DllCall("CloseHandle","Ptr",p2)
   DllCall("ConnectNamedPipe","Ptr",p1,"Ptr",0),DllCall("CloseHandle","Ptr",p1),DllCall("ConnectNamedPipe","Ptr",p2,"Ptr",0)
   if !DllCall("WriteFile","Ptr",p2,"Wstr",s:=(A_IsUnicode?chr(0xfeff):"ï»¿") s,"UInt",StrLen(s)*(A_IsUnicode ? 2 : 1)+(A_IsUnicode?4:6),"uint*",0,"Ptr",0)
      P:=0
   DllCall("CloseHandle","Ptr",p2)
   Return P
}

ccvarsaver:
ccregvar%cctempint%:=cchandler
return

invcustcombcanhk:
if A_DetectHiddenWindows=Off
{
	DetectHiddenWindows, on
}
WinGet, AHKWindows, List, ahk_class AutoHotkey
Loop %AHKWindows%
{
	WinGet, AHKWindows%A_Index%_PID, PID, % "ahk_id " AHKWindows%A_Index%
	WinGet, ID_Check, ID, % "ahk_id " AHKWindows%A_Index%
	if A_ScriptHwnd<>%ID_Check%
	{
		cansave=%A_Index%
		loop %cctempint%
		{
			if ccregvar%A_Index%<>
			{
				if ccregvar%A_Index%<>ERROR
				{
					if ccregvar%A_Index%:=AHKWindows%cansave%_PID
					{
						WinKill, % "ahk_pid " AHKWindows%cansave%_PID
					}
				}
			}
		}
	}
}
if A_DetectHiddenWindows=On
{
	DetectHiddenWindows, off
}
return

$^m:: ; fast left clicker
While GetKeyState("m", "P")
{
	Send {click}
	;Sleep 1
	;Send {click}
	;Sleep 1
}
Return