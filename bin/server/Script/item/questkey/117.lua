

function main(idx)

if GetTask(172) <= 0 then
sl = GetItemCount(117)
if GetItemCount(117) >= 1 then
DelItemIdx(idx);
if GetItemCount(117) == (sl-1) then
AddSkillEffect(460,1,60*60*18)
Setx2Exp(60*60*18)
SetTask(141,1)
Msg2Player("B�n c� 60 ph�t nh�n ��i kinh nghi�m")

Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B�n �ang s� d�ng ti�n th�o l�. Kh�ng th� s� d�ng th�m")
end
end
