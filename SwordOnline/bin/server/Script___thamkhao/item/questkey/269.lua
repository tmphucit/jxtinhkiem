function main(idx)
sl = GetItemCount(269)
DelItemIdx(idx);
if GetItemCount(269) == sl - 1 then
		sx = random(1,3)
		if sx == 2 then
			itemidx = AddEventItem(274)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		else
			itemidx = AddEventItem(273)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		end
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end