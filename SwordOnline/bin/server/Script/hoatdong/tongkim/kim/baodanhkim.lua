Include("\\\script\\hoatdong\\tongkim\\headtime.lua")
tienvan = 50000
dangcap = 80

function baodanhkim_main()
dofile("script\\hoatdong\\tongkim\\kim\\baodanhkim.lua")
if GetExp() <= (-GetLevelExp()/2) then
Talk(1,"","Kinh nghiÖm d­íi -50%, kh«ng thÓ tham gia Tèng Kim")
return
end

h,m,s = GetTimeNew()
Msg2Player("<color=green>Chó ı: Admin sÏ lu©n phiªn kiÓm tra Post §iÓm Tèng Kim Liªn Tôc. Xö lı: <color=yellow>Block Account<color=green> khi ph¸t hiÖn")


	if GetLevel() < 80 then
		Talk(1,"","§¼ng cÊp tõ 80 trë lªn míi cã thÓ vµo Tèng Kim §¹i ChiÕn")
		return
	end

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang * 1000 + ngay
if time < GetTask(1) then
	Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ®ang trong thêi gian bŞ cÊm tham gia Tèng Kim. Vui lßng quay l¹i vµo ngµy mai !")
return
end
SetTask(1,0)

	if GetGlbMissionV(60) == 0 then
		SayNew("§¹i qu©n cña ta vÉn ch­a xuÊt ph¸t! H·y t¹m thêi nghØ ng¬i vµ ®îi tin !",1,"Tho¸t./no")
	else
		if GetTask(123) == GetGlbMissionV(61) and GetTask(518) < 5 then
			if GetTask(12) == 2 then
				SayNew("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y ®­a ta trë l¹i chiÕn tr­êng/trolaiTK2","§Ó ta suy nghÜ l¹i/no")
			elseif GetTask(12) == 1 then
				SayNew("Tªn Nam man kia, c¶ gan th©m nhËp vµo l·nh ®Şa ®¹i Kim, râ rµng lµ tù t×m c¸i chÕt!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· ®Çu qu©n cho Tèng quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")
			else
				SayNew("Ng­¬i ®· tù ı rêi khái chiÕn tr­êng lóc chiÕn sù v× thÕ kh«ng thÓ tiÕp tôc tham gia trËn chiÕn nµy. Vui lßng quay trë l¹i vµo nh÷ng trËn tiÕp theo nhĞ!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· rêi khái chiÕn tr­êng lóc ®ang chiÕn sù v× thÕ h·y rêi khái ®©y vµ quay l¹i vµo trËn tiÕp theo ")
			end
		else
			if GetTask(518) >= 5 then
				SetTask(123,0)
				Msg2Player("<color=pink>B¹n bŞ reset trËn ®Êu h«m nay do bŞ xö lı AFK 5 lÇn")
			end
			SayNew(""..returnType()..", hìi c¸c vŞ dòng sÜ Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®Õn. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, nµo ng­êi anh em cßn chÇn chõ g× n÷a!",2,"Ta tham gia! §iÓm tİch lòy trë vÒ: 0/baodanh2","Tho¸t/no")
		end
	end;
end

function baodanh2()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		SayNew("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y cho ta tham gia/thamgiaTK2","§Ó ta suy nghÜ l¹i/no")
	end
	end
end

function thamgiaTK2()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		-- if tongkim_checkphe(2) == 1 then
			-- Talk(1,"","IP cña b¹n ®· cã nh©n vËt theo phe Tèng, b¹n kh«ng thÓ gia nhËp phe Kim")
			-- return
		-- end
		-- if tongkim_checksoluong() >= 2 then
			-- Talk(1,"","IP cña b¹n ®· cã 2 nh©n vËt ®¨ng kı Tèng Kim h«m nay, kh«ng thÓ ®¨ng kı thªm !")
			-- return
		-- end
		
		if GetNumberNameInCpuTK() >= 1 then
			Talk(1,"","HiÖn t¹i m¸y cña b¹n ®· cã 1 nh©n vËt tham gia Tèng Kim, kh«ng thÓ thªm 1!")
			return
		end
		thamgiakim(1)	
	end
	end
end
function trolaiTK2()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) == GetGlbMissionV(61) then
	if GetTask(12) == 2 then
		-- if tongkim_checkphe(2) == 1 then
			-- Talk(1,"","IP cña b¹n ®· cã nh©n vËt theo phe Tèng, b¹n kh«ng thÓ gia nhËp phe Kim")
			-- return
		-- end
		-- if tongkim_checksoluong() >= 2 then
			-- Talk(1,"","IP cña b¹n ®· cã 2 nh©n vËt ®¨ng kı Tèng Kim h«m nay, kh«ng thÓ ®¨ng kı thªm !")
			-- return
		-- end
		if GetNumberNameInCpuTK() >= 1 then
			Talk(1,"","HiÖn t¹i m¸y cña b¹n ®· cã 1 nh©n vËt tham gia Tèng Kim, kh«ng thÓ thªm !")
			return
		end
		thamgiakim(2)	
		
	end
	end
	end
