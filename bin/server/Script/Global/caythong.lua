function OnDeath()
end
function OnDrop()
AddOwnExp(144000)
Msg2Player("B�n nh�n ���c 144000 kinh nghi�m.")
thiep = random(190,194)
for i=1,5 do
AddEventItem(thiep)
end
Msg2Player("B�n nh�n ���c 5 Thi�p Gi�ng Sinh "..(thiep-189).." ")
end