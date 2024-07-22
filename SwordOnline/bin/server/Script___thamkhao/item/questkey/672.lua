Include("\\script\\lib\\thuvien.lua")

ThongBaoXepHang = 0
task = 920

function main(idx)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

n = GetItemCount(672)
gh = gioihan()
if GetTask(921) == 0 or GetTask(921) == 1 and GetTask(task) >= gh then
Talk(1,"","B¹n ®· sö dông qu¸ giíi h¹n, h·y gia h¹n sù kiÖn ®Ó cã thÓ sö dông thªm !")
return
end


if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 2 x 3 « míi cã thÓ mua vËt phÈm !")
	return
end


	
			if GetItemCount(672) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(672) == (n-1) then
				
					if GetTask(task) < gh then
						SetTask(task, GetTask(task) + 1000)
						AddOwnExp(1000000)
						Msg2Player("Giíi h¹n: "..GetTask(task).."000 / "..gh.."000")
					end	
						
					if GetGlbMissionV(37) == 1111 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,9,4,1,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							return
					elseif GetGlbMissionV(37) == 2222 then
							SetGlbMissionV(37, 0)
							idxitem = AddItem(0,2,32,2,0,0,0)
							Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")					
							return
					elseif GetGlbMissionV(37) == 3333 then
							SetGlbMissionV(37, 0)
							vp2 = random(1,4)
								if vp2 == 1 then
								idxitem = AddItem(0,4,random(4,5),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 2 then
								idxitem = AddItem(0,9,5,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 3 then
								idxitem = AddItem(0,3,random(5,6),1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
								elseif vp2 == 4 then
								idxitem = AddItem(0,2,31,1,0,0,0)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")							
								end						
							return				
					end
						
						
						
						sx = RandomNew(1,50)
						if sx == 25 then
							vp = RandomNew(1,200)
							if vp < 70 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 140 then
								idxitem = AddEventItem(random(115,119))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							elseif vp < 165 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 170 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=yellow>"..GetNameItemBox(idxitem).."")				
							elseif vp < 195 then
								vp2 = random(1,9)
								idx = -1
								if vp2 == 1 then
									idx = AddItem(0,6,2,2,0,0,0)
								elseif vp2 == 2 then
									idx = AddItem(0,8,2,2,0,0,0)
								elseif vp2 == 3 then
									idx = AddItem(0,9,2,2,0,0,0)
								elseif vp2 == 4 then
								idx = AddItem(0,2,29,2,0,0,0)	
								elseif vp2 == 5 then
									idx = AddItem(0,7,14,2,0,0,0)
								elseif vp2 == 6 then
									idx = AddItem(0,5,4,2,0,0,0)
								elseif vp2 == 7 then
									idx = AddItem(0,4,2,2,0,0,0)
								elseif vp2 == 8 then
										idx = AddItem(0,3,2,2,0,0,0)
								elseif vp2 == 9 then
										idx = AddItem(0,3,1,2,0,0,0)
								end
								
								if idx ~= -1 then
										Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idx).."")
								end
							elseif vp == 196 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Chóc mõng "..GetName().." sö dông B¸nh Kem §Æc BiÖt nhËn ®­îc <color=pink>"..GetNameItemBox(idxitem).."")
							else
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
							end
						end
						
					
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

function checkxh()
vt = 1
for i=1,getn(BANH_KEM) do
	if GetTask(922) < BANH_KEM[i][2] then
		vt = vt + 1
	end
end
return vt
end
function checkds()
for i=1,getn(BANH_KEM) do
	if GetName() == BANH_KEM[i][1] then
		return i
	end
end
return 0
end

function savebang()
BANG = TaoBang(BANH_KEM,"BANH_KEM")		
LuuBang("script/event/thieunhi/danhsachtopbanhkem.lua",BANG)
end

tam_duatop = {"",0}
function SapXepHangDuaTop()
for i=1,getn(BANH_KEM) do
	for j=1,getn(BANH_KEM) do
		if BANH_KEM[i][2] > BANH_KEM[j][2] then
			tam_duatop = BANH_KEM[i]
			BANH_KEM[i] = BANH_KEM[j]
			BANH_KEM[j] = tam_duatop
		end
	end
end

end

function gioihan()
if GetTask(921) == 0 then
return 500000
elseif GetTask(921) == 1 then
return 1000000
elseif GetTask(921) == 2 then
return 1500000
else
return 0
end
end