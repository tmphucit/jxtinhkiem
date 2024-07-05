function OnDrop()
w,x,y = GetWorldPos()

team = GetTeam()
name = GetName()



xsboss = random(1,100)
if xsboss < 5 then
	Msg2World("<color=yellow>Vi S¬n §¹o TÆc ®· xuÊt hiÖn t¹i "..floor(x/8).." / "..floor(y/16)..". H·y cïng nhau tiªu diÖt ®Ó cã nhiÒu phÇn th­ëng cho ®éi cña m×nh ")
	idnpc = random(1024,1028)
	quaivsd=AddNpc(idnpc,95,SubWorldID2Idx(w),x*32,y*32)
	SetNpcScript(quaivsd, "\\script\\visondao\\bossdaotac.lua");
end


if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(20000)
		Msg2Player("B¹n nhËn ®­îc 10.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
	else
		AddOwnExp(10000)
		Msg2Player("B¹n nhËn ®­îc 10.000 kinh nghiÖm !")
	end
	xs = random(1,4)
if xs == 2 then
	AddEventItem(45)
	Msg2Player("B¹n nhËn ®­îc 1 viªn <color=pink>HuyÒn Tinh 2")
end
else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
			if GetTask(172) > 18 then
			AddOwnExp(20000)
			Msg2Player("B¹n nhËn ®­îc 20.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
			else
			AddOwnExp(10000)
			Msg2Player("B¹n nhËn ®­îc 10.000 kinh nghiÖm !")
			end
			
	xs = random(1,4)
if xs == 2 then
	AddEventItem(45)
	Msg2Player("B¹n nhËn ®­îc 1 viªn <color=pink>HuyÒn Tinh 2")
end
		end
	end
end


end

function OnDeath()
end