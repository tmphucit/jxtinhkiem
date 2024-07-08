function OnDeath()
idx = PlayerIndex
bang = GetTongName()
Earn(1000000)
Msg2SubWorld("ßπi hi÷p "..GetName().." ti™u di÷t Boss Ti”u Hoµng Kim mang v“ <color=green>100 vπn l≠Óng !")
if bang ~= "" then
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTongName() == bang and GetTongFigure() == 3 then
		Earn(2000000)
		Msg2SubWorld("Bang chÒ ["..bang.."] "..GetName().." Æ∑ nhÀn Æ≠Óc <color=yellow>200 vπn l≠Óng !") 
	end
end
end
PlayerIndex = idx
end

function OnDrop()
end