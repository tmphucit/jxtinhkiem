taytuy = 196
Include("\\script\\Global\\doimaump.lua")
function main()
if GetTask(196) < 2 then
roidao2()
elseif GetTask(196) == 2 then
SayNew("<color=green>TÈy Tuû §¹i S­ <color> §¹i hiÖp ®­îc tÈy tuû miÔm phÝ: ",5,
"TÈy ®iÓm kü n¨ng/taykn",
"TÉy ®iÓm tiÒm n¨ng/taytn",
"TÉy ®iÔm kü n¨ng vµ tiÒm n¨ng/taykntm",
--"ChuyÔn tr¹ng th¸i PK/chuyenpk",
"Rêi ®·o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 3 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Thuû Tinh",3,
"TÈy ®iÔm kü n¨ng/taykn",
--"ChuyÓn tr¹ng th¸i PK/chuyenpk",
"Rêi ®¶o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 4 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Tinh Hång B¶o Th¹ch",3,
"TÉy ®iÓm tiÒm n¨ng/taytn",
--"ChuyÓn tr¹ng th¸i PK/chuyenpk",
"Rêi ®¶o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 5 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Thuû Tinh vµ Tinh Hång B¶o Th¹ch",5,
"TÉy ®iÓm kü n¨ng/taykn",
"TÉy ®iÓm tiÒm n¨ng/taytn",
"TÉy ®iÔm kü n¨ng vµ tiÒm n¨ng/taykntm",
--"ChuyÔn tr¹ng th¸i PK/chuyenpk",
"Rêi ®·o tÈy tuû/roidao",
"Tho¸t./no")
else
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n bÞ lçi lag täa ®é. tù ®éng move lªn ®¶o tÈy tñy ",2,
"Rêi ®·o tÈy tuû/roidaofree",
"Tho¸t./no")
end
end
function taykntm()
SayNew("<color=green>TÈy Tuû §¹i S­ <color> B¹n ch¾c ch¾n muèn tÈy tiÒm n¨ng vµ kü n¨ng chø?",2,
"Ta ch¾c ch¾n/tayca2",
"Tho¸t./no")
end
function roidaofree()
SetFightState(0)
doimaump()
NewWorld(53,200*8,200*16)
SetRevPos(19);
Msg2Player("Ngåi yªn! Chóng ta ®ang trë vÒ ba l¨ng huyÖn...")
	LoginLog = openfile("Data/RoiDaoTayTuyFree.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function roidao2()
doimaump()
SetFightState(0)
NewWorld(53,200*8,200*16)
SetRevPos(19);
Msg2Player("Ngåi yªn! Chóng ta ®ang trë vÒ ba l¨ng huyÖn...")
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/RoiDaoTayTuy.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function roidao()
SayNew("<color=green>TÈy Tuû §¹i S­ <color> B¹n ch¾c ch¾n muèn rêi khái ®¶o tÈy tuû chø?",2,
"Ta ch¾c ch¾n/roidao2",
"Tho¸t./no")
end

function chuyenpk()
SayNew("<color=green>TÈy Tuû §¹i S­ <color> Vui lßng chän tr¹ng th¸i",3,
"LuyÖn c«ng/luyencong",
"ChiÕn ®Êu/pk",
"Tho¸t./no")
end
function pk()
SetCamp(4)
SetCurCamp(4)
SetFightState(1)
Msg2Player(">>>>>>>>>>>>>>> §· chuyÓn tr¹ng th¸i ChiÕn §Êu")
end
function luyencong()
SetCurCamp(1)
SetCamp(1)
SetFightState(0)
Msg2Player(">>>>>>>>>>>>>>> §· chuyÓn tr¹ng th¸i LuyÖn C«ng")
end
function tayca2()
TayTiemNang()
TayKyNang()
end
function taytn()
SayNew("<color=green>TÈy Tuû §¹i S­ <color> B¹n ch¾c ch¾n muèn tÈy ®iÓm tiÒm n¨ng chø?",2,
"Ta ch¾c ch¾n/TayTiemNang",
"Tho¸t./no")
end
function taykn()
SayNew("<color=green>TÈy Tuû §¹i S­ <color> B¹n ch¾c ch¾n muèn tÈy ®iÓm kü n¨ng chø?",2,
"Ta ch¾c ch¾n/TayKyNang",
"Tho¸t./no")
end

function no()
Msg2Player("HÑn gÆp l¹i quý kh¸ch ..........")
end

function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + GetTask(200)*10 + getTiemNang() + getTiemNangGame() + getTiemNangGame1() + getTiemNangGame2()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang() + getKyNangGame() + getKyNangGame1()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 200
elseif GetTask(139) == 2 then
return 500
elseif GetTask(139) == 3 then
return 800
elseif GetTask(139) == 4 then
return 1200
elseif GetTask(139) == 5 then
return 1700
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 40
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 160
elseif GetTask(139) == 4 then
return 180
elseif GetTask(139) == 5 then
return 200
else
return 0
end
end


function getTiemNangGame2()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 2000
else
return 0
end
end


function getTiemNangGame1()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" or GetAccount() == ""  then
return 2000
else
return 0
end
end



function getTiemNangGame()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 2500
else
return 0
end
end

function getKyNangGame()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" then
return 200
else
return 0
end
end

function getKyNangGame1()
if GetAccount() == "" or GetAccount() == "" or GetAccount() == "" or GetAccount() == ""  then
return 500
else
return 0
end
end

