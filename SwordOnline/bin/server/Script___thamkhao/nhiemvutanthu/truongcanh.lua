function main()
if GetAccount() == "vantoi" then
SayNew("Chon tinh nang:",9,
"Reload dieukhien /reload",
"Reload hotrotanthu /reload",
"Reload lequan/reload",
"Reload xaphu/reload",
"Reload truongcanh/reload",
"Reload dangnhap /reload",
"Reload banngua /reload",
"Reload 622 /reload",
"Thoat./no")
else


if GetTask(493) == 3 then
	SetTask(493,4)
	Talk(1,"","��n <color=yellow>V� L�ng S�n 179/166<color> h�i cho ta 20 C�y T�m Th�o")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Nh�n nhi�m v� ��n V� L�ng S�n 179/166 h�i 20 C�y T�m Th�o")
elseif GetTask(493) == 4 then
	if GetItemCount(636) >= 20 then
		for p=1,20 do DelItem(636) end
		SetTask(493,5)
		Talk(1,"","C�m �n ng��i �� gi�p ta vi�c n�y, quay v� g�p Tam T��ng �i nh� ")
		Msg2Player("<color=green>[Nhi�m V� T�n Th�]<color=red> Quay v� g�p Tam N��ng �� ph�c m�nh")
	else
		Talk(1,"","Ng��i kh�ng mang �� cho ta 20 c�y T�m Th�o kh�ng th� ho�n th�nh nhi�m v� ")
	end
else
	Talk(1,"","T�m D��c Th�o v� ch� th�nh thu�c l� nhi�m v� c�a ta. Ta l� ng��i t�o ra nh�ng m�n h�ng cho D��c �i�m b�n")
end
end
end

function no()
end

function reload(nsel)
i = nsel + 1
if i == 1 then
ReLoadScript("\\script\\admin\\dieukhien.lua")
Msg2Player("Da reload dieu khien")
elseif i == 2 then
ReLoadScript("\\script\\hotrotanthu.lua")
Msg2Player("Da reload Ho tro tan thu")

elseif i == 3 then
ReLoadScript("\\script\\global\\lequan.lua")
Msg2Player("Da reload Le Quan")

elseif i == 4 then
ReLoadScript("\\script\\������\\������\\npc\\xaphu.lua")
Msg2Player("Da reload xa phu")
elseif i == 5 then
ReLoadScript("\\script\\nhiemvutanthu\\truongcanh.lua")
Msg2Player("Da reload truong canh")
elseif i == 6 then
ReLoadScript("\\script\\admin\\dangnhap.lua")
Msg2Player("Da reload dangnhap")
elseif i == 7 then
ReLoadScript("\\script\\cacsukien\\help\\banngua.lua")
Msg2Player("Da reload banngua")

elseif i == 8 then
ReLoadScript("\\script\\item\\questkey\\176.lua")

Msg2Player("Da reload 176")
end
end