function OnDeath()
if GetTask(102) < 50 then
Talk(1,"","Gi�i h�n c�y th�ng ��t m�c t�i �a !")
return
end

name = GetName()
AddOwnExp(1000000)
Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m rung c�y th�ng ��c bi�t !")

for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
if GetTask(135) ~= ngay then
SetTask(135,ngay)
SetTask(102,0)
end

if w == 2 then
SetTask(102,GetTask(102)+1)
Msg2Player("S� l��ng c�y th�ng t�m ���c ���c: "..GetTask(102).." / 50 ")
AddOwnExp(1000000)
Msg2Player("B�n nh�n ���c 1.000.000 kinh nghi�m t� c�y th�ng ��c bi�t do ["..name.."] rung")

end

end

end

function OnDrop()
end