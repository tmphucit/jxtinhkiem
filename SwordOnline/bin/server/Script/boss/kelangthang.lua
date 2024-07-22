function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 3 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(135) ~= ngay then
			SetTask(135,ngay)
			SetTask(102,0)
		end
		if GetTask(102) < gioihan() then
				if GetLevel() >= 50 then	
					SetTask(102,GetTask(102)+1)
					Msg2Player("Sè l­îng Boss KÎ Lang Thang tiªu diÖt ®­îc: "..GetTask(102).." / "..gioihan().." ")
					AddOwnExp(3000000)
					Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm")
				else
					Talk(1,"","B¹n kh«ng ®ñ ®¨ng cÊp 50. Kh«ng nhËn ®­îc phÇn th­ëng !")
					Msg2Player("B¹n kh«ng ®ñ ®¨ng cÊp 50. Kh«ng nhËn ®­îc phÇn th­ëng !")			
				end
		else
			Talk(1,"","Giíi h¹n Boss ngµy h«m nay ®· ®¹t tèi ®a !")
		end
	end
	end

else
Talk(1,"","<color=red>HÖ Thèng<color> Tæ ®éi cÇn cã <color=yellow>3<color> ng­êi trë lªn")
end
else
Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ch­a lËp tæ ®éi ")
end
end


function gioihan()
return 20
end