end

function returnType()
if GetGlbMissionV(60) == 500 then
return "Giai ®o¹n b¸o danh H×nh thøc Cõu S¸t"
elseif GetGlbMissionV(60) == 1000 then
return "Giai ®o¹n tham chiÕn H×nh thøc Cõu S¸t"
elseif GetGlbMissionV(60) == 1500 then
return "Giai ®o¹n b¸o danh H×nh thøc B¶o VÖ Nguyªn So¸i"
elseif GetGlbMissionV(60) == 2000 then
return "Giai ®o¹n tham chiÕn H×nh thøc B¶o VÖ Nguyªn So¸i"
else
return "Error !"
end
end

function thamgiakim(num)
w,x,y = GetWorldPos()
tienvan = 0
if GetLevel() >= 120 then
tienvan = 200000
elseif GetLevel() >= 100 then
tienvan = 100000
elseif GetLevel() >= 90 then
tienvan = 50000
end
tienvan = 0
if GetCash() < tienvan then
	Talk(1,"","<color=green>Kim Mé Binh: <color>: Muèn tham gia chiÕn tr­êng Tèng Kim h·y ñng hé "..tienvan.." l­îng!")
return
end

h,m,s = GetTimeNew()
if (GetGlbMissionV(84)-GetGlbMissionV(83) >= 2) then
if (m < 59 and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000)) or (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then
slcb = GetGlbMissionV(84)-GetGlbMissionV(83)
Talk(1,"","HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..GetGlbMissionV(84).." ng­êi<color>, ®Şch ph­¬ng lµ <color=yellow>"..GetGlbMissionV(83).." ng­êi<color>, c¸ch biÖt "..slcb.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Tèng binh! Tr¸ng sÜ xin ®îi trËn sau nhĞ!")
return
end
end

if GetGlbMissionV(60) ~= 1000 and GetGlbMissionV(60) ~= 2000 and GetGlbMissionV(60) ~= 500 and GetGlbMissionV(60) ~= 1500 then
Talk(1,"","Error: Lçi b¸o danh 60 1000 2000 !")
return
end
if w ~= 60 then
Talk(1,"","Error: §ang kh«ng ë trong b¶n ®å b¸o danh !")
return
end
if GetGlbMissionV(84) >= 150 then
Talk(1,"","Sè l­îng qu©n Kim ®· ®ñ 150 ng­êi, kh«ng thÓ tham gia thªm !")
return
end



LeaveTeam()
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu PK
SetTask(40,1) -- Task Xac nhan dang di tong kim
SetTask(21,0)

SetTask(452,0)
SetTask(453,0)
SetTask(454,0)

SetTask(531, GetTask(100))
-- Reset Task Xep Hang
if num == 1 then
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)
SetTask(123,GetGlbMissionV(61))  -- Xac nhan tran dau hien tai
SetTask(19,1) -- Danh Hieu Cap 1
Pay(tienvan)
SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
SetTask(517, 0) -- Reset tu vong lien tuc
SetTask(518, 0) -- Reset AFK dis lien tuc

--for k=1,5 do
--	AddEventItem(106) -- Mien phi 5 
--end
--Msg2Player("B¹n nhËn ®­îc 5 LÔ Bao Ngò Hoa Ngäc Lé Hoµn MiÔn Phİ !")

Msg2Player("<color=yellow>L­u ı: Vµo AutoPlay -> Tab Tèi ¦u -> Tick vµo Ng­êi Ch¬i ®Ó kh«ng bŞ giÊt khi PK chç ®«ng ng­êi !")
if tongkim_checkname() == 0 then
		KhoiTaoDanhSach(2)
	end
	
end

SetRank(220+GetTask(19)*2)
AddMagic(413,GetTask(19))

Msg2World(""..GetName().." ®· vµo chiÕn tr­êng ")
SetPunish(0)
SetFightState(0)
SetCreateTeam(0);
SetLogoutRV(1);
SetPKState(1)
BlockPKState(1)
SetTaskTemp(18,0) -- Reset thoi gian hien tai

SetGlbMissionV(84,GetGlbMissionV(84)+1)

SetCamp(2)
SetCurCamp(2)
SetRevPos(2);
	Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dŞch míi, ®iÓm tİch ph©n hiÖn giê sÏ lµ 0!")
	Msg2Player("Hoan nghªnh! Hoan nghªnh! Kim quèc kh«ng thiÕu anh tµi!")
	Msg2Player("HiÖn thêi qu©n sè 2 bªn lµ: Tèng: "..GetGlbMissionV(83)..", Kim: "..GetGlbMissionV(84).." ")


	if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	NewWorld(33, 1688, 3074);
	else
	NewWorld(37, 1688, 3074);
--	NewWorld(61, 2047, 2592);
	end
end



function no()
end;
