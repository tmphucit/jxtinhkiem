function OnDeath()

AddGlobalCountNews("Ch�c m�ng "..GetName().." c�ng nh�m V��t �i th�nh c�ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(27) == 1 and w == 28 then
Msg2Player("Ch�c m�ng nh�m c�a b�n �� vu�t qua 18 �i sinh t�  !")
AddEventItem(150)
for i = 1,3 do AddEventItem(random(27,30)) end
for i=1,50 do AddOwnExp(1000000) end
Msg2Player("B�n nh�n ���c 50.000.000 kinh nghi�m v� tham Vu�t �i !")


SetTaskTemp(27,0)
SetPunish(0)
SetFightState(0);
AddRepute(3)
SetTask(612,GetTask(612)+50)
Msg2Player("B�n nh�n ���c 50 �i�m s� ki�n")
Msg2Player("B�n nh�n ���c 3 Lam Th�y Tinh")
Msg2Player("B�n nh�n ���c 3 �i�m danh v�ng ")


SetDeathScript("");

Msg2SubWorld("Ch�c m�ng "..GetName().." Vu�t �i th�nh c�ng. Nh�n ���c r�t nhi�u kinh nghi�m")
NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end