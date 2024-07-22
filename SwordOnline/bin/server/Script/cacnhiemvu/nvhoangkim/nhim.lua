function OnDeath()
if GetTask(157) == 1 then
	if GetTask(156) < 3 then
	sx = random(1,3)
	if sx == 1 then
	SetTask(156,GetTask(156)+1)
	if GetTask(156) == 3 then
	Msg2Player("NhiÖm vô hoµn thµnh, h·y trë vÖ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")
	end
	Msg2Player("B¹n nhËn ®­îc 1 thñ cÊp NhÝm")
	else
	Msg2Player("Xin chia buån! B¹n ch­a thuÇn phôc ®­îc NhÝm")
	end	
	else
	Msg2Player("NhiÖm vô hoµn thµnh, h·y trë vÖ gÆp Long Ngò ®Ó tr¶ nhiÖm vô !")
	end
end


end

function OnDrop()
end