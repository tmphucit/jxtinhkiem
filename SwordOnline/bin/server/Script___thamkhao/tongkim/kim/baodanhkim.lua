Include("\\script\\tongkim\\headtime.lua")
tienvan = 10000
dangcap = 80

function main()
h,m,s = GetTimeNew()
Msg2Player("<color=green>Chó ı: Admin sÏ lu©n phiªn kiÓm tra Post §iÓm Tèng Kim Liªn Tôc. Xö lı: <color=yellow>Block Account<color=green> khi ph¸t hiÖn")
--Msg2Player("<color=green>15h00 ngµy 18/09/2021: Thö nghiÖm tèi ­u chÊt l­îng PK Tèng Kim, Fix mét sè lçi vÆt. NÕu cã ph¸t sinh lçi ngoµi ı muèn vui lßng b¸o lªn Fanpage ®Ó chóng t«i hoµn thiÖn.")


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
		if GetTask(123) == GetGlbMissionV(61) then
			if GetTask(12) == 2 then
				SayNew("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y ®­a ta trë l¹i chiÕn tr­êng/trolaiTK","§Ó ta suy nghÜ l¹i/no")
			elseif GetTask(12) == 1 then
				SayNew("Tªn Nam man kia, c¶ gan th©m nhËp vµo l·nh ®Şa ®¹i Kim, râ rµng lµ tù t×m c¸i chÕt!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· ®Çu qu©n cho Tèng quèc, h·y ®Õn gÆp Mé binh quan xin nhËp chiÕn tr­êng!")
			else
				SayNew("Ng­¬i ®· tù ı rêi khái chiÕn tr­êng lóc chiÕn sù v× thÕ kh«ng thÓ tiÕp tôc tham gia trËn chiÕn nµy. Vui lßng quay trë l¹i vµo nh÷ng trËn tiÕp theo nhĞ!",1,"Tho¸t./no")
				Msg2Player("Ng­¬i ®· rêi khái chiÕn tr­êng lóc ®ang chiÕn sù v× thÕ h·y rêi khái ®©y vµ quay l¹i vµo trËn tiÕp theo ")
			end
		else
			SayNew(""..returnType()..", hìi c¸c vŞ dòng sÜ Kim quèc, thêi kh¾c nhÊt thèng thiªn h¹ vµ dÑp bän Tèng quèc nam man c¶n ®­êng cña chóng ta ®· ®Õn. Nay Kim quèc rÊt cÇn sù trî lùc cña c¸c ng­¬i, nµo ng­êi anh em cßn chÇn chõ g× n÷a!",2,"Ta tham gia! §iÓm tİch lòy trë vÒ: 0/baodanh2","Tho¸t/no")
		end
	end;
end

function baodanh2()
--if checkIP(2) == 1 and GetTaskTemp(4) ~= 546879 then
--Talk(1,"","HiÖn t¹i ®· cã nh©n vËt cïng IP bªn phe Tèng, b¹n kh«ng thÓ tham gia vµo phe Kim !")
--return
--end

	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		SayNew("Trèng trËn ®· rÒn vang! Sao ng­¬i ch­a tham gia chiÕn ?\nHiÖn giê <color=yellow>qu©n sè phe Tèng lµ "..GetGlbMissionV(83).." ng­êi\nqu©n sè phe Kim lµ "..GetGlbMissionV(84).." ng­êi.",2,"H·y cho ta tham gia/thamgiaTK","§Ó ta suy nghÜ l¹i/no")
	end
	end
end

function checkIP(phe)
ip = splitIP()
idxp = PlayerIndex
check = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 33 then
		ip2 = splitIP()
		if ip == ip2 then
			if GetTask(12) ~= phe then
					check = 1
					break
			end
		end	
	end
end
PlayerIndex = idxp
return check
end

function splitIP()
	str = GetIP()
	if(splitor==nil) then
		splitor=" : "
	end
	local strArray={}
	local strStart=1
	local splitorLen = strlen(splitor)
	local index=strfind(str,splitor,strStart)
	if(index==nil) then
		strArray[1]=str
		return strArray
	end
	local i=1
	while index do
		strArray[i]=strsub(str,strStart,index-1)
		i=i+1
		strStart=index+splitorLen
		index = strfind(str,splitor,strStart)
	end
	strArray[i]=strsub(str,strStart,strlen(str))
	return strArray[1]
end

