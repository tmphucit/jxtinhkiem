
function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if w >= 116 and w <= 134 then
Msg2Player("Kh�ng th� s� d�ng Th� ��a Ph� trong Khu V�c Bang H�i !")
return
end
if w == 34 or w == 35 then
	if GetFightState() == 0 then
		if GetTaskTemp(1) < 10 then
			SetTaskTemp(1,GetTaskTemp(1)+1)
			Msg2Player("<color=green>B�n kh�ng th� d�ng th� ��a ph� t�i ��y , n�u b� k�t b�n h�y nh�p chu�t ph�i 10 l�n v�o th� ��a ph� �� gi�i k�t .")
			Msg2Player("S� l�n nh�p v�o th� ��a ph� �� gi�i k�t l� : <color=yellow>"..GetTaskTemp(1).."/10 l�n .")
		else
			SetFightState(0)
			SetRevPos(19)
			SetRank(1)
			SetTask(80,0)
			SetTask(10,0)
			SetTask(128,0)
			if GetTask(16) > 0 and GetTask(16) <= 4 then
			SetCamp(GetTask(16))
			SetCurCamp(GetTask(16))
			NewWorld(53,200*8,200*16)
			else
			SetTask(16,2)
			SetCurCamp(2)
			SetCamp(2)
			KickOutSelf()
			end
			SetTaskTemp(1,0)
		end
	end
end

if w == 36 or w == 42 or w == 43 or w == 60 or w == 61 or w == 33 or w == 13 or w == 47 or w == 48 or w == 49 or w == 24 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
end
if GetTaskTemp(149) == 1 then
Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
return
elseif GetTask(143) == 1 then
	if GetTask(4) > 0 then
	Talk(1,"","B�n �ang trong tr�ng th�i t�m giam . Kh�ng th� r�i kh�i ��y ! ")
	return
	end
	if GetTaskTemp(1) < 10 then
	SetTaskTemp(1,GetTaskTemp(1)+1)
	Msg2Player("<color=green>B�n kh�ng th� d�ng th� ��a ph� t�i ��y , n�u b� k�t b�n h�y nh�p chu�t ph�i 10 l�n v�o th� ��a ph� �� gi�i k�t .")
	Msg2Player("S� l�n nh�p v�o th� ��a ph� �� gi�i k�t l� : <color=yellow>"..GetTaskTemp(1).."/10 l�n .")
	else
	StopTimer()
	SetTask(142,0)
	SetRevPos(53,19)
	UseTownPortal(1)
	SetTask(128,0)
	AddSkillEffect(413,1,0)
	SetTask(143,0)
	Msg2Player("B�n �� gi�i k�t di chuy�n v� Ba L�ng Huy�n th�nh c�ng .")
	SetTaskTemp(1,0)
	end
return
end

if GetFightState() == 0 then
if (w ~= 33 and w ~= 20 and w ~= 53 and w ~= 3 and w~= 66 and w ~= 17 and w ~= 18 and w ~= 9 and w ~= 15 and w ~= 26 and w ~= 27 and w ~= 45 and w ~= 4 ) then
SetRevPos(53,19)
UseTownPortal(1)
Msg2Player("B�n �� tr� v� Ba L�ng Huy�n !")
elseif (w == 26) or (w == 27) or (w == 45) or (w == 28) or (w == 29) or (w == 33) or (w == 20) then
	Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
elseif w == 15 or w == 9 or w == 17 or w == 18 or w == 20 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1,GetTaskTemp(1)+1)
	Msg2Player("<color=green>B�n kh�ng th� d�ng th� ��a ph� t�i ��y , n�u b� k�t b�n h�y nh�p chu�t ph�i 10 l�n v�o th� ��a ph� �� gi�i k�t .")
	Msg2Player("S� l�n nh�p v�o th� ��a ph� �� gi�i k�t l� : <color=yellow>"..GetTaskTemp(1).."/10 l�n .")
	else
	
		SetRevPos(53,19)
		UseTownPortal(1)
		SetTask(128,0)	
		AddSkillEffect(413,1,0)
		Msg2Player("B�n �� gi�i k�t di chuy�n v� Ba L�ng Huy�n th�nh c�ng .")
		SetTaskTemp(1,0)
	end
elseif w == 4 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1,GetTaskTemp(1)+1)
	Msg2Player("<color=green>B�n kh�ng th� d�ng th� ��a ph� t�i ��y , n�u b� k�t b�n h�y nh�p chu�t ph�i 10 l�n v�o th� ��a ph� �� gi�i k�t .")
	Msg2Player("S� l�n nh�p v�o th� ��a ph� �� gi�i k�t l� : <color=yellow>"..GetTaskTemp(1).."/10 l�n .")
	else
		NewWorld(4,202*8,200*16)
		--UseTownPortal(1)
		SetTask(128,0)	
		AddSkillEffect(413,1,0)
		Msg2Player("B�n �� Di Chuy�n V� Long Tuy�n Th�n Do L�i Lag T�a ��")
		SetTaskTemp(1,0)
	end
else
	Msg2Player("Tr�ng th�i kh�ng th� th� ��a ph� ")
	SetTaskTemp(1,0)
end
else
	if (w == 26) or (w == 27) or (w == 45) or (w == 33) or (w == 28) or (w == 29)  or (w == 20) then
		Msg2Player("B�n kh�ng th� s� d�ng Th� ��a Ph� � ��y")
	else
		if w == 46 then
			SetDeathScript("")
			SetRevPos(53,19)
			BlockPKState(0)
			UseTownPortal(1)
			
			Msg2Player("B�n �� tr� v� Ba L�ng Huy�n !")
		else
			Msg2Player("B�n �� tr� v� �i�m xu�t ph�t !")
			rev = GetFromToward()
			SetTaskTemp(1,0)
			
			if rev == 17 then	
				rnd = random(1,7)
				UseTownPortal(2)
				SetFightState(0)
				NewWorld(17,1595,3198);
				--NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 15 then	
				rnd = random(8,13)
				UseTownPortal(2)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 18 then	
				rnd = random(14,19)
				UseTownPortal(2)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 9 then	
				rnd = random(20,25)
				UseTownPortal(2)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			else
				UseTownPortal(0)
			end
			

		end
	end
end
end;


MANGMAP = {
{17,1663,3222},
{17,1558,3110},
{17,1509,3192},
{17,1595,3106},
{17,1638,3129},
{17,1663,3222},
{17,1590,3282},

-- VT thu 8
{15,1553,3116},
{15,1504,3209},
{15,1687,3264},
{15,1551,3256},
{15,1511,3299},
{15,1606,3310},

-- VT thu 14
{18,3201,5142},
{18,3103,5025},
{18,3092,5079},
{18,3038,5147},
{18,3096,5204},
{18,3145,5210},

-- VT thu 20
{9,1771,2983},
{9,1816,3094},
{9,1683,3094},
{9,1748,3160},
{9,1699,3167},
{9,1667,3000},

}