function main(idx)
Talk(1,"","Ch�c n�ng t�m kh�a")
end
function main_(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� tr�ng, xin ki�m tra l�i !")
return
end


n = GetItemCount(651)
DelItemIdx(idx);
if GetItemCount(651) == (n-1) then
		i = RandomNew(1,100)
		if i < 60 then
				idxitem = AddEventItem(116)
				Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng "..GetName().." s� d�ng H�ng Bao Cao C�p may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
		elseif i < 98 then
				idxitem = AddEventItem(120)
				Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng "..GetName().." s� d�ng H�ng Bao Cao C�p may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
		else
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng "..GetName().." s� d�ng H�ng Bao Cao C�p may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
		end
else
	Talk(1,"","hack ha em ")
end
end