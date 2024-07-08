
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\sudo\\danhsachsuphu.lua")
Include("\\script\\sudo\\danhsachdetu.lua")
Include("\\script\\sudo\\danhsachdetucaocap.lua")


function main__()
Talk(1,"","Chøc n¨ng t¹m khãa !")
end
function main()

vtsp = checksuphu()
vtdetu1,vtdetu2 = checkdetu()
if vtsp ~= 0 then
	if SU_PHU[vtsp][3] == 1 then
	SetRank(236)
	else
	SetRank(235)
	end
	Msg2Player("<color=yellow>Danh s¸ch ®Ö tö: ")
	for i=1,getn(DE_TU[vtsp]) do
		if mod(i,2) == 1 then
			if DE_TU[vtsp][i] ~= "" then
					Msg2Player("- M· sè: "..floor((i+1)/2).." - Tªn: "..DE_TU[vtsp][i].." - Level: "..DE_TU[vtsp][i+1].."")
			end
		end
	end
else
	SetRank(1)	
end

if vtdetu1 > 0 then
Msg2Player("Ng­¬i hiÖn ®ang lµ ®Ö tö cña <color=yellow>Vâ S­ - "..SU_PHU[vtdetu1][2].."")
end


if vtsp > 0 then
	if SU_PHU[vtsp][3] == 1 then
		SayNew("Ng­¬i muèn ta gióp g× ?",6,
		"Ta muèn nhËn §Ö Tö /caocap_nhandetu",
		"Hç trî t¨ng kinh nghiÖm cho ®Ö tö /caocap_hotronhandoi",
		"Ta muèn xuÊt s­ cho ®Ö tö /caocap_xuatsu",
		"Ta muèn trôc xuÊt ®Ö tö /trucxuatdetu",
		"Hñy Vâ S­ - Cao CÊp /caocap_huyvosu",
		"Tho¸t /no")
	else
		SayNew("Ng­¬i muèn ta gióp g× ?",7,
		"Th¨ng chøc Vâ S­ - Cao CÊp/caocap_thangchuc",
		"Ta muèn nhËn §Ö Tö /nhandetu",
		"Hç trî nh©n ®«i kinh nghiÖm /hotronhandoi",
		"Ta muèn trôc xuÊt ®Ö tö /trucxuatdetu",
		"Ta muèn t¨ng thªm sè l­îng ®Ö tö /tangsoluong",
		"Ta muèn xuÊt s­ cho ®Ö tö /xuatsu",
		"Hñy Vâ S­  /huyvosu",
		"Tho¸t./no")
	end
else
	if vtdetu1 > 0 then
		SayNew("Ng­¬i muèn ta gióp g× ?",3,
		"Hç trî nh©n ®«i kinh nghiÖm /nhandoidetu",
		"Ta muèn ph¶n s­ m«n /phansumon",
		"Tho¸t./no")
	else
		if GetLevel() >= 90 then
			SayNew("Ng­¬i muèn ta gióp g× ?",2,
			"Th¨ng chøc Vâ S­ - S¬ CÊp /thangchuc",
			"Tho¸t/no")
			
		else
			Talk(1,"","§¼ng cÊp cña ng­¬i d­íi 90, h·y ®i t×m 1 S­ Phô cho m×nh ®i !")
		end
	end
end
end

function caocap_xuatsu()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ xuÊt s­ !")
	return
end

if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö muèn xuÊt s­ ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn hç trî ®Ö tö xuÊt s­ ")
return
end

