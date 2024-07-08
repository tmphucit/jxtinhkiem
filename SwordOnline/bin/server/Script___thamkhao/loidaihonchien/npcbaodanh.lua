cost = 0


function main()
w,x,y = GetWorldPos()
if w == 58 then
SayNew("<color=green>Phong V©n Lo¹n ChiÕn <color>: Ta ë ®©y ®Ó phôc vô nh÷ng vÞ anh hïng dòng c¶m, d¸m ®­¬ng ®Çu víi nguy nan. Ng­¬i cã thùc sù muèn chóng tá m×nh kh«ng?",2,
--"NhËn th­ëng TuyÖt ThÕ Anh Hïng /nhanthuong",
"Ta muèn b¸o danh Phong V©n Lo¹n ChiÕn/thamgialoidai",
"Ta sÏ gÆp l¹i ng­¬i sau/no")

elseif w == 179 then
SayNew("<color=green>Phong V©n Lo¹n ChiÕn <color>: Ta ë ®©y ®Ó phôc vô nh÷ng vÞ anh hïng dòng c¶m, d¸m ®­¬ng ®Çu víi nguy nan. Ng­¬i cã thùc sù muèn chóng tá m×nh kh«ng?",2,
"Ta muèn vµo l¹i chiÕn tr­êng/vaolaichientruong",
"Ta sÏ gÆp l¹i ng­¬i sau/no")
end
end

function roikhoi()

end
function muanguhoa()
Sale(7)
end

function vaolaichientruong()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
if gio == 19 then
	if phut >= 30 and phut < 55 then
			vt = RandomNew(1, getn(TOADO))
			NewWorld(179, TOADO[vt][2]/32, TOADO[vt][3]/32)
			SetFightState(1)
			SetPKState(2)
			BlockPKState(1)
			SetCurCamp(4)
			SetCreateTeam(0);
			SetPunish(1);
			AddSkillEffect(504,1,5*18)
			SetDeathScript("\\script\\loidaihonchien\\bigiet.lua");	
			Msg2World("<color=yellow>"..GetName().." <color=red>®· tham gia ®Êu tr­êng",179)

	elseif (phut < 10) then
	Talk(1,"","Thêi gian b¸o danh cßn l¹i: <color=pink>"..(10 - phut).." Phót!")
	end
else
Talk(1,"","Thêi gian thi ®Êu ®· kÕt thóc, kh«ng thÓ vµo !")
end
end

