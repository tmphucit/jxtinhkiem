function main()
if GetTask(499) == 0 then
SayNew("<color=green>V� S� <color>: Ta �� quy �n s�n l�m m�y ch�c n�m r�i, ng��i �� v� t�nh g�p ���c ta xem nh� c� duy�n. H�m nay �� s� truy�n d�y m�t lo�i v� c�ng m� ch�nh ta �� nghi�n c�u ra.",2,
"Ta ��ng � m�t 5000 l��ng  �� b�i s� /baisu",
"Tho�t./no")
elseif GetTask(499) == 4 then
Talk(1,"","Ta ch�ng c�n g� �� truy�n d�y cho nh� ng��i !")
else
SayNew("<color=green>V� S� <color>:  Qu� tr�nh kh� luy�n c�a nh� ng��i th� n�o r�i?",2,
"Ta ��n ��y �� ph�c m�nh /phucmenh",
"Tho�t./no")
end
end

function baisu()
if GetLevel() < 5 then
Talk(1,"","��ng c�p 5 h�y quay l�i ��y nh� ")
return
end
if GetCash() < 5000 then
Talk(1,"","Ng��i kh�ng mang theo �� 5000 l��ng, kh�ng th� b�i s� ")
return
end
Pay(5000)
SetTask(499,1)
Msg2Player("Nhi�m V� V� S�: H�y ra ngo�i ��nh <color=yellow>50 C�c G� <color=red>cho ta !")
end

function phucmenh()
if GetTask(499) == 1 then
	if GetTask(498) >= 50 then
		SetTask(498, 0)
		SetTask(499,2)
		Msg2Player("Nhi�m V� V� S�: Qua Chu Ti�n Tr�n 216/194 ��nh<color=yellow> 50 Bao C�t <color=red>cho ta ")
	else
		Talk(1,"","Ng��i ch�a ��t �� nhi�m v� ta giao: <color=yellow>"..GetTask(498).." / 50 C�c G� ")
	end
elseif GetTask(499) == 2 then
	if GetTask(498) >= 50 then
		SetTask(498, 0)
		SetTask(499,3)
		Msg2Player("Nhi�m V� V� S�: Qua Giang T�n Th�n 443/375 ��nh<color=yellow> 50 M�c Nh�n <color=red>cho ta ")
	else
		Talk(1,"","Ng��i ch�a ��t �� nhi�m v� ta giao: <color=yellow>"..GetTask(498).." / 50 Bao C�t")
	end
elseif GetTask(499) == 3 then
	if GetTask(498) >= 50 then
		AddMagic(210, 1)	
		SetTask(499,4)
		SetTask(498,0)
		Msg2Player("Nhi�m V� V� S�: Ng��i �� ho�n th�nh nhi�m v� V� S�. Th�nh th�o k� n�ng <color=red>Khinh C�ng")
	else
		Talk(1,"","Ng��i ch�a ��t �� nhi�m v� ta giao: <color=yellow>"..GetTask(498).." / 50 M�c Nh�n")
	end
end
end

function no()
end

