

function main(idx)
n = GetItemCount(2)
if GetLevel() <= 120 then
if GetItemCount(2) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(2) == (n-1) then
kn = GetLevelExp()
a = random(1,3)
kncx = a*kn/100
AddOwnExp(kncx)
Msg2Player("B�n s� d�ng Thi�t La H�n nh�n ���c "..kncx.." kinh nghi�m !"); 
Talk(0,"")

	else
		Talk(1,"","Hack Ha Em")
	end
end
else
Talk(1,"","Thi�t La H�n ch� s� d�ng cho ��ng c�p d��i 120")
end
end