function thamgiaTK()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) ~= GetGlbMissionV(61) then
		if GetNumberNameInCpuTK() >= 10 and GetTaskTemp(4) ~= 546879 then
			Talk(1,"","§· cã 1 nh©n vËt tham gia chiÕn tr­êng Tèng Kim, kh«ng thÓ tham chiÕn !")
		else
		
		--	if gio == 19 or gio == 20 then
				thamgiatongkim(1)	
		--	else	
		--		phe = RandomNew(1,100)
		--		if mod(phe,2) == 1 then
		--			thamgiatong(1)	
		--		else
		--			thamgiatongkim(1)	
		--		end
		--	end
		end
	end
	end
end
function trolaiTK()
--if checkIP(2) == 1 then
--Talk(1,"","HiÖn t¹i ®· cã nh©n vËt cïng IP bªn phe Tèng, b¹n kh«ng thÓ tham gia vµo phe Kim !")
---return
--end

	if GetGlbMissionV(60) ~= 0 then
	if GetTask(123) == GetGlbMissionV(61) then
	if GetTask(12) == 2 then
		if GetNumberNameInCpuTK() >= 10 and GetTaskTemp(4) ~= 546879 then
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
if (m < 45 and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000)) or (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then
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
if GetGlbMissionV(84) >= 250 then
Talk(1,"","Sè l­îng qu©n Kim ®· ®ñ 250 ng­êi, kh«ng thÓ tham gia thªm !")
return
end



LeaveTeam()
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu PK
SetTask(40,1) -- Task Xac nhan dang di tong kim

SetTask(452,0)
SetTask(453,0)
SetTask(454,0)
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
SetTask(948,0) -- Task nhan mau
--for k=1,5 do
--	AddEventItem(106) -- Mien phi 5 
--end
--Msg2Player("B¹n nhËn ®­îc 5 LÔ Bao Ngò Hoa Ngäc Lé Hoµn MiÔn Phİ !")

inlog()
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
	NewWorld(37, 1688, 3074);
	else
	-- NewWorld(37, 1688, 3074);
	NewWorld(61, 2047, 2592);
	end
end




function thamgiatong(num)
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
if GetGlbMissionV(83)-GetGlbMissionV(84) >= 2 then
if (m < 45 and (GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 2000)) or (GetGlbMissionV(60) == 500 or GetGlbMissionV(60) == 1500) then

slcb = GetGlbMissionV(83)-GetGlbMissionV(84)
Talk(1,"","HiÖn t¹i binh lùc phe ta lµ <color=yellow>"..GetGlbMissionV(83).." ng­êi<color>, ®Şch ph­¬ng lµ <color=yellow>"..GetGlbMissionV(84).." ng­êi<color>, c¸ch biÖt "..slcb.." ng­êi<color>. Qu©n lùc cña ta hiÖn giê ®· d­ søc tiªu diÖt Kim binh! Tr¸ng sÜ xin ®îi trËn sau nhĞ!")
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
if GetGlbMissionV(83) >= 250 then
Talk(1,"","Sè l­îng qu©n Tèng ®· ®ñ 250 ng­êi, kh«ng thÓ tham gia thªm !")
return
end


LeaveTeam()
SetTask(12,1) -- Xac Nhan Ben Tong
SetTask(128,2) -- Task hoat dong Tong Kim
Msg2World(""..GetName().." ®· vµo chiÕn tr­êng ")
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu diem PK
SetTask(40,1) -- Task Xac nhan dang di tong kim
SetTask(452,0)
SetTask(453,0)
SetTask(454,0)

-- Reset Task Xep Hang
if num == 1 then
Pay(tienvan)
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


SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
SetTask(948,0)  -- Task nhan mau

	inlog()
end

SetRank(219+GetTask(19)*2)
AddMagic(413,GetTask(19))

SetPunish(0)
SetFightState(0)
SetCreateTeam(0);
SetLogoutRV(1);
SetPKState(1)
BlockPKState(1)
SetGlbMissionV(83,GetGlbMissionV(83)+1)
SetRevPos(1);
SetCamp(1)
SetCurCamp(1)
Msg2Player("C«ng c¸o:®· b¾t ®Çu chiÕn dŞch míi, ®iÓm tİch ph©n hiÖn giê sÏ lµ 0!")
Msg2Player("Hoan nghªnh! Hoan nghªnh! Ng­êi Tèng lu«n lµ anh hïng!")
Msg2Player("HiÖn thêi qu©n sè 2 bªn lµ: Tèng: "..GetGlbMissionV(83)..", Kim: "..GetGlbMissionV(84).." ")
	if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	NewWorld(37, 1236, 3554);
	else
	-- NewWorld(37, 1236, 3554);
	NewWorld(61, 1641, 3154);
	end

end

function inlog()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/BaoDanhKim.txt", "a");
if LoginLog then
write(LoginLog,"["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function no()
end;
