idxitem = 723

function main(idx)

if CheckFreeBoxItem(4,725,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
	return
end

n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		sx = random(1,100)
		if sx < 30 then
				item = AddEventItem(145)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(item).."")
		elseif sx < 55 then
				item = AddEventItem(146)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(item).."")
		elseif sx < 75 then
				item = AddEventItem(149)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(item).."")
		elseif sx < 90 then
				item = AddEventItem(148)
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(item).."")
		else
				ngay = tonumber(date("%d"))
				thang = tonumber(date("%m"))
				gio = tonumber(date("%H"))
				ngay1 = ngay + 1
				thang1 = thang
				if ngay1 > mangthang[thang] then
					ngay1 = ngay - mangthang[thang]
					thang1 = thang + 1
				end		
				item = AddEventItem(121)
				SetHSD(item, 2021 , thang1, ngay1, gio )
				Msg2Player("B¹n nhËn ®­îc 1 "..GetNameItemBox(item).."")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}