function nhanthuong()
if GetName() ~= "Yamateeee" then
Talk(1,"","B¹n kh«ng ph¶i ®¹i hiÖp Yamateeee, kh«ng thÓ nhËn th­ëng")
return
end
SayNew("Vui lßng chän phÇn th­ëng: ",3,
"Set HiÖp Cèt /nhanthuong1",
"Set Nhu T×nh /nhanthuong1",
"Tho¸t./no")
end
function nhanthuong1(nsel)
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
if GetTask(940) ~= 0 then
return
end
if GetName() == "" then
	SetTask(940,1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." nhËn phÇn th­ëng TuyÖt ThÕ Anh Hïng:")

	if nsel == 0 then
					idxitem = AddItem(0,2,31,1,0,0,0) -- AO HC
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
					
					idxitem = AddItem(0,4,5,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
		
					idxitem = AddItem(0,9,4,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
				
					idxitem = AddItem(0,3,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	else
					idxitem = AddItem(0,9,5,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
	
					idxitem = AddItem(0,4,4,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
					
					idxitem = AddItem(0,3,5,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")
					
					idxitem = AddItem(0,2,32,2,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem, 2021, 10 , ngay + 14 , gio)
					Msg2SubWorld("<color=yellow>- "..GetNameItemBox(idxitem).."")

	end

	
end
end

function no()
end
ListEffect = {273,15,213, 33,42, 109, 100, 150, 130, 277, 157, 171, 178, 173  }
function checkEffect()
for i=1,getn(ListEffect) do
		if GetLevelSkillEffectMan(ListEffect[i]) > 0 then
				return ListEffect[i]
		end
end
return 0
end
function thamgialoidai()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))


if GetPK() == 10 then
Talk(1,"","Téi nghiÖt cña ng­¬i qu¸ nÆng, kh«ng thÓ tham gia sù kiÖn TuyÖt ThÕ Anh Hïng")
return
end
if GetItemCount(685) == 0 then
Talk(1,"","Ng­¬i kh«ng cã VÐ tham dù TuyÖt ThÕ Anh Hïng, kh«ng thÓ tham gia !")
return
end


sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B¹n kh«ng ®­îc mang D­îc PhÈm ®Æc biÖt vµo l«i ®µi, h·y sö dông hÕt míi cã thÓ vµo !")
Msg2Player("Cã "..sl1.." Ngò Hoa Ngäc Lé Hoµn §Æc BiÖt !")
Msg2Player("Cã "..sl2.." Cöu ChuyÓn Hoµn Hån §an §Æc BiÖt !")
Msg2Player("Cã "..sl3.." Håi Thiªn T¸i T¹o §¬n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B¹n vui lßng ®¨ng nhËp l¹i ®Ó <color=yellow>lo¹i bá tÊt c¶ HiÖu øng <color>cßn hiÖu qu¶ !")
Msg2Player("M· ID Effect: "..effect.."")
return
end

if gio ~= 19 then
Talk(1,"","Phong V©n Lo¹n ChiÕn:\nThêi gian b¸o danh:<color=red>19h25 - 19h35<color>\nThêi gian tham chiÕn: <color=red>19h35 - 19h55")
return
end
	if phut >= 25 and phut < 35 then
			DelItem(685)		
	
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/LogLoiDaiHonChien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
	
			vt = RandomNew(1, getn(TOADO))
			NewWorld(179, TOADO[vt][2]/32, TOADO[vt][3]/32)
			LeaveTeam()
			SetFightState(0)
			SetPKState(1)
			BlockPKState(1)
			SetCurCamp(4)
			SetCreateTeam(0);
			SetTask(943,0)
			SetPunish(1);
			SetLogoutRV(1);
			SetRevPos(59)
			SetDeathScript("\\script\\loidaihonchien\\bigiet.lua");	

		Msg2Player("§¨ng ký b¸o danh thµnh c«ng. H·y t×m vÞ trÝ thuËn lîi cho m×nh ®Ó c«ng kÝch.")
		Msg2SubWorld("<color=pink>"..GetName().." ®· b¸o danh Phong V©n Lo¹n ChiÕn")


	else
		Talk(1,"","Thêi gian b¸o danh Phong V©n Lo¹n ChiÕn vµo lóc 19h25 - 19h35")
	end
	
end


TOADO = {
{179,52032,101024},
{179,51744,101280},
{179,51488,101696},
{179,51136,101696},
{179,51328,102304},
{179,50752,102368},
{179,51104,102656},
{179,51456,103040},
{179,51712,102816},
{179,51584,102432},
{179,52000,102880},
{179,51808,103232},
{179,52096,103552},
{179,52224,103872},
{179,52480,104064},
{179,52704,104288},
{179,52928,104480},
{179,53152,104192},
{179,52928,103808},
{179,52640,103648},
{179,52320,103392},
{179,52224,103040},
{179,52384,102688},
{179,52128,102464},
{179,52288,102144},
{179,52192,101696},
{179,51968,101376},
{179,52480,101696},
{179,52704,101408},
{179,52928,101792},
{179,52672,101824},
{179,52832,102272},
{179,52576,102304},
{179,53152,102016},
{179,53408,102240},
{179,53568,102528},
{179,53792,102688},
{179,54016,102880},
{179,54272,103168},
{179,54048,103328},
{179,53696,103584},
{179,53536,103776},
{179,53216,103648},
{179,53088,103296},
{179,52896,103072},
{179,52608,103328},
{179,53152,102752},
{179,53408,102944},
{179,53664,103104},
}