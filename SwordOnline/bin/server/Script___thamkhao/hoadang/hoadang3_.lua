soluonghoadang = 20


function main(idx)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
ngay = tonumber(date("%d"))
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tr¶ lêi Hoa §¨ng")
return
end
if CheckFreeBoxItem(4,17,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ 1 « trèng, kh«ng thÓ tr¶ lêi c©u hái !")
	return
end
if GetTask(477) > 0 then
Talk(1,"","B¹n ®ang trong thêi gian t¹m khãa Hoa §¨ng, kh«ng thÓ tham gia !")
return
end

if GetTask(120) ~= ngay then
SetTask(120,ngay)
SetTask(121,0)
end

if GetTask(121) <= soluonghoadang then
			sl = GetCash()
			tientru = 1000
			if GetCash() > tientru then
				Pay(tientru)
				if GetCash() == (sl-tientru) then
						HideNpc(idx, 24*60*60*18)
												
							i = xacsuatcauhoi()
							SetTaskTemp(2,CAUHOI[i][6])
							SetFightState(0)
							if GetTaskTemp(2) < 1 or GetTaskTemp(2) > 4 then
								return
							end
							a = random(1,4)
							if a == 1 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][2].."/dung",
							"B. "..CAUHOI[i][3].."/sai",
							"C. "..CAUHOI[i][4].."/sai",
							"D. "..CAUHOI[i][5].."/sai")
							elseif a == 2 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][5].."/sai",
							"B. "..CAUHOI[i][2].."/dung",
							"C. "..CAUHOI[i][3].."/sai",
							"D. "..CAUHOI[i][4].."/sai")
							elseif a == 3 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][4].."/sai",
							"B. "..CAUHOI[i][5].."/sai",
							"C. "..CAUHOI[i][2].."/dung",
							"D. "..CAUHOI[i][3].."/sai")
							elseif a == 4 then
							SayNew(""..checkmau(GetTaskTemp(2))..": "..CAUHOI[i][1].."",4,
							"A. "..CAUHOI[i][3].."/sai",
							"B. "..CAUHOI[i][4].."/sai",
							"C. "..CAUHOI[i][5].."/sai",
							"D. "..CAUHOI[i][2].."/dung")
							end 	
				else
				Talk(1,"","Hack ha em")
				end			
			else
			Talk(1,"","<color=green>Hoa §¨ng<color> B¹n kh«ng mang ®ñ <color=yellow>"..tientru.."<color> l­îng")
			end	
		else
		Talk(1,"","<color=green>Hoa §¨ng<color> Giíi h¹n Hoa §¨ng <color=yellow>"..soluonghoadang.."<color> c©u")
		end
end

function xacsuatcauhoi()
danhvong  = GetTask(100)
if danhvong < 250 then
	sx2 = random(1,100)
	if sx2 <= 10 then
		return idcauhoi(2)
	elseif sx2 <= 11 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 250 and danhvong < 500 then
	sx2 = random(1,100)
	if sx2 <= 12 then
		return idcauhoi(2)
	elseif sx2 <= 14 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 500 and danhvong < 750 then
	sx2 = random(1,100)
	if sx2 <= 14 then
		return idcauhoi(2)
	elseif sx2 <= 17 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 750 and danhvong < 1000 then
	sx2 = random(1,100)
	if sx2 <= 16 then
		return idcauhoi(2)
	elseif sx2 <= 20 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1000 and danhvong < 1250 then
	sx2 = random(1,100)
	if sx2 <= 18 then
		return idcauhoi(2)
	elseif sx2 <= 23 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1250 and danhvong < 1500 then
	sx2 = random(1,100)
	if sx2 <= 20 then
		return idcauhoi(2)
	elseif sx2 <= 26 then
		return idcauhoi(3)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 1500 and danhvong < 2000 then
	sx2 = random(1,100)
	if sx2 <= 22 then
		return idcauhoi(2)
	elseif sx2 <= 29 then
		return idcauhoi(3)
	elseif sx2 <= 30 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 2000 and danhvong < 4000 then
	sx2 = random(1,100)
	if sx2 <= 24 then
		return idcauhoi(2)
	elseif sx2 <= 32 then
		return idcauhoi(3)
	elseif sx2 <= 33 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 4000 and danhvong < 6000 then
	sx2 = random(1,100)
	if sx2 <= 25 then
		return idcauhoi(2)
	elseif sx2 <= 34 then
		return idcauhoi(3)
	elseif sx2 <= 35 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 6000 and danhvong < 8000 then
	sx2 = random(1,100)
	if sx2 <= 30 then
		return idcauhoi(2)
	elseif sx2 <= 40 then
		return idcauhoi(3)
	elseif sx2 <= 42 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 8000 and danhvong < 10000 then
	sx2 = random(1,100)
	if sx2 <= 35 then
		return idcauhoi(2)
	elseif sx2 <= 46 then
		return idcauhoi(3)
	elseif sx2 <= 50 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 10000 and danhvong < 15000 then
	sx2 = random(1,100)
	if sx2 <= 40 then
		return idcauhoi(2)
	elseif sx2 <= 52 then
		return idcauhoi(3)
	elseif sx2 <= 57 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 15000 and danhvong < 20000 then
	sx2 = random(1,100)
	if sx2 <= 45 then
		return idcauhoi(2)
	elseif sx2 <= 58 then
		return idcauhoi(3)
	elseif sx2 <= 63 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
elseif danhvong >= 20000 then
	sx2 = random(1,100)
	if sx2 <= 50 then
		return idcauhoi(2)
	elseif sx2 <= 65 then
		return idcauhoi(3)
	elseif sx2 <= 70 then
		return idcauhoi(4)
	else
		return idcauhoi(1)
	end
else
return idcauhoi(1)
end
end


function idcauhoi(num)
if num == 1 then
return random(1,157)
elseif num == 2 then
return random(158,206)
elseif num == 3 then
return random(207,227)
elseif num == 4 then
return random(228,271)
else
return 1
end
end

function main1()
end


function checkmau(i)
if i == 1 then
return "<color=red>[C©u hái DÔ]<color>"
elseif i == 2 then
return "<color=green>[C©u hái B×nh Th­êng]<color>"
elseif i == 3 then
return "<color=yellow>[C©u hái Khã]<color>"
elseif i == 4 then
return "<color=pink>[C©u hái §Æc BiÖt]<color>"
end
end

function dung()
check = GetTask(121)
SetTask(121,GetTask(121)+1)
--HideNpc(GetTaskTemp(1),24*60*60*18)
SetFightState(1)
if GetTask(121) == check + 1 then
	AddOwnExp(100000)
	Msg2Player("B¹n nhËn ®­îc 100.000 kinh nghiÖm")
	if GetTaskTemp(2) == 1 then
		m = random(1000,5000)
		Earn(m)
		Msg2Player("B¹n tr¶ lêi 1 C©u Hái DÔ nhËn ®­îc: <color=yellow>"..m.." l­îng !")
	elseif GetTaskTemp(2) == 2 then
		if GetTask(100) < 250 then
			sx2 = random(1,100)
			if sx2 < 70 then
						AddEventItem(173)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [TiÓu] ")
			else
						AddEventItem(174)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [Trung] ")
			end
		else
			sx2 = random(1,100)
			if sx2 < 70 then
						AddEventItem(173)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [TiÓu] ")
			elseif sx2 < 90 then
						AddEventItem(174)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Phóc Duyªn [Trung] ")
			elseif sx2 < 95 then
						AddEventItem(113)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>Tiªn Th¶o Lé 30 phót")
			else
						AddEventItem(114)
						Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
						Msg2Player("B¹n tr¶ lêi 1 C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>N÷ Nhi Hång 30 phót")
						Msg2World("Chóc mõng "..GetName().." tr¶ lêi C©u Hái B×nh Th­êng nhËn ®­îc:  <color=yellow>N÷ Nhi Hång 30 phót")
			end
		end
	elseif GetTaskTemp(2) == 3 then
		sx2 = random(1,100)
		if sx2 < 70 then
					AddEventItem(175)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>Phóc Duyªn [§¹i] ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>Phóc Duyªn [§¹i] ")
		elseif sx2 < 90 then
					idx = AddEventItem(random(117,118))
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idx).." ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>"..GetNameItemBox(idx).." ")
		elseif sx2 < 95 then
					AddEventItem(119)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>Tiªn Th¶o Lé 3 giê ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>Tiªn Th¶o Lé 3 giê ")
		else
					AddEventItem(115)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái Khã nhËn ®­îc:  <color=green>N÷ Nhi Hång 3 giê ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái Khã nhËn ®­îc:  <color=green>N÷ Nhi Hång 3 giê ")
		end
	elseif GetTaskTemp(2) == 4 then
		sx2 = random(1,100)
		if sx2 < 70 then
					AddEventItem(31)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=pink>Tinh Hång B¶o Th¹ch ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc:  <color=pink>Tinh Hång B¶o Th¹ch ")
		elseif sx2 < 90 then
					idx = AddEventItem(random(28,30))
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=pink>Thñy Tinh")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc: <color=pink>Thñy Tinh")
		elseif sx2 < 95 then
					AddEventItem(0)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=pink>Vâ L©m MËt TÞch ")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc: <color=pink>Vâ L©m MËt TÞch ")
		else
					AddEventItem(1)
					Msg2Player("<color=green>C©u hái thø "..GetTask(121)..": Chóc mõng, n¹n ®· tr¶ lêi chÝnh x¸c !!")
					Msg2Player("B¹n tr¶ lêi 1 C©u Hái §Æc BiÖt nhËn ®­îc:  <color=pink>TÈy Tñy Kinh")
					Msg2SubWorld("Chóc mõng "..GetName().." tr¶ lêi C©u Hái §Æc BiÖt nhËn ®­îc: <color=pink>TÈy Tñy Kinh")
		end
	end	
