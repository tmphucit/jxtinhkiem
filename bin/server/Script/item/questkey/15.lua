Include("\\script\\lib\\thuvien.lua")
Include("\\script\\sudo\\sudo.lua")
Include("\\script\\sudo\\detu.lua")
TaskSuDo = 165
Tasktime = 166
ChuaTaoSudo = 0
DeTu = 1
SuPhuChuaCoDeTu = 2
SuPhuCoDeTu = 3
tienvan = 0
sudothiep = 15
thanbi = 16

function savetimer()
	BANG3 = TaoBang(SU_DO,"SU_DO")
	LuuBang("script/sudo/sudo.lua",BANG3)
	LuuBang("script/sudo/sudophu.lua",BANG3)	

end
function save()
	BANG3 = TaoBang(SU_DO,"SU_DO")
	LuuBang("script/sudo/sudo.lua",BANG3)
	LuuBang("script/sudo/sudophu.lua",BANG3)		

end
function main(idx)
end

function main1(idx)
if GetTask(139) > 0 then
Talk(1,"","B¹n ®· chuyÓn sinh kh«ng thÓ sö dông chøc n¨ng s­ ®å thiÕp ! ")
return
end

if GetLevel() >= 140 and GetTask(165) == 0 then
Say("<color=green>HÖ Thèng<color>: B¹n cÇn <color=red>500 v¹n<color> ®Ó trë thµnh 1 s­ phô kÓ tõ b©y giê ",2,
"ThiÕt lËp tÝnh n¨ng s­ ®å/thietlapsd",
"Tho¸t./no")
elseif GetLevel() >= 140 and GetTask(165) == 1 then
if GetTask(163) == 0 then
for i=1,getn(SU_DO) do
	if GetUUID() == SU_DO[i][5] then
	SetTask(163,i)
	end
end	
end
if GetUUID() == SU_DO[GetTask(163)][5] then
Say("<color=green>HÖ Thèng<color>: H·y t×m s­ phô <color=red>"..SU_DO[GetTask(163)][1].."<color> vµ xuÊt s­ ®i b¹n !!",2,
"XuÊt s­/xuatsu",
"Tho¸t./no")
else
Say("<color=green>HÖ Thèng<color>: S­ phô ®· trôc xuÊt b¹n!!",2,
"Roi khoi su phu/roisp3",
"Tho¸t./no")
end
elseif GetTask(165) == 3 then
Say("<color=green>HÖ Thèng<color>: Chän chøc n¨ng: ",4,
"NhËn ®iÓm phôc mÖnh/nhanexp",
"Reset nh©n ®«i cho §Ö tö/resettime",
"Trôc xuÊt §Ö tö/trucxuat",
"Tho¸t./no")
elseif GetTask(165) == 2 then
Say("<color=green>HÖ Thèng<color>: B¹n ch­a cã <color=red>§Ö tö<color>:",2,
"NhËn ®Ö tö/nhandt",
"Tho¸t./no")
elseif GetTask(165) == 1 then
if GetTask(163) == 0 then
for i=1,getn(SU_DO) do
	if GetUUID() == SU_DO[i][5] then
	SetTask(163,i)
	end
end	
end
	if GetUUID() == SU_DO[GetTask(163)][5] then
	Say("<color=green>HÖ Thèng<color>: Chän chøc n¨ng",4,
	"Phôc mÖnh víi s­ phô/phucmenh",
	"NhËn hç trî nh©n ®«i/nhanx2exp",
	"Ph¶n s­ m«n/roisp",
	"Tho¸t./no") 
	else
	Say("<color=green>HÖ Thèng<color>: S­ phô ®· trôc xuÊt b¹n !!",2,
	"Rêi khái s­ phô/roisp3",
	"Tho¸t./no")	
	end
else
Say("<color=green>HÖ Thèng<color>: H·y t×m 1 s­ phô ch©n chÝnh ®Ó b¸i s­ !",1,
"Tho¸t./no") 
end
end

