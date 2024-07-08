
function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))
Msg2World("Boss Con T˙ H≠u Æ∑ bﬁ nh„m cÒa <color=yellow>"..GetName().."<color=red> ti™u di÷t.")

AddEventItem(16)
Msg2World("- "..GetName().." nhÀn Æ≠Óc 1 Th«n B› ßπi HÂng Bao")

team = GetTeam()
if team == nil then
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
		if team == GetTeam() then
			AddOwnExp(5000000)
			Msg2Player("Bπn nhÀn Æ≠Óc 5.000.000 kinh nghi÷m")
			AddRepute(20)	
			Msg2Player("Bπn nhÀn Æ≠Óc 20 Æi”m danh v‰ng")
			for k=1,50 do AddEventItem(126) end
			Msg2Player("Bπn nhÀn Æ≠Óc 50 Gi y Ki’ng ß· ")
			AddEventItem(723)
			Msg2Player("Bπn nhÀn Æ≠Óc 1 HÈp Quµ Trung Thu")
		elseif w == 2 then
			AddOwnExp(2000000)
			Msg2Player("Bπn nhÀn Æ≠Óc 2.000.000 kinh nghi÷m")
			AddRepute(5)	
			Msg2Player("Bπn nhÀn Æ≠Óc 5 Æi”m danh v‰ng")	
		end
	end
	PlayerIndex = idxp
end
end