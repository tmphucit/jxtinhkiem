function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 18 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

xs = random(1,100)

team = GetTeam()

if GetTeam() == nil then
if GetTask(103) == 18 then
	if xs <= 80 then	
	SetTask(103,19)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: �� l�y ���c m�t h�m, quay v� g�p Ch��ng M�n �� ph�c m�nh ")
	Talk(2,"","Ta ph�c quy�t t�m c�a ng��i r�i ��, th�i h�y �em m�t h�m n�y �i �i",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p Ch��ng M�n �� ph�c m�nh !")
	else
	Talk(1,"","��ng t��ng gi� v�i tr� gian x�o ra l� ta s� khu�t ph�c ng��i !")
	Msg2Player("Sau l�n ��nh b�i n�y, Th�ch Kh�ch Kim Qu�c v�n kh�ng ch�u giao ra m�t h�m, h�y th� l�i !")
	end	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 18 then
	if xs <= 80 then	
	SetTask(103,19)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: �� l�y ���c m�t h�m, quay v� g�p Ch��ng M�n �� ph�c m�nh ")
	Talk(2,"","Ta ph�c quy�t t�m c�a ng��i r�i ��, th�i h�y �em m�t h�m n�y �i �i",
	"Nhi�m v� ho�n th�nh ! Quay v� g�p Ch��ng M�n �� ph�c m�nh !")
	else
	Talk(1,"","��ng t��ng gi� v�i tr� gian x�o ra l� ta s� khu�t ph�c ng��i !")
	Msg2Player("Sau l�n ��nh b�i n�y, Th�ch Kh�ch Kim Qu�c v�n kh�ng ch�u giao ra m�t h�m, h�y th� l�i !")
	end	
else
Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
end
end
end
end