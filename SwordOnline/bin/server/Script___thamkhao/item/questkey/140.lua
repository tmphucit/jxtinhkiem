task = 954
itemidx = 140
function main(idx)
n = GetItemCount(itemidx)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ sö dông lång ®Ìn!")
	return
end

if GetTask(task) >= gh then
Talk(1,"","HiÖn t¹i ®· ®¹t giíi h¹n sö dông Lång §Ìn Trung Thu, kh«ng thÓ sö dông thªm") 
return
end
	
			if GetItemCount(itemidx) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(itemidx) == (n-1) then
						SetTask(task, GetTask(task) + 250)
						AddOwnExp(250000)	
						Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
						
						banhtrungthu = RandomNew(1,100)
						if banhtrungthu < 3 then
								sx2 = RandomNew(1,100)
								if sx2 < 70 then
									itemname = AddEventItem(145)
									Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(itemname).."")
								else
									itemname = AddEventItem(146)
									Msg2Player("B¹n nhËn ®­îc <color=yellow>"..GetNameItemBox(itemname).."")
								end
						end
						XacSuatVatPham()
							
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

function XacSuatVatPham()
sx = RandomNew(1,100)
if sx == 50 then
			sx2 = RandomNew(1,100)
			if sx2 < 70 then
					idxitem = AddEventItem(random(173,174))
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			elseif sx2 < 90 then
					idxitem = AddEventItem(114)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")		
			else
					idxitem = AddEventItem(113)
					Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			end
end
end

function gioihan()
if GetTask(955) == 0 then
return 500000
elseif GetTask(955) == 1 then
return 1000000
elseif GetTask(955) == 2 then
return 1500000
else
return 0
end
end