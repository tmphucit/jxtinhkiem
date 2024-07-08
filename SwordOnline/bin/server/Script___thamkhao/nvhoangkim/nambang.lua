function main()
if GetTask(157) == 9 then
	SetTask(157,10)
	if GetTask(157) == 10 then
	SetTask(156,0)
	Msg2Player("NhiÖm Vô: §Õn L©m Du Quan tiªu diÖt Ninh T­íng Qu©n 226/221")
	Talk(1,"","<color=green>Phã Nam B¨ng<color>: §Õn L©m Du Quan tiªu diÖt Ninh T­¬ng Qu©n 226/221")
	end
elseif GetTask(157) == 10 then
	if GetTask(156) == 1 then
		SetTask(157,11)
		if GetTask(157) == 11 then
		SetTask(156,0)
		Msg2Player("NhiÖm Vô: §Õn Ba L¨ng HuyÖn t×m LiÔu Nam V©n")
		Talk(1,"","<color=green>Phã Nam B¨ng<color>: §Õn Ba L¨ng HuyÖn t×m LiÔu Nam V©n. ")	
		end
	else
	Talk(1,"","<color=green>Phã Nam B¨ng<color>: H·y ®Õn L©m Du Quan tiªu diÖt Ph¶n ®å Ninh T­íng Qu©n 226/221")
	end
elseif GetTask(157) == 11 then
	Talk(1,"","<color=green>Phã Nam B¨ng<color>: §Õn Ba L¨ng HuyÖn t×m LiÔu Nam V©n. ")
elseif GetTask(157) == 13 then
	if GetItemCount(21) >= 1 then
	DelItem(21)
	SetTask(157,14)
	Msg2Player("NhiÖm Vô: T×m Ng¹o V©n T«ng ....")
	Talk(1,"","<color=green>Phã Nam B¨ng<color>: T×m Ng¹o V©n T«ng ®Ó phôc mÖnh . ")
	else
	Talk(1,"","<color=green>Phã Nam B¨ng<color>: Ta cÇn 1 viªn HuyÒn Tinh 1 Tinh KhiÕt. Ng­¬i cã thÓ ®¸nh Nhİm chóa ®Ó nhËn ®­îc ")
	end
else
Talk(1,"","<color=green>Phã Nam B¨ng<color>: Hahahaha ! ThËt lµ buån c­êi ...")
end
end