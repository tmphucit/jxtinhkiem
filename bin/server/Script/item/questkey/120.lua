

function main(idx)


if GetTask(172) <= 0 then
sl = GetItemCount(120)
if GetItemCount(120) >= 1 then
DelItemIdx(idx);
if GetItemCount(120) == (sl-1) then
AddSkillEffect(460,1,6*60*60*18)
Setx2Exp(6*60*60*18)
SetTask(141,1)
Msg2Player("B�n c� 6 gi� nh�n ��i kinh nghi�m")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B�n �ang s� d�ng ti�n th�o l�. Kh�ng th� s� d�ng th�m")
end
end
