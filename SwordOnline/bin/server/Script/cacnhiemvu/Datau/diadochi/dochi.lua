Include("\\script\\cacnhiemvu\\datau\\diadochi\\head_datau.lua")
-- Include("\\script\\datau\\diadochi\\head_datau.lua")

function main()
w,x,y = GetWorldPos()
team = GetTeam()
level = GetLevel()
if GetTeam() == nil then
	if GetTask(84) == 1 and GetTask(85) == 1 and GetTask(88) > 0 then -- Dang nhan nhiem vu do chi
		if w == DoChi_Map[GetTask(88)][1] then
			SetTask(87,GetTask(87)+1)
			Msg2Player("B¹n nhËn ®­îc 1 tÊm ThÇn Bİ §å Chİ. Sè l­îng  thu thËp hiÖn t¹i lµ "..GetTask(87).." / "..GetTask(86).." tÊm. ")
			if GetTask(87) > GetTask(86) then
				SetTask(89,GetTask(89)+1)
				--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
			end
		else
			SetTask(89,GetTask(89)+1)
			--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
		end
	else 
		SetTask(89,GetTask(89)+1)
		--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(84) == 1 and GetTask(85) == 1 and GetTask(88) > 0 then -- Dang nhan nhiem vu do chi
			if w == DoChi_Map[GetTask(88)][1] then
				if GetFightState() == 1 then
					if (level < 30) or (level >= 30 and level < 50 and GetLevel() >= 10) or (level >= 50 and level < 70 and GetLevel() >= 30) or (level >= 70 and level < 90 and GetLevel() >= 50) or (level >= 90 and level < 120 and GetLevel() >= 70) or (level >= 120 and GetLevel() >= 90) then
						SetTask(87,GetTask(87)+1)
						Msg2Player("B¹n nhËn ®­îc 1 tÊm ThÇn Bİ §å Chİ. Sè l­îng  thu thËp hiÖn t¹i lµ "..GetTask(87).." / "..GetTask(86).." tÊm. ")
						if GetTask(87) > GetTask(86) then
						SetTask(89,GetTask(89)+1)
						--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
						end
					else
						Talk(1,"","Chªnh lÖch level víi ng­êi nhÆt ®­îc vËt phÈm qu¸ cao !")
					end
				else
					Talk(1,"","Tr¹ng th¸i luyÖn c«ng kh«ng thÓ nhËn ®­îc ThÇn Bİ §å Chİ cña ®ång ®éi !")
				end
			else
				SetTask(89,GetTask(89)+1)
		--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
			end
		else 
			SetTask(89,GetTask(89)+1)
		--Msg2Player("B¹n nhËn ®­îc 1 m·nh b¶n ®å SHXT, sè l­îng hiÖn t¹i lµ: "..floor(GetTask(89)/10).." tÊm "..mod(GetTask(89),10).." m·nh")
		end
	end
	end
end
end




