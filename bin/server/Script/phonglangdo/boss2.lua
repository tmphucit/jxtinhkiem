function OnDeath()
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
Msg2World("��i hi�p ["..GetName().."] �� ti�u di�t Boss Th� L�nh Phong L�ng ��, mang v� r�t nhi�u kinh nghi�m cho to�n th�nh vi�n tr�n thuy�n !")
AddOwnExp(2000000)
Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m ti�u di�t Boss !")
SetTask(100,GetTask(100)+4)
Msg2Player("B�n nh�n ���c 4 �i�m danh v�ng !")

for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 49 then
			if GetTask(172) > 100 then
			AddOwnExp(3000000)
			Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m ti�u di�t Boss !")
			Msg2Player("<color=yellow>B�n nh�n ���c th�m 1.000.000 kinh nghi�m v� �ang s� d�ng Ti�n Th�o L� !")
		else
			AddOwnExp(2000000)
			Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m ti�u di�t Boss !")
		end
		SetTask(100,GetTask(100)+1)
		Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng !")
	end
end
end