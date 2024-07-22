function OnDeath()
w,x,y = GetWorldPos();
if GetTask(157) == 3 then
	if GetTask(156) < 200 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B¹n ®· tiªu diÖt "..GetTask(156).."/200 con")
	else
	Msg2Player("NhiÖm vô hoµn thµnh, h·y trë vÖ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")
	end
elseif GetTask(157) == 40 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B¹n nhËn ®­îc 1 Thñ CÊp H­¬u")
		end
	else
	Msg2Player("NhiÖm vô ®· hoµn thµnh, h·y trë vÒ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")	
	end
end

end

function OnDrop()

end