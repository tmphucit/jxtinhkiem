
function main(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� tr�ng, xin ki�m tra l�i !")
return
end


n = GetItemCount(659)
DelItemIdx(idx);
if GetItemCount(659) == (n-1) then
		
		sx = RandomNew(1,200)
		if sx < 140 then
			loai = RandomNew(1,100)
			if loai < 50 then
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif loai < 80 then
				idxitem = AddEventItem(random(117,118))
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
			elseif loai < 90 then
				idxitem = AddEventItem(random(115,116))
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
			else
				idxitem = AddEventItem(random(119,120))
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
			end
		elseif sx < 195 then
				idxitem = AddEventItem(653)
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
		-- elseif sx < 200 then 
				-- idxitem = AddEventItem(random(0,1))
				-- Msg2SubWorld("Ch�c m�ng "..GetName().." m� T�ng Kim B�o R��ng may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
		elseif sx == 200 then
				loai = RandomNew(1,100)
				if loai < 25 then
					-- idxitem = AddEventItem(random(283,291))
				-- Msg2SubWorld("Ch�c m�ng "..GetName().." m� T�ng Kim B�o R��ng may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")	
						idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� T�ng Kim B�o R��ng may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")						
				elseif loai < 40 then
					idxitem = AddEventItem(653)
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� T�ng Kim B�o R��ng may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).."")		
				end				
		else
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		end
		
		
		
		Talk(0,"")
else
	Talk(1,"","hack ha em ")
end

end
