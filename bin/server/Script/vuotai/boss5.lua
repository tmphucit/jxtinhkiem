function OnDeath()
AddGlobalCountNews("Ch�c m�ng "..GetName().." c�ng nh�m V��t �i th�nh c�ng !!!",3)
for k=1,GetCountPlayerMax() do
PlayerIndex = k
w,X,Y = GetWorldPos()
if GetTaskTemp(25) == 1 and w == 26 then
Msg2Player("Ch�c m�ng nh�m c�a b�n �� vu�t qua 18 �i sinh t�  !")
AddOwnExp(250000/2)
AddEventItem(random(75,102))
SetTaskTemp(25,0)
SetPunish(0)
SetFightState(0);
AddRepute(10)
Msg2Player("B�n nh�n ���c 0 �i�m danh v�ng ")

SetDeathScript("");

AddEventItem(150) 

Msg2SubWorld("Ch�c m�ng "..GetName().." Vu�t �i th�nh c�ng. Nh�n ���c 1 h�p l� v�t v��t �i")

Msg2Player("B�n nh�n ���c kinh nghi�m, v�t ph�m. C�n ch� g� n�a m� kh�ng m� h�p l� v�t vu�t �i ra xem c� g�  !")
NewWorld(53,200*8,200*16)
end
if GetTaskTemp(25) == 1402 and w == 26 then
Msg2Player("Ch�c m�ng nh�m c�a b�n �� vu�t qua 18 �i sinh t�  !")
AddOwnExp(250000/2)
AddEventItem(random(75,102))
SetTaskTemp(25,0)
SetPunish(0)
SetFightState(0);
AddRepute(15)
Msg2Player("B�n nh�n ���c 15 �i�m danh v�ng ")

SetDeathScript("");

AddEventItem(150)
AddEventItem(150)

Msg2SubWorld("Ch�c m�ng "..GetName().." Vu�t �i th�nh c�ng. Nh�n ���c 2 h�p l� v�t v��t �i")

Msg2Player("B�n nh�n ���c kinh nghi�m, v�t ph�m. C�n ch� g� n�a m� kh�ng m� h�p l� v�t vu�t �i ra xem c� g�  !")
NewWorld(53,200*8,200*16)
end
end
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
end
