function main()
ngay = tonumber(date("%d"))
if GetTask(482) ~= ngay then
	SetTask(482, ngay)
	SetTask(493,0)
	SetTask(494,0)
	SetTask(495,0)
	SetTask(496,0)
	for i=632,638 do
			for p=1,GetItemCount2(i) do
				DelAllItem(i)
			end	
	end
	Msg2Player("Reset nhi�m v� t�n th� ")
end


if GetTask(496) == 0 then
	SayNew("<color=green>L�u Qu�:<color> Ta �ang thi�u 1 �t nguy�n li�u, ng��i c� th� gi�p ta kh�ng?",2,
	"Nh�n nhi�m v� t�m 10 L�c ��u /nhannhiemvu1",
	"Kh�ng c� g�, ta ch� h�i th�m th�i/no")

elseif GetTask(496) == 1 then
	tranhiemvu1()
elseif GetTask(496) == 2 then
	SayNew("<color=green>L�u Qu�:<color> Ng��i h�y mang gi�p ta 5 L�c ��u ��n cho L�c Thi. H�n ta �ang � <color=yellow>N�i Th�t ��ng 194/196 ",2,
	"Nh�n nhi�m v� v�n chuy�n L�c ��u cho L�c Thi /nhannhiemvu2",
	"Kh�ng c� g�, ta ch� h�i th�m th�i/no")
elseif GetTask(496) == 3 or GetTask(496) == 4 then
	tranhiemvu2()
elseif GetItemCount(496) == 5 then
	Talk(1,"","Ng��i h�y qua Chu Ti�n Tr�n 196/199 t�m L�c Gia. �ng ta c� vi�c c�n nh� ng��i �� !")
elseif GetTask(496) == 7 then
	SetTask(496, 8)
	SetTask(100, GetTask(100) + 7)
	Msg2Player("Ho�n th�nh nhi�m v� t�m th�t t��i. Nh�n ���c: <color=yellow>7 Danh V�ng")
else
	Talk(1,"","Ta chuy�n t�m hi�u nh�ng lo�i d��c li�u qu� hi�m �� gi�p ng��i. Ng�y mai quay l�i, ta c� vi�c c�n nh� ng��i gi�p �� nh� !")
end
end
function nhannhiemvu1()
	Talk(1,"","Nh�n nhi�m v� ��n <color=yellow>Th�c c��ng S�n 220/186<color> thu ho�ch 10 L�c ��u")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�] <color=red>Nh�n nhi�m v� ��n Th�c c��ng S�n 220/186 thu ho�ch 10 L�c ��u")
	SetTask(496,1)
end
function tranhiemvu1()
if GetItemCount(632) >= 10 then
		for p=1,GetItemCount2(632) do
			DelAllItem(632)
		end	
		SetTask(496,2)
		SetTask(100, GetTask(100) + 3)
		Msg2Player("Ho�n th�nh nhi�m v� t�n th�, nh�n ���c: <color=yellow>3 �i�m Danh V�ng")
	else
		Talk(1,"","Ng��i kh�ng mang �� <color=red>10 L�c ��u<color>, vui l�ng ki�m tra l�i !")
	end
end
function no()
end
function nhannhiemvu2()
	if CheckFreeBoxItem(0,10,5,5) == 0 then
		Talk(1,"","H�nh trang kh�ng �� 2 x 3 �, kh�ng th� nh�n nhi�m v� ")
		return
	end
	for p=1,5 do 
	idxitem = AddEventItem(632) 
	SetBindItem(idxitem,1)
	end
	SetTask(496,3)
	Talk(1,"","Ng��i h�y ��n N�i Th�t ��ng 194/196 ��a 5 L�c ��u cho L�c Thi gi�p ta !")
	Msg2Player("<color=green>[Nhi�m V� T�n Th�] <color=red> Mang 5 L�c ��u ��n N�i Th�t ��ng 194/196 cho L�c Thi")
end

function tranhiemvu2()
	if GetTask(496) == 4 then
		SetTask(496,5)
		SetTask(100, GetTask(100) + 5)
		Msg2Player("Ho�n th�nh nhi�m v� chuy�n nguy�n li�u. Nh�n ���c: <color=yellow>5 Danh V�ng")
	else
		Talk(1,"","Ng��i ch�a ho�n th�nh nhi�m v� ta giao, h�y ��n g�p L�c Thi ngay �i !")
	end
end