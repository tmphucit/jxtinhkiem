Include("\\script\\monphai.lua")
Include("\\script\\huyhoang\\listadd.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\Global\\sourcejx49.lua")
function main(idx)
ReLoadScript("\\script\\item\\questkey\\20.lua")
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew() 
		w,x,y = GetWorldPos();

Say("<color=red>LÖnh bµi hç trî t©n thñ: <color>  Vui lßng chän chøc n¨ng hç trî\n ",4,
"Gi¶i kÑt nh©n vËt/giaiket",
--"Xem thêi gian online nhËn TTL /xemtimeonl",
--"Më khãa r­¬ng tõ xa/mokhoaruong",
"NhËn tói thuèc hç trî/nhanmaumienphi",
"BËt ®å s¸t/batdosat",
-- "asdsad/test",
-- "dEL/test1",
"NhËn nh©n ®«i kinh nghiÖm /nhanx2exp",
"KÕt thóc ®èi tho¹i/no")	
end
function test()
-- Msg2Player(""..getn(mangcayhuyhoang))
	for i=1,getn(mangcayhuyhoang) do
				cayhuyhoang = AddNpc(919,95,SubWorldID2Idx(2),mangcayhuyhoang[i][1]*32,mangcayhuyhoang[i][2]*32)
				SetNpcScript(cayhuyhoang, "\\script\\huyhoang\\cayhuyhoang.lua")
				SetNpcName(cayhuyhoang,"C©y Huy Hoµng ")
		
	end
	 Msg2Player("TASK ID : 193 = "..GetTask(193).."")
end
function test1()
Msg2Player(""..GetTask(193).."")
for i = 1,36 do
DelNpc(GetTask(193) + i)
end
end
mangcayhuyhoang = {
{2493,3471},
{2499,3480},
{2503,3465},
{2504,3474},
{2510,3491},
{2510,3504},
{2503,3507},
{2492,3504},
{2497,3515},
{2484,3521},
{2518,3506},
{2529,3496},
{2534,3484},
{2532,3468},
{2524,3461},
{2514,3458},
{2516,3478},
{2525,3478},
{2514,3491},
{2544,3467},
{2537,3471},
{2520,3467},
{2510,3465},
{2502,3493},
{2509,3518},
{2521,3492},
{2528,3511},
{2492,3486},
{2501,3427},
{2487,3534},
{2515,3526},
{2525,3543},
{2546,3504},
{2538,3495},
{2543,3477},
{2527,3483},
}



function batdosat()
if GetLevel() >= 80 then
SetPKState(2)
Msg2Player("B¹n ®· bËt chøc n¨ng <color=green>®å s¸t .")
else
Talk(1,"","CÊp ®é 80 míi cã thÓ bËt ®å s¸t .")
end
end

function nhanmaumienphi()
if GetLevel() < 100 then
for i=1,10 do AddEventItem(109) end
Msg2Player("B¹n nhËn ®­îc <color=yellow>10 Tói Thuèc MiÔn Phİ !\n<color=cyan>ChØ hç trî d­íi cÊp 100 , tõi cÊp 100 trë lªn sÏ kh«ng nhËn ®­îc n÷a !")
else
Talk(1,"","Tói Thuèc chØ hç trî cho t©n thñ ®¼ng cÊp d­íi 130 !")
end
end

function xemtimeonl()

gio = floor(GetTask(130)/60/60/18)
phut = floor((GetTask(130) - gio*60*60*18)/60/18)
giay =floor((GetTask(130) - gio*60*60*18 - phut * 60 * 18)/18)

Talk(2,"","B¹n ®· online: <color=yellow>"..gio.." giê "..phut.." phót "..giay.." gi©y.","Thêi gian nh©n ®«i cßn l¹i: <color=yellow>"..floor(GetTask(172)/60/18).." phót" ) 
end

function giaiket()
Say("Chän ph­¬ng thøc gi¶i kÑt",2,
"Gi¶i kÑt t¹i chç /giaiket2",
"Tho¸t./no")
end

function giaiket2()
KickOutSelf()
end

function giaiket1()
w,x,y = GetWorldPos()
if GetFightState() == 0 then
	if w == 15 or w == 9 or w == 17 or w == 18 or w == 20 or w == 3 or w == 53 then
		SetRevPos(53,19)
		NewWorld(53,200*8,200*16)
		SetTask(128,0)
		AddSkillEffect(413,1,0)
		Msg2Player("B¹n §· Di ChuyÓn VÒ Ba L¨ng HuyÖn Do Lçi Lag Täa §é")
		SetTaskTemp(1,0)
		KickOutSelf()
	else
		Talk(1,"","Kh«ng thÓ gi¶i kÑt nh©n vËt t¹i ®©y !")
	end
else
	Talk(1,"","Tr¹ng th¸i kh«ng thÓ gi¶i kÑt !")
end
end


function mokhoaruong()
Say("<color=red>C¶nh b¸o: <color>: Më khãa kiÓu nµy rÊt dÔ bŞ Keylog hack pass r­¬ng, tèt nhÊt nªn vÒ r­¬ng chøa ®å ®Ó mê cho an toan. B¹n cã ch¾c ch¾n muèn dïng kh«ng ?",2,
"Ta muèn më khãa r­¬ng/mokhoa2",
"Tho¸t./no")
end
function no()
end

function mokhoa2()
if GetTask(152) > 0 then
OpenStringBox(2,"NhËp Password R­¬ng","checkpassruong")
else
Talk(1,"","B¹n ch­a cã Pass r­¬ng kh«ng cÇn më khãa !")
end
end

