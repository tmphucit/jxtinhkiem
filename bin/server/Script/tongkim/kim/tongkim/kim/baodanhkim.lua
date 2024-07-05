Include("\\script\\tongkim\\headtime.lua")
tienvan = 20000
dangcap = 60

function main()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang * 1000 + ngay
if time < GetTask(1) then
	Talk(1,"","<color=red>HÖ Thèng<color>: B¹n ®ang trong thêi gian bŞ cÊm tham gia Tèng Kim. Vui lßng quay l¹i vµo ngµy mai !")
return
end
SetTask(1,0)

	if GetGlbMissionV(60) == 0 then
		Say("§¹i qu©n cña ta vÉn ch­a xuÊt ph¸t! H·y t¹m thêi nghØ ng¬i vµ ®îi tin !",1,"Tho¸t./no")
	else
		if GetTask(123) == GetGlbMissionV(61) then
			if GetTask(12) == 2 then
				Say("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y ®­a ta trë l¹i chiÕn tr­êng/trolaiTK","§Ó ta suy nghÜ l¹i/no")
			elseif GetTask(12) == 1 then
				Say("Tªn Nam man kia, c¶ gan th©m nhËp vµo l·nh ®Şa ®¹i Kim, râ rµng lµ tù t×m c¸i chÕt!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· ®Çu qu©n cho Tèng quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")
			else
				Say("Ng­¬i ®· tù ı rêi khái chiÕn tr­êng lóc chiÕn sù v× thÕ kh«ng thÓ tiÕp tôc tham gia trËn chiÕn nµy. Vui lßng quay trë l¹i vµo nh÷ng trËn tiÕp theo nhĞ!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· rêi khái chiÕn tr­êng lóc ®ang chiÕn sù v× thÕ h·y rêi khái ®©y vµ quay l¹i vµo trËn tiÕp theo ")
			end
		else
			Say(""..returnType()..", hìi c¸c vŞ dòng sÜ Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®Õn. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, nµo ng­êi anh em cßn chÇn chõ g× n÷a!",2,"Ta tham gia! §iÓm tİch lòy trë vÒ: 0/baodanh2","Tho¸t/no")
		end
	end;
end

function baodanh2()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		Say("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y cho ta tham gia/thamgiaTK","§Ó ta suy nghÜ l¹i/no")
	end
	end
end

function thamgiaTK()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		if GetNumberNameInCpuTK() >= 10 then
			Talk(1,"","§· cã 1 nh©n vËt tham gia chiÕn tr­êng Tèng Kim, kh«ng thÓ tham chiÕn !")
		else
			thamgiatongkim(1)	
		end
	end
	end
end
function trolaiTK()
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) == GetGlbMissionV(61) then
	if GetTask(12) == 2 then
		if GetNumberNameInCpuTK() >= 1 then
			Talk(1,"","§· cã 1 nh©n vËt tham gia chiÕn tr­êng Tèng Kim, kh«ng thÓ tham chiÕn !")
		else
			thamgiatongkim(2)	
		end
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

function thamgiatongkim(num)
w,x,y = GetWorldPos()
if GetCash() < tienvan then
	Talk(1,"","<color=green>Kim Mé Binh: <color>: Muèn tham gia chiÕn tr­êng Tèng Kim h·y ñng hé "..tienvan.." l­îng!")
return
end
if GetLevel() < dangcap then
	Talk(1,"","<color=green>Kim Mé Binh: <color>: ChiÕn tr­êng chØ dµnh cho ng­êi tõ cÊp <color=red>"..dangcap.."<color> trë lªn, ng­¬i ch­a ®ñ ®iÒu kiÖn. Cè g¾ng tËp luyÖn thªm ®i! !")
return
end

h,m,s = GetTimeNew()
if (GetGlbMissionV(84)-GetGlbMissionV(83) >= 5 and m < 45) then
slcb = GetGlbMissionV(84)-GetGlbMissionV(83)
Talk(1,"","HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..GetGlbMissionV(84).." ng­êi<color>, ®Şch ph­¬ng lµ <color=yellow>"..GetGlbMissionV(83).." ng­êi<color>, c¸ch biÖt "..slcb.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Tèng binh! Tr¸ng sÜ xin ®îi trËn sau nhĞ!")
return
end
if GetGlbMissionV(60) ~= 1000 and GetGlbMissionV(60) ~= 2000 and GetGlbMissionV(60) ~= 500 and GetGlbMissionV(60) ~= 1500 then
Talk(1,"","Error: Lçi b¸o danh 60 1000 2000 !")
return
end
if w ~= 60 then
Talk(1,"","Error: §ang kh«ng ë trong b¶n ®å b¸o danh !")
return
end
if GetGlbMissionV(84) >= 100 then
Talk(1,"","Sè l­îng qu©n Kim ®· ®ñ 100 ng­êi, kh«ng thÓ tham gia thªm !")
return
end



LeaveTeam()
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu PK
SetTask(40,1) -- Task Xac nhan dang di tong kim

-- Reset Task Xep Hang
if num == 1 then
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
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
for k=1,5 do
	AddEventItem(106) -- Mien phi 5 
end
Msg2Player("B¹n nhËn ®­îc 5 LÔ Bao Ngò Hoa Ngäc Lé Hoµn MiÔn Phİ !")
end

SetRank(220+GetTask(19)*2)
AddMagic(413,GetTask(19))
SetPK(0)
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
	NewWorld(61, 2047, 2592);
	end
end


function no()
end;
