
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
SetGlbMissionV(44, GetGlbMissionV(44) - 1)
Msg2World("Boss Con L©n Æ∑ bﬁ nh„m cÒa <color=yellow>"..GetName().."<color=red> ti™u di÷t. SË l≠Óng cﬂn lπi: <color=green>"..GetGlbMissionV(44).."")
--DropEvent(NpcIdx)

hongbao = RandomNew(1,100)
if hongbao < 10 then
	AddEventItem(16)
	Msg2World("- "..GetName().." nhÀn Æ≠Óc 1 Th«n B› ßπi HÂng Bao")
end

team = GetTeam()
if team == nil then
		if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 10 then
			Msg2Player("Bπn Æ∑ nhÀn ÆÒ kinh nghi÷m trong ngµy tı Boss Con L©n")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("Bπn Æ∑ ti™u di÷t "..mod(GetTask(935),1000).." / 10 con trong ngµy")
			AddOwnExp(300000)
			Msg2Player("Bπn nhÀn Æ≠Óc 300.000 kinh nghi÷m")
			AddRepute(2)	
			Msg2Player("Bπn nhÀn Æ≠Óc 2 Æi”m danh v‰ng")
			AddEventItem(126)
			Msg2Player("Bπn nhÀn Æ≠Óc 1 Gi y Ki’ng ß· ")
		end
else
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if team == GetTeam() then
			if floor(GetTask(935) / 1000) ~= ngay then
				SetTask(935, ngay * 1000)
		end
		
		if mod(GetTask(935),1000) >= 10 then
			Msg2Player("Bπn Æ∑ nhÀn ÆÒ kinh nghi÷m trong ngµy tı Boss Con L©n")
		else
			SetTask(935, GetTask(935) + 1)
			Msg2Player("Bπn Æ∑ ti™u di÷t "..mod(GetTask(935),1000).." / 10 con trong ngµy")
			AddOwnExp(300000)
			Msg2Player("Bπn nhÀn Æ≠Óc 300.000 kinh nghi÷m")
			AddRepute(2)
			Msg2Player("Bπn nhÀn Æ≠Óc 2 Æi”m danh v‰ng")
			AddEventItem(126)
			Msg2Player("Bπn nhÀn Æ≠Óc 1 Gi y Ki’ng ß· ")
		end
	end
end
PlayerIndex = idxp
end
end