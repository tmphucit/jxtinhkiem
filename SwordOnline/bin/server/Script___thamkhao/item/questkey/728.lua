idxitem = 728

function main(idx)
if CheckFreeBoxItem(4,725,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
	return
end
n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		sx = random(1,200)
		if sx < 65 then
				AddEventItem(729)
				Msg2Player("B�n nh�n ���c 1 Hoa H�ng �� ")
		elseif sx < 130 then
				AddEventItem(730)
				Msg2Player("B�n nh�n ���c 1 Hoa H�ng Xanh")
		elseif sx < 190 then
				AddEventItem(731)
				Msg2Player("B�n nh�n ���c 1 Hoa H�ng Cam")
		else
				AddEventItem(732)
				Msg2Player("B�n nh�n ���c 1 N� H�ng Mong Manh")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
