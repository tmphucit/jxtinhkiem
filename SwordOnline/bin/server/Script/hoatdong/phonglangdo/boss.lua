function OnDeath()
end
function OnDrop(NpcIdx)
--DropEvent(NpcIdx)
Msg2SubWorld("��i hi�p ["..GetName().."] �� ti�u di�t Boss Th� L�nh Phong L�ng ��, mang v� r�t nhi�u kinh nghi�m cho to�n th�nh vi�n tr�n thuy�n !")
AddOwnExp(15000000)
AddEventItem(269)
Msg2Player("B�n nh�n ���c 15.000.000 kinh nghi�m ti�u di�t Boss !")
SetTask(100,GetTask(100)+4)
SetTask(612,GetTask(612)+20)
AddEventItem(269)
Msg2Player("B�n nh�n ���c 20 �i�m s� ki�n")
Msg2Player("B�n nh�n ���c 4 �i�m danh v�ng !")

for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 47 or w == 176 then
		AddOwnExp(10000000)
		Msg2Player("B�n nh�n ���c 10.000.000 kinh nghi�m ti�u di�t Boss !")
		SetTask(100,GetTask(100)+1)
		SetTask(612,GetTask(612)+10)
		Msg2Player("B�n nh�n ���c 10 �i�m s� ki�n")
		Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng !")
	end
end
end