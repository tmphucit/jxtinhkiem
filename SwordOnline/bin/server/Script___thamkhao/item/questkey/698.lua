iditem = 698


function main(idx)
	if CheckFreeBoxItem(0,10,2,2) == 0 then
		Msg2Player("H�nh trang kh�ng �� 2 x 3 ch� tr�ng, vui l�ng ki�m tra l�i")
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
			
			if GetGlbMissionV(37) == 8888 then
					SetGlbMissionV(37, 0)
					idxitem = AddItem(0,9,4,1,0,0,0)
					AddGlobalCountNews("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."",1)
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
					return
			end
		if check >= check1 then	
				sx = random(1,4)
				if sx == 1 then
					idxitem = AddItem(0,2,31,1,0,0,0) -- AO HC
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				elseif sx == 2 then
					idxitem = AddItem(0,4,5,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,3,6,1,0,0,0)
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				end		
		else
				sx = random(1,4)
				if sx == 1 then
					idxitem = AddItem(0,2,31,1,0,0,0) -- AO HC
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				elseif sx == 2 then
					idxitem = AddItem(0,4,5,1,0,0,0)
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				else
					idxitem = AddItem(0,3,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� R��ng Hi�p C�t nh�n ���c: "..GetNameItemBox(idxitem).."")
				end		
		end		
			
	else
		Talk(1,"","Hack Ha Em")
	end
end
end

