LOI_DAI = {
{"","","","","","","","",""},
{"","","","","","","","",""}
}


function main()
if GetTeam() == nill then
Talk(1,"","B�n ph�i l�p t� ��i m�i c� th� ��ng k� tham gia !")
return	
end
if IsCaptain() ~= 1 then
Talk(1,"","B�n ph�i l� tr��ng nh�m m�i c� th� ��ng k� tham gia !")
return
end
phut = tonumber(date("%M"))
--gio,phut,giay = GetTimeNew()
if (phut >= 3 and phut < 10) or (phut >= 13 and phut < 20) or (phut >= 23 and phut < 30) or (phut >= 33 and phut < 40) or (phut >= 43 and phut < 50) or (phut >= 53) then
Talk(1,"","Hi�n �ang trong th�i gian thi ��u, kh�ng th� b�o danh. Th�i gian b�o danh t� ph�t th� 0 - 3, 10 - 13, 20 - 23, 30 - 33, 40 - 43, 50 - 53 m�i gi� !")
return
end

if IsCaptain() == 1 then
	if phut < 3 or (phut >= 10 and phut < 13) or (phut >= 20 and phut < 23) or (phut >= 30 and phut < 33) or (phut >= 40 and phut < 43) or (phut >= 50 and phut < 53) then
	if LOI_DAI[1][1] == "" then
		SayNew("<color=green>C�ng B�nh T� <color>: Hi�n t�i ch�a c� T� ��i n�o ��ng k� l�i ��i, s� l��ng th�nh vi�n trong nh�m b�n s� quy ��nh th� lo�i thi ��u ",2,
		"Ta mu�n ��ng k� th� lo�i thi ��u "..GetTeamSize().." vs "..GetTeamSize().." /dangky",
		"Tho�t./no")
	else
		soluong = tinhtongsoluongthanhvien()
		SayNew("<color=green>C�ng B�nh T� <color>: Hi�n t�i �� c� T� ��i ��ng k� h�nh th�c thi ��u "..soluong.." vs "..soluong..". B�n ph�i c� s� th�nh vi�n b�ng s� s� l��ng quy ��nh m�i v�o ���c ",2,
		"Ta s� c�ng nh�m tham gia thi ��u /dangky",
		"Tho�t./no")
	end
	else
		Talk(1,"","L�i: Hi�n �ang trong th�i gian thi ��u, kh�ng th� b�o danh. Th�i gian b�o danh t� ph�t th� 0 - 3, 10 - 13, 20 - 23, 30 - 33, 40 - 43, 50 - 53 m�i gi� !")
	end
end
end

function tinhtongsoluongthanhvien()
check = 0
for i=1,getn(LOI_DAI) do
	if LOI_DAI[1][i] ~= "" then
		check = check + 1
	end
end
return check
end

function dangky()
if LOI_DAI[1][1] == "" then
	idx = PlayerIndex
	team = GetTeam()
	vt = 1
	Msg2SubWorld("<color=pink>Nh�m c�a <color=yellow>"..GetName().." <color=pink>�� ��ng k� l�i ��i h�nh th�c <color=yellow>"..GetTeamSize().." vs "..GetTeamSize()..".<color=pink>�ang ch� ��i nh�m kh�c tham gia!")
	LOI_DAI[1][9] = GetName()
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if team == GetTeam() then
			SetPunish(1);
			SetFightState(0)
			SetTaskTemp(40,GetCurCamp())
			SetDeathScript("\\script\\hoatdong\\loidai\\sugialoidai.lua")
			SetCurCamp(1)
			SetCamp(1)
			SetPKState(1)
			BlockPKState(1)
			SetLogoutRV(0);
			LOI_DAI[1][vt] = GetName()
			vt = vt+1
			NewWorld(45,1625, 3193)
		end
	end
	PlayerIndex = idx
else
	soluong = tinhtongsoluongthanhvien()
	if GetTeamSize() ~= soluong then
	Talk(1,"","Hi�n t�i th� lo�i ��ng k� l�i ��i l�: <color=red>"..soluong.." vs "..soluong.." ")
	return
	end
	if LOI_DAI[2][1] ~= "" then
	Talk(1,"","�� c� nh�m ��ng k� v�o l�i ��i !")
	return
	end
	LOI_DAI[2][9] = GetName()
	Msg2SubWorld("<color=pink>Nh�m c�a <color=yellow>"..GetName().." <color=pink>�� tham gia l�i ��i c�ng nh�m c�a <color=yellow>"..LOI_DAI[1][9].."<color=pink>. H�y c� g�ng l�p c�ng mang vinh danh v� cho ��i c�a m�nh !")
	team = GetTeam()
	idx = PlayerIndex
	vt = 1	
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if team == GetTeam() then
			SetPunish(1);
			SetFightState(0)
			SetTaskTemp(40,GetCurCamp())
			SetDeathScript("\\script\\hoatdong\\loidai\\sugialoidai.lua")
			SetCurCamp(2)
			SetCamp(2)
			SetPKState(1)
			BlockPKState(1)
			SetLogoutRV(0);
			LOI_DAI[2][vt] = GetName()
			vt = vt+1
			NewWorld(45,1604, 3195)
		end
	end
	PlayerIndex = idx
	
