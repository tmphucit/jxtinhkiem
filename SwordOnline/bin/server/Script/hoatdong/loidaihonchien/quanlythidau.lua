cost = 200000


function main()
SayNew("<color=green>C«ng B×nh Tö <color> Ta ë ®©y ®Ó phôc vô nh÷ng vÞ anh hïng dòng c¶m, d¸m ®­¬ng ®Çu víi nguy nan. Ng­¬i cã thùc sù muèn chóng tá m×nh kh«ng?",3,
"Ta muèn tham gia L«i §µi Hçn ChiÕn/thamgialoidai",
"Trë vÒ Ba L¨ng HuyÖn/trove",
"Ta sÏ gÆp l¹i ng­¬i sau/no")
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
Talk(1,"","Nh©n vËt chuyÓn sinh 0 kh«ng thÓ tham gia")
return
end
if GetLevel() < 95 then
Talk(1,"","§¼ng cÊp d­íi 95 kh«ng thÓ tham gia L«i §µi Hçn ChiÕn")
return
end
if gio == 11 and GetLevel() > 115 then
	Talk(1,"","TrËn 11 giê chØ cho nh©n vËt cÊp 95 - 115 tham gia")
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

		Msg2Player("§¨ng ký b¸o danh thµnh c«ng. H·y t×m vÞ trÝ thuËn lîi cho m×nh ®Ó c«ng kÝch.")
		Msg2SubWorld("<color=pink>"..GetName().." ®· tham gia L«i §µi Hçn ChiÕn")
	else
		Talk(1,"","Ng­¬i kh«ng mang ®ñ "..cost.." l­îng, kh«ng thÓ tham gia")
	end

else
	Talk(1,"","Thêi gian b¸o danh L«i §µi Hçn ChiÕn vµo lóc 11h20 - 11h39 vµ 21h20 - 21h39")
end
end

