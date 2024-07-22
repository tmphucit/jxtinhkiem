iditem = 699


function main(idx)
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("Hµnh trang kh«ng ®ñ 2 x 3 chç trèng, vui lßng kiÓm tra l¹i")
		return
	end
nam = tonumber(date("%y"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
bY,bM,bD,bH = GetHSD(idx)

check = 0
if nam == 16 then
check = 2016 * 1000000 + thang * 10000 + ngay * 100 + gio
elseif nam == 17 then
check = 2017 * 1000000 + thang * 10000 + ngay * 100 + gio
end
check1 = bY * 1000000 + bM * 10000 + bD * 100 + bH


n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then
			if GetGlbMissionV(37) == 9999 then
					SetGlbMissionV(37, 0)
					idxitem = AddItem(0,2,32,2,0,0,0)
					AddGlobalCountNews("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
					return
			end
		if check >= check1 then	
				sx = random(1,4)
				if sx == 1 then
					idxitem = AddItem(0,9,5,1,0,0,0) -- AO HC
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				elseif sx == 2 then
					idxitem = AddItem(0,4,4,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,3,5,1,0,0,0)
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				end		
		else
				sx = random(1,4)
				if sx == 1 then
					idxitem = AddItem(0,9,5,1,0,0,0) -- AO HC
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				elseif sx == 2 then
					idxitem = AddItem(0,4,4,1,0,0,0)
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,3,5,1,0,0,0)
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Chóc mõng "..GetName().." ®· më R­¬ng Nhu T×nh nhËn ®­îc: "..GetNameItemBox(idxitem).."")
				end		
		end		
			
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

