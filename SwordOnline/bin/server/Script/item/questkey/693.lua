Include("\\script\\global\\sourcejx49.lua")

idxitem = BANHDAUXANH

function main(idx)
if GetTask(Task_GH_BanhDauXanh) >= GH_BanhDauXanh then
Talk(1,"","B�n �� s� d�ng t�i �a "..GH_BanhDauXanh.." s� l��ng B� Hoa C�c quy ��nh, kh�ng th� nh�n th�m !")
return
end


n = GetItemCount(idxitem)
if GetItemCount(idxitem) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(idxitem) == (n-1) then
		SetTask(Task_GH_BanhDauXanh, GetTask(Task_GH_BanhDauXanh) + 1)
		AddOwnExp(Exp_BanhDauXanh)
		SetTask(612,GetTask(612)+1)
		Msg2Player("S� d�ng: "..GetTask(Task_GH_BanhDauXanh).." / "..GH_BanhDauXanh.."")
	
		Talk(0,"")
	else
		Talk(1,"","Hack Ha Em")
	end
end

end

