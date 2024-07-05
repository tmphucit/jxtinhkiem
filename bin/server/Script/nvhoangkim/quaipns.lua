function OnDeath()
if GetTask(103) == 48 then
	if GetTask(104) < 100 then
		SetTask(104,GetTask(104)+1)
		Msg2Player("NhiÖm vô m«n ph¸i: B¹n ®· tiªu diÖt "..GetTask(104).."/100 con")
	else
		SetTask(103,49)
		SetTask(104,0)
		Talk(1,"","NhiÖm vô hoµn thµnh, lªn <color=yellow>TuyÕt B¸o §éng<color> tiªu diÖt 50 con qu¸i !")
		Msg2Player("NhiÖm vô m«n ph¸i: NhiÖm vô hoµn thµnh , tiÕp tôc lªn TuyÕt B¸o §éng tiªu diÖt 50 con qu¸i !")
	
	end
end
end
function OnDrop()


end
