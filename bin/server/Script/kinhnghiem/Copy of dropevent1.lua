function OnDrop()
end

function OnDeath()
item = random(1,3)
if item == 2 then

sx = random(1,20)
if sx == 15 then
	sx2 = random(1,4)
	if sx2 == 1 then
		AddEventItem(67)
		Msg2Player("B�n nh�n ���c 1 Long ��u ")
	elseif sx2 == 2 then
		AddEventItem(68)
		Msg2Player("B�n nh�n ���c 1 Th�n R�ng !")
	elseif sx2 == 3 then
		AddEventItem(69)
		Msg2Player("B�n nh�n ���c 1 X��ng R�ng !")
	else
		AddEventItem(70)
		Msg2Player("B�n nh�n ���c 1 �u�i R�ng !")
	end
end

else

sx = random(1,20)
if sx == 15 then
	sx2 = random(1,3)
	if sx2 == 1 then
		AddEventItem(71)
		Msg2Player("B�n nh�n ���c 1 M�i Ch�o ")
	elseif sx2 == 2 then
		AddEventItem(72)
		Msg2Player("B�n nh�n ���c 1 B�nh L�i !")
	else
		AddEventItem(73)
		Msg2Player("B�n nh�n ���c 1 Tr�ng !")
	end
end
end

end