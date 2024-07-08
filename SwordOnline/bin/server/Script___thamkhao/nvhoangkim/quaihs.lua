function OnDeath()
w,x,y = GetWorldPos();
if GetTask(157) == 7 then
	if GetTask(156) < 100 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B¹n ®· tiªu diÖt "..GetTask(156).."/100 con")
	if GetTask(156) == 100 then
	Talk(1,"","§· ®¹t ®ñ sè l­îng NhÝm . H·y t×m NhÝm Chóa ®i !")
	end
	end
elseif GetTask(157) == 41 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B¹n nhËn ®­îc 1 Thñ CÊp NhÝm")
		end
	else
	Msg2Player("NhiÖm vô ®· hoµn thµnh, h·y trë vÒ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")	
	end
end

if GetTask(103) == 1 then
	SetTask(104,GetTask(104)+1)
	Msg2Player("NhiÖm vô m«n ph¸i: Sè l­îng nhÝm tiªu diÖt "..GetTask(104).." / 10 con")
	if GetTask(104) >= 10 then
	Msg2Player("Sè l­îng tiªu diÖt nhÝm ®· ®ñ, quay l¹i Tr­ëng M«n ®Ó phôc mÖnh !")
	end
end

end
function OnDrop()


end