function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 38 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 38 then	
	if xs <= 80 then
	SetTask(103,39)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>��ch H�o Nhi�n<color>: H� M� Tuy�t, nh� ng��i c�ng � ��y sao",
		"Ta c� th�a nh�n l� �� b�t c�c cha c�a Ch�c T� Thanh, nh�ng �ng ta �� qua ��i v� b�o b�nh c�ch ��y 2 h�m",
		"Bi�t ���c tin d�, b�n t� gi� H� M� Tuy�t, t�c t�c v� b�o tin cho Ch�c T� Thanh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p Ch�c T� Thanh �� b�o tin ")
	else
	Talk(1,"","<color=green>��ch H�o Nhi�n<color>: V�i v� c�ng nh� ng��i m� ��i thu ph�c ta sao !")
	Msg2Player("��ch H�o Nhi�n v�n kh�ng th�a nh�n r�ng m�nh �� b�t c�c cha c�a Ch�c T� Thanh!")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
if GetTask(103) == 38 then	
	if xs <= 80 then
	SetTask(103,39)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>��ch H�o Nhi�n<color>: H� M� Tuy�t, nh� ng��i c�ng � ��y sao",
		"Ta c� th�a nh�n l� �� b�t c�c cha c�a Ch�c T� Thanh, nh�ng �ng ta �� qua ��i v� b�o b�nh c�ch ��y 2 h�m",
		"Bi�t ���c tin d�, b�n t� gi� H� M� Tuy�t, t�c t�c v� b�o tin cho Ch�c T� Thanh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p Ch�c T� Thanh �� b�o tin ")
	else
	Talk(1,"","<color=green>��ch H�o Nhi�n<color>: V�i v� c�ng nh� ng��i m� ��i thu ph�c ta sao !")
	Msg2Player("��ch H�o Nhi�n v�n kh�ng th�a nh�n r�ng m�nh �� b�t c�c cha c�a Ch�c T� Thanh!")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
end
end
end
end