function OnDeath()
Msg2SubWorld("<color=yellow>Chóc mõng "..GetName().." tiªu diÖt KÎ BÝ Èn nhËn ®­îc: ")
idxitem = AddEventItem(RandomNew(61,66))
Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(412)
Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
idxitem = AddEventItem(44)
Msg2SubWorld("- Tinh Th¹ch C­êng Hãa (Ch­a söa hiÓn thÞ lµ HuyÒn Tinh 1)")


bang = GetTongName()
idx = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		if GetName() ~= "" and GetName() ~= nil then
			if GetTongName() == bang and GetTongName() ~= "" then	
				Msg2SubWorld(""..GetName().."")
				if GetTongFigure() == 3 then
					Msg2SubWorld("<color=green>Bang chñ "..GetTongName().." - "..GetName().." nhËn ®­îc: ")
					idxitem = AddEventItem(RandomNew(61,66))
					Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
					idxitem = AddEventItem(412)
					Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
					idxitem = AddEventItem(44)
					Msg2SubWorld("- Tinh Th¹ch C­êng Hãa (Ch­a söa hiÓn thÞ lµ HuyÒn Tinh 1)")
			
				end
			end
		end
	end
PlayerIndex = idx


end

function OnDrop()
end
