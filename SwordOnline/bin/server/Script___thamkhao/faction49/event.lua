Include("\\script\\monphai.lua")
function ghepchu(num)
if GetFaction() == "" then
	Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ sö dông chøc n¨ng nµy !")
	return
end

if mp() ~= num then
	Talk(1,"","Ng­¬i kh«ng thuéc M«n Ph¸i cña ta, h·y t×m s­ phô ng­¬i ®i !")
return
end

if GetTask(134) >= gioihan() then
Msg2Player("Sè l­îng Ch÷ T«n S­ Träng §¹o ®· ®¹t giíi h¹n, kh«ng thÓ sö dông thªm ")
return
end

nl1 = GetItemCount(65)
nl2 = GetItemCount(66)
nl3 = GetItemCount(67)
nl4 = GetItemCount(68)
if GetItemCount(65) >= 1 and GetItemCount(66) >= 1 and GetItemCount(67) >= 1 and GetItemCount(68) >= 1 then
	DelItem(65)
	DelItem(66)
	DelItem(67)
	DelItem(68)
	if GetItemCount(65) == nl1 - 1 and GetItemCount(66) == nl2 - 1 and GetItemCount(67) == nl3 - 1 and GetItemCount(68) == nl4 - 1 then
		SetTask(134,GetTask(134)+1)
		Msg2Player("B¹n ®· nép thµnh c«ng bé ch÷ T«n S­ Träng §¹o. ")
		for i=1,1000 do AddOwnExp(1000) end
		Msg2Player("B¹n nhËn ®­îc 1.000.000 kinh nghiÖm !")
			vatphamcui()
			xacsuat = random(1,10)
			if xacsuat == 5 then
			vatpham()
			end
		
			hk = random(1,200)
			if hk == 100  and GetTask(132) > 0 then
			hoangkim()
			end

	else
		Talk(1,"","Hack he em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ bé ch÷ <color=yellow>T«n S­ Träng §¹o ")
end


end


function vatphamcui()
sx3 = random(1,100)
if sx3 == 50 then
	AddEventItem(114)
	Msg2Player("B¹n nhËn ®­îc 1 b×nh N÷ Nhi Hång nhá ")
end
sx2 = random(1,100)
if (sx2 == 50) then
	AddEventItem(113)
	Msg2Player("B¹n nhËn ®­îc 1 b×nh Tiªn Th¶o Lé nhá ")
end
end

function vatpham()
xx = random(1,200)
if xx == 40 then
	AddItem(0,10,5,random(1,5),0,0,0)
	Msg2Player("B¹n nhËn ®­îc 1 Thó C­ìi 8x ")
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc 1 Thó C­ìi 80 ")
elseif xx == 80 then
	AddEventItem(0)
	Msg2Player("B¹n nhËn ®­îc 1 Vâ L©m MËt TÞch ")	
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc 1 cuèn Vâ L©m MËt TÞch ")
elseif xx == 120 then
	AddEventItem(1)
	Msg2Player("B¹n nhËn ®­îc 1 TÈy Tñy Kinh ")
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc 1 TÈy Tñy Kinh ")
elseif xx == 150 then
	AddEventItem(31)
	Msg2Player("B¹n nhËn ®­îc 1 Tinh Hång B¶o Th¹ch ")
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc 1 Tinh Hång B¶o Th¹ch ")
elseif xx == 200 then
	AddEventItem(random(28,30))
	Msg2Player("B¹n nhËn ®­îc 1 Thñy Tinh ")
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc 1 Thñy Tinh ")
end
end

function hoangkim()
item = random(1,50)
if item == 1 then
AddItem(0,3,6,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [HiÖp Cèt §an T©m Giíi]")
elseif item == 2 then
AddItem(0,3,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [Nhu T×nh Phông Nghi Giíi ChØ]")
elseif item == 3 then
AddItem(0,9,4,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [HiÖp Cèt T×nh ý KÕt]")
elseif item == 4 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 5 then
AddItem(0,9,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [Nhu T×nh TuÖ T©m Ngäc Béi]")
elseif item == 6 then
AddItem(0,8,3,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [§Þnh Quèc Tö §»ng Hé UyÓn]")
elseif item == 7 then
AddItem(0,5,5,1,0,0,0)
Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o nhËn ®­îc [§Þnh Quèc XÝch QuyÒn NhuyÔn Ngoa]")
else
	rnd = random(1,9)
	if rnd == 1 then
	AddItem(0,6,2,1,0,0,0)
	elseif rnd == 2 then
	AddItem(0,5,4,1,0,0,0)
	elseif rnd == 3 then
	AddItem(0,9,2,1,0,0,0)
	elseif rnd == 4 then
	AddItem(0,7,14,1,0,0,0)
	elseif rnd == 5 then
	AddItem(0,2,29,1,0,0,0)
	elseif rnd == 6 then
	AddItem(0,8,2,1,0,0,0)
	elseif rnd == 7 then
	AddItem(0,4,2,1,0,0,0)
	elseif rnd == 8 then
	AddItem(0,3,1,1,0,0,0)
	else 
	AddItem(0,3,2,1,0,0,0)
	end
	Msg2SubWorld("Chóc mõng ["..GetName().."] sö dông T«n S­ Träng §¹o may m¾n nhËn ®­îc trang bÞ Kim Phong")
end
end

function gioihan()
return GetTask(132)*25 + 25
end