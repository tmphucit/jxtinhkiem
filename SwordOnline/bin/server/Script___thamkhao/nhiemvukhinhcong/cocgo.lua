function OnDeath()
w,x,y = GetWorldPos()
if GetTask(499) == 1 then
	if w == 53 then
		SetTask(498 , GetTask(498) + 1)
		Msg2Player("Nhi�m v� ��nh C�c G�: <color=yellow>"..GetTask(498).." / 50 l�n")
	end
elseif GetTask(499) == 2 then
	if w == 3 then
		SetTask(498 , GetTask(498) + 1)
		Msg2Player("Nhi�m v� ��nh Bao C�t: <color=yellow>"..GetTask(498).." / 50 l�n")
	end
elseif GetTask(499) == 3 then
	if w == 66 then
		SetTask(498 , GetTask(498) + 1)
		Msg2Player("Nhi�m v� ��nh M�c Nh�n: <color=yellow>"..GetTask(498).." / 50 l�n")
	end
end
end

function OnDrop()

end