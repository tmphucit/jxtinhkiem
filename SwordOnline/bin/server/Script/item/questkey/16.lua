function main(idx)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� tr�ng, xin ki�m tra l�i !")
return
end


n = GetItemCount(16)
DelItemIdx(idx);
if GetItemCount(16) == (n-1) then
		i = RandomNew(1,100)
		if i < 60 then
				idxitem = AddEventItem(random(113,114))
				Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
		elseif i < 90 then
				idxitem = AddEventItem(random(117,118))
				Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).." ")
		elseif i < 100 then
				idxitem = AddEventItem(random(28,31))
				Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng "..GetName().." s� d�ng Th�n B� ��i H�ng Bao may m�n nh�n ���c: <color=green>"..GetNameItemBox(idxitem).." ")
		else
				idxitem = AddEventItem(random(0,1))
				Msg2SubWorld("<color=yellow>[H� Th�ng] <color=red>Ch�c m�ng "..GetName().." s� d�ng Th�n B� ��i H�ng Bao may m�n nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
		end
else
	Talk(1,"","hack ha em ")
end
end