Include("\\script\\pass\\boss.lua")

function OnDrop(NpcIdx)
--if GetPKState() == 0 then
--Talk(1,"","Tr�ng th�i luy�n c�ng kh�ng th� ho�n th�nh nhi�m v�, vui l�ng chuy�n sang chi�n ��u v� th� th�ch l�i")
--Msg2Player("Tr�ng th�i luy�n c�ng kh�ng th� ho�n th�nh nhi�m v�, vui l�ng chuy�n sang chi�n ��u v� th� th�ch l�i")
--return
--end


if GetTask(27) <= 0 or GetTask(27) > getn(ToaDoSatThu) then
	Msg2Player("Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
if (ToaDoSatThu[GetTask(27)][5] ~= GetNpcName(NpcIdx)) then
	Msg2Player("Nhi�m v� Boss S�t Th� hi�n t�i l�: <color=yellow>Ti�u di�t "..ToaDoSatThu[GetTask(27)][5].."")
return
end


DropEvent(NpcIdx)

nguhanh = GetNpcSeries(NpcIdx)
team = GetTeam()
if GetTeam() == nil then
	if (ToaDoSatThu[GetTask(27)][5] == GetNpcName(NpcIdx)) then
		if nguhanh >= 0 and nguhanh <= 4 then
			AddEventItem(130 + nguhanh)
		else
		Msg2SubWorld(""..GetName().." Loi Boss ST: "..nguhanh..", bao ngay admin de fix !")
		end
		
		if GetTask(27) >= 25 then
			sx = random(1,30)
			if sx == 10 then
				idxitem = AddEventItem(random(75,102))
				Msg2Player("Ch�c m�ng "..GetName().." ��nh b�i "..GetNpcName(NpcIdx).." nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			end
		end
		AddSkillEffect(491,1,54)
		SetTask(27,99)
		
		Msg2Player("B�n �� ti�u di�t <color=yellow>Boss S�t Th� - "..GetNpcName(NpcIdx)..". <color=red>Quay v� g�p Nhi�p Th� Tr�n �� ph�c m�nh!");
	elseif GetTask(27) == 99 then
		Talk(1,"","Mau v� g�p Nhi�p Th� Tr�n �� ph�c m�nh !")
	else
		Talk(1,"","H�nh nh� ta ��u c� th� o�n g� v�i nha ng��i!")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
			if GetTask(27) > 0 and GetTask(27) <= getn(ToaDoSatThu) then
				if (ToaDoSatThu[GetTask(27)][5] == GetNpcName(NpcIdx)) then
						if nguhanh >= 0 and nguhanh <= 4 then
						AddEventItem(130 + nguhanh)
						else
						Msg2SubWorld(""..GetName().." Loi Boss ST: "..nguhanh..", bao ngay admin de fix !")
						end
						
					if GetTask(27) >= 25 then
						sx = random(1,30)
						if sx == 10 then
							idxitem = AddEventItem(random(75,102))
							Msg2Player("Ch�c m�ng "..GetName().." ��nh b�i "..GetNpcName(NpcIdx).." nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
						end
					end	
					AddSkillEffect(491,1,54)
					SetTask(27,99)
					Msg2Player("B�n �� ti�u di�t <color=yellow>Boss S�t Th� - "..GetNpcName(NpcIdx)..". <color=red>Quay v� g�p Nhi�p Th� Tr�n �� ph�c m�nh!");
				elseif GetTask(27) == 99 then
					Talk(1,"","Mau v� g�p Nhi�p Th� Tr�n �� ph�c m�nh !")
				else
					Talk(1,"","H�nh nh� ta ��u c� th� o�n g� v�i nha ng��i!")
				end
			else
				Msg2Player("<color=yellow>"..GetNpcName(NpcIdx)..": <color=red>Ta kh�ng th� o�n g� v�i nha ng��i !")
			end
		end
	end
end
end;

function OnDeath()
end