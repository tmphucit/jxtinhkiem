Include("\\script\\tongkim\\headtime.lua")
danhhieu ={
{"Binh S� ",0,"",100},
{"Hi�u U�",1500,"+20% sinh luc, +200 sinh luc, +10% toc do di chuyen",120,1},
{"Th�ng L�nh",3000,"+30% sinh luc, +300 sinh luc, +20% toc do di chuyen, +10% toc do xuat chieu",150,2},
{"Ph� T��ng",6000,"+40% sinh luc, +400 sinh luc, +30% toc do di chuyen, +20% toc do xuat chieu",200,3},
{"��i T��ng",10000,"+50% sinh luc, +500 sinh luc, +40% toc do di chuyen, +30% toc do xuat chieu",250,4},
{"",99999999}
}

function CheckTrungNhanVat(num)
	if GetTask(452) == num then
		return 1
	else
		return 0
	end
end
--function CheckTrungNhanVat(num)
--	for i=452,454 do
--		if GetTask(i) == num then
--			return i-451
--		end
--	end
--return 0
--end

function CheckNhanVatTrong()
	for i=452,454 do
		if GetTask(i) == 0 then
			return i
		end
	end
return 0
end

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

	if (GetTask(12) == 2) then
		--if kill_dh - die_dh < 2 then
			if CheckTrungNhanVat(OrgPlayer) == 0 then
				--task = CheckNhanVatTrong()
				SetTask(452, OrgPlayer)
				--if task == 454 then
				--	SetTask(452,0)
				--	SetTask(453,0)
				--	SetTask(454,0)
				--end
				
						tongdiem = 0
						SetTask(11,GetTask(11)+1) -- Player
						SetTask(13,GetTask(13)+danhhieu[die_dh][4]) -- tich luy nguoi choi
						tongdiem = tongdiem + danhhieu[die_dh][4]

						SetTask(21,GetTask(21)+1) -- Lien Tram
						
						diemlientram = 0
						if GetTask(21) >= 20 then
						diemlientram = 40
						else
						diemlientram = GetTask(21) * 2
						end
						SetTask(24,GetTask(24)+diemlientram) -- Tich Luy Lien 
						tongdiem = tongdiem + diemlientram
						
						SetTask(31,GetTask(31)+tongdiem)
						SetTask(15,GetTask(15)+tongdiem)
						SetTask(348,GetTask(348)+tongdiem)
						
						-- Nhiem Vu Bang Hoi
						if ngay ~= GetTask(355) then
							SetTask(355, ngay)
							for k=357,361 do SetTask(k, 0) end
						end
						nvbang =  2
						if GetTaskTemp(36) == nvbang then
							SetTask(356+nvbang, GetTask(356+nvbang) + tongdiem)
							Msg2Player("<color=yellow>Nhi�m v� bang h�i t�ch l�y: "..GetTask(356+nvbang).." �i�m")
						end
						-- End NV Bang Hoi
					
						SetGlbMissionV(82,GetGlbMissionV(82)+tongdiem)
						if (GetTask(31) >= danhhieu[GetTask(19)+1][2]) then
							SetTask(19,GetTask(19)+1)
							qh = GetTask(19)
							AddMagic(413,qh)
							AddRepute(danhhieu[qh][5])
							SetRank(220+qh*2)
							Msg2Player("B�n nh�n ���c "..danhhieu[qh][5].." �i�m danh v�ng")
							Msg2Player("Qu�n h�m c�a b�n �� t�ng l�n"..danhhieu[qh][1]..", xin ch�c m�ng !")
							Msg2World("Qu�n Kim, ng��i ch�i "..GetName().." ���c phong h�m "..danhhieu[qh][1]..", ch�c m�ng !")
						end
						
						if GetTask(21) > GetTask(29) then
							SetTask(29,GetTask(21)) -- Set Lien Tram Cao Nhat
						end
						Msg2World("Ng��i ch�i ["..danhhieu[GetTask(19)][1].."] "..giet.." h� tr�ng th��ng ng��i ch�i ["..danhhieu[die_dh][1].."] "..die_name..", t�ng PK "..GetTask(11)..", �i�m t�ch l�y "..GetTask(31)..", li�n tr�m "..GetTask(21).." ")
						Msg2Player("<color=yellow>B�n �� ��nh tr�ng th��ng T�ng Binh "..danhhieu[die_dh][1].." "..die_name.." nh�n ���c "..tongdiem.." �i�m t�ch lu�, li�n tr�m "..GetTask(21)..", s� ng��i gi�t ���c "..GetTask(11)..", t�ch lu� hi�n t�i "..GetTask(31).." �i�m")
						UpdateTopTKNew()
			else
				Msg2Player("<color=yellow>H� th�ng ch�ng Post �i�m: tr�ng nh�n v�t")
			end
	--	else
	--		Msg2Player("<color=yellow>B�n v�a ti�u di�t 1 ng��i thua "..(kill_dh - die_dh).." c�p b�c danh hi�u, kh�ng nh�n ���c ph�n th��ng")
	--	end
	end
	PlayerIndex = OrgPlayer;
	SetTask(28,GetTask(28)+1) -- Tu Vong
	SetTask(21,0) -- Reset Lien Tram
	SetFightState(0)
h = tonumber(date("%H"))
m = tonumber(date("%M"))
s = tonumber(date("%S"))
	timehientai = m*60 + s
	if GetTaskTemp(99) == 0 then
		SetTaskTemp(99,timehientai+10)
	end


	SetDeathScript("");
	if giet == GetName() then
		Msg2Player("B�n �� b� qu�i v�t ��nh tr�ng th��ng, li�n tr�m tr� v� 0 !")
	else
		Msg2Player("<color=pink>B�n �� b� ["..danhhieu[kill_dh][1].."] "..giet.." ��nh tr�ng th��ng, li�n tr�m tr� v�  0")
	end
	UpdateTopTKNew()
end
end


function OnDrop()
end