function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 30 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

xs = random(1,100)

team = GetTeam()
if GetTeam() == nil then
if GetTask(103) == 30 then	
	if xs <= 80 then
	SetTask(103,31)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>Li�u T� T� <color>: Th�i ta xin thua, <color=yellow>Ng� S�c Ng�c B�i<color> ��y, c�m l�y r�i �i �i ",
		"Nhi�m v� ho�n th�nh ! �em Ng� S�c Ng�c B�i giao cho <color=yellow>Th�nh ��i Qu�n<color> �� ph�c m�nh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T� Chung ��i S� �� ph�c m�nh ")
	else
	Talk(1,"","<color=green>Li�u T� T� <color>:Ta kh�ng c� l�y, ta kh�ng c� tr�m g� c�a ai h�t, ng��i ��ng c� vu oan cho ta!")
	Msg2Player("Li�u T�  T� v�n kh�ng ch�u giao ra Ng� S�c Ng�c B�i, ng��i h�y c� g�ng �i�u tra l�i nh�. !")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 30 then	
	if xs <= 80 then
	SetTask(103,31)
	NewWorld(53,200*8,200*16)
		Talk(2,"","<color=green>Li�u T� T� <color>: Th�i ta xin thua, <color=yellow>Ng� S�c Ng�c B�i<color> ��y, c�m l�y r�i �i �i ",
		"Nhi�m v� ho�n th�nh ! �em Ng� S�c Ng�c B�i giao cho <color=yellow>Th�nh ��i Qu�n<color> �� ph�c m�nh !")	
		Msg2Player("Nhi�m v� m�n ph�i: quay v� g�p T� Chung ��i S� �� ph�c m�nh ")
	else
	Talk(1,"","<color=green>Li�u T� T� <color>:Ta kh�ng c� l�y, ta kh�ng c� tr�m g� c�a ai h�t, ng��i ��ng c� vu oan cho ta!")
	Msg2Player("Li�u T�  T� v�n kh�ng ch�u giao ra Ng� S�c Ng�c B�i, ng��i h�y c� g�ng �i�u tra l�i nh�. !")
	end
else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
end
end
end
end
end