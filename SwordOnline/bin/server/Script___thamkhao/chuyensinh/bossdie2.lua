function OnDeath()
end

function OnDrop()
if GetLevel() ~= 200 or GetTask(139) ~= 1 then
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
return
end

team = GetTeam()
if GetTeam() == nil then

if GetLevel() == 200 and GetTask(139) == 1 then
SetTask(138,GetTask(138)+1)
Talk(2,"","Ch�c m�ng b�n �� <color=red>Ti�u Di�t Boss Chuy�n Sinh 2",
"S� l��ng y�u c�u : "..GetTask(138).."/2 con ")
	if GetTask(138) == 2 then
	Talk(1,"","Ch�c m�ng b�n ho�n th�nh nhi�m v� <color=red>Ti�u Di�t Boss Chuy�n Sinh")
	end
else
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
end

else
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team then
		if GetLevel() == 200 and GetTask(139) == 1 then
		SetTask(138,GetTask(138)+1)
		Talk(2,"","Ch�c m�ng b�n �� <color=red>Ti�u Di�t Boss Chuy�n Sinh 2",
		"S� l��ng y�u c�u : "..GetTask(138).."/2 con ")
		if GetTask(138) == 2 then
		Talk(1,"","Ch�c m�ng b�n ho�n th�nh nhi�m v� <color=red>Ti�u Di�t Boss Chuy�n Sinh")
		end
else
Talk(1,"","Ta ��u c� th� o�n g� v�i nh� ng��i !")
end
	end
	end
end
end