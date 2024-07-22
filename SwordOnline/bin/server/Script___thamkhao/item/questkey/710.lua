iditem = 710


function main(idx)
w,x,y = GetWorldPos()

name = GetNameItemBox(idx)
n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then
			sx = random(1,200)
			if sx == 200 then
				idxitem = AddEventItem(716)
				Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(random(711,715))
				Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			end	
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