function nhanexp()
b = SU_DO[vtsp()][7]*1000/80
if SU_DO[vtsp()][7] > 0 then
	SU_DO[vtsp()][7] = 0	
	Talk(0,"")
	if SU_DO[vtsp()][7] == 0 then
	AddOwnExp(b)
	Msg2Player("B¹n nhËn ®­îc:  "..b.." kinh nghiÖm §Ö tö phôc mÖnh")
	end		
else
Talk(1,"","<color=green>HÖ Thèng<color> §iÓm kinh nghiÖm phôc mÖnh ®· nhËn hÕt råi!")
end
end
function roisp()
if GetUUID() == SU_DO[GetTask(163)][5] then
Say("<color=green>HÖ Thèng<color>: B¹n cã ch¾c muèn ph¶n s­ m«n !",2,
"Ta §ång Y(/roisp2",
"Tho¸t./no")
else
Say("<color=green>HÖ Thèng<color>: S­ phô ®· trôc xuÊt b¹n !!",2,
"Rêi khái s­ phô /roisp3",
"Tho¸t./no")
end
end
function roisp3()
SetTask(165,0)
Msg2Player("B¹n ®· rêi khái s­ phô vµ cã thÓ nhËn s­ phô míi")
end
function roisp2()
SetTask(165,0)
Msg2Player("B¹n ®· rêi khái s­ m«n")
end
function trucxuat()
Say("<color=green>HÖ Thèng<color>: B¹n ch¾c ch¾n muèn trôc xuÊt <color=red>"..SU_DO[vtsp()][4].."<color> ra khái s­ m«n? ",2,
"Ta ®ång ý/trucxuat2",
"Tho¸t./no")
end
function trucxuat2()
a = GetCash()
if GetCash() >= 5000000 then
Pay(5000000)
if GetCash() == (a-5000000) then
	Msg2SubWorld("["..GetName().."] ®· trôc xuÊt  ["..SU_DO[vtsp()][4].."] ra khái s­ m«n.")
	SetTask(165,2)
	SU_DO[vtsp()][4] = ""
	SU_DO[vtsp()][5] = 0
	SU_DO[vtsp()][6] = 0
	SU_DO[vtsp()][7] = 0	
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n kh«ng ®ñ <color=red>500<color> v¹n")
end
end


function nhanx2exp()
if GetUUID() == SU_DO[GetTask(163)][5] then
a = SU_DO[GetTask(163)][3]
if GetTask(172) <= 0 then
if SU_DO[GetTask(163)][3] ~= 0 then
SU_DO[GetTask(163)][3] = SU_DO[GetTask(163)][3]-1
if SU_DO[GetTask(163)][3] == (a-1) then
Setx2Exp(60*60*18)
AddSkillEffect(456,1,60*60*18)
SetTask(141,2)
Talk(0,"")
Talk(1,"","<color=green>HÖ Thèng<color> B¹n ®· nhËn thµnh c«ng nh©n ®«i kinh nghiÖm trong <color=red>1<color> giê")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","<color=green>HÖ Thèng<color> Thêi gian nh©n ®«i trong ngµy cßn: <color=red>"..SU_DO[GetTask(163)][3].."<color> giê")
end
else
Talk(1,"","<color=green>HÖ Thèng<color> B¹n ®ang sö dông nh©nd ®«i kinh nghiÖm. kh«ng thÓ sö dông thªm")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: S­ Phô <color=red>"..SU_DO[GetTask(163)][1].."<color> ®· trùc xuÊt b¹n ra khái s­ m«n !!!")
end
end
function phucmenh()
if GetUUID() == SU_DO[GetTask(163)][5] then
if GetLevel() > SU_DO[GetTask(163)][6] then
SU_DO[GetTask(163)][6] = GetLevel()
SU_DO[GetTask(163)][7] = SU_DO[GetTask(163)][7]+kinhnghiemtinh()
diem = kinhnghiemtinh()*1000/40
Msg2Player("Phôc mÖnh thµnh c«ng! S­ phô sÏ nhËn ®­îc: "..diem.." ®iÓm phôc mÖnh cña b¹n")
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ®· phôc mÖnh ë ®¼ng cÊp nµy råi")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: S­ Phô <color=red>"..SU_DO[GetTask(163)][1].."<color> §· trôc xuÊt b¹n !!!")
end
end

