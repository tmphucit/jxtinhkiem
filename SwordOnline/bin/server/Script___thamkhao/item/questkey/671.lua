task = 920

function main(idx)
n = GetItemCount(671)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end


if GetTask(task) >= gh then
Talk(1,"","Hi�n t�i �� ��t gi�i h�n s� d�ng B�nh Kem Qu�c T� Thi�u Nhi 1-6") 
return
end

	
			if GetItemCount(671) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(671) == (n-1) then
						SetTask(task, GetTask(task) + 500)
						AddOwnExp(500000)
						
						sx = RandomNew(1,80)
						if sx == 40 then
							vp = RandomNew(1,200)
							if vp < 70 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif vp < 140 then
								idxitem = AddEventItem(random(115,119))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif vp < 165 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Kem Chocolate nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 170 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Kem Chocolate nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")				
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
										Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Kem Chocolate nh�n ���c <color=pink>"..GetNameItemBox(idx).."")
								end
							elseif vp == 196 then
								idxitem = AddEventItem(random(0,1))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng B�nh Kem Chocolate nh�n ���c <color=pink>"..GetNameItemBox(idxitem).."")
							else
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							end
						end
						
						Msg2Player("Gi�i h�n: "..GetTask(task).."000 / "..gh.."000")
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
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