function OnDeath()
end
function OnDrop(NpcIdx)
DropEvent(NpcIdx)
		thang = tonumber(date("%m"))
		ngay = tonumber(date("%d"))
name = GetName()
Msg2World("��i hi�p ["..GetName().."] �� ti�u di�t Boss Th� L�nh Phong L�ng ��, mang v� r�t nhi�u kinh nghi�m cho to�n th�nh vi�n tr�n thuy�n !")
AddOwnExp(4000000)
Msg2Player("B�n nh�n ���c 4.000.000 kinh nghi�m ti�u di�t Boss !")
if GetTask(172) > 0 then
AddOwnExp(4000000)
Msg2Player("B�n nh�n th�m 4.000.000 kinh nghi�m s� d�ng Ti�n Th�o L� !")
end
SetTask(100,GetTask(100)+4)
Msg2Player("B�n nh�n ���c 4 �i�m danh v�ng !")

idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 49 and GetName() ~= name then
		AddOwnExp(2000000)
		Msg2Player("B�n nh�n ���c 2.000.000 kinh nghi�m ti�u di�t Boss !")
		if GetTask(172) > 0 then
			AddOwnExp(2000000)
			Msg2Player("B�n nh�n th�m 2.000.000 kinh nghi�m s� d�ng Ti�n Th�o L� !")
		end
		SetTask(100,GetTask(100)+1)
		Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng !")


	end
end
PlayerIndex = idxp
end