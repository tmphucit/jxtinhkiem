idxitem = 122

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
		if sx < 50 then
				AddEventItem(136)
				Msg2Player("B�n nh�n ���c 1 Thanh Tre")
		elseif sx < 100 then
				AddEventItem(137)
				Msg2Player("B�n nh�n ���c 1 D�y C�i")
		elseif sx < 150 then
				AddEventItem(138)
				Msg2Player("B�n nh�n ���c 1 N�n")
		elseif sx < 175 then
				AddEventItem(125)
				Msg2Player("B�n nh�n ���c 1 Gi�y Ki�ng L�c")
		elseif sx < 190 then
				AddEventItem(123)
				Msg2Player("B�n nh�n ���c 1 Gi�y Ki�ng V�ng")
		elseif sx < 200 then
				AddEventItem(126)
				Msg2Player("B�n nh�n ���c 1 <color=green>Gi�y Ki�ng �� ")
		else
				AddEventItem(127)
				Msg2Player("B�n nh�n ���c 1 <color=orange>Gi�y Ki�ng Cam")
		end
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end
