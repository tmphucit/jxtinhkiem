
function main(idx)
n = GetItemCount(16)
if GetItemCount(16) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(16) == (n-1) then
		vatpham()
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

function vatpham()
sx = random(1,100)
if sx == 5 or sx == 10 then
	AddEventItem(0)
	Msg2Player("B¹n nhËn ®­îc 1 Vâ L©m MËt TÞch ")
elseif sx == 15 or sx == 20 then
	AddEventItem(1)
	Msg2Player("B¹n nhËn ®­îc 1 TÈy Tñy Kinh ")
elseif sx > 20 and sx < 30  then
	sl = random(5,10)
	for i=1,sl do AddEventItem(2) end
	Msg2Player("B¹n nhËn ®­îc "..sl.." ThiÕt La H¸n ")
elseif sx >= 30 and sx < 35 then
	AddEventItem(47)
	Msg2Player("B¹n nhËn ®­îc 1 HuyÒn Tinh 4 ")
elseif sx >= 35 and sx < 40 then
	AddEventItem(46)
	Msg2Player("B¹n nhËn ®­îc 1 HuyÒn Tinh 3 ")
elseif sx == 40 then
	AddEventItem(14)
	Msg2Player("B¹n nhËn ®­îc 1 S­ §å LÖnh ")
elseif sx == 60 then
	AddEventItem(19)
	Msg2Player("B¹n nhËn ®­îc 1 BÝ Kip 120 ")
elseif sx > 60 and sx < 75 then
	sl = random(1,5)
	for i=1,sl do AddEventItem(117) end
	Msg2Player("B¹n nhËn ®­îc "..sl.." Tiªn Th¶o Lé ")
elseif sx >= 75 and sx < 90 then
	sl = random(1,10)
	for i=1,sl do AddEventItem(118) end
	Msg2Player("B¹n nhËn ®­îc "..sl.." N÷ Nhi Hång ")
elseif sx == 90 then
	AddEventItem(119)
	Msg2Player("B¹n nhËn ®­îc 1 Tiªn Th¶o Lé 3 Giê")
elseif sx == 95 then
	AddItem(0,10,random(1,5),0,0,0)
	Msg2Player("B¹n nhËn ®­îc 1 Thó C­ìi 8x ")
elseif sx == 50 then
	hoangkim()
else
	sl = random(1,20)
	for i=1,sl do Earn(10000) end
	Msg2Player("B¹n nhËn ®­îc "..sl.." v¹n l­îng !")
		
end
end

function hoangkim()
item = random(1,10)
if item == 1 then
AddItem(0,3,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [An Bang Cóc Hoa Th¹ch ChØ Hoµn]")
elseif item == 2 then
AddItem(0,3,4,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [An Bang Kª HuyÕt Th¹ch Giíi ChØ]")
elseif item == 3 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [Nhu T×nh Phông Nghi Giíi ChØ]")
elseif item == 4 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [HiÖp Cèt §an T©m Giíi]")
elseif item == 4 then
AddItem(0,9,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [An Bang §iÒn Hoµng Th¹ch Ngäc Béi]")
elseif item == 5 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [HiÖp Cèt T×nh ý KÕt]")
elseif item == 6 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 7 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 8 then
AddItem(0,7,15,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [§Þnh Quèc ¤ Sa Ph¸t Qu¸n]")
elseif item == 9 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [§Þnh Quèc Tö §»ng Hé UyÓn]")
elseif item == 10 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] më ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc [§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa]")
end
end