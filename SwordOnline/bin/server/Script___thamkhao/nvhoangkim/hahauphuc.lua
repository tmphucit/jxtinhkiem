function OnDeath()
end
function OnDrop()
if GetTask(157) ~= 21 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 21 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(5000)
	Msg2Player("B�n nh�n ���c 5.000 kinh nghi�m")
	Talk(1,"","Nhi�m v� ho�n th�nh ! Quay v� g�p Ng�o V�n T�ng ")
	else
	Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i ...")
	end
else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetTask(157) == 21 and GetTask(156) == 0 then
		SetTask(156,1)
		AddOwnExp(2500)
		Msg2Player("B�n nh�n ���c 2.500 kinh nghi�m")
		Talk(1,"","Nhi�m v� ho�n th�nh ! Quay v� g�p Ng�o V�n T�ng ")
	
		else
		Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i ...")
		end
	end
	end
end
end