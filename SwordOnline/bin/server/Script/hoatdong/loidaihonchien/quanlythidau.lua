cost = 200000


function main()
SayNew("<color=green>C�ng B�nh T� <color> Ta � ��y �� ph�c v� nh�ng v� anh h�ng d�ng c�m, d�m ���ng ��u v�i nguy nan. Ng��i c� th�c s� mu�n ch�ng t� m�nh kh�ng?",3,
"Ta mu�n tham gia L�i ��i H�n Chi�n/thamgialoidai",
"Tr� v� Ba L�ng Huy�n/trove",
"Ta s� g�p l�i ng��i sau/no")
end

function no()
end

function trove()
NewWorld(53,200*8,200*16)

end

function thamgialoidai()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(139) == 0 then
Talk(1,"","Nh�n v�t chuy�n sinh 0 kh�ng th� tham gia")
return
end
if GetLevel() < 95 then
Talk(1,"","��ng c�p d��i 95 kh�ng th� tham gia L�i ��i H�n Chi�n")
return
end
if gio == 11 and GetLevel() > 115 then
	Talk(1,"","Tr�n 11 gi� ch� cho nh�n v�t c�p 95 - 115 tham gia")
return
end

if (gio == 21 or gio == 11) and phut >= 20 and phut < 40 then

	if GetCash() >= cost then
		SetDeathScript("\\script\\hoatdong\\loidaihonchien\\bigiet.lua");
		SetFightState(0)
		SetCreateTeam(0);
		SetPKState(2)
		BlockPKState(1)
		SetCurCamp(0)
		SetPunish(1);
		SetRevPos(19);
		SetTempRevPos(53,200*8*32,200*16*32);
		SetLogoutRV(1)		
		SetTaskTemp(1, 0)
		toadox = 1569 - 8 + random(0,16)
		toadoy = 3217 - 16 + random(0,32)
		NewWorld(59, toadox, toadoy);

		Msg2Player("��ng k� b�o danh th�nh c�ng. H�y t�m v� tr� thu�n l�i cho m�nh �� c�ng k�ch.")
		Msg2SubWorld("<color=pink>"..GetName().." �� tham gia L�i ��i H�n Chi�n")
	else
		Talk(1,"","Ng��i kh�ng mang �� "..cost.." l��ng, kh�ng th� tham gia")
	end

else
	Talk(1,"","Th�i gian b�o danh L�i ��i H�n Chi�n v�o l�c 11h20 - 11h39 v� 21h20 - 21h39")
end
end

