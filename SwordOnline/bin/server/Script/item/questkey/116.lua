

function main(idx)


sl = GetItemCount(116)
if GetItemCount(116) >= 1 then
DelItemIdx(idx);
if GetItemCount(116) == (sl-1) then

--Setx2Skill(30*60*18)
SetTask(173, GetTask(173) + 6*60*60*18)
Msg2Player("B�n c� th�m 6 gi� nh�n ��i luy�n skill")
Msg2Player("Th�i gian nh�n ��i luy�n skill hi�n t�i: "..floor(GetTask(173)/18/60).." ph�t !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
