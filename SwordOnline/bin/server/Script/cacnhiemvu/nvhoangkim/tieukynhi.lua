function OnDeath()

end
function OnDrop()
if GetTask(157) ~= 18 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
	if GetTask(157) == 18 and GetTask(156) == 0 then
	
	AddOwnExp(5000)
	Msg2Player("B�n nh�n ���c 5.000 kinh nghi�m")
	Msg2Player("B�n nh�n ���c Kim Ph�t ")
	SetTask(156,1)
	Talk(1,"","Xin Ch�c M�ng ! Nhi�m V� Ho�n Th�nh. Quay v� g�p Th�i C�ng C�ng ")
	

else
Talk(1,"","Ta ��u c� th� o�n g� v�i nha ng��i ! ")
end
else
for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
if GetTask(157) == 18 and GetTask(156) == 0 then
	
	AddOwnExp(5000)
	Msg2Player("B�n nh�n ���c 5.000 kinh nghi�m")
	Msg2Player("B�n nh�n ���c Kim Ph�t ")
	SetTask(156,1)
	Talk(1,"","Xin Ch�c M�ng ! Nhi�m V� Ho�n Th�nh. Quay v� g�p Th�i C�ng C�ng ")
	

else
Talk(1,"","Ta ��u c� th� o�n g� v�i nha ng��i ! ")
end
end
end
end
end