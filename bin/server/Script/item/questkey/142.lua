
function main(idx)
if GetItemCount(144) >= 1 then
n = GetItemCount(142)
if GetItemCount(142) >= 1 then
	DelItemIdx(idx);
	if GetItemCount(142) == (n-1) then	
	DelItem(144)
	vp = random(1,30)
	if vp == 1 or vp == 10 then
	AddEventItem(random(28,31))
	Msg2Player("B�n nh�n ���c 1 v�t ph�m qu�")
	elseif vp == 5 then
	AddEventItem(random(0,1))
	Msg2Player("B�n nh�n ���c 1 v�t ph�m qu� hi�m")
	elseif vp > 10 and vp <= 15 then
	AddEventItem(2)
	Msg2Player("B�n nh�n ���c 1 Thi�t La H�n")
	elseif vp > 15 and vp <= 25 then
	AddEventItem(random(75,102))
	Msg2Player("B�n nh�n ���c 1 b� k�p 90")
	elseif vp == 30 then
	AddEventItem(14)
	Msg2Player("B�n nh�n ���c 1 S� �� L�nh")
	Msg2SubWorld("Ch�c m�ng "..GetName().." M� l� bao v��t �i nh�n ���c 1 S� �� l�nh")
	else
	AddEventItem(random(4,5))
	Msg2Player("B�n nh�n ���c 1 vi�n Huy�n tinh")
	end
Talk(0,"")
else
Talk(1,"","Hack Ha Em")
end
end
else
Talk(1,"","B�n kh�ng c� ch�a kho� b�c")
end
end

