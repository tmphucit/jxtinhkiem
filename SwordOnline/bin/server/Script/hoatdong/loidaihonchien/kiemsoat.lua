function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i tr�ng 2 x 3 m�i c� th� ki�m so�t !")
	return
end
if (gio == 21 or gio == 11) and phut >= 40 then

idx = PlayerIndex
num = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 59 then
		num = num + 1
	end
end
PlayerIndex = idx

if num == 1 then
	SetDeathScript("");
				SetCurCamp(GetCamp())
				NewWorld(54,1666, 3152)
				SetFightState(0)
				BlockPKState(0)
				SetPunish(0);
				SetCreateTeam(1);
		Msg2SubWorld("Tr�n L�i ��i H�n Chi�n ng�y h�m nay �� k�t th�c. Ph�n th�ng thu�c v�: <color=yellow>"..GetName().." ")		
		Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c:")
		idxitem = AddEventItem(random(35,43))
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
		idxitem = AddEventItem(44)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
		idxitem = AddEventItem(412)
		Msg2SubWorld("- "..GetNameItemBox(idxitem).."")
else
	Talk(1,"","Hi�n t�i v�n c�n "..num.." ng��i ch�i trong b�n ��, khi n�o c�n m�nh nh� ng��i h�y ��n g�p ta ")
end

else
	Talk(1,"","Th�i gian ki�m so�t: 11h40 - 12h00, 21h40 - 22h00")
end
end