function main(idx)
sl = GetItemCount(268)
DelItemIdx(idx);
if GetItemCount(268) == sl - 1 then
		sx = RandomNew(1,30)
		if sx == 5 then
			itemidx = AddEventItem(0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng V�ng nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		elseif sx == 7 then	
			itemidx = AddEventItem(1)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng V�ng nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		elseif sx == 12 then	
			itemidx = AddEventItem(120)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng V�ng nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		elseif sx == 15 then	
			itemidx = AddEventItem(116)
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng V�ng nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		else
			itemidx = AddEventItem(random(28,31))
			Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng V�ng nh�n ���c: <color=green>"..GetNameItemBox(itemidx).."")
		end
		Msg2Player("B�n �� m� r��ng th�nh c�ng")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end