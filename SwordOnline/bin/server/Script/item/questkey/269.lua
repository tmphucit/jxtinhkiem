function main(idx)
sl = GetItemCount(269)
DelItemIdx(idx);
if GetItemCount(269) == sl - 1 then
sx = random(1,100)
		if sx <= 25 then
			
				AddEventItem(653)
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green>Thi�n S�n B�o L� .")
		elseif sx > 26 and sx <= 50 then
				AddEventItem(273)
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green> M�nh Ng�a Chi�u D� .")
		elseif sx > 50 and sx <= 75 then
				AddEventItem(655)
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green> M�nh Ng�a X�ch Th� .")
		elseif sx > 75 and sx <= 94 then
				idxitem = AddEventItem(random(173,175))
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green> "..GetNameItemBox(idxitem).." .")
				
		else
				AddEventItem(283)
				Msg2SubWorld("Ch�c m�ng "..GetName().." m� r��ng B�ch Kim nh�n ���c: <color=green> M�nh D�y Chuy�n An Bang .")
		end
		Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end