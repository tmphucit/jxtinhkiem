function main()
if GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500  then
	Msg2Player("Hi�n �ang trong giai �o�n b�o danh, kh�ng th� ra ngo�i !")
	SetPos(1544,3168)
end

if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000 then
	if GetAccount() ~= "gmdinh" and GetAccount() ~= "gm2019" and GetAccount() ~= "admvltk102" then
		SetFightState(1)
	end
end
end;