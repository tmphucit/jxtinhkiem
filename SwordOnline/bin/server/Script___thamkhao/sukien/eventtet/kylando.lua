function OnDeath()
end

function OnDrop(NpcIdx)
sx = random(1,100)
if sx < 40 then
DropEvent(NpcIdx)
Msg2Player("B�n nh�n ���c <color=yellow>Trang B� Xanh")
elseif sx >= 40 and sx < 70 then
	soluong = random(1,5)
	for p=1,soluong do AddEventItem(414) end
	Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." Ng�c C��ng H�a")
else
	soluong = random(1,5)
	for p=1,soluong do AddEventItem(415) end
	Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." Ng�c T�i T�o")
end

AddEventItem(327)
Msg2Player("B�n nh�n ���c 1 <color=pink>Ph�o Hoa N�m M�i")

end

