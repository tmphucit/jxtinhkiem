

function main(idx)
DelItemIdx(idx);
end
function main1(idx)



if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

n = GetItemCount(349)
if GetTask(350) >= gioihan() then
	Talk(1,"","Ng��i �� ��t "..gioihan().." B�nh Ch�ng + B�nh T�t, kh�ng th� s� d�ng th�m")
return
end
	
if GetItemCount(349) >= 1 then
			DelItemIdx(idx);
			if GetItemCount(349) == (n-1) then
				SetTask(350,GetTask(350)+1)
				AddOwnExp(150000)			
				Msg2Player("B�n �� s� d�ng <color=yellow>"..GetTask(350).." / "..gioihan().." <color=red>b�nh")
				Talk(0,"")
			else
			Talk(1,"","Hack Ha Em")
			end
end
end

function gioihan()
return 688
end