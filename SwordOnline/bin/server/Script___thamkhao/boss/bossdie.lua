function checkboss()

end
function checkboss1()
AddEventItem(46)
Msg2Player("B¹n nhËn ®­îc <color=green>HuyÒn Tinh 3")

sxitem = random(1,100)
if sxitem <= 5 then
		vt = RandomNew(1,getn(MangItem))
		AddItem(0, MangItem[vt][3], MangItem[vt][4], MangItem[vt][5],0,0,0)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp ["..GetName().."] tiªu diÖt Boss Hoµng Kim nhËn ®­îc <color=pink>["..MangItem[vt][1].."]")
end

idx = PlayerIndex
team = GetTeam()
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		AddOwnExp(1000000)
		Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm tõ viÖc tiªu diÖt Boss Hoµng Kim M«n Ph¸i !")
	end
end
PlayerIndex = idx
end
mangtoado = {
{"Vi S¬n §¶o",24,1457,2562},
{"Ba L¨ng HuyÖn",53,1544,3264},
{"Thµnh §« ",18,2971,4892},
{"Thµnh §« ",18,3290,4770},
{"Thµnh §« ",18,3311,5213},
{"Thµnh §« ",18,2913,5236},
{"T­¬ng D­¬ng",15,1379,3142},
{"T­¬ng D­¬ng",15,1355,3433},
{"T­¬ng D­¬ng",15,1712,3462},
{"Ph­îng T­êng",17,1499,3287},
{"Ph­îng T­êng",17,1499,3069},
{"Ph­îng T­êng",17,1709,3096},
{"Ph­îng T­êng",17,1693,3401},
{"BiÖn Kinh",9,1760,3270},
{"BiÖn Kinh",9,1926,2839},
{"BiÖn Kinh",9,1560,2955},
{"BiÖn Kinh",9,1576,3250},
}


MangItem = {
{"ChiÕu D¹ Ngäc S­ Tö ", 0,10,5,5}, -- 1
{"Phi V©n ThÇn M· ", 0,10,8,1}, -- 2
{"ThÇn Thó B«n Tiªu", 0,10,6,1}, -- 3
{"ThÇn M· Phiªn Vò ", 0, 10 , 7 , 1}, -- 4
{"An Bang §iÒn Hoµng Th¹ch Ngäc Béi", 0,9,3,1}, -- 5 random
{"An Bang §iÒn Hoµng Th¹ch Ngäc Béi", 0,9,3,2}, -- 6 tieu
{"An Bang §iÒn Hoµng Th¹ch Ngäc Béi", 0,9,3,8}, -- 7 mini
{"HiÖp Cèt T×nh ý KÕt", 0,9,4,1}, -- 8
{"Nhu T×nh TuÖ T©m Ngäc Béi",0,9,5,1}, -- 9
{"An Bang Cóc Hoa Th¹ch ChØ Hoµn", 0,3,3,1}, -- 10 random
{"An Bang Cóc Hoa Th¹ch ChØ Hoµn", 0,3,3,2}, -- 11 tieu
{"An Bang Cóc Hoa Th¹ch ChØ Hoµn", 0,3,3,8}, -- 12 mini
{"An Bang Kª HuyÕt Th¹ch Giíi ChØ", 0,3,4,1}, -- 13 random
{"An Bang Kª HuyÕt Th¹ch Giíi ChØ", 0,3,4,2}, -- 14 tieu
{"An Bang Kª HuyÕt Th¹ch Giíi ChØ", 0,3,4,8}, -- 15 mini
{"An Bang B¨ng Tinh Th¹ch H¹ng Liªn", 0,4,3,1}, -- 16 random
{"An Bang B¨ng Tinh Th¹ch H¹ng Liªn", 0,4,3,2}, -- 17 tieu
{"An Bang B¨ng Tinh Th¹ch H¹ng Liªn", 0,4,3,8}, -- 18 mini
{"§Þnh Quèc Thanh Sa Tr­êng Sam", 0,2,30,1}, -- 19
{"§Þnh Quèc ¤ Sa Ph¸t Qu¸n",0,7,15,1}, -- 20
{"§Þnh Quèc Ng©n TÇm Yªu §¸i", 0,6,3,1}, -- 21
{"§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa",0,5,5,1}, -- 22
{"§Þnh Quèc Tö §»ng Hé UyÓn",0,8,3,1} -- 23
}


mangtoado1 = {

}