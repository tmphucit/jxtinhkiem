

function main(idx)
if GetTask(173) <= 0 then
sl = GetItemCount(116)
if GetItemCount(116) >= 1 then
DelItemIdx(idx);
if GetItemCount(116) == (sl-1) then
Setx2Skill(6*60*60*18)
Msg2Player("B�n c� 6 gi� nh�n ��i luy�n skill")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
else
Talk(1,"","B�n �ang s� d�ng n� nhi h�ng. Kh�ng th� s� d�ng th�m")
end
end
