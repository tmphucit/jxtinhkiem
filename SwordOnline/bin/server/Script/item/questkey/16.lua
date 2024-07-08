function main(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 « chç trèng, xin kiÓm tra l¹i !")
return
end


n = GetItemCount(16)
DelItemIdx(idx);
if GetItemCount(16) == (n-1) then
		i = RandomNew(1,100)
		if i < 60 then
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).." ")
		elseif i < 90 then
				idxitem = AddEventItem(random(117,118))
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).." ")
		elseif i < 100 then
				idxitem = AddEventItem(random(28,31))
				Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng "..GetName().." sö dông ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc: <color=green>"..GetNameItemBox(idxitem).." ")
		else
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng "..GetName().." sö dông ThÇn BÝ §¹i Hång Bao may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		end
else
	Talk(1,"","hack ha em ")
end
end