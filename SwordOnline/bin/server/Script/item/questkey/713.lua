
idxitem = 713

function main(idx)
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
	henxui = random(5,10)
	henxuicd = random(5,8)
	sx = random(1,10)
	if sx < 8 then
		for i = 1,henxui do AddEventItem(655) end 
		Msg2SubWorld("Ch�c m�ng "..GetName().." m� b�o r��ng m�nh ng�a <color=green> "..henxui.." M�nh Ng�a X�ch Th�.")
	elseif sx == 8 or sx == 9 then
		for i = 1,henxuicd do AddEventItem(273) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." m� b�o r��ng m�nh ng�a <color=green> "..henxuicd.." M�nh Ng�a Chi�u D�.")
	elseif sx == 10 then
		idxitem1 = AddItem(0,10,5,random(6,9),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." m� b�o r��ng m�nh ng�a  <color=green>"..GetNameItemBox(idxitem1).."")
	end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
