function OnDeath()
Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." ti�u di�t K� B� �n nh�n ���c: ")
idxitem = AddEventItem(RandomNew(61,66))
Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(412)
Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(44)
Msg2SubWorld("- Tinh Th�ch C��ng H�a (Ch�a s�a hi�n th� l� Huy�n Tinh 1)")


bang = GetTongName()
idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang and GetTongName() ~= "" then	
				Msg2SubWorld(""..GetName().."")
				if GetTongFigure() == 3 then
					Msg2SubWorld("<color=green>Bang ch� "..GetTongName().." - "..GetName().." nh�n ���c: ")
					idxitem = AddEventItem(RandomNew(61,66))
					Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
					idxitem = AddEventItem(412)
					Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
					idxitem = AddEventItem(44)
					Msg2SubWorld("- Tinh Th�ch C��ng H�a (Ch�a s�a hi�n th� l� Huy�n Tinh 1)")
			
				end
			end
		end
	end
PlayerIndex = idx


end

function OnDrop()
end
