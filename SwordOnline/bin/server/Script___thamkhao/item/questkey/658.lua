task = 904

function main(idx)
n = GetItemCount(658)
gh = gioihan()

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end


if GetTask(task) >= gh then
Talk(1,"","Hi�n t�i �� ��t gi�i h�n s� d�ng Thi�p Tri �n Ng��i L�nh") 
return
end

	
			if GetItemCount(658) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(658) == (n-1) then
						SetTask(task, GetTask(task) + 1)
						AddOwnExp(100000)
						
						sx = random(1,100)
						if sx == 50 then
							vp = RandomNew(1,100)
							if vp < 40 then
								idxitem = AddEventItem(random(173,175))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif vp < 70 then
								idxitem = AddEventItem(random(117,118))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							elseif vp < 90 then
								idxitem = AddEventItem(random(28,31))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thi�p Tri �n Ng��i L�nh nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
							elseif vp < 92 then
								idxitem = AddEventItem(2)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Thi�p Tri �n Ng��i L�nh nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
							else
								idxitem = AddEventItem(random(75,102))
								Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
							end
						end
						
						Msg2Player("Gi�i h�n: "..GetTask(task).." / "..gh.."")
					
					Talk(0,"")				
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end

function gioihan()
if GetTask(903) == 0 then
return 500
elseif GetTask(903) == 1 then
return 1000
else
return 0
end
end