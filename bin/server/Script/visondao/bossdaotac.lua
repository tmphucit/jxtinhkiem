function OnDrop()
w,x,y = GetWorldPos()
Msg2World("<color=green>Vi S¬n §¹o TÆc "..floor(x/8).." / "..floor(y/16).."<color=red>. ®· bÞ nhãm cña <color=green>"..GetName().."<color=red> tiªu diÖt ")
team = GetTeam()
name = GetName()
maina()


if GetTeam() == nil then
	if GetTask(172) > 18 then
		AddOwnExp(3000000)
		Msg2Player("B¹n nhËn ®­îc 3.000.000 kinh nghiÖm v× ®ang sö dông Tiªn Th¶o Lé !")
	else
		AddOwnExp(2000000)
		Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm !")
	end

xs = random(1,100)
if xs == 60  then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Thñy Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Vâ L©m MËt TÞch ")
elseif xs == 40 or xs == 30 or xs == 20 or xs == 10 then
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
				AddOwnExp(2000000)
				Msg2Player("B¹n nhËn ®­îc 2.000.000 kinh nghiÖm !")
			end

	xs = random(1,100)
if xs == 60 then
	m = random(28,30)
	AddEventItem(m)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Thñy Tinh ")
elseif xs == 80 then
	AddEventItem(0)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Vâ L©m MËt TÞch ")
elseif xs == 40 or xs == 30 or xs == 20 or xs == 10 then
	AddEventItem(31)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] tiªu diÖt Vi S¬n §¹o TÆc may m¾n nhËn ®­îc <color=green>Tinh Hång B¶o Th¹ch ")
else
	AddEventItem(45)
	Msg2Player("Thu phôc boss thÊt b¹i, b¹n nhËn ®­îc 1 viªn <color=pink>HuyÒn Tinh 2")
	Msg2Player("ThËt tiÕc cho ®¹i hiÖp, kh«ng nhËn ®­îc vËt phÈm quý nµo tõ Vi S¬n §¹o TÆc. H·y cè g¾ng thö søc l¹i nhÐ !")
end

		end
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




function maina()
num = random(1,17)
if num < 15 then
type = typeitem(random(1,5))
param = paramitem(type)
level = random(8,10)
else
type = random(0,1)
if type == 0 then
param = random(0,5)
level = random(208,210)
else
param = random(0,2)
level = random(68,70)
end
end


xsdong = random(1,100)
if xsdong < 30 then
sodong = 1
elseif xsdong >= 30 and xsdong < 50 then
sodong = 2
elseif xsdong >= 50 and xsdong < 70 then
sodong = 3
elseif xsdong >= 70 and xsdong < 85 then
sodong = 4
elseif xsdong >= 85 and xsdong < 95 then
sodong = 5
else
sodong = 6
end
if (sodong == 1) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,0,0,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 2) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,0,0,0,0,0,0,0,0,0,0)
elseif (sodong == 3) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,0,0,0,0,0,0,0,0)
elseif (sodong == 4) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,0,0,0,0,0,0)
elseif (sodong == 5) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,0,0,0,0)
elseif (sodong == 6) then
	AddItemPink(0,type,param,level,random(0,4),0,0,0,0,0,0,0,1,207,1,207,1,207,1,207,1,207,1,207,0,0)
end

if type == 1 then
Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng tõ Vi S¬n §¹o §Æc: <color=pink>Trang bÞ HuyÒn Tinh cÊp "..(level-60).." - "..sodong.." dßng ch­a kh¶m n¹m !")
elseif type == 0 then
Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng tõ Vi S¬n §¹o §Æc: <color=pink>Trang bÞ HuyÒn Tinh cÊp "..(level-200).." - "..sodong.." dßng ch­a kh¶m n¹m !")
else
Msg2SubWorld("Chóc mõng "..GetName().." nhËn ®­îc phÇn th­ëng tõ Vi S¬n §¹o §Æc: <color=pink>Trang bÞ HuyÒn Tinh cÊp "..level.." - "..sodong.." dßng ch­a kh¶m n¹m !")
end

end



function typeitem(num)
if num == 1 then
return 2
elseif num == 2 then
return 6
elseif num == 3 then
return 5
elseif num == 4 then
return 8
elseif num == 5 then
return 7
end
end


function paramitem(num)
if num == 2 then
return random(50,77)
elseif num == 6 then
return random(24,25)
elseif num == 5 then
return random(20,23)
elseif num == 8 then
return random(20,21)
elseif num == 7 then
return random(27,40)
end
end
