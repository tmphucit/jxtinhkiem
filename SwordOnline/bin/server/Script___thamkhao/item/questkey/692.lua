
iditem = 692

function main(idx)
	if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
	return
	end

n = GetItemCount(iditem)
if GetItemCount(iditem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(iditem) == (n-1) then
	


			sx = RandomNew(1,5)
			if sx == 1 then
				idxitem = AddItem(0,7,15,random(1,10),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� B�o R��ng ��nh Qu�c nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then
				idxitem = AddItem(0,2,30,random(1,10),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� B�o R��ng ��nh Qu�c nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then
				idxitem = AddItem(0,6,3,random(1,10),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� B�o R��ng ��nh Qu�c nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 4 then
				idxitem = AddItem(0,5,5,random(1,10),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� B�o R��ng ��nh Qu�c nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 5 then
				idxitem = AddItem(0,8,3,random(1,10),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� m� B�o R��ng ��nh Qu�c nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			end
			
	else
		Talk(1,"","Hack Ha Em")
	end
end

end

