

function main(idx)


sl = GetItemCount(114)
if GetItemCount(114) >= 1 then
DelItemIdx(idx);
if GetItemCount(114) == (sl-1) then

--Setx2Skill(30*60*18)
SetTask(173, GetTask(173) + 30*60*18)
Msg2Player("B�n c� th�m 30 ph�t nh�n ��i luy�n skill")
Msg2Player("Th�i gian nh�n ��i luy�n skill hi�n t�i: "..floor(GetTask(173)/18/60).." ph�t !")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
