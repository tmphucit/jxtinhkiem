function OnDeath()

ngay = tonumber(date("%d"))
SetGlbMissionV(42 , GetGlbMissionV(42) - 1)
Msg2World("<color=yellow>"..GetName().." Æ∑ ti™u di÷t Boss Gi∆c Ngoπi X©m")
Msg2World("SË l≠Óng Boss Gi∆c Ngoπi X©m cﬂn lπi: <color=pink>"..GetGlbMissionV(42).." con")
team = GetTeam()

if GetTeamSize() < 3 then
Talk(1,"","TÊ ÆÈi d≠Ìi 3 ng≠Íi, kh´ng nhÀn Æ≠Óc ph«n th≠Îng")
return
end

idx = PlayerIndex
if GetTeam() ~= nill then
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
		if GetTeam() == team and w == 2 then
		
			if floor(GetTask(330) / 1000) ~= ngay then
				SetTask(330 , ngay * 1000)
			end
			if mod ( GetTask(330) , ngay*1000) < 10 then
				AddOwnExp(1000000)
				Msg2Player("Bπn nhÀn Æ≠Óc 1.000.000 kinh nghi÷m")
				SetTask(100, GetTask(100) + 1)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 Æi”m danh v‰ng ")
				AddEventItem(660)
				Msg2Player("Bπn nhÀn Æ≠Óc 1 CuÈn Len")
				SetTask(330 , GetTask(330) + 1)
				Msg2Player("SË l≠Óng Boss ti™u di÷t trong ngµy: "..mod ( GetTask(330) , ngay*1000).." / 10 con")
			else
				Talk(1,"","Bπn Æ∑ ti™u di÷t tËi Æa 10 Boss Gi∆c Ngoπi X©m trong ngµy h´m nay !")
			end
		end
	end
end
PlayerIndex = idx

end

function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end

