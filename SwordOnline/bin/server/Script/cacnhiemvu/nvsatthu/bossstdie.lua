Include("\\script\\addnpccacmap\\boss.lua")

Include("\\Script\\Global\\sourcejx49.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

-----------------------------------------------------§Ã FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------



function OnDrop(NpcIdx)
if GetTask(NV_SATTHU) <= 0 or GetTask(NV_SATTHU) > getn(ToaDoSatThu) then
	Msg2Player("Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end

if (ToaDoSatThu[GetTask(NV_SATTHU)][5] ~= GetNpcName(NpcIdx)) then
	Msg2Player("NhiÖm vô Boss S¸t Thñ hiÖn t¹i lµ: <color=yellow>Tiªu diÖt "..ToaDoSatThu[GetTask(NV_SATTHU)][5].."")
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
		
		Msg2Player("B¹n ®· tiªu diÖt <color=yellow>Boss S¸t Thñ - "..GetNpcName(NpcIdx)..". <color=red>Quay vÒ gÆp NhiÕp ThÝ TrÇn ®Ó phôc mÖnh!");
  

	elseif GetTask(NV_SATTHU) == 99 then
		Talk(1,"","Mau vÒ gÆp NhiÕp ThÝ TrÇn ®Ó phôc mÖnh !")
	else
		Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
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
					Msg2Player("B¹n ®· tiªu diÖt <color=yellow>Boss S¸t Thñ - "..GetNpcName(NpcIdx)..". <color=red>Quay vÒ gÆp NhiÕp ThÝ TrÇn ®Ó phôc mÖnh!");
				elseif GetTask(NV_SATTHU) == 99 then
					Talk(1,"","Mau vÒ gÆp NhiÕp ThÝ TrÇn ®Ó phôc mÖnh !")
				else
					Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
				end
			else
				Msg2Player("<color=yellow>"..GetNpcName(NpcIdx)..": <color=red>Ta kh«ng thï o¸n g× víi nha ng­¬i !")
			end
		end
	end
end
end;

function OnDeath()
end
