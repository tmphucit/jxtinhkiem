function OnDeath()
idx = PlayerIndex
bang = GetTongName()
Earn(1000000)
Msg2SubWorld("��i hi�p "..GetName().." ti�u di�t Boss Ti�u Ho�ng Kim mang v� <color=green>100 v�n l��ng !")
if bang ~= "" then
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTongName() == bang and GetTongFigure() == 3 then
		Earn(2000000)
		Msg2SubWorld("Bang ch� ["..bang.."] "..GetName().." �� nh�n ���c <color=yellow>200 v�n l��ng !") 
	end
end
end
PlayerIndex = idx
end

function OnDrop()
end