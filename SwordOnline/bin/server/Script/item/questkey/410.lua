


function main(idx)
ngay = tonumber(date("%d"))
if floor(GetTask(474)/1000) ~= ngay then
	SetTask(474, ngay * 1000)
	Msg2Player("Reset ng�y m�i")
end

if mod(GetTask(474),1000) >= 2 and (GetTask(139) == 0 or (GetTask(139) == 1 and GetLevel() >= 120)) then
Talk(1,"","B�n �� s� d�ng �� 2 l�n trong ng�y, kh�ng th� s� d�ng th�m")
return
end

sl = GetItemCount(410)
if GetItemCount(410) >= 1 then
DelItemIdx(idx);
if GetItemCount(410) == (sl-1) then
	SetTask(475, GetTask(475) + 2*60*60*18)
	AddSkillEffect(455,1,GetTask(475))
	SetTask(474, GetTask(474) + 1)
	Msg2Player("B�n c� th�m 2 gi� nh�n ba kinh nghi�m")
	Msg2Player("Th�i gian nh�n ba kinh nghi�m hi�n t�i: "..floor(GetTask(475)/18/60).." ph�t !")
	Msg2Player("S� l��t hi�n t�i trong ng�y: "..mod(GetTask(474),1000).." / 2 l�n")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
end
