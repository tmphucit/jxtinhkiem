function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 10 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 10 then	
	SetTask(103,11)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p Ch��ng M�n �� ph�c m�nh ")
	Talk(2,"","<color=green>Tr��ng ��u B�u<color>: Ta th�t s� khu�t ph�c, sau n�y kh�ng d�m t�i ph�m n�a ..",
	"<color=green>Tr��ng ��u B�u<color>: Nhi�m v� ho�n th�nh ! Quay v� g�p <color=yellow>Ch��ng M�n<color=yellow> �� ph�c m�nh !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 10 then	
	SetTask(103,11)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p Ch��ng M�n �� ph�c m�nh ")
	Talk(2,"","<color=green>Tr��ng ��u B�u<color>: Ta th�t s� khu�t ph�c, sau n�y kh�ng d�m t�i ph�m n�a ..",
	"<color=green>Tr��ng ��u B�u<color>: Nhi�m v� ho�n th�nh ! Quay v� g�p <color=yellow>Ch��ng M�n<color=yellow> �� ph�c m�nh !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
end
end
end
end