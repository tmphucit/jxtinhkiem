taytuy = 196
Include("\\script\\Global\\doimaump.lua")
function main()
if GetTask(196) < 2 then
roidao2()
elseif GetTask(196) == 2 then
SayNew("<color=green>TÈy Tuû §¹i S­ <color> §¹i hiÖp ®­îc tÈy tuû miÔm phİ: ",6,
"TÈy ®iÓm kü n¨ng/taykn",
"TÉy ®iÓm tiÒm n¨ng/taytn",
"TÉy ®iÔm kü n¨ng vµ tiÒm n¨ng/taykntm",
--"ChuyÔn tr¹ng th¸i PK/chuyenpk",
"Rêi ®·o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 3 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Thuû Tinh",4,
"TÈy ®iÔm kü n¨ng/taykn",
--"ChuyÓn tr¹ng th¸i PK/chuyenpk",
"Rêi ®¶o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 4 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Tinh Hång B¶o Th¹ch",4,
"TÉy ®iÓm tiÒm n¨ng/taytn",
--"ChuyÓn tr¹ng th¸i PK/chuyenpk",
"Rêi ®¶o tÈy tuû/roidao",
"Tho¸t./no")
elseif GetTask(196) == 5 then
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n ®· lªn ®¶o b»ng c¸ch dïng Thuû Tinh vµ Tinh Hång B¶o Th¹ch",6,
"TÉy ®iÓm kü n¨ng/taykn",
"TÉy ®iÓm tiÒm n¨ng/taytn",
"TÉy ®iÔm kü n¨ng vµ tiÒm n¨ng/taykntm",
--"ChuyÔn tr¹ng th¸i PK/chuyenpk",
"Rêi ®·o tÈy tuû/roidao",
"Tho¸t./no")
else
SayNew("<color=red>TÈy Tuû §¹i S­ <color> B¹n bŞ lçi lag täa ®é. tù ®éng move lªn ®¶o tÈy tñy ",2,
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
end
function roidao2()
doimaump()
SetFightState(0)
NewWorld(53,200*8,200*16)
SetRevPos(19);
Msg2Player("Ngåi yªn! Chóng ta ®ang trë vÒ ba l¨ng huyÖn...")
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
Msg2Player("HÑn gÆp l¹i quı kh¸ch ..........")
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
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end

