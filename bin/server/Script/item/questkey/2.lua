

function main(idx)
n = GetItemCount(2)
if GetLevel() <= 150 then
if GetItemCount(2) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(2) == (n-1) then
kn = GetLevelExp()
if GetTask(139) == 0 then
a = random(1,5)
elseif GetTask(139) == 1 then
a = random(1,3)
elseif GetTask(139) == 2 then
a = random(1,2)
else 
a = 1
end
kncx = a*kn/100
AddOwnExp(kncx)
Msg2Player("B�n s� d�ng <color=green>Thi�t La H�n <color>nh�n ���c <color=yellow>"..kncx.." �i�m kinh nghi�m !"); 
Talk(0,"")

	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","<color=green>Thi�t La H�n <color>ch� s� d�ng cho ��ng c�p d��i 150 .")
end
end