team = GetTeam()
name = GetName()
checktientrinh = 0
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ xuÊt s­ ®­îc.")
		checktientrinh = 1
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ nhËn hç trî tõ "..name.."")
			checktientrinh = 2
			break
		end
		
		if GetLevel() >= 110 then
			checktientrinh = 4
			DE_TU[vtdetu1][vtdetu2] = ""
			DE_TU[vtdetu1][vtdetu2+1] = 0
			SaveBang()
			for p=1,1 do AddEventItem(651) end
			Msg2Player("B¹n nhËn ®­îc 1 Hång Bao Cao CÊp")
			inlog("[DE TU XUAT SU CAO CAP - "..GetItemCount(651).." Bao]  - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
			Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red>®· xuÊt s­ thµnh c«ng. tõ nay cã thÓ tung hoµnh giang hå ®Ó lËp c«ng cho S¬n Hµ X· T¾c")
			break
		else
			Talk(1,"","§¼ng cÊp cña ng­¬i ch­a ®¹t 110, kh«ng thÓ xuÊt s­ ")
			checktientrinh = 3
		end
	end
end
PlayerIndex = idxplayer
if checktientrinh == 4 then
for p=1,2 do AddEventItem(651) end
Msg2Player("B¹n nhËn ®­îc 2 Hång Bao Cao CÊp")
for p=1,8 do AddEventItem(652) end
Msg2Player("B¹n nhËn ®­îc 8 Tiªn Th¶o Lé S­ §å ")

SU_PHU[vtsp][4] = SU_PHU[vtsp][4] + 1
SaveBang()
inlog("[SU PHU XUAT SU CAO CAP- "..GetItemCount(651).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
else
Talk(1,"","Qu¸ tr×nh xuÊt s­ thÊt b¹i, vui lßng kiÓm tra l¹i")
end
end

function caocap_hotronhandoi()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö mµ m×nh muèn nhËn ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn hç trî ®Ö tö ")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ nhËn hç trî s­ ®å ®­îc.")
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ nhËn hç trî tõ "..name.."")
			break
		end
		if GetLevel() >= 110 then
			Talk(1,"","§¼ng cÊp cña ng­êi trªn 110, kh«ng thÓ nhËn hç trî !")
			break
		end
		if GetTask(509) == 0 then
			SetTask(509, 12 * 60 * 60 * 18)
			Msg2Player("B¹n nhËn ®­îc 12 giê hç trî t¨ng kinh nghiÖm s­ ®å ")
		else
			Talk(1,"","Ng­¬i ®ang trong giai ®o¹n h­ëng hç trî t¨ng kinh nghiÖm, kh«ng thÓ nhËn thªm !")
		end
	end
end
PlayerIndex = idxplayer
Msg2Player("§· hoµn tÊt qu¸ tr×nh hç trî t¨ng kinh nghiÖm cho ®Ö tö ")
end

function caocap_nhandetu()
if GetLevel() < 110 then
Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ 110, kh«ng thÓ sö dông tÝnh n¨ng nµy !")
return
end

	if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö mµ m×nh muèn nhËn ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end
if SU_PHU[vtsp][3] == 0 then
return
end


vtnew = checkvitritrong(vtsp)
if vtnew == 0 then
Talk(1,"","Danh s¸ch ®Ö tö ®· ®Çy, kh«ng thÓ nhËn thªm")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
kiemtratientrinh = 0
masodetu = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		if GetLevel() >= 110 or GetLevel() < 100 then
			Talk(1,"","§¼ng cÊp 100 - 109 míi cã thÓ b¸i s­ !")
			kiemtratientrinh = 3
			break
		end

		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 > 0 then
			kiemtratientrinh = 1
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ b¸i s­ ")
			break;
		end
		vtsp2 = checksuphu()
		if vtsp2 == 0 then
			kiemtratientrinh = 4
			Talk(1,"","Ng­¬i ch­a lµ Vâ S­, kh«ng thÓ b¸i s­ !")
			break;
		end
		checkdt = 0
		for k=1,getn(DE_TU[vtsp2]) do
			if mod(k,2) == 1 then
				if DE_TU[vtsp2][k] ~= "" then
					checkdt = 1
				end
			end
		end
		if checkdt == 1 then
			kiemtratientrinh = 5
			Talk(1,"","Ng­¬i ch­a xuÊt s­ hÕt ®Ö tö, kh«ng thÓ b¸i s­ ")
			break;
		end
		
		if GetItemCount(14) > 1 then
			DelItem(14)
			DelItem(14)
			
			SU_PHU[vtsp2][1] = ""
			SU_PHU[vtsp2][2] = ""
			DE_TU[vtsp][vtnew] = GetName()
			DE_TU[vtsp][vtnew+1] = GetLevel()
			
			inlog("[Nhan De Tu Cao Cap] Su Phu: ["..SU_PHU[vtsp][2].."]  - De Tu: ["..GetName().."] - "..GetLevel().."")
			Msg2SubWorld("Chóc mõng <color=green>Vâ S­ - "..name.." <color=red>tö h«m nay thu nhËn <color=yellow>"..GetName().." <color=red>lµm ®Ö tö cña m×nh.") 
			masodetu = (vtnew + 1) / 2
			SaveBang()
		else
			kiemtratientrinh = 2
			Talk(1,"","Ng­¬i kh«ng mang theo 2 x S­ §å LÖnh, kh«ng thÓ b¸i s­ ")
			break
		end
	end
end
PlayerIndex = idxplayer
if kiemtratientrinh == 0 then
Talk(1,"","Thu nhËn ®Ö tö thµnh c«ng. M· sè trôc xuÊt ®Ö tö lµ: <color=yellow>"..masodetu.."")
elseif kiemtratientrinh == 1 then
Talk(1,"","Ng­êi nµy hiÖn ®ang lµm ®Ö tö cña ng­êi kh¸c, ng­¬i kh«ng thÓ nhËn")
elseif kiemtratientrinh == 2 then
Talk(1,"","Ng­¬i nµy kh«ng mang theo tÝn vËt 2 x S­ §å LÖnh, kh«ng thÓ nhËn")
elseif kiemtratientrinh == 3 then
Talk(1,"","Ng­êi nµy kh«ng ®óng yªu cÇu vÒ ®¼ng cÊp 100 - 109, kh«ng thÓ nhËn")
elseif kiemtratientrinh == 4 then
Talk(1,"","Ng­êi nµy hiÖn kh«ng ph¶i lµ vâ s­, kh«ng thÓ nhËn")
elseif kiemtratientrinh == 5 then
Talk(1,"","Ng­êi nµy hiÖn kh«ng ®ñ ®iÒu kiÖn xuÊt s­ 3 ®Ö tö, kh«ng thÓ nhËn")
end
end

function caocap_thangchuc()
vtsp = checksuphu()
vtdetu1,vtdetu2 = checkdetu()
if vtsp == 0 then
return
end
if GetLevel() < 110 then
Talk(1,"","§¼ng cÊp 110 míi cã thÓ trë thµnh Vâ S­ Cao CÊp !")
return
end
if SU_PHU[vtsp][4] < 0 then
Talk(1,"","Sè l­îng ®Ö tö ®· xuÊt s­ ®¹t: <color=yellow>"..SU_PHU[vtsp][4].." / 3<color>. Kh«ng thÓ th¨ng cÊp ....")
return
end
if GetCash() < 3000000 then
Talk(1,"","Ng©n l­îng mang theo kh«ng ®ñ <color=yellow>300 v¹n l­îng<color>, kh«ng thÓ th¨ng cÊp ")
return
end
checkdk = 0
if getn(DE_TU[vtsp]) == 2 then
	if DE_TU[vtsp][1] == "" then
		checkdk = 1
	end
elseif getn(DE_TU[vtsp]) == 4 then
	if DE_TU[vtsp][1] == "" and DE_TU[vtsp][3] == "" then
		checkdk = 1
	end
elseif getn(DE_TU[vtsp]) == 6 then
	if DE_TU[vtsp][1] == "" and DE_TU[vtsp][3] == ""  and DE_TU[vtsp][5] == ""then
		checkdk = 1
	end
end

if checkdk == 1 then
	Pay(3000000)
	SU_PHU[vtsp][3] = 1
	DE_TU[vtsp] = {"",0,"",0}
	
	Msg2SubWorld("<color=pink>Vâ S­ - "..GetName().." tõ h«m nay ®· trë thµnh Vâ S­ - Cao CÊp, cã thÓ thu nhËn ®Ö tö cÊp 100 - 109")
	SaveBang()
else
	Talk(1,"","HiÖn t¹i ng­¬i vÉn cßn ®Ö tö ch­a xuÊt s­, kh«ng thÓ th¨ng cÊp")
end


end

function backup()

end

function xuatsu()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö muèn xuÊt s­ ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn hç trî ®Ö tö xuÊt s­ ")
return
end

team = GetTeam()
name = GetName()
checktientrinh = 0
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ nhËn hç trî s­ ®å ®­îc.")
		checktientrinh = 1
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ nhËn hç trî tõ "..name.."")
			checktientrinh = 2
			break
		end
		
		if GetLevel() >= 100 then
			checktientrinh = 4
			DE_TU[vtdetu1][vtdetu2] = ""
			DE_TU[vtdetu1][vtdetu2+1] = 0
			SaveBang()
			for p=1,1 do AddEventItem(16) end
			Msg2Player("B¹n nhËn ®­îc 1 ThÇn BÝ §¹i Hång Bao")
			inlog("[Xuat Su - "..GetItemCount(16).." Bao]  - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
			Msg2SubWorld("Chóc mõng <color=yellow>"..GetName().." <color=red>®· xuÊt s­ thµnh c«ng. tõ nay cã thÓ tung hoµnh giang hå ®Ó lËp c«ng cho S¬n Hµ X· T¾c")
			break
		else
			Talk(1,"","§¼ng cÊp cña ng­¬i ch­a ®¹t 100, kh«ng thÓ xuÊt s­ ")
			checktientrinh = 3
		end
	end
end
PlayerIndex = idxplayer
if checktientrinh == 4 then
for p=1,2 do AddEventItem(16) end
Msg2Player("B¹n nhËn ®­îc 2 ThÇn BÝ §¹i Hång Bao")
SU_PHU[vtsp][4] = SU_PHU[vtsp][4] + 1
SaveBang()
inlog("[SU PHU - "..GetItemCount(16).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
else
Talk(1,"","Qu¸ tr×nh xuÊt s­ thÊt b¹i, vui lßng kiÓm tra l¹i")
end
end


function nhandoidetu()
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 == 0 then
Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ nhËn hç trî")
return
end 
if SU_PHU[vtdetu1][1] == "" or  SU_PHU[vtdetu1][2] == "" then
	DE_TU[vtdetu1][vtdetu2] = ""
	DE_TU[vtdetu1][vtdetu2+1] = 0
	inlog("[Cuong Che Phan Su Mon] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
	SaveBang()
	Talk(1,"","Ng­¬i bÞ trôc xuÊt do Vâ S­ cña ng­¬i ®· b¸i ng­êi kh¸c lµm Vâ S­ cña m×nh !")
	Msg2Player("<color=pink>Ng­¬i bÞ trôc xuÊt do Vâ S­ cña ng­¬i ®· b¸i ng­êi kh¸c lµm Vâ S­ cña m×nh !")
	return
end


		if GetLevel() >= 100 then
			if GetTask(509) == 0 then
				SetTask(509, 3 * 60 * 60 * 18)
				Msg2Player("Ng­¬i tù nhËn hç trî, v× thÕ chØ ®­îc 3 giê hç trî t¨ng kinh nghiÖm.")
			else
				Talk(1,"","Ng­¬i ®ang trong giai ®o¹n h­ëng hç trî t¨ng kinh nghiÖm, kh«ng thÓ nhËn thªm !")
			end
		else
			if GetTask(442) == 0 then
				SetTask(442, 3 * 60 * 60 * 18)
				Msg2Player("Ng­¬i tù nhËn hç trî, v× thÕ chØ ®­îc 3 giê nh©n ®«i kinh nghiÖm.")
			else
				Talk(1,"","Ng­¬i ®ang trong giai ®o¹n h­ëng nh©n ®«i kinh nghiÖm, kh«ng thÓ nhËn thªm !")
			end
		end
		

end

function phucmenhsuphu()
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 == 0 then
Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ phôc mÖnh ®­îc.")
return
end

if GetLevel() == DE_TU[vtdetu1][vtdetu2+1] then
Talk(1,"","§¼ng cÊp hiÖn t¹i cña ng­¬i b»ng víi ®¼ng cÊp phôc mÖnh lÇn tr­íc, h·y th¨ng cÊp råi quay l¹i gÆp ta !")
return
end		

DE_TU[vtdetu1][vtdetu2+1] = GetLevel()
kinhnghiem = 0
if GetLevel() >= 95 and GetLevel() <= 100 then
kinhnghiem = 20
elseif GetLevel() >=101 and GetLevel() <= 105 then
kinhnghiem = 40
elseif GetLevel() >=106 and GetLevel() <= 110 then
kinhnghiem = 60
elseif GetLevel() >=111 and GetLevel() <= 115 then
kinhnghiem = 80
elseif GetLevel() >= 116 and GetLevel() <= 120 then
kinhnghiem = 200
end
SU_PHU[vtdetu1][3] = SU_PHU[vtdetu1][3] + kinhnghiem

inlog("[Phuc Menh - "..kinhnghiem.." - "..SU_PHU[vtdetu1][3].."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2Player("Phôc mÖnh s­ phô hoµn tÊt. TÝch lòy kinh nghiÖm s­ phô t¨ng thªm: <color=yellow>"..kinhnghiem.." triÖu kinh nghiÖm")
SaveBang()
end

function nhanthuongkinhnghiem()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end

if SU_PHU[vtsp][3] > 2000 then
SU_PHU[vtsp][3] = 2000
end
kinhnghiem = SU_PHU[vtsp][3] * 1000000

SayNew("HiÖn t¹i ng­¬i ®ang cã <color=yellow>"..kinhnghiem.." / 2.000.000.000 kinh nghiÖm<color> tÝch lòy. Ng­¬i cã muèn rót kinh nghiÖm ra kh«ng?",2,
"Ta muèn rót kinh nghiÖm s­ ®å /nhanthuongkinhnghiem1",
"Tho¸t./no")
end


function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/QuanLySuDoLenh.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function nhanthuongkinhnghiem1()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end
if SU_PHU[vtsp][3] < 100 then
Talk(1,"","D­íi 100 triÖu kinh nghiÖm, kh«ng thÓ rót ")
return
end
if SU_PHU[vtsp][3] > 2000 then
SU_PHU[vtsp][3] = 2000
end
kinhnghiem = SU_PHU[vtsp][3] * 1000000



SU_PHU[vtsp][3]  = 0
SaveBang()
AddOwnExp(kinhnghiem)

inlog("[Nhan "..kinhnghiem.."] - "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("<color=pink>Vâ S­ - "..GetName().." võa nhËn ®­îc "..kinhnghiem.." kinh nghiÖm s­ ®å. Qu¸ tr×nh ®µo t¹o ®Ö tö diÔn ra kh¸ tèt ®Ñp")

end

function hotronhandoi()
if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö mµ m×nh muèn nhËn ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn hç trî ®Ö tö ")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 == 0 then
		Talk(1,"","Ng­¬i ch­a cã s­ phô, sao cã thÓ nhËn hç trî s­ ®å ®­îc.")
		break
		end
		
		if name ~= SU_PHU[vtdetu1][2] then
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ nhËn hç trî tõ "..name.."")
			break
		end
		if GetLevel() >= 100 then
			Talk(1,"","§¼ng cÊp cña ng­êi trªn 100, kh«ng thÓ nhËn hç trî !")
			break
		end
		if GetTask(442) == 0 then
			SetTask(442, 12 * 60 * 60 * 18)
			Msg2Player("B¹n nhËn ®­îc 12 giê nh©n ®«i kinh nghiÖm s­ ®å ")
		else
			Talk(1,"","Ng­¬i ®ang trong giai ®o¹n h­ëng nh©n ®«i kinh nghiÖm, kh«ng thÓ nhËn thªm !")
		end
	end
end
PlayerIndex = idxplayer
Msg2Player("§· hoµn tÊt qu¸ tr×nh hç trî nh©n ®«i kinh nghiÖm cho ®Ö tö ")
end
function no()
end

function phansumon()
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 == 0 then
Talk(1,"","Ng­¬i kh«ng cã s­ phô, kh«ng thÓ ph¶n s­ m«n")
return
end

if GetItemCount(17) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ ph¶n s­ m«n")
return
end
DelItem(17)

Msg2SubWorld("<color=yellow>§Ö tö - "..GetName().." <color=red>quyÕt ®Þnh rêi khái s­ m«n. Tõ h«m nay <color=green>Vâ S­ - "..SU_PHU[vtdetu1][2].." <color=red>®· mÊt ®i mét ®Ö tö ")
DE_TU[vtdetu1][vtdetu2] = ""
DE_TU[vtdetu1][vtdetu2+1] = 0

inlog("[Phan Su Mon] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
SaveBang()
end
function trucxuatdetu()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end

OpenStringBox (2,"NhËp Sè Thø Tù " , "acceptcode1")
Msg2Player("NÕu kh«ng nhËp ®­îc sè vµo, vui lßng tho¸t game v« l¹i lµ ®­îc")
end

function acceptcode1(num2)
num = tonumber(num2)
if num < 1 and num > 5 then
Talk(1,"","ChØ ®­îc nhËp sè 1 - 5")
return
end
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end

vtdt = num * 2 - 1
if vtdt >= getn(DE_TU[vtsp]) then
Talk(1,"","Sè liÖu nhËp vµo kh«ng phï hîp, qu¸ giíi h¹n sè l­îng ®Ö tö ")
return
end

if DE_TU[vtsp][vtdt] == "" then
Talk(1,"","M· sè nµy kh«ng cã ®Ö tö, vui lßng ®iÒn m· sè kh¸c tõ 1 - 5")
return
end
SetTaskTemp(1,vtdt)
SayNew("Ng­¬i cã muèn trôc xuÊt <color=yellow>["..DE_TU[vtsp][vtdt].."] - Level: "..DE_TU[vtsp][vtdt+1].."<color> hay kh«ng?",2,
"Ta x¸c ®Þnh trôc xuÊt "..DE_TU[vtsp][vtdt].." /trucxuat2",
"Tho¸t./no")
end

function trucxuat2()
vtdt = GetTaskTemp(1)
Msg2SubWorld("Vâ S­ - "..GetName().." ®· trôc xuÊt "..DE_TU[vtsp][vtdt].." ra khái s­ m«n !")
inlog("[Truc Xuat] Su Phu: "..GetName().." - De Tu:  "..DE_TU[vtsp][vtdt].."]")
DE_TU[vtsp][vtdt] = ""
DE_TU[vtsp][vtdt+1] = 0

SaveBang()
end

function caocap_huyvosu()

if GetLevel() >= 110 then
Talk(1,"","TÝnh n¨ng chØ sö dông cho Vâ S­ - Cao CÊp ®¼ng cÊp 100 - 109")
return
end
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ hñy vâ s­ ")
return
end

	checkdt = 0
	for k=1,getn(DE_TU[vtsp]) do
		if mod(k,2) == 1 then
			if DE_TU[vtsp][k] ~= "" then
				checkdt = 1
			end
		end
	end
	if checkdt == 1 then
		kiemtratientrinh = 5
		Talk(1,"","Ng­¬i ch­a xuÊt s­ hÕt ®Ö tö, kh«ng thÓ hñy vâ s­  ")
		return
	end

if 	SU_PHU[vtsp][3] == 0 then
Talk(1,"","Lçi ! Ng­¬i ®ang lµ Vâ S­ - S¬ CÊp !")
return
end

SU_PHU[vtsp][3] = 0
SetRank(235)
inlog("[Huy Vo Su - VTSPCC: "..vtsp.."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2Player("B¹n ®· Hñy Vâ S­ - Cao CÊp thµnh c«ng, tõ nay cã thÓ lµm §Ö Tö cña ng­êi kh¸c")
SaveBang()
end

function huyvosu()
if GetLevel() >= 100 then
Talk(1,"","TÝnh n¨ng chØ sö dông cho Vâ S­ - Cao CÊp ®¼ng cÊp 90 - 99")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ hñy vâ s­ ")
return
end

	checkdt = 0
	for k=1,getn(DE_TU[vtsp]) do
		if mod(k,2) == 1 then
			if DE_TU[vtsp][k] ~= "" then
				checkdt = 1
			end
		end
	end
	if checkdt == 1 then
		kiemtratientrinh = 5
		Talk(1,"","Ng­¬i ch­a xuÊt s­ hÕt ®Ö tö, kh«ng thÓ hñy vâ s­  ")
		return
	end
		
SU_PHU[vtsp][1] = ""
SU_PHU[vtsp][2] = ""
SetRank(1)
inlog("[Huy Vo Su - VTSP: "..vtsp.."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2Player("B¹n ®· Hñy Vâ S­ thµnh c«ng, tõ nay cã thÓ lµm §Ö Tö cña ng­êi kh¸c")
SaveBang()
end

function tangsoluong()
vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ t¨ng sè l­îng ")
return
end

if GetCash() < 2000000 then
Talk(1,"","Ng­¬i kh«ng mang ®ñ 200 v¹n, kh«ng thÓ t¨ng sè l­îng")
return
end

if getn(DE_TU[vtsp]) >= 6 then
Talk(1,"","Danh s¸ch ®Ö tö ®· ®¹t ®ñ sè l­îng giíi h¹n: 3 ng­êi, kh«ng thÓ t¨ng thªm !")
return
end

Pay(2000000)
DE_TU[vtsp][getn(DE_TU[vtsp])+1] = ""
DE_TU[vtsp][getn(DE_TU[vtsp])+1] = 0
inlog("[Tang So Luong "..floor(getn(DE_TU[vtsp])/2).."]  "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("Chóc mõng "..GetName().." t¨ng sè l­îng ®Ö tö cã thÓ nhËn ®­îc lªn: <color=yellow>"..floor(getn(DE_TU[vtsp])/2).." ng­êi")
SaveBang()
end


function nhandetu()
if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp cña b¹n kh«ng ®ñ 100, kh«ng thÓ sö dông tÝnh n¨ng nµy !")
return
end

if GetTeamSize() ~= 2 then
Talk(1,"","Ng­¬i chØ ®­îc lËp tæ ®éi 2 ng­êi cïng víi ®Ö tö mµ m×nh muèn nhËn ")
return
end

vtsp = checksuphu()
if vtsp == 0 then
Talk(1,"","Ng­¬i kh«ng ph¶i lµ Vâ S­, kh«ng thÓ nhËn ®Ö tö ")
return
end

vtnew = checkvitritrong(vtsp)
if vtnew == 0 then
Talk(1,"","Danh s¸ch ®Ö tö ®· ®Çy, kh«ng thÓ nhËn thªm")
return
end

team = GetTeam()
name = GetName()
idxplayer = PlayerIndex
kiemtratientrinh = 0
masodetu = 0
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	if GetTeam() == team and GetName() ~= name then
		if GetLevel() >= 100 then
			Talk(1,"","§¼ng cÊp 1 - 99 míi cã thÓ b¸i s­ !")
			kiemtratientrinh = 3
			break
		end

		vtdetu1,vtdetu2 = checkdetu()
		if vtdetu1 > 0 then
			kiemtratientrinh = 1
			Talk(1,"","Ng­¬i hiÖn ®ang lµm ®Ö tö cña "..SU_PHU[vtdetu1][2]..", kh«ng thÓ b¸i s­ ")
			break;
		end
		if GetItemCount(14) > 0 then
			DelItem(14)
			DE_TU[vtsp][vtnew] = GetName()
			DE_TU[vtsp][vtnew+1] = GetLevel()
			
			inlog("[Nhan De Tu] Su Phu: ["..SU_PHU[vtsp][2].."]  - De Tu: ["..GetName().."] - "..GetLevel().."")
			Msg2SubWorld("Chóc mõng <color=green>Vâ S­ - "..name.." <color=red>tö h«m nay thu nhËn <color=yellow>"..GetName().." <color=red>lµm ®Ö tö cña m×nh.") 
			masodetu = (vtnew + 1) / 2
			SaveBang()
		else
			kiemtratientrinh = 2
			Talk(1,"","Ng­¬i kh«ng mang theo S­ §å LÖnh, kh«ng thÓ b¸i s­ ")
			break
		end
	end
end
PlayerIndex = idxplayer
if kiemtratientrinh == 0 then
Talk(1,"","Thu nhËn ®Ö tö thµnh c«ng. M· sè trôc xuÊt ®Ö tö lµ: <color=yellow>"..masodetu.."")
elseif kiemtratientrinh == 1 then
Talk(1,"","Ng­êi nµy hiÖn ®ang lµm ®Ö tö cña ng­êi kh¸c, ng­¬i kh«ng thÓ nhËn")
elseif kiemtratientrinh == 2 then
Talk(1,"","Ng­¬i nµy kh«ng mang theo tÝn vËt S­ §å LÖnh, kh«ng thÓ nhËn")
elseif kiemtratientrinh == 3 then
Talk(1,"","Ng­¬i nµy cã ®¼ng cÊp 100 trë lªn, kh«ng thÓ nhËn")
elseif kiemtratientrinh == 4 then
Talk(1,"","Ng­êi nay hiÖn ®ang chuyÓn sinh 0, kh«ng thÓ nhËn")
end
end

function checkvitritrong(vt) 
for i=1,getn(DE_TU[vt]) do
	if mod(i,2) == 1 then
		if DE_TU[vt][i] == "" then
				return i
		end
	end
end
return 0
end
function thangchuc()

if GetLevel() < 100 then
Talk(1,"","VÞ ®¹i hiÖp nµy ch­a ®¹t ®¼ng cÊp 100, kh«ng thÓ lµm Vâ S­ ")
return
end

if GetCash() < 1000000 and GetLevel() < 100 then
Talk(1,"","PhÝ th¨ng cÊp Vâ S­: <color=yellow>100 v¹n l­îng<color>. Vui lßng chuÈn bÞ ®ñ råi quay l¹i gÆp ta")
return
end

if checksuphu() > 0 then
Talk(1,"","Ng­¬i hiÖn t¹i ®· lµ Vâ S­, kh«ng thÓ th¨ng cÊp thªm n÷a ")
return
end
vtdetu1,vtdetu2 = checkdetu()
if vtdetu1 > 0 then
Talk(1,"","Ng­¬i hiÖn t¹i ®ang lµ §Ö Tö cña "..SU_PHU[vtdetu1][2]..", vui lßng xuÊt s­ tr­íc khi ®­îc lµm Vâ S­ ")
return
end

if GetLevel() < 110 then
Pay(1000000)
SU_PHU[getn(SU_PHU)+1] = {GetAccount(),GetName(),0,0}
DE_TU[getn(DE_TU)+1] = {"",0}
SetRank(235)
inlog("[Vo Su] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." - Level: "..GetLevel().." tõ h«m nay chÝnh thøc ®­îc lµm Vâ S­ - S¬ CÊp, cã thÓ thu nhËn 1 ®Ö tö cÊp 1 - 99")
else
SU_PHU[getn(SU_PHU)+1] = {GetAccount(),GetName(),0,0}
DE_TU[getn(DE_TU)+1] = {"",0,"",0,"",0}
SetRank(235)
inlog("[Vo Su] "..GetAccount().." - "..GetName().." - "..GetLevel().."")
Msg2SubWorld("<color=pink>Chóc mõng "..GetName().." - Level: "..GetLevel().." tõ h«m nay chÝnh thøc ®­îc lµm Vâ S­ - S¬ CÊp, ®­îc miÔn phÝ th¨ng cÊp vµ cã thÓ thu nhËn 3 ®Ö tö cÊp 1 - 99")
end

SaveBang()
end

function checksuphu()
for i=1,getn(SU_PHU) do
	if GetName() == SU_PHU[i][2] then
		return i
	end
end
return 0
end

function checkdetu()
for i=1,getn(DE_TU) do
	for j=1,getn(DE_TU[i]) do
		if mod(j,2) == 1 then
			if DE_TU[i][j] == GetName() then
				return i,j
			end
		end
	end
end
return 0,0
end
function SaveBang()
BANG = TaoBang(SU_PHU,"SU_PHU")
LuuBang("script/sudo/danhsachsuphu.lua",BANG)
BANG2 = TaoBang(DE_TU,"DE_TU")
LuuBang("script/sudo/danhsachdetu.lua",BANG2)


end