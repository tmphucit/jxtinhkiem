function OnDrop()
end
function OnDeath()
if GetTask(103) ~= 43 then
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
return
end

xs = random(1,100)

team = GetTeam()

if GetTeam() == nil then
	if GetTask(103) == 43 then
		if xs <= 80 then	
			SetTask(103,44)
	NewWorld(53,200*8,200*16)
			Msg2Player("Nhi�m v� m�n ph�i: �� l�y ���c th� c�p T�o H�ng, quay v� V� L�m Minh Ch� ph�c m�nh ")
			Talk(2,"","<color=green>T�o H�ng<color>: A! A! A!, Ta h�n nh�ng k� c� t� ra m�nh l� anh h�ng",
			"<color=green>T�o H�ng<color>: Nhi�m v� ho�n th�nh ! Quay v� g�p V� L�m Minh Ch� �� ph�c m�nh !")
		else
			Talk(1,"","<color=green>T�o H�ng<color>: Kh� n�ng c�a ng��i ch� c� th� th�i sao, h�y v� luy�n t�p th�m �i !")
		Msg2Player("Sau l�n th� t�i n�y, v�n kh�ng l�m ���c g� T�o H�ng, h�y th� l�i !")
		end	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
else

for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetTeam() == team then
	if GetTask(103) == 43 then
	if xs <= 80 then	
	SetTask(103,44)
	NewWorld(53,200*8,200*16)
	Msg2Player("Nhi�m v� m�n ph�i: �� l�y ���c th� c�p T�o H�ng, quay v� V� L�m Minh Ch� ph�c m�nh ")
	Talk(2,"","<color=green>T�o H�ng<color>: A! A! A!, Ta h�n nh�ng k� c� t� ra m�nh l� anh h�ng",
	"<color=green>T�o H�ng<color>: Nhi�m v� ho�n th�nh ! Quay v� g�p V� L�m Minh Ch� �� ph�c m�nh !")
	else
	Talk(1,"","<color=green>T�o H�ng<color>: Kh� n�ng c�a ng��i ch� c� th� th�i sao, h�y v� luy�n t�p th�m �i !")
	Msg2Player("Sau l�n th� t�i n�y, v�n kh�ng l�m ���c g� T�o H�ng, h�y th� l�i !")
	end	
	else
	Talk(1,"","Ta kh�ng c� th� o�n g� v�i nh� ng��i ....")
	end
end
end
end
end