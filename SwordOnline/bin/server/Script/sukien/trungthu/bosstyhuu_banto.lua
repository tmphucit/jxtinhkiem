
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
bang = GetTongName()
if bang == "" then
Msg2World("Boss Con Ngh™ Æ∑ bﬁ <color=yellow>"..GetName().."<color=red> ti™u di÷t.")
else
Msg2World("Boss Con Ngh™ Æ∑ bﬁ <color=yellow>"..GetName().." - Bang "..bang.."<color=red> ti™u di÷t.")
end

AddEventItem(16)
Msg2World("- "..GetName().." nhÀn Æ≠Óc 1 Th«n B› ßπi HÂng Bao")

if bang == "" then
			AddOwnExp(5000000)
			Msg2Player("Bπn nhÀn Æ≠Óc 5.000.000 kinh nghi÷m")
			AddRepute(20)	
			Msg2Player("Bπn nhÀn Æ≠Óc 20 Æi”m danh v‰ng")
			for k=1,50 do AddEventItem(126) end
			Msg2Player("Bπn nhÀn Æ≠Óc 50 Gi y Ki’ng ß· ")
			AddEventItem(723)
			Msg2Player("Bπn nhÀn Æ≠Óc 1 HÈp Quµ Trung Thu")
else
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
		w,x,y = GetWorldPos()
		if GetTongName() == bang and w == 226 then
			AddOwnExp(5000000)
			Msg2Player("Bπn nhÀn Æ≠Óc 5.000.000 kinh nghi÷m")
			AddRepute(20)	
			Msg2Player("Bπn nhÀn Æ≠Óc 20 Æi”m danh v‰ng")
			for k=1,50 do AddEventItem(126) end
			Msg2Player("Bπn nhÀn Æ≠Óc 50 Gi y Ki’ng ß· ")
			AddEventItem(723)
			Msg2Player("Bπn nhÀn Æ≠Óc 1 HÈp Quµ Trung Thu")
		end
	end
	PlayerIndex = idxp
end
end