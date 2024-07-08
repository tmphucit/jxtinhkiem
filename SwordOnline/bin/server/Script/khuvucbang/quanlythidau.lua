function main()
SayNew("<color=green>Qu¶n Lý Thi §Êu:<color> Vui lßng chän khu vùc thi ®Êu ?",4,
"§­a ta vµo khu vùc thi ®Êu 1 /chiendau1",
"§ua ta vµo khu vùc thi ®Êu 2 /chiendau1",
"Th«ng tin tÝnh n¨ng thi ®Êu bang héi/thongtin",
"Tho¸t./no")
end
function thongtin()
Talk(3,"","Thi ®Êu b¹ng héi chia lµm 2 khu vùc, thµnh viªn bang héi cã thÓ chän 1 trong 2 khu vùc ®Ó vµo",
"Khi vµo khu vùc chiÕn ®Êu, hÖ thèng tù ®éng ®æi sang mµu s¸t thñ vµ tr¹ng th¸i chiÕn ®Êu b¾t buéc",
"Thi ®Êu chÕt sÏ kh«ng bÞ mÊt ®iÓm kinh nghiÖm ........ ")
end

function no()
end
function chiendau1(nsel)
SetTaskTemp(1, nsel+1)
SetTaskTemp(40,GetCurCamp())
SayNew("<color=green>Qu¶n Lý Thi §Êu:<color> Chän phe : ",5,
"ChÝnh Ph¸i/doimau11",
"Tµ Ph¸i/doimau11",
"Trung LËp /doimau11",
"S¸t Thñ/doimau11",
"Tho¸t./no")
end
function doimau11(nsel)
i = GetTaskTemp(1)
w,x,y = GetWorldPos()
SetPunish(1);
SetFightState(1)
SetCurCamp(nsel + 1)
SetCamp(nsel + 1)
SetDeathScript("\\script\\khuvucbang\\tunanthidau.lua")
SetTempRevPos(w,(x+5)*32,(y+5)*32)
SetPKState(1)
BlockPKState(1)
SetLogoutRV(1);

if i == 1 then
	Msg2World("<color=yellow>"..GetName().." <color=red>®· tham gia vµo khu vùc thi ®Êu 1 ")
	xs = random(1,2)
	if xs == 1 then
	NewWorld(w,1554,3250)
	else
	NewWorld(w,1570,3265)
	end
else
	Msg2World("<color=yellow>"..GetName().." <color=red>®· tham gia vµo khu vùc thi ®Êu 2 ")
	xs = random(1,2)
	if xs == 1 then
	NewWorld(w,1668,3158)
	else
	NewWorld(w,1652,3143)
	end
end
end