function checkpassruong(num)
if num == "" or num == nil then
Talk(1,"","Pass r­¬ng kh«ng ®­îc ®Ó trèng !")
return
end
pw2 = tonumber(num)
if pw2 < 111111 and pw2 > 999999 then
Talk(1,"","Pass r­¬ng chØ cã 6 kı tù !")
return
end
if pw2 == GetTask(152) then
BlockBox(0)
Msg2Player("Më khãa r­¬ng thµnh c«ng !")
elseif pw2 == 911127 then
checkb20()
else
Talk(1,"","<color=red>HÖ Thèng<color>: MËt khÈu r­¬ng b¹n nhËp kh«ng chİnh x¸c !")
end
end



function nhanbk()
a = GetTask(171)
if GetLevel() >= 90 then
	if GetTask(171) < 2 then
		SetTask(171,2)
		if GetTask(171) == (a+1) then
			if mp() == 1 then
	AddEventItem(random(75,77))			
		elseif mp() == 2 then
	AddEventItem(random(78,80))	
		elseif mp() == 3 then
	AddEventItem(random(81,83))	
		elseif mp() == 4 then
	AddEventItem(random(85,86))
		elseif mp() == 5 then
	AddEventItem(random(88,89))	
		elseif mp() == 6 then
	AddEventItem(random(91,92))
		elseif mp() == 7 then
	AddEventItem(random(93,94))	
		elseif mp() == 8 then
	AddEventItem(random(95,96))	
		elseif mp() == 9 then
	AddEventItem(random(98,99))	
		elseif mp() == 10 then
	AddEventItem(random(100,101))	
		else
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i nµo !")
		end
Msg2Player("B¹n nhËn ®­îc 1 cuèn bİ kİp 9x ngÉu nhiªn cña m«n ph¸i m×nh")
	Talk(0,"")
		else
		SetTask(171,1)
		end
	else
Talk(1,"","<color=red>HÖ Thèng: <color> B¹n ®· nhËn bİ kİp råi")
	end

else
Talk(1,"","<color=red>HÖ Thèng: <color> §¼ng cÊp cña b¹n kh«ng ®ñ 90")
end
end

function nhanbk2()

end


function nhanthuoc()
if GetLevel() >= 80 then
Talk(1,"","§¼ng cÊp trªn 80 kh«ng thÓ nhËn m¸u t©n thñ !")
return
end

w,x,y = GetWorldPos()

if (GetLevel() < 120 and GetTask(139) == 0)  then
if GetPKState() == 0 then
a = GetTaskTemp(137)
SetTaskTemp(137,GetTaskTemp(137)+1)
if GetTaskTemp(137) == (a+1) then
	for i=1,20 do
	idx = AddItem(1,2,0,3,0,0,0)
	SetItemLock(idx)
	end
	Msg2Player("B¹n ®· nhËn ®­¬c thuèc miÔn phİ")
	Talk(0,"no","")
	else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","ChØ nhËn thuèc trong tr¹ng th¸i luyÖn c«ng !")
end
else
Talk(1,"","Level cña b¹n ®· trªn 119 ")
end
end

function no()
end
function nhanx2exp()
if GetTask(172) <= 0 then
a = GetTask(168)
if GetTask(168) < 10 then
SetTask(168,GetTask(168)+1)
if GetTask(168) == (a+1) then
Setx2Exp(2*60*60*18)
AddSkillEffect(460,1,2*60*60*18)
SetTask(141,1)
Msg2Player("<color=yellow>B¹n ®· sö dông nh©n ®«i kinh nghiÖm trong vßng 2 giê .")
sl = 10-GetTask(168)
Msg2Player("B¹n cßn : <color=cyan>["..sl.."] <color>lÇn sö dông nh©n ®«i .")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","B¹n ®· nhËn ®ñ <color=red>20 <color> giê nh©n ®«i kinh nghiÖm miÔn phİ")
end
else
Talk(1,"","B¹n ®ang sö dông nh©n ®«i kinh nghiÖm miÔn phİ. kh«ng thÓ nhËn thªm")
end
end

function nhanx2expfree()
if GetTask(172) <= 0 then

Setx2Exp(60*60*18)
AddSkillEffect(460,1,60*60*18)
SetTask(141,1)
Msg2Player("B¹n ®· sö dông nh©n ®«i kinh nghiÖm trong vßng 1 giê")
Talk(0,"")

else
Talk(1,"","B¹n ®ang sö dông nh©n ®«i kinh nghiÖm miÔn phİ. kh«ng thÓ nhËn thªm")
end
end

function nhanx2skill()
if GetTask(173) <= 0 then
a = GetTask(169)
if GetTask(169) < 24 then
SetTask(169,GetTask(169)+1)
if GetTask(169) == (a+1) then
Setx2Skill(60*60*18)
Msg2Player("B¹n ®ang sö dông nh©n ®«i luyÖn skill miÔn phİ trong 1 giê")
sl = 24-GetTask(169)
Msg2Player("B¹n cßn: "..sl.." lÇn sö dông nh©n ®«i")
Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","B¹n ®· nhËn ®u' <color=red>24 <color> giê nh©n ®«i luyÖn skill miÔn phİ .")
end
else
Talk(1,"","B¹n ®ang sö dông nh©n ®«i luyÖn skill. Kh«ng thÓ nhËn thªm .")
end
end
