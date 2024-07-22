function main()
if GetTask(157) == 11 then
	SetTask(157,12)
	SetTask(156,0)
	Msg2Player("NhiÖm Vô: Tiªu diÖt L­ Thiªn Tr­îng ë Kª Qu¸n §éng 209/185")
	Talk(1,"","<color=green>LiÔu Nam V©n: <color> §Õn Kª Qu¸n §éng tiªu diÖt L­u Thiªn Tr­îng...")
elseif GetTask(157) == 12 then	
	if GetTask(156) == 1 then
	Talk(1,"","<color=green>LiÔu Nam V©n: <color>: H·y t×m 1 viªn <color=blue>HuyÒn Tinh 1 Tinh KhiÕt <color> giao cho Phã Nam B¨ng...")
	Msg2Player("Lªn Hoa S¬n tiªu diÖt Nhİm Chóa ®Ó t×m HuyÒn Tinh 1 Tinh KhiÕt sau ®ã qua T­¬ng D­¬ng t×m Phã N¨m B¨ng")


		SetTask(157,13)
		SetTask(156,0)
	else
	Talk(1,"","<color=green>LiÔu Nam V©n: <color> §Õn Kª Qu¸n §éng tiªu diÖt L­u Thiªn Tr­îng...")
	end
elseif GetTask(157) == 13 then
Talk(1,"","<color=green>LiÔu Nam V©n: <color>: Qua T­¬ng D­¬ng t×m Phã Nam B¨ng ...")
else
Talk(1,"","<color=green>LiÓu Nam V©n :<color> C¸c h¹ ®Õn ®©y cã viÖc g× kh«ng? ")
end
end