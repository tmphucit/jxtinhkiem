function OnDeath()

end
function OnDrop()
if GetTask(157) ~= 10 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(157) == 10 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(1250)
	Msg2Player("B�n nh�n ���c 1250 kinh nghi�m")
	Msg2Player("Nhi�m V�: Quay v� g�p Ph� Nam B�ng ")
	Talk(1,"","Nhi�m v� ho�n th�nh! Quay v� g�p Ph� Nam B�ng ")
else
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i .......")
end
else
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
if GetTask(157) == 10 and GetTask(156) == 0 then
	SetTask(156,1)
	AddOwnExp(1250)
	Msg2Player("B�n nh�n ���c 1250 kinh nghi�m")
	Msg2Player("Nhi�m V�: Quay v� g�p Ph� Nam B�ng ")
	Talk(1,"","Nhi�m v� ho�n th�nh! Quay v� g�p Ph� Nam B�ng ")
else
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i .......")
end

end
end
end
end