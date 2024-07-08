function main(idx)
Talk(1,"","Chøc n¨ng t¹m khãa")
end
function main_(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ 2 x 3 « chç trèng, xin kiÓm tra l¹i !")
return
end


n = GetItemCount(651)
DelItemIdx(idx);
if GetItemCount(651) == (n-1) then
		i = RandomNew(1,100)
		if i < 60 then
				idxitem = AddEventItem(116)
				Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng "..GetName().." sö dông Hång Bao Cao CÊp may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		elseif i < 98 then
				idxitem = AddEventItem(120)
				Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng "..GetName().." sö dông Hång Bao Cao CÊp may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		else
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("<color=yellow>[HÖ Thèng] <color=red>Chóc mõng "..GetName().." sö dông Hång Bao Cao CÊp may m¾n nhËn ®­îc: <color=pink>"..GetNameItemBox(idxitem).." ")
		end
else
	Talk(1,"","hack ha em ")
end
end