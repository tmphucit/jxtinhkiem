function OnDeath()
end

function OnDrop(NpcIdx)
DropEvent(NpcIdx)
Msg2World("§¹i hiÖp ["..GetName().."] ®· tiªu diÖt Boss Thò LÜnh Phong L¨ng §é, mang vÒ rÊt nhiÒu kinh nghiÖm cho toµn thµnh viªn trªn thuyÒn !")
AddOwnExp(2000000)
Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm tiªu diÖt Boss !")
SetTask(100,GetTask(100)+4)
Msg2Player("B¹n nhËn ®­îc 4 ®iÓm danh väng !")

for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 48 then
			if GetTask(172) > 100 then
			AddOwnExp(3000000)
			Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm tiªu diÖt Boss !")
			Msg2Player("<color=yellow>B¹n nhËn ®­îc thªm 1.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
		else
			AddOwnExp(2000000)
			Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm tiªu diÖt Boss !")
		end
		SetTask(100,GetTask(100)+1)
		Msg2Player("B¹n nhËn ®­îc 1 ®iÓm danh väng !")
	end
end
end
