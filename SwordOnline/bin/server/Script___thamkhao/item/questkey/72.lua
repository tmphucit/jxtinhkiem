Include("\\script\\danhsachevent304.lua")
Include("\\script\\lib\\thuvien.lua")


function main(idx)

			DelItemIdx(idx);
end
function main1(idx)

n = GetItemCount(72)
if GetItemCount(72) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(72) == (n-1) then
					check = 0
					if GetTask(495) < gioihan() then
						AddOwnExp(1000000)
						SetTask(495, GetTask(495) + 1)
						Msg2Player("Gi�i h�n s� d�ng: "..GetTask(495).." / "..gioihan().."")
						check = 1
					end					
					if GetItemCount(73) > 0 then
						DelItem(73)					
							if GetTask(495) < gioihan() then
								AddOwnExp(1000000)
								SetTask(495, GetTask(495) + 1)
							end				
						SetTask(493, GetTask(493) + 1)		
						Msg2Player("T�ch L�y: <color=yellow>"..GetTask(493).." �i�m")
						
						if GetTask(493) > 500 and GetTask(493) < 600 then
							bk = GetGlbMissionV(12)
							if GetGlbMissionV(12) == 321546 then
								SetGlbMissionV(12 , 0)
									if GetGlbMissionV(12) == bk - 321546 then
										idxitem = AddItem(0,4,3,1,0,0,0)
										--idxitem = AddItem(0,10,5,3,0,0,0)
										Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� C� Chi�n Th�ng may m�n nh�n ���c: <color=pink>["..GetNameItemBox(idxitem).."]")
									end
							end	
						end
						
						sx = random(1,100)
						if sx == 25 then
							sxitem = RandomNew(1,50)
							if sxitem == 1 then
								AddItem(0,10,5,4,0,0,0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� C� Chi�n Th�ng nh�n ���c <color=yellow>��ch L� ")
							elseif sxitem == 2 then
								AddEventItem(0)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� C� Chi�n Th�ng nh�n ���c <color=yellow>V� L�m M�t T�ch")
							elseif sxitem == 3 then
								AddEventItem(1)
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� C� Chi�n Th�ng nh�n ���c <color=yellow>T�y T�y Kinh")
							else
								AddEventItem(random(28,30))
								Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng L� C� Chi�n Th�ng nh�n ���c <color=yellow>Th�y Tinh")
							end		
						end			



						
					end
					if check == 0 then
						Msg2Player("B�n �� s� d�ng v��t gi�i h�n s� ki�n")
					end		
			else
				Talk(1,"","Hack ha em")
			end
end
end

function gioihan()
if GetTask(343) == 1000 then
	return 1200
else
	return 600
end
end