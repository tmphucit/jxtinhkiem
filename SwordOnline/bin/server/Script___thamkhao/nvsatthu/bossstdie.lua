Include("\\script\\pass\\boss.lua")

function OnDrop(NpcIdx)
--if GetPKState() == 0 then
--Talk(1,"","Tr¹ng th¸i luyÖn c«ng kh«ng thÓ hoµn thµnh nhiÖm vô, vui lßng chuyÒn sang chiÕn ®Êu vµ thö th¸ch l¹i")
--Msg2Player("Tr¹ng th¸i luyÖn c«ng kh«ng thÓ hoµn thµnh nhiÖm vô, vui lßng chuyÓn sang chiÕn ®Êu vµ thö th¸ch l¹i")
--return
--end


if GetTask(27) <= 0 or GetTask(27) > getn(ToaDoSatThu) then
	Msg2Player("Ta kh«ng cã thï o¸n g× víi nhµ ng­¬i ....")
return
end
if (ToaDoSatThu[GetTask(27)][5] ~= GetNpcName(NpcIdx)) then
	Msg2Player("NhiÖm vô Boss S¸t Thñ hiÖn t¹i lµ: <color=yellow>Tiªu diÖt "..ToaDoSatThu[GetTask(27)][5].."")
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
				Msg2Player("Chóc mõng "..GetName().." ®¸nh b¹i "..GetNpcName(NpcIdx).." nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			end
		end
		AddSkillEffect(491,1,54)
		SetTask(27,99)
		
		Msg2Player("B¹n ®· tiªu diÖt <color=yellow>Boss S¸t Thñ - "..GetNpcName(NpcIdx)..". <color=red>Quay vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh!");
	elseif GetTask(27) == 99 then
		Talk(1,"","Mau vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh !")
	else
		Talk(1,"","H×nh nh­ ta ®©u cã thï o¸n g× víi nha ng­¬i!")
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
							Msg2Player("Chóc mõng "..GetName().." ®¸nh b¹i "..GetNpcName(NpcIdx).." nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
						end
					end	
					AddSkillEffect(491,1,54)
					SetTask(27,99)
					Msg2Player("B¹n ®· tiªu diÖt <color=yellow>Boss S¸t Thñ - "..GetNpcName(NpcIdx)..". <color=red>Quay vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh!");
				elseif GetTask(27) == 99 then
					Talk(1,"","Mau vÒ gÆp NhiÕp Thİ TrÇn ®Ó phôc mÖnh !")
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