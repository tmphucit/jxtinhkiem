function OnDeath()
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
		thang = tonumber(date("%m"))
		ngay = tonumber(date("%d"))
name = GetName()
Msg2World("§¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Thò LÜnh Phong L¨ng §é, mang vÒ rÊt nhiÒu kinh nghiÖm cho toµn thµnh viªn trªn thuyÒn !")
AddOwnExp(4000000)
Msg2Player("B¹n nhËn ®­îc 4.000.000 kinh nghiÖm tiªu diÖt Boss !")
if GetTask(172) > 0 then
AddOwnExp(4000000)
Msg2Player("B¹n nhËn thªm 4.000.000 kinh nghiÖm sö dông Tiªn Th¶o Lé !")
end
SetTask(100,GetTask(100)+4)
Msg2Player("B¹n nhËn ®­îc 4 ®iÓm danh väng !")

idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 49 and GetName() ~= name then
		AddOwnExp(2000000)
		Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm tiªu diÖt Boss !")
		if GetTask(172) > 0 then
			AddOwnExp(2000000)
			Msg2Player("B¹n nhËn thªm 2.000.000 kinh nghiÖm sö dông Tiªn Th¶o Lé !")
		end
		SetTask(100,GetTask(100)+1)
		Msg2Player("B¹n nhËn ®­îc 1 ®iÓm danh väng !")


	end
end
PlayerIndex = idxp
end