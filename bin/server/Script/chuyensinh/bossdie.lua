function OnDeath()
end

function OnDrop()
if GetLevel() ~= 200 or GetTask(139) ~= 0 then
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
return
end


team = GetTeam()
if GetTeam() == nil then


if GetLevel() == 200 and GetTask(139) == 0 then
SetTask(138,1)
Talk(1,"","Ch�c m�ng b�n ho�n th�nh nhi�m v� <color=red>Ti�u Di�t Boss Chuy�n Sinh")
else
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
end

else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then

		if GetLevel() == 200 and GetTask(139) == 0 then
		SetTask(138,1)
		Talk(1,"","Ch�c m�ng b�n ho�n th�nh nhi�m v� <color=red>Ti�u Di�t Boss Chuy�n Sinh")
		else
		Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
		end

	end
	end
end
end