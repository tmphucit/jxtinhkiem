
function main(idx)
ngay = tonumber(date("%d"))

ngay = tonumber(date("%d"))
if floor(GetTask(510)/1000) ~= ngay then
	SetTask(510,ngay*1000)
end
soluonggioihan = 4

if GetTask(510) - (ngay*1000) >= soluonggioihan then
Talk(1,"","S� l��ng Ti�n Th�o L� S� �� s� d�ng trong ng�y: "..soluonggioihan.." b�nh")
return
end

sl = GetItemCount(652)
if GetItemCount(652) >= 1 then
DelItemIdx(idx);
if GetItemCount(652) == (sl-1) then
SetTask(510,GetTask(510)+1)
SetTask(172, GetTask(172) + 60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)
Msg2Player("Th�i gian nh�n ��i kinh nghi�m hi�n t�i: "..floor(GetTask(172)/18/60).." ph�t !")
Talk(0,"")

else
Talk(1,"","Hack ha em")
end
end
end
