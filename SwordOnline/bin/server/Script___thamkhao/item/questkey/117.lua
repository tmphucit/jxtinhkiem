Include("\\GameConfig.txt")

function main(idx)

if NhanDoiTienThaoLo == 0 then
Talk(1,"","Kh�ng th� s� d�ng v�t ph�m v�o l�c n�y") 
return
end
sl = GetItemCount(117)
if GetItemCount(117) >= 1 then
DelItemIdx(idx);
if GetItemCount(117) == (sl-1) then
SetTask(172, GetTask(172) + 60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
Msg2Player("B�n c� th�m 1 gi� nh�n ��i kinh nghi�m")
Msg2Player("Th�i gian nh�n ��i kinh nghi�m hi�n t�i: "..floor(GetTask(172)/18/60).." ph�t !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
