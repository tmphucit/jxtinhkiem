function OnDeath()

end

function OnDrop()
if GetTask(157) ~= 12 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 12 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(12500)
	Msg2Player("Nhi�m V�: Quay v� G�p Li�u Nam V�n ")	
	Msg2Player("B�n nh�n ���c 25000 kinh nghi�m")
	Talk(1,"","Nhi�m v� ho�n th�nh! Quay v� g�p Li�u Nam V�n ")
	else
	Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i .......")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(157) == 12 and GetTask(156) == 0 then
		SetTask(156,1)
		AddOwnExp(12500)
		Msg2Player("Nhi�m V�: Quay v� G�p Li�u Nam V�n ")	
		Msg2Player("B�n nh�n ���c 25000 kinh nghi�m")
		Talk(1,"","Nhi�m v� ho�n th�nh! Quay v� g�p Li�u Nam V�n ")
		else
		Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i .......")
		end
	end
	end
end
end