

function main(idx)
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
	n = GetItemCount(334)
if GetItemCount(334) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(334) == (n-1) then
				for k=1,150 do AddEventItem(335) end
				Msg2Player("B�n nh�n ���c 150 Hoa H�ng �� ")
				Msg2Player("<color=yellow>L�u �: ��y r��ng m�t kh�ng ��n b� ")
				
			else
			Talk(1,"","Hack Ha Em")
			end
end
		
end
