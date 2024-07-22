
function OnDeath()
w,x,y = GetWorldPos()
name = GetName()
AddEventItem(687)
Earn(2000000)
AddEventItem(685)
AddEventItem(688)
AddEventItem(688)
AddOwnExp(50000000)
Msg2SubWorld("<color=yellow>ChÛc mıng Æπi hi÷p "..GetName().." Æ∑ ti™u di÷t Boss Covid ßπi nhÀn Æ≠Óc: 1 M∑ Bµi 8x, 200 vπn l≠Óng, 50 tri÷u kinh nghi÷m, 1 V– tham d˘ Tuy÷t Th– Anh HÔng, 2 B∂o R≠¨ng Tuy÷t Ph»m")
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if w == w1 and GetName() ~= name then
		AddOwnExp(20000000)
		Msg2Player("Bπn nhÀn Æ≠Óc 20.000.000 kinh nghi÷m !")
	end
end
PlayerIndex = idxp

end

function OnDrop()

end