function kinhnghiemtinh()
kn = GetLevelExp()
if GetLevel() < 90 then
return kn*40/100000
elseif GetLevel() >= 90 and GetLevel() < 100 then
return kn*33/100000
elseif GetLevel() >= 100 and GetLevel() < 110 then
return kn*20/100000
elseif GetLevel() >= 110 and GetLevel() < 120 then
return kn*17/100000
elseif GetLevel() >= 120 and GetLevel() < 130 then
return kn*14/100000
elseif GetLevel() >= 130 and GetLevel() < 140 then
return kn*12/100000
else
return kn*10/100000
end
end


function resettime()
if GetTask(166) == tinhngay() then
Talk(1,"","<color=green>HÖ Thèng<color> H«m nay b¹n ®· reset råi !")
else
SetTask(166,tinhngay())
SU_DO[vtsp()][3] = 8
Msg2Player("§· khëi t¹o thµnh c«ng 8 giê nh©n ®«i kinh nghiÖm cho ®Ö tö: ["..SU_DO[vtsp()][4].."]")
end
end
function vtsp()
for i=1,getn(SU_DO) do
if GetUUID() == SU_DO[i][2] then
return i
end
end
end


function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,28},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}
function xuatsu()
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
		xuatsu2()
	else
	Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ph¶i lµ <color=red>tr­ëng nhãm<color> míi cã thÓ xuÊt s­ ®­îc !")
	end
else
Talk(1,"","<color=green>HÖ Thèng<color>: Tæ ®éi ph¶i cã <color=red>2<color> thµnh viªn")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ph¶i lËp <color=red>tæ ®é<color> míi thùc hiÖn ®­îc")
end
end

function xuatsu2()
if GetUUID() == SU_DO[GetTask(163)][5] then
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
SetTask(165,0)
Msg2Player("Ban da Xuat Su thanh cong !")
team = GetTeam()
vtdt = GetTask(163)
name = GetName()
for k=1,GetCountPlayerMax() do
PlayerIndex = k
if GetTeam() == team and IsCaptain() == 1 then
	if SU_DO[vtdt][8] <= 120 then
	AddEventItem(16)
	Msg2Player("B¹n nhËn ®­îc 1 ThÇn BÝ §¹i Hång Bao")
	Talk(0,"")
	else
	Msg2Player("B¹n kh«ng nh©n ®­îc ThÇn BÝ §¹i Hång Bao do b¸i s­ ë ®¼ng cÊp > 120")
	end
elseif GetTeam() == team and IsCaptain() == 0 then
	if SU_DO[vtsp()][8] <= 120 then
	AddEventItem(16)
	Msg2Player("B¹n nhËn ®­îc 1 ThÇn BÝ §¹i Hång Bao")
	Talk(0,"")
	else
	Msg2Player("B¹n kh«ng nh©n ®­îc ThÇn BÝ §¹i Hång Bao do nhËn ®Ö tö ë ®¼ng cÊp > 120")
	end
	AddOwnExp(2500000)
	Msg2Player("B¹n nhËn ®­îc 2.500.000 kinh nghiÖm")
	SetTask(165,2)
SU_DO[vtsp()][5] = 0
SU_DO[vtsp()][6] = 0
SU_DO[vtsp()][7] = 0
Msg2SubWorld("Xin chóc mõng ®Ö tö ["..name.."] cung Su Phu ["..GetName().."] xuÊt s­ thµnh c«ng. Qu¸ tr×nh tu luyÖn cña ®Ö tö hoµn tÊt !!!")
end
end
	else
	Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ph¶i lµ <color=red>tr­ëng nhãm<color> mãi thùc hiÖn xuÊt s­ ®­îc !")
	end
