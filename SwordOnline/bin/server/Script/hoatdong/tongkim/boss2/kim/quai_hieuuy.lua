Include("\\\script\\hoatdong\\tongkim\\headtime.lua")

function OnDeath()
if GetGlbMissionV(60) == 2000 then
	if GetTask(12) == 1 then
		tongdiem = 20
		SetTask(14,GetTask(14)+1) -- NPC
		SetTask(20,GetTask(20)+tongdiem)
		SetTask(31,GetTask(31)+tongdiem)
		SetTask(15,GetTask(15)+tongdiem)
		SetGlbMissionV(81,GetGlbMissionV(81)+tongdiem)
	--	Msg2Player("B�n nh�n ���c "..tongdiem.." �i�m t�ch lu�, �i�m t�ch lu� hi�n t�i l�:  "..GetTask(31).." �i�m")
		
		if (GetTask(31) >= danhhieu[GetTask(19)+1][2]) then
			SetTask(19,GetTask(19)+1)
			qh = GetTask(19)
			AddMagic(413,qh)
			AddRepute(danhhieu[qh][5])
			SetRank(219+qh*2)
	--		Msg2Player("B�n nh�n ���c "..danhhieu[qh][5].." �i�m danh v�ng")
	--		Msg2Player("Qu�n h�m c�a b�n �� t�ng l�n"..danhhieu[qh][1]..", xin ch�c m�ng !")
			Msg2World("Qu�n T�ng, ng��i ch�i "..GetName().." ���c phong h�m "..danhhieu[qh][1]..", ch�c m�ng !")
		end
	--	UpdateTopTKNew()
	end
end
end


function OnDrop()
end