end
end



function RunTimer()
gio,phut,giay = GetTimeNew()
if LOI_DAI[1][1] ~= "" then
if phut == 3 or phut == 13 or phut == 23 or phut == 33 or phut == 43 or phut == 53 then
	Msg2WorldById("Th�i gian thi ��u c�n l�i l�: <color=yellow>1 ph�t ",45)
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end

	if checka <= 0 or checkb <= 0 then
		Msg2WorldById("Tr�n ��u k�t th�c v� nh�m c�a b�n kh�ng c� ��i th� ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
	end	

		for i=1,9 do
			LOI_DAI[1][i] = ""
			LOI_DAI[2][i] = ""
		end
	end
end


if phut == 4 or phut == 14 or phut == 24 or phut == 34 or phut == 44 or phut == 54 then
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetFightState(1)
			Msg2Player("Tr�n ��u b�t ��u, th�i gian thi ��u: 6 ph�t ")
		end
	end
end

if (phut > 4 and phut < 9) or (phut > 14 and phut < 19) or (phut > 24 and phut < 29) or (phut > 34 and phut < 39) or (phut > 44 and phut < 49) or (phut > 54 and phut < 59) then
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end

	
	if checka <= 0 then
		Msg2WorldById("Tr�n ��u k�t th�c, nh�m <color=yellow>"..LOI_DAI[2][9].." <color=red>gi�nh chi�n th�ng v� ti�u di�t h�t ��i th� ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
		end
	elseif checkb <= 0 then
		Msg2WorldById("Tr�n ��u k�t th�c, nh�m <color=yellow>"..LOI_DAI[1][9].." <color=red>gi�nh chi�n th�ng v� ti�u di�t h�t ��i th� ",45)
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			SetPunish(0);
			SetFightState(0)
			SetDeathScript("")
			SetCurCamp(GetTaskTemp(40))
			SetCamp(GetTaskTemp(40))
			SetPKState(0)
			BlockPKState(0)
			SetLogoutRV(0);
			NewWorld(53,200*8,200*16)
		end
		end
	end	

	for i=1,9 do
		LOI_DAI[1][i] = ""
		LOI_DAI[2][i] = ""
	end
end

if phut == 9 or phut == 19 or phut == 29 or phut == 39 or phut == 49 or phut == 59 then
	checka = 0
	checkb = 0
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 45 then
			if GetCurCamp() == 1 then
				checka = checka + 1
			elseif GetCurCamp() == 2 then
				checkb = checkb + 1
			end
		end
	end
	
	if checka == checkb and checka ~= 0 then
		Msg2WorldById("Tr�n ��u k�t th�c, k�t qu�: <color=yellow>: H�a ",45)
	elseif checka > checkb then
		Msg2WorldById("Tr�n ��u k�t th�c, k�t qu�: <color=yellow>: ��i "..LOI_DAI[1][9].." <color=red> gi�nh chi�n th�ng v� c� s� l��ng th�nh vi�n nhi�u h�n",45)
	elseif checka < checkb then
		Msg2WorldById("Tr�n ��u k�t th�c, k�t qu�: <color=yellow>: ��i "..LOI_DAI[2][9].." <color=red> gi�nh chi�n th�ng v� c� s� l��ng th�nh vi�n nhi�u h�n",45)
	end

	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 45 then
		SetPunish(0);
		SetFightState(0)
		SetDeathScript("")
		SetCurCamp(GetTaskTemp(40))
		SetCamp(GetTaskTemp(40))
		SetPKState(0)
		BlockPKState(0)
		SetLogoutRV(0);
		NewWorld(53,200*8,200*16)
	end
	end
	for i=1,9 do
		LOI_DAI[1][i] = ""
		LOI_DAI[2][i] = ""
	end
end
end
end

function OnDeath(Launcher)
PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer = PlayerIndex;
die_name = GetName()

if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
end
giet = GetName()

Msg2World("��i hi�p <color=yellow>"..giet.." <color=red>�� ��nh b�i <color=yellow>"..die_name.." <color=red>!")

PlayerIndex = OrgPlayer;
SetDeathScript("");
SetCurCamp(GetTaskTemp(40))
SetCamp(GetTaskTemp(40))
SetFightState(0)
SetPKState(0)
BlockPKState(0)
SetLogoutRV(0);

end

function OnDrop()
end


function OnDrop()
end
function no()
end