else
	Talk(1,"","Hack ha em")
end
end

function sai()
SetFightState(1)
if GetTaskTemp(2) == 4 then
Msg2World("<color=pink>Xin chia buån cïng "..GetName().." võa tr¶ lêi sai 1 c©u hái §Æc BiÖt !")
elseif GetTaskTemp(2) == 3 then
Msg2World("<color=green>Xin chia buån cïng "..GetName().." võa tr¶ lêi sai 1 c©u hái Khã !")
end
Msg2Player("C©u hái thø "..GetTask(121)..": Tr¶ lêi kh«ng chÝnh x¸c. Kh«ng thÓ tr¶ lêi Hoa §¨ng trong 10 gi©y !")
--HideNpc(GetTaskTemp(1),0)
SetTask(477, 10*18)
end

CAUHOI = {
{"Skill 9x néi c«ng C¸i Bang tªn g× ","Phi Long T¹i Thiªn ","§¶ CÈu TrËn ","Thiªn H¹ V« CÈu ","Tiªu Diªu C«ng ",1},
{"Skill 9x ngo¹i c«ng C¸i Bang tªn g×  ? ","Thiªn H¹ V« CÈu ","Phi Long T¹i Thiªn ","Ho¹t B¸t L­u Thñ ","Kh¸ng Long H÷u Hèi ",1},
{"Skill trÊn ph¸i C¸i Bang tªn g× ? ","Tóy §iÖp Cuång Vò ","Phi Long Tai Thien ","Hoa Diem Vi Di ","Hoat Bat Luu Thu ",1},
{"Skill 9x néi c«ng Nga My tªn g× ? ","Phong S­¬ng To¸i ¶nh ","Méng §iÖp ","BÊt TuyÖt BÊt DiÖt ","PhËt T©m Tõ H÷u ",1},
{"Skill 9x ngo¹i c«ng Nga My tªn g× ? ","Tam Nga Tª TuyÕt ","Th«i Song Väng NguyÖt ","BÊt TuyÖt BÊt DiÖt ","L­u Thñy ",1},
{"Skill trÊn ph¸i Nga My tªn g× ? ","PhËt Ph¸p V« Biªn ","L­u Thñy ","Phç §é Chóng Sinh ","Th«i Song Väng NguyÖn ",1},
{"Skill 9x ngo¹i c«ng Thóy Yªn tªn g× ? ","B¨ng Tung V« ¶nh ","TuyÖt ¶nh ","B¨ng Cèt TuyÕt T©m ","B¨ng T©m Tr¸i ¶nh ",1},
{"Skill trÊn ph¸i Thóy Yªn tªn g× ? ","B¨ng Cèt TuyÕt T©m ","TuyÖt ¶nh ","Bang Tung V« ¶nh ","Bang T©m Tr¸i ¶nh ",1},
{"Skill bïa 9x C«n L«n tªn g× ? ","Tïy TiÖn Tµ Cèt ","Thiªn Thanh §Þa Träc ","Thiªn TÒ TÇn L«i ","KÝ B¸n Phï ",1},
{"Skill t¨ng kh¸ng cñaThiªn V­¬ng tªn g× ? ","Kim Chung Tr¸o ","Thiªn V­¬ng Chiªn Y ","HuyÕt ChiÕn B¸t Ph­¬ng ","Thõa Long QuyÕt ",1}, -- 10
{"Skill 9x Th­¬ng cña Thiªn v­¬ng tªn g× ? ","Truy Tinh Tróc NguyÖt ","HuyÕt ChiÕn BÊt Ph­¬ng ","Kim Chung Tr¸o ","Thõa Long QuyÕt ",1},
{"Skill buff 100% tróng ®éc Ngò §éc tªn g× ? ","Xuyªn T©m §éc ThÝch ","Ngò §éc Kú Kinh ","B¨ng Lam Huyªn Tinh ","Xuyªn Y Ph¸ Gi¸p ",1},
{"Skill nµo hç trî skill 9x Vâ §ang KhÝ ? ","V« Ng· V« KiÕm ","Tam Ho¶n Th¶o NguyÖt ","KiÕm Phi kinh Thiªn ","Nh©n KiÕm Hîp NhÊt ",1},
{"Skill 6x §ao cña ThiÕu L©m tªn g× ? ","Ma Ha V« L­¬ng ","Long Tr¶o Hæ Tr¶o ","Hoµnh T¶o Lôc Hîp ","S­ Tö Hèng ",1},
{"Skill kh¸ng tÊt c¶ cña ThiÕu l©m tªn g× ? ","DÞch C©n Kinh ","Nh­ Lai Thiªn §iÖp ","La H¸n TrËn ","BÊt §éng Minh V­¬ng ",1},
{"Skill trÊn ph¸i Thiªn NhÉn tªn g× ? ","Thiªn Ma Gi¶i ThÓ ","Phi Hång V« TÝch ","BÝ T« Thanh Phong ","Ma DiÖm Th©t S¸t ",1},
{"PhÝm t¾t nµo bÆt nhanh Giao DÞch ? ","PhÝm O ","PhÝm P ","PhÝm K ","PhÝm L ",1},
{"Phim t¾t nµo bËt nhanh Tæ §éi ? ","PhÝm P ","PhÝm T ","PhÝm K ","PhÝm L ",1},
{"PhÝm t¾t nµo bËt Hç Trî Game ? ","PhÝm F1 ","PhÝm F2 ","PhÝm F3 ","PhÝm F4 ",1},
{"PhÝm t¾t nµo bËt Hµnh Trang ? ","PhÝm F4 ","PhÝm F3 ","PhÝm F5 ","PhÝm F2 ",1}, -- 20
{"Phim t¾t nµo bËt H¶o H÷u ? ","PhÝm F6 ","PhÝm F3 ","PhÝm F4 ","PhÝm F5 ",1},
{"Phim t¾t nµo bËt B¶ng Skill ? ","PhÝm F5 ","PhÝm F3 ","PhÝm F4 ","PhÝm F6 ",1},
{"NPC nhËn nhiÖm vô s¸t thñ tÑn g× ? ","NhiÕp ThÝ TrÇn ","H« Trî T©n Thñ ","§­êngng BÊt NhiÖm ","Xa phu ",1},
{"V­ît ¶i mét ngµy nh©n vËt ®i ®­îc mÊy lÇn ? ","1 lÇn ","2 lÇn ","3 lÇn ","4 lÇn ",1},
{"Ngùa nµo sinh lùc nhiÒu nhÊt trong c¸c lo¹i sau ?","XÝch Thè","TuyÖt ¶nh","¤ V©n §¹p TuyÕt","§Ých L«",1},
{"L­u Thñy lµ skill cña ph¸i nµo","Nga My","Vâ §ang","Thóy Yªn","Thiªn V­¬ng",1},
{"Skill Ngo¹i C«ng 9x cña Vâ §ang lµ g× ?","Nh©n KiÕm Hîp NhÊt","Thiªn §Þa V« Cùc","Tam Hoµng Thao NguyÖt","Vâ §ang KiÕm Ph¸p",1},
{"HuyÒn Gi¸c lµ boss Hoµng Kim m«n ph¸i g× ?","ThiÕu L©m","Ngò §éc","C«n L«n","Thiªn NhÉn",1},
{"Mét set Kim Phong gåm bao nhiªu mãn ?","9 mãn","10 mãn","6 mãn","4 mãn",1},
{"Gi¸ trÞ Phßng Thñ VËt Lý tèi ®a cña mçi trang bÞ Xanh lµ bao nhiªu ?","25","22","15","19",1}, -- 30
{"Mét ngµy 1 nh©n vËt ®c nhËn tèi ®a lµ bao nhiªu Boss S¸t Thñ ?","8","12","5","1",1},
{"Mét ngµy cã thÓ tr¶ lêi bao nhiªu c©u hái Hoa §¨ng ?","20","50","100","30",1},
{"Skill néi c«ng 9x cña Thóy Yªn lµ g× ?","B¨ng T©m Tiªn Tö","B¨ng Tung V« ¶nh","B¨ng Cèt TuyÕt T©m","TuyÕt ¶nh",1},
{"Th­¬ng cÊp 10 cã tªn gäi lµ g× ?","Ph¸ Thiªn KÝch","Hoµn Tö Th­¬ng","ThiÕt Th­¬ng","C©u Liªm Th­¬ng",1},
{"Ba L¨ng HuyÖn ®i  Xe Phu tõ ®©u qua ?","T­¬ng D­¬ng","Ph­îng T­êng","BiÖn Kinh","Giang T©n Th«n",1},
{"Tèc ®é ®¸nh tèi ®a cña Vò KhÝ lµ bao nhiªu?","30%","10%","20%","36%",1},
{"HÖ Kim tù kÝch thuéc tÝnh Èn 1 cña Trang bÞ hÖ g× ?","Thñy","Háa","Thæ","Méc",1},
{"Skill t¨ng tèc ®é ch¹y cña Nga My tªn lµ g×?","L­u Thñy","Méng §iÖp","PhËt T©m Tõ H÷u","Thanh ¢m Ph¹n X­íng",1},
{"Kh¸ng TÊt C¶ tèi ®a cña D©y chuyÒn xanh lµ bao nhiªu?","20","18","15","16",1},
{"Skill bïa 9x cña Ngò §éc tªn lµ g×?","§o¹n H©n Hñ Cèt","V¹n §éc Thùc T©m","Xuyªn Y Ph¸ Gi¸p","Cöu Thiªn Cuång L«i",1}, -- 40
{"Skill t¨ng Kh¸ng §éc cña Ngò §éc tªn g× ?","T¹p Nan D­îc Kinh","Ngò §éc Kú Kinh","XÝch DiÖm Thùc Thiªn","B¸ch §éc Xuyªn T©m",1},
{"Ngùa B«n Tiªu cã mµu g×?","§en","Tr¾ng","N©u","X¸m",1},
{"Tèng Kim b¸o danh tr­íc mÊy phót ?","15 phót","10 phót","5 phót","30 phót",1},
{"ThuyÒn Phong L¨ng §é khëi hµnh vµo phót thø mÊy?","10","20","15","25",1},
{"Ch­ëng M«n ph¸i Thóy Yªn lµ ai ?","Do·n Hµm Yªn","Yªn HiÓu Tr¸i","Chung Linh Tó","Do·n Thanh V©n",1},
{"§¨ng ký tham gia  Liªn §Êu ë ®©u ?","Sø Gi¶ Liªn §Êu Ba L¨ng HuyÖn","Sø Gi¶ Liªn §Êu Chu Tiªn TrÊn","Sø Gi¶ Liªn §Êu  T­¬ng D­¬ng","Sø Gi¶ Liªn §Êu Ph­îng T­êng",1},
{"Liªn ®Êu 1 ngµy cã mÊy trËn?","4","5","6","7",1},
{"3 ngµy cuèi tuÇn diÔn ra mÊy trËn Liªn §Êu ?","8","4","6","5",1},
{"Vâ L©m Liªn §Êu Qu¸n Qu©n lµ danh hiÖu cña Liªn §Êu h¹ng mÊy ?","1","4","3","2",1},
{"H¹n chÕ vò khÝ cña chiªu thøc B¹o Vò Lª Hoa lµ g×?","Tô TiÔn","KiÕm","§ao","Bæng",1}, -- 50
{"Option Phôc Håi Néi Lùc chØ cã trªn trang bÞ nµo ?","Ngäc Béi","NhÉn","¸o","§ai l­ng",1},
{"Option Phôc Håi ThÓ Lùc chØ cã trªn trang bÞ nµo ?","D©y chuyÒn, nhÉn","¸o, nãn","§ai l­ng, bao tay","Giµy",1},
{"Option Phôc Håi Sinh Lùc chØ cã trªn trang bÞ?","¸o, nãn, ®ai l­ng, giµy, bao tay","D©y chuyÒn, nhÉn, ngäc béi","Vò khÝ ","Ngùa",1}, -- Thieu 1
{"§­êng Nghª Gi¸p lµ trang bÞ yªu cÇu Søc M¹nh bao nhiªu?","260","210","165","110",1},
{"§é ChÝnh X¸c tèi ®a cña Vò KhÝ lµ bao nhiªu?","300","255","200","100",1},
{"Hót Néi Lùc chØ cã t¸c dông víi ?","Ngo¹i C«ng","Néi C«ng","Néi C«ng vµ Ngo¹i C«ng","Kh«ng cã t¸c dông trong server",1}, -- sai
{"M«n ph¸i nµo sö dông Sinh Lùc ®Ó thi triÓn vâ c«ng?","Thiªn V­¬ng Bang","Thiªn NhÉn Gi¸o","C¸i Bang","Nga My",1},
{"Phæ §é Chóng Sinh kh¸ng tÊt c¶ tèi ®a lµ bao nhiªu?","40","30","25","35",1},
{"B¹n ®ang tham gia ho¹t ®éng g×?","Hoa §¨ng","Tèng Kim","D· TÈu","VËn Tiªu",1},
{"Tiªn Th¶o Lé cã t¸c dông g× ?","x2 Kinh NghiÖm ","x2 luyÖn kü n¨ng","x2 D· tÈu","x2 Tèng Kim",1}, -- 60
{"N©ng cÊp trang bÞ cÇn Thñy Tinh g×?","Tö Thñy Tinh","Lôc Thñy Tinh","Lam Thñy Tinh","TÊt c¶ ph­¬ng an ®Òu ®­îc",1},
{"H¹ cÊp trang bÞ cÇn Thñy Tinh g×?","Lôc Thñy Tinh","Tö Thñy Tinh","Lam Thñy Tinh","TÊt c¶ ph­¬ng an ®Òu ®­îc",1},
{"Thay ®æi trang bÞ cÇn Thñy Tinh g×?","Lam Thñy Tinh","Lôc Thñy Tinh","Tö Thñy Tinh","TÊt c¶ ph­¬ng an ®Òu ®­îc",1},
{"Mét ngµy s¨n tèi ®a bao nhiªu con boss S¸t Thñ?","8","4","1","6",1},
{"Skill t¨ng tèc ®é ch¹y cña Vâ §ang lµ g×?","ThÕ V©n Tung","ThÊt Tinh TrËn","Täa Vong V« Ng·","Tam Hoµn Thao NguyÖt",1},
{"Skill t¨ng ®é chÝnh x¸c cña Thiªn V­¬ng lµ g×?","TÜnh T©m QuyÕt","Kim Chung Tr¸o","§o¹t Hån ThÝch","Thiªn V­¬ng ChiÕn ý ",1},
{"Nh÷ng m«n ph¸i thuéc mµu phe ChÝnh Ph¸i ?","Kh«ng cã ph­¬ng ¸n ®óng","ThiÕu L©m, Nga My, Vâ §ang, C«n L«n","Thiªn V­¬ng, Thóy Yªn, §­êng M«n","Thiªn NhÉn, Ngò §éc, C¸i Bang",1},
{"Skill t¨ng tèc ®é ch¹y cña C¸i Bang lµ g×?","Ho¹t BÊt L­u Thñ","Tóy §iÖp Cuång VÒ ","Tiªu Diªu C«ng","Háa DiÖm Vi Di",1},
{"Skill gi¶m hiÖu øng lµm chËm, lµm cho¸ng cña C«n L«n lµ g×?","Mª Tung ¶o ¶nh","KhÝ Hµn Ng¹o TuyÕt","B¾c Minh §¶o H¶i","Thóc Ph­îc Chó",1},
{"Skill 1x hç trî t¨ng S¸t Th­¬ng VËt Lý cho c¶ 3 ®­êng ngo¹i c«ng cña §­êng M«n tªn lµ g× ?","§­êng M«n ¸m Khý ","TÝch LÞch §¬n","§Þa DiÖm Háa","§éc ThÝch Cèt",1}, -- 70
{"GÆp ai ®Ó hñy trang bÞ khãa vÜnh viÔn ?","Thî RÌn","HiÖu Thuèc","T¹p Hãa","B¸n Ngùa",1},
{"Set HiÖp Cèt cã mÊy mãn?","4","5","3","6",1},
{"NhÉn HiÖp Cèt t¨ng Søc M¹nh tèi ®a lµ bao nhiªu?","24","22","23","20",1},
{"VËt phÈm nµo t¨ng 5 ®iÓm tiÒm n¨ng khi sö dông?","TÈy Tñy Kinh","Vâ L©m MËt TÞch","ThiÕt La H¸n","Bµn Nh­îc T©m Kinh",1},
{"VËt phÈm nµo tÈy hÕt ®iÓm kinh nghiÖm ©m?","Bµn Nh­îc T©m Kinh","ThiÕt La H¸n","Vâ L©m MËt TÞch","TÈy Tñy Kinh",1},
{"VËt phÈm nµo t¨ng 1 ®iÓm kü n¨ng khi sö dông?","Vâ L©m MËt TÞch","TÈy Tñy Kinh","Bµn Nh­îc T©m Kinh","ThiÕt La H¸n",1},
{"§­îc sö dông tèi ®a lµ bao nhiªu cuèn Vâ L©m MËt TÞch?","10","5","15","20",1},
{"§­îc sö dông tèi ®a lµ bao nhiªu cuèn TÈy Tñy Kinh?","5","15","10","20",1},
{"Bao nhiªu Nh¹c V­¬ng Hån Th¹ch ®æi ®­îc Nh¹c V­¬ng KiÕm ? ","10 vien ","30 vien ","20 vien ","50 vien ",1},
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc HiÖu óy ? ","1500 ","1000 ","200 ","500 ",1}, -- 80
{"Bao nhiªu ®iÓm tÝch lòy míi lªn ®­îc Thèng LÜnh ? ","3000 ","1000 ","1500 ","2500 ",1},
{"Tªn NPC gia nhËp m«n ph¸i ThiÕu L©m ? ","ThiÕu L©m La H¸n ","ThiÕu L©m §¹t Ma ","ThiÕu L©m Chiªu Sinh ","ThiÕu L©m Tu TrÝ ",1},
{"Tªn NPC gia nhËp m«n ph¸i Thiªn V­¬ng ? ","Thiªn V­¬ng T­íng LÜnh ","Thiªn V­¬ng Chiªu Sinh ","Thiªn V­¬ng T­íng Qu©n ","§­êng ThiÕt T©m ",1},
{"Tªn NPC gia nhËp m«n ph¸i Vâ §ang ? ","Vâ §ang §¹o Nh©n ","Tr­¬ng Tam Phong ","Tr­¬ng ThiÕt Tam ","Vâ §ang Chiªu Sinh ",1},
{"Tªn NPC gia nhËp m«n ph¸i Nga My ? ","Nga My CÈm Y Ni ","Nga My Chiªu Sinh ","Nga My Y Ni ","Nga My Ni C« ",1},
{"Tªn NPC gia nhËp m«n ph¸i Thóy Yªn ? ","Thóy Yªn Hoa Sø ","Thóy Yªn Hoa N÷ ","Thóy Yªn Hoa Lan ","Thóy Yªn Chiªu Sinh ",1},
{"Tªn NPC gia nhËp m«n ph¸i C«n L«n ? ","C«n L«n Hé Ph¸p ","C«n L«n La H¸n ","C«n L«n Chiªu Sinh ","C«n L«n §¹o SÜ ",1},
{"Tªn NPC gia nhËp m«n ph¸i C¸i Bang ? ","§Ö Tö C¸i Bang ","C¸i Bang Chiªu Sinh ","KÎ ¡n Mµy  ","C¸i Bang Tr­ëng L·o ",1},
{"Ngò hµnh cã bao nhiªu hÖ? ","5 ","6 ","4 ","7 ",1},
{"§Ó ®æi mµu cÇn chän NPC nµo? ","Hç trî T©n Thñ ","NhiÕp ThÝ TrÇn ","Kú Tr©n C¸c ","Xa Phu ",1}, -- 90
{"B¹n ®ang tham gia event g×? ","Hoa §¨ng ","Tèng Kim ","V­ît ¶i ","Trång C©y ",1},
{"Mµu luyÖn c«ng lµ mµu g× ","Tr¾ng ","Cam ","Xanh ","§á ",1},
{"Mµu chÝnh ph¸i lµ mµu g× ","Cam ","Xanh","§á","Tr¾ng",1},
{"Mµu tµ ph¸i lµ mµu g× ","TÝm","Xanh","§á","Tr¾ng",1},
{"Mµu trung lËp lµ mµu g× ","Xanh","TÝm","§á","Tr¾ng",1},
{"Nga My hÖ? ","Thñy ","Thæ ","Kim ","Méc ",1},
{"Skill trÊn ph¸i cña Ngò ®éc tªn lµ g×  ","Ngò ®éc kú kinh  ","Xuyªn t©m ®éc thÝch  ","V« h×nh ®éc  ","§o¹n c©n hñ cèt ",1},
{"Skill nµo sau d©y kh«ng ph¶i lµ bïa chó cña Thiªn nhÉn  ","Ma diÖm thÊt s¸t  ","¶o ¶nh phi hå  ","Phi hång v« tÝch  ","NhiÕp hån lo¹n t©m ",1},
{"Vâ L©m cã bao nhiªu m«n ph¸i ? ","10 ph¸i ","11 ph¸i ","12 ph¸i ","8 ph¸i ",1},
{"§iÓm tiÒm n¨ng søc m¹nh kh«ng t¨ng g× ? ","Néi lùc ","Sinh khÝ ","Lùc tay ","S¸t Th­¬ng",1}, -- 100
{"Ngùa nµo ch¹y nhanh nhÊt trong c¸c läai sau: ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","§Ých L« ","TuyÖt ¶nh ",1},
{"Skill t¨ng tèc ®é ch¹y cña Nga Mi cã tªn lµ g×  ","L­u thñy  ","Méng diÖp  ","PhËt t©m tõ h÷  ","PhËt quang phæ chiÕu ",1},
{"Skill t¨ng tèc ®é ch¹y cña Vâ ®ang cã tªn lµ g×  ","ThÕ v©n tung  ","ThÊt tinh trËn  ","Täa väng v« ng·  ","Th¸i cùc thÇn c«ng ",1},
{"Khi V­ît ¸i Nhãm ®­îc Pt Ýt nhÊt bao nhiªu ng­êi? ","6 ng­êi ","7 ng­êi ","8 ng­êi ","5 ng­êi ",1},
{"V­ît ¶i cã bao nhiªu ¶i ","18 ","15 ","16 ","17 ",1},
{"§Ó tÈy ®iÓm tiÒm n¨ng cÇn cã g×? ","6 viªn Tinh Hång Bao Th¹ch ","6 viªn huyÒn tinh 1 ","3 thñy tinh kh¸c mµu ","3 cuèn tÈy tñy kinh ",1},
{"Bé An Bang gåm bao nhiªu mãn? ","4 ","5 ","6 ","7 ",1},
{"Item g× ®Ó x2 luyÖn skill? ","N÷ nhi hång ","Tiªn th¶o l« ","Lam thñy tinh ","Thæ ®Þa phï ",1},
{"Item nh©n ®«i kinh nghiªm tªn g×? ","Tiªn th¶o lé ","HuyÒn tinh cÊp 10 ","N÷ nhi hång ","Thñy tinh ",1}, -- 110
{"Lo¹i ngùa cã kh¸ng tÊt c¶ 10 tªn g×? ","Phiªn Vò ","ChiÕu D¹ ","B«n Tiªu ","Phi V©n ",1},
{"Mét ngµy cã thÓ s¨n ®­îc bao nhiªu con boss s¸t thñ? ","8 ","9 ","18 ","16 ",1},
{"Skill trÊn ph¸i cña C«n L«n lµ   ","S­¬ng Ng¹o C«n L«n  ","Cuång Phong S©u §iÖn  ","Tóy Tiªn T¸ Cèt  ","B¾c minh ®¸o h¶i ",1},
{"Skill trÊn ph¸i cña thiÕu l©m tªn lµ g×  ","Nh­ lai thiªn diÖp  ","DÞch C©n Kinh  ","Ph¸ thiªn tr¶m  ","Truy tinh trôc nguyÖt ",1},
{"Skill hç trî cña thiÕu l©m quyÒn  ","Hµng long b¸t vò  ","DÞch C©n Kinh","Ma ha v« l­îng  ","§¹t ma ®é giang ",1},
{"Skill nµo sau ®©y kh«ng hç trî cho §­êng m«n bÉy  ","¸m khÝ ®­êng m«n  ","§Þa diÖm háa  ","Xuyªn t©m thÝch  ","Hµn b¨ng thÝch ",1},
{"Skill trÊn ph¸i cña thiÕu l©m tªn lµ g×  ","Nh­ lai thiÒn ®iÖp  ","dÞch ch©n kinh¸o  ","Ph¸ thiªn tr¶m  ","Truy tinh trôc huyÖt ",1},
{"Skill 9x cña §­êng m«n phi ®ao  ","NhiÕp hån nguyÖt ¶nh  ","T¸n hoa tiªu  ","B·o vò lÖ hoa  ","Truy t©m tiÔn ",1},
{"Tham gia Tèng Kim t¹i NPC nµo ? ","Tèng Kim Mé Binh ","Tèng Kim Chiªu Binh ","Tèng Kim TuyÓn Binh ","Tèng Kim Chän Binh ",1},
{"Skill 9x ®ao cña C«n L«n tªn g×   ","Ng¹o tuyÕt tiªu phong  ","L«i ®éng cöu thiªn  ","S­¬ng ng¹o c«n l«n  ","Cuång phong s©u ®iÖn ",1}, -- 120
{"Skill 9x cña néi c«ng cña c«n l«n   ","L«i ®éng cöu thiªn  ","L­ìng nghi ch©n khÝ  ","S­íng ng¹o c«n l«n  ","NhÊt khÝ tam thanh ",1},
{"Skill t¨ng tèc ®é ch¹y cña C«n L«n cã tªn lµ g×  ","Thanh phong phï  ","KÝ b¶n phï  ","B¾c Minh §¶o H¶i  ","KhÝ hµn ng¹o tuyÕt ",1},
{"Skill trÊn ph¸i cña thiªn v­¬ng tªn lµ g×  ","Thiªn v­¬ng chiÕn ý  ","Kim chung tr¸o  ","Truy phong quyÕt  ","Truy tinh trôc huyÖt ",1},
{"Skill 9x thiÕu l©m ®ao ph¸p  ","V« t­íng tr¶m  ","Ph¸ thiªn tr¶m  ","§¹t Ma hé giang  ","Hoµnh t¶o thiªn qu©n ",1},
{"Skill trÊn ph¸i cña §­êng m«n tªn lµ g×  ","T©m nh·n  ","¸m khÝ ®­êng m«n  ","Thiªn la ®Þa vâng  ","Truy t©m tiÔn ",1},
{"Skill 9x cña ngñ ®éc ch­ëng  ","¢m phong thùc cèt  ","§o¹n c©n hñ cèt  ","Ngò ®éc ch­ëng ph¸p  ","B¸ch ®éc xuyªn t©m ",1},
{"Skill 6x hç trî ngò ®éc ®ao  ","Chu cÊp thanh minh  ","Ngò ®éc ®ao ph¸p  ","HuyÕt ®ao ®éc s¸t  ","B¸ch ®éc xuyªn t©m ",1},
{"Skill 6x hç trî Nga mi ch­ëng  ","PhËt quang phæ chiÕu  ","BÊt diÖt bÊt tuyÖt  ","Th«i song väng nguyÖt  ","Nga mi ch­ëng ph¸p ",1},
{"Skill t¨ng kh¸ng tÊt c¶ cña Nga Mi  ","Phæ ®é chóng sinh  ","L­u thñy  ","Méng ®iÖp  ","Tõ hµng phæ ®é ",1},
{"TÇng 2 cña skill 9x Nga mi kiÕm tªn lµ g×  ","Ngäc tuyÕt tÈy trÇn  ","Tam nga tÒ tuyÕt  ","Phong s­¬ng tèi ¶nh  ","Phæ ®é chóng sinh ",1}, -- 130
{"Skill 6x nµo hç trî vâ kiÕm  ","Tam hoµnh thao nguyÖt  ","V« ng· v« kiÕm  ","Né l«i chØ  ","Vâ ®ang quyÒn ph¸p ",1},
{"Phßng thñ vËy lý chØ cã trªn trang bÞ hÖ g×  ","Háa  ","thñy  ","Thæ  ","Méc ",1},
{"Thêi gian lµm chËm lµ hiÖu øng cã trªn trang bÞ hÖ  ","Háa  ","Méc  ","Thñy  ","Thæ ",1},
{"Thêi gian cho¸ng cã trªn trang bÞ hÖ  ","Thñy  ","Háa  ","Thæ  ","Méc ",1},
{"Thêi gian tróng ®äc lµ hiÖu øng cã trªn trang bÞ hÖ  ","Thæ  ","Méc  ","Háa  ","Thñy ",1},
{"May m¾n chØ cã trªn trang bÞ nµo  ","D©y chuyÒn  ","¸o  ","Th¾t l­ng  ","Giµy ",1},
{"May m¾n lµ thuéc tÝnh chØ cã trªn trang bÞ hÖ  ","Méc  ","Thñy  ","Háa  ","Thæ ",1},
{"Bé §Þnh Quèc gåm bao nhiªu mèn  ","5  ","6  ","4  ","3 ",1},
{"HiÖu øng thêi gian phôc håi tèi ®a trang bÞ §Þnh Quèc lµ  ","50  ","49  ","47  ","40 ",1},
{"Cã tÊt c¶ bao nhiªu trang bÞ cã hiÖu øng may m¾n  ","4  ","5  ","3  ","2 ",1}, -- 140
{"Gi¸ trÞ may m¾n tèi ®a cña 1 trang bÞ lµ  ","10%  ","40%  ","9%  ","30% ",1},
{"Mét ngµy cã thÓ lµm ®­îc tèi ®a bao nhiªu nhiÖm vô d· tÉu  ","20  ","50  ","30  ","40 ",1},
{"HÖ nµo chØ cã nh©n vËt lµ n÷  ","Thñy  ","Háa  ","Thæ  ","Méc ",1},
{"HÖ nµo chØ cã nh©n vËt nam  ","Kim  ","Thñy  ","Háa  ","Thæ ",1},
{"Mét trang bÞ hÖ thñy kh«ng thÓ cã  ","kh¸ng l«i ","kh¸ng háa  ","thêi gian cho¸ng  ","cho¶ng hãa s¸t th­¬ng thµnh néi lùc ",1},
{"Mçi trËn tèng kim kÐo dµi bao nhiªu phót  ","60  ","45  ","30  ","15 ",1},
{"Tr¶ nhiÖm vô boss s¸t thñ sÏ d­îc bao nhiªu ®iÓm danh väng  ","2  ","1  ","3  ","4 ",1},
{"Thêi gian xuÊt hiÖn boss ®¹i hoµng kim  ","21h00  ","9h00  ","20h30  ","20h00 ",1},
{"Vò khÝ B¨ng S¸t Néi C«ng thuéc hÖ"," Thñy"," Méc","Thæ","Háa",1},
{"ChØ sè tèi ®a cña thuéc tÝnh Háa S¸t Néi C«ng lµ ","200","100","150","50",1}, -- 150
{"ChØ sè tèi ®a cña thuéc tÝnh B¨ng S¸t Néi C«ng lµ ","200","100","150","50",1},
{"ChØ sè tèi ®a cña thuéc tÝnh L«i S¸t Néi C«ng lµ ","200","100","150","50",1},
{"ChØ sè tèi ®a cña thuéc tÝnh S¸t Th­¬ng VËt Lý S¸t Néi C«ng lµ ","200","100","150","50",1},
{"ChØ sè tèi ®a cña thuéc tÝnh §éc S¸t Néi C«ng lµ ","50","100","150","200",1},
{"Vò khÝ Háa S¸t Néi C«ng thuéc hÖ "," Háa"," Méc","Thæ ","Thñy",1},
{"Vò khÝ L«i S¸t Néi C«ng thuéc hÖ "," Thæ "," Méc","Háa","Kim",1},
{"Vò khÝ §éc S¸t Néi C«ng thuéc hÖ "," Méc"," Thæ ","Háa","Thñy",1},
{"Hª Kim gåm cã ","ThiÕu L©m vµ Thiªn V­¬ng Bang","Nga My vµ Thóy Yªn","§­êng M«n vµ Ngò §éc","Vâ §ang vµ C«n L«n",1}, 
{"Hª Thñy gåm cã ","Nga My vµ Thóy Yªn","§­êng M«n vµ Ngò §éc","Vâ §ang vµ C«n L«n","ThiÕu L©m vµ Thiªn V­¬ng Bang",1},
{"Hª Méc gåm cã ","§­êng M«n vµ Ngò §éc","C¸i Bang vµ Thiªn NhÉn Gi¸o","ThiÕu L©m vµ Thiªn V­¬ng Bang","Nga My vµ Thóy Yªn",1},-- 140
{"Hª Háa gåm cã ","C¸i Bang vµ Thiªn NhÉn Gi¸o","§­êng M«n vµ Ngò §éc","Vâ §ang vµ C«n L«n","ThiÕu L©m vµ Thiªn V­¬ng Bang",1},
{"Hª Thæ gåm cã ","Vâ §ang vµ C«n L«n","§­êng M«n vµ Ngò §éc","Nga My vµ Thóy Yªn","ThiÕu L©m vµ Thiªn V­¬ng Bang",1},
{"Skill 9x bïa cña thiªn nhÉn  ","NhiÕp hån lo¹n t©m  ","V©n long kÝch  ","Thiªn ma gi¶i thÓ  ","Ma ©m phÖ ph¸ch ",1},
{"Skill nµo t¨ng ®é chÝnh x¸c cña vâ ®ang  ","ThÊt tinh trËn  ","ThÕ v©n tung  ","Täa väng v« ng·  ","Th¸i cùc thÇn c«ng ",1},
{"Skill bïa t¨ng kh¸ng cña c«n l«n  ","Thiªn Thanh §Þa Träc  ","S­¬ng ng¹o c«n l«n  ","Tóy tiªn t¸ cètt  ","Thanh phong phï ",1},
{"Skill kh¸ng ph¶n ®ßn cña c«n l«n cã tªn lµ  ","HuyÒn thiªn v« cùc  ","Thiªn thanh ®Þa träc  ","Thanh phong phï  ","Mª tung ¶o ¶nh ",1},
{"Skill bïa nµo cña c«n l«n lµm gi¶m tèc ®é di chuyÓn  ","KÝ b¶n phï  ","Thanh phong phï  ","S­¬ng ng¹o c«n l«n  ","Mª tung ¶o ¶nh ",1},
{"Skill 6x hç trî Nga mi ch­ëng  ","PhËt quang phæ chiÕu  ","BÊt diÖt bÊt tuyÖt  ","Th«i song väng nguyÖt  ","Nga mi ch­ëng ph¸p ",1},
{"Skill g©y cho¸ng cho ®èi ph­¬ng cña c«n l«n lµ  ","KhÝ tam phï  ","S­íng ng¹o c«n l«n  ","KÝ b¶n phï  ","Thanh phong phï ",1},
{"Bé Thñy Tinh cã mÊy mµu","3","4","5","2",1}, -- 150
{"Bé Tinh Hång B¶o Th¹ch gåm mÊy viªn","6","4","5","3",1},
{"Tªn NPC qu¶n lý Kim Nguyªn B¶o lµ ","Chñ TiÒn Trang","TiÖm Kim Hoµn","Chñ TiÖm Vµng","Kim B¶o §¹i Nh©n",1},
{"Chïy cÊp 10 tªn lµ ","Ph¸ Thiªn Chïy","Kim Qua Chïy","NghiÖt Long Chïy","H¸m Thiªn Chïy",1},
{"§ao cÊp 10 tªn lµ ","§¹i Phong §ao","C«n ChÈu B¶o §ao","Thanh Long §ao","Ph¸ Phong §ao",1},
{"Cã tÊt c¶ mÊy lo¹i b×nh Phóc Duyªn","3","4","2","5",1},
{"Gi¸ trÞ tèi ®a cña option Hót Sinh Lùc lµ ","10","5","15","20",1},
{"Gi¸ trÞ tèi ®a cña option Hót Néi Lùc lµ ","10","5","15","20",1},
{"M«n ph¸i mµ D­¬ng Qu¸ gia nhËp ®Çu tiªn lµ ","Toµn Ch©n","Cæ Mé ","ThiÕu L©m","Vâ §ang",2},
{"NguyÖt Nha §ao lµ §ao cÊp mÊy?","5","7","4","1",2},
{"NPC b¸n thuèc trong Tèng Kim tªn g× ? ","Kim Qu©n Nhu ","Kim Qu¶n Qu©n ","Kim Qu©n ","Kim Nhu ",2}, -- 160
{"Vò KhÝ kÝch ®­îc thuéc tÝnh Èn cho trang bÞ nµo ? ","GiÇy ","Nãn ","¸o ","Th¾t L­ng ",2},
{"D©y chuyÒn kÝch ®­îc thuéc tÝnh Èn cho trang bi nµo ? ","Vò khÝ ","¸o ","Th¾t L­ng ","GiÇy ",2},
{"Ngùa nµo trong ®©y cã mµu n©u: ","§Ých L« ","ChiÕu D¹ ","¤ V©n §¹p TuyÕt ","TuyÖt ¶nh ",2},
{"§Ó nhËn nhiÖm vô s¸t thñ b¹n cÇn cã bao nhiªu tiÒn? ","5000 l­¬ng ","50000 l­¬ng ","1000 l­¬ng  ","100 l­¬ng ",2},
{"BÝ kÝp 12x cña §­êng M«n tªn g×? ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña Nga My tªn g×? ","BÕ NguyÖt PhÊt TrÇn ","Mª ¶nh Tung ","XuÊt ø BÊt NhiÔm ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña Vâ §ang tªn g×? ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ","§¶o H­  Thiªn ",2},
{"BÝ kÝp 12x cña Thiªn V­¬ng tªn g× ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ","BÕ NguyÖt PhÊt TrÇn ",2},
{"BÝ kÝp 12x cña ThiÕu L©m tªn g×? ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ","Mª ¶nh Tung ",2},
{"BÝ kÝp 12x cña Ngò §éc tªn g×? ","HÊp Tinh YÓm ","XuÊt ø BÊt NhiÔm ","Ngù TuyÕt Èn ","Mª Hån ¶nh ",2}, -- 170
{"BÝ kÝp 12x cña Thóy Yªn tªn g×? ","Ngù TuyÕt Èn ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","XuÊt ø BÊt NhiÔm ",2},
{"BÝ kÝp 12x cña C¸i Bang tªn g×? ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ","HÊp Tinh YÓm ",2},
{"BÝ kÝp 12x cña Thiªn NhÉn  tªn g×? ","Ma ¢m PhÖ Ph¸ch ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó ","§¶o H­ Thiªn ",2},
{"BÝ kÝp 12x cña C«n L«n  tªn g×? ","L­¬ng Nghi Ch©n KhÝ  ","Hçn Thiªn khÝ C«ng ","§¹i Thõa Nh­ Lai Chó  ","§¶o H­ Thiªn ",2},
{"§iÓm ®Ó lªn ®­îc §¹i T­íng trong Tèng Kim lµ bao nhiªu?  ","10000 ®iÓm ","5000 ®iÓm ","3000 ®iÓm ","8000 ®iÓm ",2},
{"TÇng thø 2 cña skill Nga Mi ch­ëng tªn lµ  ","Kim ®Ønh phËt quang  ","Phong s­¬ng tèi ¶nh  ","Tam nga tÒ tuyÕt  ","Ngäc tuyÕt tÈy trÇn ",2},
{"HÖ thñy mÆc trang bÞ hÖ g× sÏ tù kÝch ®­îc Èn 1 cña trang bÞ  ","Méc  ","Háa  ","Thæ  ","Thñy ",2},
{"Ai lµ ng­êi c­íp ®i sù trong tr¾ng cña TiÓu Long N÷","Do·n ChÝ B×nh","D­¬ng Qu¸","C«ng T«n ChØ","Cõu Thiªn NhËn",2},
{"Ng­êi ta th­êng so s¸nh B¾c KiÒu Phong víi","Nam Mé Dung","Nam Sµi Gßn","Nam §oµn Dù","Nam ThÇn Long",2},
{"C¸i g× cµng röa cµng d¬","N­íc","§Êt","C¸t","§¸",2}, -- 180
{"Con g× cã l­ìi nh­ng kh«ng cã måm","Con Dao","Con C¸","Con MÌo","Con Cµ Cuèng",2},
{"Trang bÞ th­êng nµo kh«ng ph©n biÖt nam vµ n÷  ","Th¾t l­ng  ","¸o  ","Nãn  ","Bao tay ",2},
{"Giµy cã thÓ kÝch ®­îc thuéc tÝnh Èn cña  ","Ngäc béi  ","NhÉn trªn  ","Th¾t l­ng  ","¸o ",2},
{"Th¾t l­ng kÝch ®­îc thuéc tÝnh cña   ","¸o  ","Vò khÝ  ","Giµy  ","Ngäc béi ",2},
{"Option nµo chØ cã ë Ngäc béi vµ H­¬ng Nang","Phôc h«i néi lùc","Sinh lùc","Néi lùc","Phôc håi sinh lùc",2},
{"Kh¸ng tÊt c¶ tèi ®a cña Ngäc Béi HiÖp Cèt","5","3","15","10",2},
{"Thanh kiÕm g¾n liÒn víi tªn tuæi cña D­¬ng Qu¸ ","HuyÒn ThiÕt Träng KiÕm", "û Thiªn KiÕm","TuyÖt ThÕ H¶o KiÕm","Anh Hïng KiÕm",2},
{"BiÖt hiÖu cña T¹ Tèn lµ ","Kim Mao S­ V­¬ng","Thanh Dùc Bøc V­¬ng","Tö Sam Long V­¬ng","B¹ch Mi ¦ng V­¬ng",2},
{"Tr­¬ng V« Kþ lµ con trai cña Tr­¬ng Thóy S¬n vµ ","¢n Tè Tè","Kim Hoa Bµ Bµ","TiÓu Long N÷","KiÕn Ninh C«ng Chóa",2},
{"L¨ng Ba Vi Bé lµ tuyÖt kü cña ph¸i ","Tiªu Dao","Kh«ng §éng","Tinh Tóc","Minh Gi¸o",2}, -- 190
{"¶m Nhiªn Tiªu Hån Ch­ëng lµ bé vâ c«ng do ai s¸ng t¹o ","D­¬ng Qu¸ ","LÖnh Hå Xung","Vi TiÓu B¶o","KiÒu Phong",2},
{"Qu¸ch TÜnh vµ Hoµng Dung dµnh c¶ ®êi ®Ó trÊn thñ thµnh","T­¬ng D­¬ng","BiÖn Kinh","L©m An","Ph­îng T­êng",2},
{"BiÖt hiÖu cña Tr­¬ng Thóy S¬n, cha cña Tr­¬ng V« Kþ lµ ","ThiÕt Ho¹ch Ng©n C©u","Vâ §ang §¹i HiÖp","Tr­¬ng §¹i HiÖp","Phong L©m Háa S¬n",2},
{"BiÖt hiÖu cña NhiÕp Phong lµ ","Phong Trung Chi ThÇn","L·ng Tö Phong TrÇn","Cuång §ao","Phong ThÇn",2},
{"C¸p M« C«ng lµ do ai s¸ng t¹o","¢u D­¬ng Phong","D­¬ng Trïng V­¬ng","§oµn TrÝ H­ng","Hoµng D­îc S­ ",2},
{"BiÖt hiÖu cña Bé Kinh V©n lµ ","BÊt Khèc Tö ThÇn","HuyÕt C«ng Tö","Phi V©n §¹i HiÖp","Ngäc Thô L©m Phong",2},
{"Boss Hoµng Kim C¸i Bang lµ: ","Hµ Nh©n Ng·","§oan Méc DuÖ","Yªn HiÓu Tr¸i","§¹o Thanh Ch©n Nh©n",2},
{"Boss Hoµng Kim Thiªn NhÉn lµ:","§oan Méc DuÖ","V­¬ng T¸","Yªn HiÓu Tr¸i","§¹o Thanh Ch©n Nh©n",2},
{"Boss Hoµng Kim Vâ §ang lµ ","§¹o Thanh Ch©n Nh©n","V­¬ng T¸","Yªn HiÓu Tr¸i","LiÔu Thanh Thanh",2},
{"Boss Hoµng Kim Thóy Yªn lµ ","Yªn HiÓu Tr¸i","§¹o Thanh Ch©n Nh©n","V­¬ng T¸","LiÔu Thanh Thanh",2}, -- 200
{"Boss Hoµng Kim Nga My lµ ","Thanh TuyÖt S­ Th¸i","§¹o Thanh Ch©n Nh©n","V­¬ng T¸","LiÔu Thanh Thanh",2},
{"Boss Hoµng Kim Thiªn V­¬ng lµ ","V­¬ng T¸","§¹o Thanh Ch©n Nh©n","HuyÒn Gi¸c §¹i S­","LiÔu Thanh Thanh",2},
{"Boss Hoµng Kim ThiÕu L©m lµ ","HuyÒn Gi¸c §¹i S­","§¹o Thanh Ch©n Nh©n","Cæ B¸ch","LiÔu Thanh Thanh",2},
{"Boss Hoµng Kim C«n L«n lµ ","TuyÒn C¬ Tö","§¹o Thanh Ch©n Nh©n","Cæ B¸ch","LiÔu Thanh Thanh",2},
{"Boss Hoµng Kim §­êng M«n lµ ","§­êng BÊt NhiÔm","§¹o Thanh Ch©n Nh©n","Cæ B¸ch","V­¬ng T¸",2},
{"Boss Hoµng Kim §­êng M«n lµ ","B¹ch Doanh Doanh","§¹o Thanh Ch©n Nh©n","Cæ B¸ch","V­¬ng T¸",2}, 
{"Nhµ v¨n Kim Dung cã tÊt c¶ bao nhiªu t¸c phÈm","15","14","16","13",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Th¾t l­ng - NhÉn d­íi ","Th¾t L­ng - NhÉn trªn ","Th¾t l­ng - D©y ChuyÒn ","Th¾t L­ng - Ngäc Béi ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Trang phôc - D©y chuyÒn ","Trang phôc - Ngäc béi ","Trang phôc - NhÉn trªn ","Trang phôc - Nh©n d­íii ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","GiÇy - NhÉn trªn ","GiÇy - NhÉn d­íi ","GiÇy - Ngäc béi ","GiÇy - D©y chuyªn ",3}, -- 210
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? ","Bao tay - Ngäc béi ","Bao tay - NhÉn trªn ","Bao tay - NhÉn d­íi ","Bao tay - D©y ChuyÒn ",3},
{"CÊp trang bÞ nµo hç trî nhau ®Ó kÝch thuéc tÝnh ? "," Nãn- Vó KhÝ ","Nãn - Bao tay ","Nãn - ¸o ","Nãn - Th¾t l­ng ",3},
{"BÝ KÝp 9x c¸c ph¸i cã tÊt c¶ bao nhiªu cuèn? ","28 cuèn ","30 cuèn ","20 cuèn ","25 cuèn ",3},
{"Tªn thêi niªn thiÕu cña Tr­¬ng Tam Phong lµ ","Tr­¬ng Qu©n B¶o","Tr­¬ng ThÕ Vinh","Tr­¬ng Thóy S¬n","Tr­¬ng Quúnh Anh",3},
{"Vi TiÓu B¶o cã tÊt c¶ mÊy vî ?","7","8","9","10",3},
{"TuyÖt kü sö dông 2 tay lµm 2 viÖc kh¸c nhau cña Ch©u B¸ Th«ng lµ ","Song Thñ Hç B¸c","Song Thñ Liªn Hoµn","Song Long Hîp ThÓ ","Song Thñ V« §Þch",3},
{"T¹i Hoa S¬n LuËn KiÕm lÇn 3, D­¬ng Qu¸ nhËn danh hiÖu","T©y Cuång","T©y Thiªn","T©y T¹ng","T©y §éc",3},
{"CÇu thñ ghi bµn trong trËn chung kÕt World Cup 2014 lµ ","Mario Goetze","Lionel Messi","Cristiano Ronaldo","Thomas Muller",3},
{"CÇu thñ ghi bµn trong trËn chung kÕt Euro 2016 lµ ","Eder","Quaresma","Cristiano Ronaldo","Dimitri Payet",3},
{"CÇu thñ ghi bµn trong trËn chung kÕt Euro 2008 lµ ","Fernando Torres","David Villa","Andreas Iniesta","Xabi Alonso",3}, -- 220
{"CÇu thñ ghi bµn trong trËn chung kÕt World Cup 2010 lµ ","Andreas Iniesta","Xavi","Arjen Robben","Robin Van Persie",3},
{"§iÓm yÕu cña Achilles lµ ë: ","Gãt ch©n","Tim","Cæ tay","X­¬ng ch©n",3},
{"Thñ m«n huyÒn tho¹i cña ®éi tuyÓn T©y Ban Nha lµ ","Iker Casillas","David De Gea","Pepe Reina","Victor Valdes",3},
{"M«n vâ thuËt g¾n liÒn víi tªn tuæi DiÖp VÊn","VÞnh Xu©n QuyÒn","DiÖp Gia QuyÒn","ThiÕu L©m QuyÒn","Th¸i Cùc QuyÒn",3},
{"BÝ kÝp néi c«ng gia truyÒn mµ NhiÕp Phong ®­îc häc lµ ","B¨ng T©m QuyÕt","Cöu D­¬ng ThÇn C«ng","Ngäc N÷ T©m Kinh","B¾c Minh ThÇn C«ng",3},
{"Vò khÝ cña NhiÕp Phong tªn lµ ","TuyÕt Èm Cuång §ao","Th¸nh Háa LÖnh","Thiªn Long ThÇn KiÕm","NhiÕp Hån §ao",3},
{"Vò khÝ cña Bé Kinh V©n tªn lµ ","TuyÖt ThÕ H¶o KiÕm","Anh Hïng KiÕm","Mé Danh Chi KiÕm","T©m Ma Liªn Hoµn Thñ ",3},
{"TuyÖt Kü cña Kim Lu©n Ph¸p V­¬ng tªn lµ ","Long T­îng B¸t Nh· C«ng","Kim Lu©n ThÇn C«ng","Ph¸p V­¬ng Ch­ëng","§¹t Ma C«ng",4},
{"Vò khÝ duy nhÊt mµ §å Long §ao vµ û Thiªn KiÕm kh«ng thÓ chÆt g·y","Th¸nh Háa LÖnh","TuyÕt Èm Cuån §ao","TuyÖt ThÕ H¶o KiÕm","Háa L©n KiÕm",4},
{"VÞ ®¹i hiÖp cã biÖt hiÖu Tø Mi Mao lµ ","Lôc TiÓu Phông","Lý TÇm Hoan","Së L­u H­¬ng","A Phi",4}, -- 230
{"LÖ BÊt H­ Ph¸t lµ c©u nãi ®Ó ca ngîi ai ?","Lý TÇm Hoan","Së L­u H­¬ng","NhiÕp Phong","Bé Kinh V©n",4},
{"Danh hiÖu B¾c HiÖp lµ cña","Qu¸ch TÜnh","Hång ThÊt C«ng","KiÒu Phong","Hoµng Dung",4},
{"Cha nu«i cña D­¬ng Qu¸ lµ ","¢u D­¬ng Phong","Hång ThÊt C«ng","Hoµng D­îc S­","Ch©u B¸ Th«ng",4},
{"B¸t Hoang Lôc Hîp Duy Ng· §éc T«n C«ng lµ tuyÖt kü cña","Thiªn S¬n §ång L·o","Lý Thu Thñy","H­ Tróc","§inh Xu©n Thu",4},
{"Ai ®­îc cho lµ ng­êi s¸ng t¸c ra bÝ kÝp Cöu ¢m Ch©n Kinh","Hoµng Th­êng","Chu ChØ Nh­îc","§éc C« CÇu B¹i","§«ng Ph­¬ng BÊt B¹i", 4},
{"Tr­¬ng V« Kþ lµ gi¸o chñ ®êi thø mÊy cña Minh Gi¸o ?","34","33","35","36",4},
{"Tr­¬ng V« Kþ ®­îc sinh ra ë ®©u","B¨ng Háa §¶o","Linh Xµ §¶o","Nói Vâ §ang","Minh Gi¸o",4},
{"Måm bß mµ kh«ng ph¶i måm bß. §è lµ con g× ?","èc Sªn","Bß Con","Hµ M·","Bß S¸t",4},
{"Võa b»ng h¹t ®ç, ¨n giç c¶ lµng. lµ con g× ?","Con Ruåi","Con Muçi","Con §om §ãm","Con Ve",4},
{"Lebron James lµ tuyÓn thñ NBA ®ang ®Çu qu©n cho ®éi","LA Lakers","Miami Heat","Golden State Warriors","Cleveland Cavaliers",4}, -- 240
{"Odell Beckham Jr lµ vËn ®éng viªn thÓ thao m«n","Bãng BÇu Dôc","Bãng §¸","Bãng Chµy","Bãng Ræ",4},
{"Stephen Curry mang sè ¸o mÊy","30","9","10","27",4},
{"§« VËt WWE nµo cã biÖt danh The Rainbow Hair Warrior","Jeff Hardy","Randy Orton","John Cena","Rey Mysterio",4},
{"ChiÕc L¸ Cuèi Cïng lµ t¸c phÈm v¨n häc cña nhµ v¨n nµo ?","OHenry","Arthur Cronquist","Dana Gould","Dennies Hopper",4},
{"Mãn ¨n trø danh cña ®Çu bÕp næi tiÕng Gordon RamSayNew lµ ","Beef Wellington","Kobe Steak","Fruit Parfait","Beignets",4},
{"Foie Gras lµ tõ chØ mãn ¨n nµo","Gan Ngçng","S­ên Cõu","C¸ TuyÕt HÊp","C¸ Trøng",4},
{"Ai lµ qu¸n qu©n Master Chef ViÖt Nam mïa ®Çu tiªn","Thanh Hßa","Th¸i Hßa","Quèc TrÝ ","Anh Th­ ",4},
{"Ai lµ qu¸n qu©n Master Chef Mü mïa ®Çu tiªn","Whitney Miller","Luca Manfe","Jennifer Behm","Claudia Sandoval",4},
{"Ai lµ qu¸n qu©n Master Chef Junior Mü mïa ®Çu tiªn","Alexander Weiss","Logan Guleff","Nathan Odom","Jasmine Stewart",4},
{"Trong Harry Potter, chóa tÓ Voldermort cã tÊt c¶ bao nhiªu Tr­êng Sinh Linh Gi¸ ","7","4","10","5",4}, -- 250
{"Tæ tiªn cña c¸c vÞ thÇn trong truyÒn thuyÕt NhËt B¶n lµ ","Izanagi","Izanami","Amaterasu","Tsukuyomi",4},
{"Qu¸i vËt Yamata no Orochi trong truyÒn thuyÕt NhËt B¶n lµ con r¾n cã mÊt ®Çu","8","7","9","10",4},
{"ChiÕn c«ng cuèi cïng trong 12 chiÕn c«ng cña Hercules tªn lµ ","B¾t con chã Cerberus","Con S­ Tö Nemea","Con r¾n Hydra","Con nai ë Cerynaea",4},
{"Phim ®iÖn ¶nh Ng­êi NhÖn ®Çu tiªn do ai thñ vai chÝnh ?","Tobey Maguire","Andrew Garfield","Tom Holland","Chris Evans",4},
{"Tam Quèc tËn quy…","T­ M· ý ","Gia C¸t L­îng","TriÖu Tö Long","Quan V©n Tr­êng",4},
{"§a t×nh tù cæ nan di hËn,…","DÜ hËn miªn miªn v« tuyÖt kú ","DÜ hËn lao ®ao v« tuyÖt kú ","DÜ hËn luyªn thuyªn v« tËn kú ","DÜ hËn ®au ®au ®Õn tËn cïng",4},
{"Con g¸i cña C«ng T«n ChØ vµ Cõu Thiªn XÝch lµ ","C«ng T«n Lôc Ng¹c","C«ng T«n §a T×nh","C«ng T«n Hoa N÷","C«ng T«n V« Song",4},
{"Con trai cña Qu¸ch TÜnh vµ Hoµng Dung lµ ","Qu¸ch Ph¸ Lç","Qu¸ch Phi Long","Qu¸ch ChÝnh Hång","Qu¸ch Ph¸ Thiªn",4},
{"Phu qu©n cña Qu¸ch Phï lµ ","Gia LuËt TÒ ","ThiÕu Nguyªn Qu©n","H¹ng ThiÕu Long","TriÖu ChÝ KÝnh",4},
{"Chiªu thøc hîp c«ng gi÷a NhiÕp Phong vµ Bé Kinh V©n lµ ","Ma Kha V« L­îng","Phong V©n Hîp ThÓ","Phong V©n XuÊt ThÕ ","Phong QuyÓn Tµn V©n",4}, -- 260
{"T« KhÊt Nhi lµ 1 trong nhãm 10 ng­êi cã tªn gäi lµ ","ThËp Hæ Qu¶ng §«ng","ThËp Hïng Trung Hoa","ThËp §¹i Hµo KiÖt","ThËp §¹i Tinh Hoa",4},
{"T¸c gi¶ cña bé truyÖn tranh Naruto lµ ","Kishimoto Masashi","Gosho Aoyama","Eiichiro Oda","Hatake Kakashi",4},
{"Nh©n vËt Star Lord trong vò trô Marvel cã tªn thËt lµ ","Peter Quill","Peter Paker","Chris Pratt","Stephen Strange",4},
{"Nh©n vËt ®èi lËp víi Deadpool cña Marvel ë vô trô DC lµ ","Deathstroke","Deadking","Deadman","Death",4},
{"Trong ThÇn Tho¹i B¾c ¢u, Jormungand cßn ®­îc gäi lµ ","World Serpent","Jor","Jormu","King of World",4},
{"Bé phim Ng­êi Trong Giang Hå cã tªn gèc lµ ","Cæ HoÆc Tö","T×nh Huynh §Ö","Tø H¶i Giai Huynh §Ö","TrÇn H¹o Nam truyÒn kú ",4},
{"Con trai cña Quan Vò tªn lµ ","Quan B×nh","Quan Tµi","Quan Thiªn","Quan H¶i",4},
{"BiÖt hiÖu cña M· Siªu trong Tam Quèc DiÔn NghÜa lµ ","CÈm M· Siªu","§¹i M· Siªu","ThÇn T­íng M· Siªu","ChiÕn M· Siªu",4},
{"T¹i ch­¬ng tr×nh §« VËt Mü WWE, ai lµ ng­êi ph¸ vì chuçi bÊt b¹i cña The Undertaker t¹i WrestleMania","Brock Lesnar","John Cena","Roman Reigns","Triple H",4},
{"Trong bé truyÖn tranh Naruto, tªn thËt cña Cöu VÜ Hå Ly lµ ","Kurama","Nine Tails","Shikamaru","Akamaru",4}, -- 270
{"Thanh kiÕm g¾n liÒn víi tªn tuæi cña V« Danh trong t¸c phÈm Phong V©n lµ ","Anh Hïng KiÕm","V« Danh KiÕm","Phong V©n KiÕm","Thiªn H¹ KiÕm",4},

}