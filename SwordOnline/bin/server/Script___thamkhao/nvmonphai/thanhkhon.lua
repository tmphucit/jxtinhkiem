function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 24 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 24 then	
	if xs <= 80 then
	SetTask(103,25)
	NewWorld(53,200*8,200*16)
		
		Talk(2,"","<color=green>Th�nh Kh�n<color>: Kh� l�m nh�c con, l�n sau s� g�p l�i ng��i.",
		"Nhi�m v� ho�n th�nh ! ��a Tr� Tr� v� g�p <color=red>T� Chung ��i S� <color>�� ph�c m�nh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T� Chung ��i S� �� ph�c m�nh ")
	else
	Talk(1,"","Hahaha, ng��i ch� c� v�i m�n ngh� r� ti�n m� mu�n l�m g� ta !")
	Msg2Player("Nhi�m v� th�t b�i: T�n c�ng ��u v�n kh�ng n�i tung t�ch c�a ��i S� Tr� Tr� h�y th� l�i l�n n�a. !")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 24 then	
	if xs <= 80 then
	SetTask(103,25)
	NewWorld(53,200*8,200*16)
		
		Talk(2,"","<color=green>Th�nh Kh�n<color>: Kh� l�m nh�c con, l�n sau s� g�p l�i ng��i.",
		"Nhi�m v� ho�n th�nh ! ��a Tr� Tr� v� g�p <color=red>T� Chung ��i S� <color>�� ph�c m�nh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T� Chung ��i S� �� ph�c m�nh ")
	else
	Talk(1,"","Hahaha, ng��i ch� c� v�i m�n ngh� r� ti�n m� mu�n l�m g� ta !")
	Msg2Player("Nhi�m v� th�t b�i: T�n c�ng ��u v�n kh�ng n�i tung t�ch c�a ��i S� Tr� Tr� h�y th� l�i l�n n�a. !")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
end
end
end
end