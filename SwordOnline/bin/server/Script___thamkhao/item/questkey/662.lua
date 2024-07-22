

function main(idx)
DelItemIdx(idx);
end
function main_(idx)
ngay = tonumber(date("%d"))

tinhtoan = GetTask(913) - mod(GetTask(913),1000)
if tinhtoan ~= ngay*1000 then
	SetTask(913, ngay * 1000)
end

if mod(GetTask(913),1000) >= 10 then
Talk(1,"","Ng­¬i ®· ®¹t giíi h¹n sö dông Hång Bao trong ngµy !")
return
end


n = GetItemCount(662)
			if GetItemCount(662) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(662) == (n-1) then
						SetTask(913, GetTask(913) + 1)
						Msg2Player("Giíi h¹n sö dông Hång Bao trong ngµy: "..mod(GetTask(913),1000).." / 10 lÇn !")
						sx = RandomNew(1,100)
						if sx < 90 then
								AddOwnExp(500000)
								Msg2Player("B¹n nhËn ®­îc 500.000 kinh nghiÖm !")
						else
							sx2 = RandomNew(1,100)
							if sx2 < 60 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif sx2 < 80 then
									idxitem = AddEventItem(random(115,120))
									Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif sx2 < 90 then		
									idxitem = AddEventItem(random(28,31))
									Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hång Bao nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif sx2 < 92 then
									idxitem = AddEventItem(2)
									Msg2SubWorld("Chóc mõng "..GetName().." sö dông ThiÖp Tri ¢n Ng­êi LÝnh nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							else
									idxitem = AddEventItem(random(75,102))
									Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							end
						end
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

