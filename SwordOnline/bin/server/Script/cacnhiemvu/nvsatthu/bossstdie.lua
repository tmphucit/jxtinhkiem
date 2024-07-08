Include("\\script\\addnpccacmap\\boss.lua")

Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

-----------------------------------------------------�� FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------



function OnDrop(NpcIdx)
if GetTask(NV_SATTHU) <= 0 or GetTask(NV_SATTHU) > getn(ToaDoSatThu) then
	Msg2Player("Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

if (ToaDoSatThu[GetTask(NV_SATTHU)][5] ~= GetNpcName(NpcIdx)) then
	Msg2Player("Nhi�m v� Boss S�t Th� hi�n t�i l�: <color=yellow>Ti�u di�t "..ToaDoSatThu[GetTask(NV_SATTHU)][5].."")
return
end


DropEvent(NpcIdx)

nguhanh = GetNpcSeries(NpcIdx)
team = GetTeam()
if GetTeam() == nil then
	if (ToaDoSatThu[GetTask(NV_SATTHU)][5] == GetNpcName(NpcIdx)) then
		if nguhanh >= 0 and nguhanh <= 4 then
		AddEventItem(130 + nguhanh)
		else
		Msg2SubWorld(""..GetName().." Loi Boss ST: "..nguhanh..", bao ngay admin de fix !")
		end
		
		AddSkillEffect(491,1,54)
		SetTask(NV_SATTHU,99)
		
		Msg2Player("B�n �� ti�u di�t <color=yellow>Boss S�t Th� - "..GetNpcName(NpcIdx)..". <color=red>Quay v� g�p Nhi�p Th� Tr�n �� ph�c m�nh!");
  

	elseif GetTask(NV_SATTHU) == 99 then
		Talk(1,"","Mau v� g�p Nhi�p Th� Tr�n �� ph�c m�nh !")
	else
		Talk(1,"","H�nh nh� ta ��u c� th� o�n g� v�i nha ng��i!")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		if GetTeam() == team then
			if GetTask(NV_SATTHU) > 0 and GetTask(NV_SATTHU) <= getn(ToaDoSatThu) then
				if (ToaDoSatThu[GetTask(NV_SATTHU)][5] == GetNpcName(NpcIdx)) then
						if nguhanh >= 0 and nguhanh <= 4 then
						AddEventItem(130 + nguhanh)
						else
						Msg2SubWorld(""..GetName().." Loi Boss ST: "..nguhanh..", bao ngay admin de fix !")
						end
								
					AddSkillEffect(491,1,54)
					SetTask(NV_SATTHU,99)
					Msg2Player("B�n �� ti�u di�t <color=yellow>Boss S�t Th� - "..GetNpcName(NpcIdx)..". <color=red>Quay v� g�p Nhi�p Th� Tr�n �� ph�c m�nh!");
				elseif GetTask(NV_SATTHU) == 99 then
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
