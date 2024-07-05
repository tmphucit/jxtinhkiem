function OnDeath()
if GetTask(157) == 34 then
	if GetTask(156) < 200 then
	SetTask(156,GetTask(156)+1)
	Msg2Player("B¹n ®· tiªu diÖt "..GetTask(156).."/200 con")
	if GetTask(156) == 200 then
	Talk(1,"","§· ®¹t ®ñ sè l­îng TuyÕt B¸o . H·y t×m Thñ LÜnh §¹o TÆc ®i !")
	end
	end
elseif GetTask(157) == 42 then
	if GetTask(156) < 5 then
		sx = random(1,20)
		if sx == 10 then
		SetTask(156,GetTask(156)+1)
		Msg2Player("B¹n nhËn ®­îc 1 Thñ CÊp B¸o")
		end
	else
	Msg2Player("NhiÖm vô ®· hoµn thµnh, h·y trë vÒ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")	
	end
end


end
function OnDrop()


end
