function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 14 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end
team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 14 then	
	SetTask(103,15)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T�ng Vi�n Thanh �� ph�c m�nh ")
	Talk(2,"","Huy�t Ma H� �� b� khu�t ph�c, n� r�ng l�n m�t ti�ng kinh ho�ng rung chuy�n tr�i ��t",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p T�ng Vi�n Thanh �� ph�c m�nh !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 14 then	
	SetTask(103,15)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T�ng Vi�n Thanh �� ph�c m�nh ")
	Talk(2,"","Huy�t Ma H� �� b� khu�t ph�c, n� r�ng l�n m�t ti�ng kinh ho�ng rung chuy�n tr�i ��t",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p T�ng Vi�n Thanh �� ph�c m�nh !")	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
end
end
end
end