Include("\\script\\hoatdong\\loidaihonchien\\npcbaodanh.lua")

function main()
SayNew("<color=green>Ho�ng D��c S� <color>: Ng��i ta g�i ta l� ��ng T�, ng��i t�m ta c� vi�c g�?",2,
--"Nhi�m v� Ch�o L�p B�t /chaolapbat",
"S� ki�n L�i ��i H�n Chi�n /ThamGiaLoiDai",
"Tho�t./no")
end

function chaolapbat()
if GetTask(528) == 0 then
	SetTask(528,1)
	Talk(1,"","Ng��i h�y ��n ph�a ��ng c�a ��o, � �� c� r�t nhi�u heo r�ng. Ti�u di�t v� mang <color==yellow>1 Mi�ng Th�t Heo<color> v� cho ta.")
	Msg2Player("Nh�n nhi�m v�: <color=yellow>T�m 1 Th�t Heo")
elseif GetTask(528) == 1 then
	if GetItemCount(663) > 0 then
		SetTask(528,2)
		for k=1,GetItemCount2(663) do
			DelAllItem(663)
		end
		idxitem = AddEventItem(663)
		SetBindItem(idxitem,1)
		Talk(1,"","Kh� l�m! Ng��i h�y mang ch� th�t heo n�y ��n cho con g�i ta, tr�n ���ng �i h�y gh� ngang khe su�i ph�a ��ng nam h�i m�t �t l�c ��u, h�y mau l�n ���ng, tr�i s�p t�i r�i")
		Msg2Player("Nh�n nhi�m v�: <color=yellow>T�m 1 ��u Xanh")
	else
		Talk(1,"","Nhi�m v� ch�a ho�n th�nh. H�y quay l�i khu r�ng ph�a ��ng �� t�m Th�t Heo mang v� cho ta")
	end
elseif GetTask(528) == 2 then
	Talk(1,"","Ng��i c�n ��ng �� l�m g�, hay mau �i t�m c�y l�c ��u �i !")
end
end

function loidaihonchien()
Talk(1,"","Dang cap nhat")
end

function no()
end