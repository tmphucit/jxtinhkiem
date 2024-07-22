function OnDeath()
end

function OnDrop(NpcIdx)
ngay = tonumber(date("%d"))

team = GetTeam()
w,x,y = GetWorldPos()
map = w
if GetTeam() ~= nill then
if GetTeamSize() >= 0 then
DropEvent(NpcIdx)
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
				if GetLevel() >= 80 then
					number = random(5,10)
					if GetTask(172) > 18 then
						soluong = number * 2
					else
						soluong = number
					end		
					for k=1,soluong do
						AddEventItem(136)
					end
					Msg2Player("B¹n nhËn ®­îc "..soluong.." M©m B¹c")
				
				else
					Talk(1,"","B¹n kh«ng ®ñ ®¨ng cÊp 80. Kh«ng nhËn ®­îc phÇn th­ëng !")
					Msg2Player("B¹n kh«ng ®ñ ®¨ng cÊp 80. Kh«ng nhËn ®­îc phÇn th­ëng !")
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