else
Talk(1,"","<color=green>HÖ Thèng<color>: Tæ ®éi ph¶i cã <color=red>2<color> thµnh viªn")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ph¶i lËp <color=red>tæ ®éi<color> míi thùc hiÖn ®­îc")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: S­ phô <color=red>"..SU_DO[GetTask(163)][1].."<color> ®· trôc xuÊt b¹n !!!")
end
end

function thietlapsd()
a = GetCash()
if GetCash() >= 5000000 then
Pay(5000000)
if GetCash() == (a-5000000) then
stt = getn(SU_DO)+1
SetTask(165,2) -- sf chua co de tu
SU_DO[getn(SU_DO)+1] = {GetName(),GetUUID(),8,"",0,0,0,0}
Msg2Player("§· thiÕt lËp thµnh c«ng tÝnh n¨ng S­ ®å. Sè thø tù: "..stt.."")
KickOutSelf()
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n kh«ng mang ®ñ <color=red>500<color> v¹n")
end
end
function no()
end

function nhandt()
if GetTeam() ~= nil then
if GetTeamSize() == 2 then
	if IsCaptain() == 1 then
		Say("<color=green>HÖ Thèng<color>: B¹n cã muèn nhËn thµnh viªn trong nhãm lµm ®Ö tö kh«ng?: ",2,
		"Ta ®ång ý/nhandt2",
		"Tho¸t./no")
	else
	Talk(1,"","<color=green>HÖ Thèng<color>: B¹n kh«ng ph¶i lµ <color=red>tr­ëng nhãm<color> kh«ng thÓ thùc hiÖn")
	end
else
Talk(1,"","<color=green>HÖ Thèng<color>: Tæ ®éi ph¶i cã <color=red>2<color> thµnh viªn")
end
else
Talk(1,"","<color=green>HÖ Thèng<color>: B¹n ph¶i lËp <color=red>tæ ®éi<color> míi thùc hiÖn ®­îc")
end
end

function nhandt2()
team = GetTeam()
name = GetName()
i = vtsp()
SetTask(165,3)
for u=1,GetCountPlayerMax() do
PlayerIndex = u
if GetTeam() == team and IsCaptain() == 0 then
namedt = GetName()
	if GetLevel() < 140 and GetTask(165) == 0 then
		if GetItemCount(14) >= 1 then
		namedt = GetName()
		DelItem(14)
		SU_DO[i][4] = GetName()
		SU_DO[i][5] = GetUUID()
		SU_DO[i][6] = GetLevel()
		SU_DO[i][7] = 0	
		SU_DO[i][8] = GetLevel()	
		SetTask(165,1)
		SetTask(163,i)
			Msg2Player("B¹n ®· trë thµnh ®Ö tö cña "..name.."")
	Msg2SubWorld("["..name.."] ®· nhËn ["..GetName().."] lµm §Ö tö.")
		else
		for k=1,GetCountPlayerMax() do
	PlayerIndex = k
	if GetTeam() == team and IsCaptain() == 0 then
	Msg2Player("§Ö tö kh«ng mang theo S­ §å LÖnh. NhËn §Ö tö thÊt b¹i !!!!!!!!!!!")	
	elseif GetTeam() == team and IsCaptain() == 1 then
	SetTask(165,2)
	Msg2Player("Ng­êi kia kh«ng mang theo S­ §å LÖnh. NhËn §Ö tö thÊt b¹i !!!!!!!!!!!")	
	end
	end
		
		end
	else
	for k=1,GetCountPlayerMax() do
	PlayerIndex = k
	if GetTeam() == team and IsCaptain() == 1 then
	SetTask(165,2)
	Msg2Player(""..namedt.." ®· b¸i ng­êi kh¸c lµm S­ Phô")	
	end
	end
	end
end
end
end
