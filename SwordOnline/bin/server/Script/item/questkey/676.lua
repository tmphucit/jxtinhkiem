
function main(idx)
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
w,x,y = GetWorldPos() 

if w ~= 239 then
Talk(1,"","VËt phÈm chØ sö dông ë §¶o §µo Hoa")
return
end
if GetFightState() == 1 then
Talk(1,"","Tr¹ng th¸i chiÕn ®Êu kh«ng thÓ sö dông H¹t  ")
return
end
if GetTask(529) == ngay then
Talk(1,"","B¹n ®· sö dông 1 H¹t h«m nay råi, kh«ng thÓ sö dông thªm")
return
end
if (gio == 0 and phut <= 15) or (gio == 6 and phut <= 15) or (gio == 11 and phut >= 30 and phut <= 45) or (gio == 17 and phut >= 15 and phut <= 30) or (gio == 19 and phut >= 30 and phut <= 45) then

n = GetItemCount(676)
if GetItemCount(676) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(676) == (n-1) then
		SetTask(529 , ngay)
		SetTask(530, 16)
		SetTask(531, 2000000)
		Talk(1,"","§· sö dông thµnh c«ng <color=green>H¹t Hoµng Kim<color>, nhËn ®­îc <color=yellow>2.000.000 kinh nghiÖm<color> liªn tôc trong 15 phót !")
		Msg2Player("§· sö dông thµnh c«ng <color=green>H¹t Hoµng Kim<color=red>, nhËn ®­îc <color=yellow>2.000.000 kinh nghiÖm<color=red> liªn tôc trong 15 phót !")
	
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
else
	Talk(1,"","Thêi gian sö dông h¹t: 0h00 - 0h15, 6h00 - 6h15, 11h30 - 11h45, 17h15 - 17h30, 19h30 - 19h45")
end
end
