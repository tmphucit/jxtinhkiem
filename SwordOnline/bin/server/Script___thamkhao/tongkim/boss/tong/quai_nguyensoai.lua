Include("\\script\\tongkim\\headtime.lua")

function OnDeath()
if GetGlbMissionV(60) == 2000 then
	if GetTask(12) == 2 then
		tongdiem = 2000
		SetTask(14,GetTask(14)+1) -- NPC
		SetTask(20,GetTask(20)+tongdiem)
		SetTask(31,GetTask(31)+tongdiem)
		SetTask(15,GetTask(15)+tongdiem)
		SetGlbMissionV(82,GetGlbMissionV(82)+tongdiem)
		Msg2Player("B¹n nhËn ®­îc "..tongdiem.." ®iÓm tÝch luü, ®iÓm tÝch luü hiÖn t¹i lµ:  "..GetTask(31).." ®iÓm")
		SetGlbMissionV(88,2)
		Msg2World("Kim qu©n "..GetName().." ®· giÕt ®­îc Nguyªn So¸i phe Tèng!!!")

		if (GetTask(31) >= danhhieu[GetTask(19)+1][2]) then
			SetTask(19,GetTask(19)+1)
			qh = GetTask(19)
			AddMagic(413,qh)
			AddRepute(danhhieu[qh][5])
			SetRank(220+qh*2)
			Msg2Player("B¹n nhËn ®­îc "..danhhieu[qh][5].." ®iÓm danh väng")
			Msg2Player("Qu©n hµm cña b¹n ®· t¨ng lªn"..danhhieu[qh][1]..", xin chóc mõng !")
			Msg2World("Qu©n Kim, ng­êi ch¬i "..GetName().." ®­îc phong hµm "..danhhieu[qh][1]..", chóc mõng !")
		end
		UpdateTopTKNew()
	end
end
end


function OnDrop()
end