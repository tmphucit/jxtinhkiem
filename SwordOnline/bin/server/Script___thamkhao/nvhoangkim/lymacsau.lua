function OnDeath()
end
function OnDrop()
if GetTask(157) ~= 5 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(157) == 5 then
	AddOwnExp(2500)
	Msg2Player("B�n nh�n ���c 2.500 kinh nghi�m")	
	SetTask(157,6)
	Msg2Player("Nhi�m V�: Quay v� G�p M�c S�u ")
	Talk(2,"","Ta th�t s� khu�t ph�c, sau n�y kh�ng t�i ph�m n�a ..",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p M�c S�u trong th�nh �i !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(157) == 5 then
	AddOwnExp(2500)
	Msg2Player("B�n nh�n ���c 2500 kinh nghi�m")	
	SetTask(157,6)
	Msg2Player("Nhi�m V�: Quay v� G�p M�c S�u ")
	Talk(2,"","Ta th�t s� khu�t ph�c, sau n�y kh�ng t�i ph�m n�a ..",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p M�c S�u trong th�nh �i !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
end
end
end
end