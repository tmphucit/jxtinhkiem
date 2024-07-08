

function main(idx)
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

n = GetItemCount(335)
			if GetTask(342) >= gioihan() then
				if GetTask(343) == 0 then
				Talk(1,"","B¹n ®· ®¹t giíi h¹n "..gioihan().." Hoa Hång §á, h·y gia h¹n ®Ó sö dông thªm")
				else
				Talk(1,"","B¹n ®· ®¹t giíi h¹n "..gioihan().." Hoa Hång §á, kh«ng thÓ sö dông thªm")			
				end
			return
			end
	
	if GetCash() < 20000 then
		Talk(1,"","B¹n kh«ng mang ®ñ 2 v¹n l­îng, kh«ng thÓ sö dông")
	return
	end	
	
if GetItemCount(335) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(335) == (n-1) then
				SetTask(342,GetTask(342)+1)
				AddOwnExp(2000000)
				Pay(20000)
					
					sx = 0
					if GetTask(343) == 0 then
						sx = random(1,300)
					else
						sx = random(1,200)
					end
						
						if sx == 50 then
								loai = random(1,100)
								if loai < 40 then
								idxitem = AddEventItem(random(117,118))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								elseif loai >= 40 and loai < 70 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								elseif loai >= 70 and loai < 85 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								elseif loai >= 85 and loai < 90 then
								idxitem = AddEventItem(random(273,277))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								elseif loai >= 90 and loai < 95 then
								idxitem = AddEventItem(random(283,312))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								elseif loai >= 95 then
								idxitem = AddEventItem(random(278,282))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông Hoa Hång §á nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
								end
						end

				Msg2Player("B¹n ®· sö dông "..GetTask(342).." / "..gioihan().." hoa hång")
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
end

function gioihan()
return (GetTask(343) + 1) * 1500
end