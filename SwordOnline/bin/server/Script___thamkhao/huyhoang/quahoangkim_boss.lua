function OnDeath()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
bang = GetTongName()
			ngay = ngay + 7
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				thang = thang + 1
			end

			idxitem = AddEventItem(722)
			SetHSD(idxitem, 2021 , thang, ngay, gio )
			Msg2Player("B¹n ®· thu ho¹ch thµnh c«ng 1 Qu¶ Hoµng Kim (§¹i)")
			if bang ~= "" then
				Msg2SubWorld("Chóc mõng <color=green>"..GetName().." - Bang "..bang.."<color=red> thu thËp ®­îc <color=yellow>1 Qu¶ Hoµng Kim (§¹i)")
			else
				Msg2SubWorld("Chóc mõng <color=green>"..GetName().."<color=red> thu thËp ®­îc <color=yellow>1 Qu¶ Hoµng Kim (§¹i)")
			end

end
function OnDrop()
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}



