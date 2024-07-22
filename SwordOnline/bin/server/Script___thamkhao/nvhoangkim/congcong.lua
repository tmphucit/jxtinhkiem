function main()
if GetTask(157) == 17 then
	SetTask(157,18)	
	SetTask(156,0)
	Talk(1,"","<color=green>Th¸i C«ng C«ng: <color> H·y §Õn Phôc Ng­u S¬n tiªu diÖt TiÓu Kú Nhi mang Kim PhËt vÒ cho ta ....")
	Msg2Player("NhiÖm Vu: Tiªu diÖt TiÓu Kú Nhi ë Phôc Ng­u S¬n 226/205")
elseif GetTask(157) == 18 then
	if GetTask(156) == 1 then
		SetTask(157,19)
		SetTask(156,0)
		Msg2Player("NhiÖm Vu: Quay vÒ gÆp V©n Nhi ®Ó b¸o tin ")
		Talk(1,"","<color=green>Th¸i C«ng C«ng: <color> Nãi víi V©n Nhi, Kim PhËt ®· ë trong tay ta, tuyÖt ®èi an toµn ")
	else	
	Talk(1,"","<color=green>Th¸i C«ng C«ng: <color>: H¾n ®ang ë phôc ng­u s¬n 226/205 ...")
	end
elseif GetTask(157) == 19 then
	Talk(1,"","<color=green>Th¸i C«ng C«ng: <color> §Õn gÆp V©n Nhi ®Ó phôc mÖnh ®i ")

else
Talk(1,"","<color=green>Th¸i C«ng C«ng <color>: Ta lµ th¸i gi¸m chø kh«ng ph¶i bª ®ª ")
end
end