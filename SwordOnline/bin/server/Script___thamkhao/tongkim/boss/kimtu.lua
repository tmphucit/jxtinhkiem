Include("\\script\\tongkim\\headtime.lua")

function OnDeath(Launcher)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
if GetGlbMissionV(60) == 2000 then
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer = PlayerIndex;
	die_name = GetName()
	die_dh = GetTask(19)

	if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	end
	giet = GetName()
	kill_dh = GetTask(19)

	if (GetTask(12) == 1) then
		tongdiem = 0
		SetTask(11,GetTask(11)+1) -- Player
		SetTask(13,GetTask(13)+danhhieu[die_dh][4]) -- tich luy nguoi choi
		tongdiem = tongdiem + danhhieu[die_dh][4]

		SetTask(21,GetTask(21)+1) -- Lien Tram
		
		diemlientram = 0
		if GetTask(21) >= 20 then
		diemlientram = 100
		else
		diemlientram = GetTask(21) * 5
		end
		SetTask(24,GetTask(24)+diemlientram) -- Tich Luy Lien 
		tongdiem = tongdiem +diemlientram
		
		SetTask(31,GetTask(31)+tongdiem)
		SetTask(15,GetTask(15)+tongdiem)
		SetGlbMissionV(81,GetGlbMissionV(81)+tongdiem)
		if (GetTask(31) >= danhhieu[GetTask(19)+1][2]) then
			SetTask(19,GetTask(19)+1)
			qh = GetTask(19)
			AddMagic(413,qh)
			AddRepute(danhhieu[qh][5])
			SetRank(219+qh*2)
			Msg2Player("B�n nh�n ���c "..danhhieu[qh][5].." �i�m danh v�ng")
			Msg2Player("Qu�n h�m c�a b�n �� t�ng l�n"..danhhieu[qh][1]..", xin ch�c m�ng !")
			Msg2World("Qu�n T�ng, ng��i ch�i "..GetName().." ���c phong h�m "..danhhieu[qh][1]..", ch�c m�ng !")
		end
		bv = random(1,6)
		if bv == 5 then
			idxitem = AddItem(1,random(8,9),0,random(1,5),0,0,0)
			Msg2World("<color=green>Ch�c m�ng "..GetName().." nh�n ���c "..GetNameItemBox(idxitem).."")
		end
		
		
		if GetTask(21) > GetTask(29) then
			SetTask(29,GetTask(21)) -- Set Lien Tram Cao Nhat
		end
		Msg2World("Ng��i ch�i ["..danhhieu[GetTask(19)][1].."] "..giet.." h� tr�ng th��ng ng��i ch�i ["..danhhieu[die_dh][1].."] "..die_name..", t�ng PK "..GetTask(11)..", �i�m t�ch l�y "..GetTask(31)..", li�n tr�m "..GetTask(21).." ")
		Msg2Player("B�n �� ��nh tr�ng th��ng Kim Binh "..danhhieu[die_dh][1].." "..die_name.." nh�n ���c "..tongdiem.." �i�m t�ch lu�, li�n tr�m "..GetTask(21)..", s� ng��i gi�t ���c "..GetTask(11)..", t�ch lu� hi�n t�i "..GetTask(31).." �i�m")
		UpdateTopTKNew()
	end
	PlayerIndex = OrgPlayer;
	SetTask(28,GetTask(28)+1) -- Tu Vong
	SetTask(21,0) -- Reset Lien Tram
	SetFightState(0)
	timehientai = m*60 + s
	if GetTaskTemp(99) == 0 then
		SetTaskTemp(99,timehientai+10)
	end



	SetDeathScript("");
	if giet == GetName() then
		Msg2Player("B�n �� b� qu�i v�t ��nh tr�ng th��ng, li�n tr�m tr� v� 0 !")
	else
		Msg2Player("B�n �� b� ["..danhhieu[kill_dh][1].."] "..giet.." ��nh tr�ng th��ng, li�n tr�m tr� v�  0")
	end
	UpdateTopTKNew()
end
end


function OnDrop()
end