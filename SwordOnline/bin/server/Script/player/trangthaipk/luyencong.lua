function main()
dofile("script/player/trangthaipk/luyencong.lua")

--Msg2Player("GetPKState(): "..GetPKState())
--Msg2Player("GetFightState(): "..GetFightState())--dang o trong thanh

--if GetPKState() ~= 0 and GetFightState() == 1 then
--	Msg2Player("PK phi luy�n c�ng chuy�n sang luy�n c�ng m�t 3 ph�t.");
--	return
--end

--kiemtra = KiemTraKhoaRuong()
--if kiemtra == 1 and GetPKState() == 2 and GetFightState() == 1 then
--Msg2Player("Kh�ng th� chuy�n tr�ng th�i �� s�t sang tr�i th�i luy�n c�ng khi �ang � ngo�i th�nh.");
--else if kiemtra == 1 and GetPKState() == 1 and GetFightState() == 1 then
--Msg2Player("Kh�ng th� chuy�n tr�ng th�i chi�n ��u sang tr�i th�i luy�n c�ng khi �ang � ngo�i th�nh.");
--else if kiemtra == 0 then
--Msg2Player("Ch�a m� kh�a kh�ng th� thao t�c")
--else
SetPKState(0)
--end
--end
--end
end