function main()
dofile("script/player/trangthaipk/dosat.lua")

if GetPK() >= 10 then
	Msg2Player("Tr� PK c�a ng��i qu� n�ng ch� c� v�o Nh� Lao m�i c� th� r�a s�ch t�i")
	return
end
--kiemtra = KiemTraKhoaRuong()
--if kiemtra == 1 and GetFightState() == 0 then
--Msg2Player("Kh�ng th� chuy�n tr�ng th�i khi �ang � trong th�nh.");
--else if kiemtra == 0 then
--Msg2Player("Ch�a m� kh�a kh�ng th� thao t�c")
--else
SetPKState(2)
--end
--end
end