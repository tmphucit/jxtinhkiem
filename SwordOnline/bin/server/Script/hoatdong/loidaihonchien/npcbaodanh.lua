cost = 0

function ThamGiaLoiDai()
SayNew("<color=green>Ho�ng D��c S� <color>: Ta � ��y �� ph�c v� nh�ng v� anh h�ng d�ng c�m, d�m ���ng ��u v�i nguy nan. Ng��i c� th�c s� mu�n ch�ng t� m�nh kh�ng?",2,
"Ta mu�n b�o danh L�i ��i H�n Chi�n/thamgialoidai",
"Ta s� g�p l�i ng��i sau/no")
end

function move()
NewWorld(258,200*8,202*16)
SetFightState(0)
Msg2Player("Ng�i y�n, ch�ng ta �i tham gia L�i ��i H�n Chi�n !")

end

function trove()
NewWorld(53,200*8,200*16)
end


function thamgialoidai()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
--if GetTask(139) == 0 then
--Talk(1,"","Nh�n v�t chuy�n sinh 0 kh�ng th� tham gia")
--return
--end
if GetLevel() < 95 then
Talk(1,"","��ng c�p d��i 95 kh�ng th� tham gia L�i ��i H�n Chi�n")
return
end
--if gio == 11 and GetLevel() > 115 then
--	Talk(1,"","Tr�n 11 gi� ch� cho nh�n v�t c�p 95 - 115 tham gia")
--return
--end

if (gio == 19 or gio == 23) and phut < 10 then

	if GetCash() >= cost then
		SetDeathScript("\\script\\hoatdong\\loidaihonchien\\bigiet.lua");
		SetFightState(0)
		SetCreateTeam(0);
		SetPKState(2)
		BlockPKState(1)
		SetCurCamp(0)
		SetPunish(1);
		SetRevPos(57);
		SetTempRevPos(239,1613*32,3255*32);
		SetLogoutRV(1)
		SetTaskTemp(1, 0)
		NewWorld(258, 200*8, 202*16);

		Msg2Player("��ng k� b�o danh th�nh c�ng. H�y t�m v� tr� thu�n l�i cho m�nh �� c�ng k�ch.")
		Msg2SubWorld("<color=pink>"..GetName().." �� b�o danh L�i ��i H�n Chi�n")
	else
		Talk(1,"","Ng��i kh�ng mang �� "..cost.." l��ng, kh�ng th� tham gia")
	end

else
	Talk(1,"","Th�i gian b�o danh L�i ��i H�n Chi�n v�o l�c 19h00 v� 23h00")
end
end
