--Author: thaihoa91

function main()
if GetTask(103) == 5 then
Say("<color=green>Ch� ti�m T�p ho� <color>: Ta chuy�n v� �n m�c, b�n c�c th� linh tinh nh�ng r�t c�n thi�t",3,
"Giao d�ch/giaodich",
"Giao t�n th� ch��ng m�n/giaotinthu",
"K�t th�c ��i tho�i/kocan")
else
Say("<color=green>Ch� ti�m T�p ho� <color>: Ta chuy�n v� �n m�c, b�n c�c th� linh tinh nh�ng r�t c�n thi�t",2,
"Giao d�ch/giaodich",
"K�t th�c ��i tho�i/kocan")
end
end;

function giaotinthu()
	if GetTask(103) == 5 then
		SetTask(103,6)
		Talk(1,"","<color=green>Ch� Ti�m T�p H�a <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
	end
end

function muatkchieuthu()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(24)
Msg2Player("B�n nh�n ���c 1 T�ng Kim Chi�u Th�")
Talk(0,"")
end
else
Talk(1,"","<color=green>Ch� Ti�m T�p H�a <color>: B�n kh�ng �� <color=red>5000<color> l��ng")
end
end

function sudothiep()
a = GetCash()
if GetCash() >= 5000 then
Pay(5000)
if GetCash() == (a-5000) then
AddEventItem(15)
Msg2Player("B�n nh�n ���c 1 s� �� thi�p")
Talk(0,"")
end
else
Talk(1,"","<color=green>Ch� Ti�m T�p H�a <color>: B�n kh�ng �� <color=red>5000<color> l��ng")
end
end
function giaodich()
w,x,y = GetWorldPos()
if w == 17 then
Sale(3)
elseif w == 15 then
Sale(4)
elseif w == 18 then
Sale(5)
elseif w == 16 then
Sale(6)
elseif w == 4 then
Sale(random(2,6))

else
Sale(2)
end
end;


function shop(nsel)
i = nsel+2
Sale(i)
end

function kocan()
end;
