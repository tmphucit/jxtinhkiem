function OnDeath()
AddGlobalCountNews("Ch�c m�ng "..GetName().." c�ng nh�m V��t �i th�nh c�ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(26) == 1 and w == 27 then
Msg2Player("Ch�c m�ng nh�m c�a b�n �� vu�t qua 18 �i sinh t�  !")
AddOwnExp(2000000)
SetTaskTemp(26,0)
SetPunish(0)
SetFightState(0);

	SetTask(493, GetTask(493) + 18)
	Msg2Player("�i�m T�ch L�y S� Ki�n hi�n t�i: <color=yellow>"..GetTask(493).."")
AddRepute(3)
Msg2Player("B�n nh�n ���c 3 �i�m danh v�ng ")		
SetTask(484, GetTask(484) + 5)
Msg2Player("B�n nh�n ���c <color=green>5 �i�m T�ch L�y VIP")

SetDeathScript("");

Msg2SubWorld("Ch�c m�ng "..GetName().." Vu�t �i th�nh c�ng. Nh�n ���c r�t nhi�u kinh nghi�m")

NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end