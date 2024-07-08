function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S¬n §¹o TÆc "..floor(x/8).." / "..floor(y/16).."<color=red>. ®· bÞ nhãm cña <color=green>"..GetName().."<color=red> tiªu diÖt ")
team = GetTeam()
name = GetName()

if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(3000000)
		Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
	else
		AddOwnExp(1500000)
		Msg2Player("B¹n nhËn ®­îc 1.500.000 kinh nghiÖm !")
	end


	xs = random(1,150)
if xs == 50 then
	m = random(1,getn(mangbk))
	AddEventItem(mangbk[m][1])
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>"..mangbk[m][2].." ")
	
inlog("Mat Tich: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 25 then
	m = random(61,66)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>M·nh Thiªn Th¹ch ")
elseif xs == 75 then
	m = random(1,getn(mangdp))
	AddEventItem(mangdp[m][1])
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>"..mangdp[m][2].." ")

inlog("Loai: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 60  or xs == 90 or xs == 100 or xs == 70 then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Thñy Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Vâ L©m MËt TÞch ")
elseif xs == 40 or xs == 30 or xs == 20 then
	AddEventItem(31)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Tinh Hång B¶o Th¹ch ")
else
	AddEventItem(45)
	Msg2Player("Thu phôc boss thÊt b¹i, b¹n nhËn ®­îc 1 viªn <color=pink>HuyÒn Tinh 2")
	Msg2Player("ThËt tiÕc cho ®¹i hiÖp, kh«ng nhËn ®­îc vËt phÈm quý nµo tõ Vi S¬n §¹o TÆc. H·y cè g¾ng thö søc l¹i nhÐ !")
end

else
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w1,x1,y1 = GetWorldPos()
		if GetName() ~= nil and GetName() ~= "" and GetTeam() == team and w1 == w then
			if GetTask(172) > 18 then
				AddOwnExp(3000000)
				Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
			else
				AddOwnExp(1500000)
				Msg2Player("B¹n nhËn ®­îc 1.500.000 kinh nghiÖm !")
			end

	xs = random(1,200)
if xs == 50 or xs == 55 then
	m = random(1,getn(mangbk))
	AddEventItem(mangbk[m][1])
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>"..mangbk[m][2].." ")
	
inlog("Mat Tich: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 25 then
	m = random(61,66)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>M·nh Thiªn Th¹ch ")
elseif xs == 75 or xs == 70 then
	m = random(1,getn(mangdp))
	AddEventItem(mangdp[m][1])
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>"..mangdp[m][2].." ")

inlog("Loai: "..GetAccount().." - "..GetName().." - "..m.."  ")
elseif xs == 60  or xs == 90  then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Thñy Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Vâ L©m MËt TÞch ")
elseif xs == 40 or xs == 30 or xs == 20 then
	AddEventItem(31)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Tinh Hång B¶o Th¹ch ")
else
	AddEventItem(45)
	Msg2Player("Thu phôc boss thÊt b¹i, b¹n nhËn ®­îc 1 viªn <color=pink>HuyÒn Tinh 2")
	Msg2Player("ThËt tiÕc cho ®¹i hiÖp, kh«ng nhËn ®­îc vËt phÈm quý nµo tõ Vi S¬n §¹o TÆc. H·y cè g¾ng thö søc l¹i nhÐ !")
end		end
	end
	

end	


end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/DoPhoHoangKim.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangbk = {
{4,"MËt TÞch ThiÕu L©m"},
{5,"MËt TÞch Thiªn V­¬ng"},
{6,"MËt TÞch §­êng M«n"},
{7,"MËt TÞch Ngò §éc"},
{8,"MËt TÞch Nga Mi"},
{9,"MËt TÞch Thóy Yªn"},
{10,"MËt TÞch Thiªn NhÉn"},
{11,"MËt TÞch C¸i Bang"},
{12,"MËt TÞch Vâ §ang"},
{13,"MËt TÞch C«n L«n"},
}

mangdp = {
{243,"§å Phæ Vò KhÝ Hoµng Kim"},
{244,"§å Phæ Nãn Hoµng Kim"},
{245,"§å Phæ ¸o Gi¸p Hoµng Kim"},
{246,"§å Phæ Bao Tay Hoµng Kim"},
{247,"§å Phæ Th¾t L­ng Hoµng Kim"},
{248,"§å Phæ Giµy Hoµng Kim"},
{250,"§å Phæ D©y ChuyÒn Hoµng Kim"},
{251,"§å Phæ Ngäc Béi Hoµng Kim"},
{252,"§å Phæ NhÉn Hoµng Kim"},
}

function OnDeath()
end