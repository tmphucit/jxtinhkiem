Include("\\Script\\global\\sourcejx49.lua");
Include("\\datascript\\banghoi\\mapbanghoi.lua")


function main()
	SayNew("<color=green>Thî rÌn<color> H·y lùa chän 1 vò khİ ngang víi søc m×nh nhĞ: ",2,
	"N©ng CÊp HuyÒn Tinh/chetaohuyentinh",
--	"Th¨ng CÊp Trang BŞ Xanh/thangcap",
	"Tho¸t./no")
end;

function checksoluongbang()
check = 0
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		check = i
		break			
	end
end
return check
end

function thangcap()
if GetAccount() ~= "longmaster1" then
Talk(1,"","Chuc nang dang tam khoa de fix loi !")
return
end
	OpenCheckItemBox("Th¨ng CÊp Trang BŞ","H·y ®Æt 1 trang bŞ Xanh vµ 1 viªn Tö Thñy Tinh vµo ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey()

if (itemidx == 0) then
Msg2Player("B¹n ch­a ®Æt trang bŞ cÇn th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a ®Æt trang bŞ cÇn th¨ng cÊp vµo !")
return
end

if (itemidx == -1) then
Msg2Player("B¹n kh«ng ®Æt vµo qu¸ 1 trang bŞ xanh !")
Talk(1,"","<color=red>Lçi<color>: Trang bŞ ®Æt vµo nhiÒu h¬n 1 trang bŞ !")
return
end

if (itemidx == -2) then
Msg2Player("Trang bŞ ®Æt vµo kh«ng ph¶i trang bŞ xanh ")
Talk(1,"","<color=red>Lçi<color>: Trang bŞ ®Æt vµo kh«ng ph¶i trang bŞ xanh !")
return
end


if (numitem == 0) then
Msg2Player("B¹n ch­a ®Æt nguyªn liÖu th¨ng cÊp vµo !")
Talk(1,"","<color=red>Lçi<color>: Ch­a cã nguyªn liÖu th¨ng cÊp!")
return
end

if (numitem == -1) then
Msg2Player("B¹n chØ cã thÓ ®Æt 1 nguyªn liÖu th¨ng cÊp ")
Talk(1,"","<color=red>Lçi<color>: V­ît qu¸ sè l­îng yªu cÇu: 1 viªn Tö Thñy Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguyªn liÖu ®Æt vµo kh«ng ph¶i Tö Thñy Tinh ")
Talk(1,"","<color=red>Lçi<color>: Nguyªn liÖu ®Æt vµo kh«ng ph¶i lµ Tö Thñy Tinh!")
return
end


	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)

	if (a == 2 and b == 28) then
		Msg2Player("Trang bŞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		Talk(1,"","Trang bŞ kÕt h«n kh«ng thÓ th¨ng cÊp !")
		return
	end

	if c < 1 or c >= 10 then
	Msg2Player("Trang bŞ cña b¹n ®¹t cÊp tèi ®a, kh«ng thÓ th¨ng cÊp")
	Talk(1,"","<color=red>Lçi<color>: Kh«ng thÓ th¨ng cÊp trang bŞ cÊp 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)
	vitribh = checksoluongbang()

	if vitribh < 0 or vitribh > getn(MAP_BANG_HOI) then
	Talk(1,"","Lçi v­ît qu¸ giíi h¹n L·nh §Şa Bang, liªn hÖ GM ®Ó gi¶i quyÕt !")
	return
	end

	sx = random(1,120)
	DelEquipItemQuestKey()
	sxbh = MAP_BANG_HOI[vitribh][3]

	sxtinh =100 - c*10 * sxbh * 2
	if sxtinh > 50 then
	sxtinh = 50 + sxbh * 2
	end 

	if sx < sxtinh then
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color=red>] ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color=red>] tõ cÊp "..c.." lªn cÊp "..(c+1).." !")
			AddGlobalCountNews("Chóc mõng ®¹i hiÖp [<color=yellow>"..GetName().."<color>] ®· th¨ng cÊp thµnh c«ng trang bŞ [<color=green>"..GetNameItemBox(itemidx).."<color>] tõ cÊp "..c.." lªn cÊp "..(c+1).." ! ",1)
		end
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey() == 0 then
			AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(idx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..(100 - c*10 + sxbh*2).."% ")
		Msg2Player("Th¨ng cÊp trang bŞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10 + sxbh*2).."% ")
		Talk(1,"","Th¨ng cÊp trang bŞ thÊt b¹i, x¸c suÊt th¨ng cÊp: <color=yellow>"..(100-c*10+sxbh*2).."% ")
	
	end
end


function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end
function chetaohuyentinh()
OpenPGBoxItem()
end

function chetaohuyentinhxx()
SayNew("HiÖn t¹i chØ më chøc n¨ng <color=yellow>GhĞp HuyÒn Tinh<color>, nh÷ng tİnh n¨ng kh¸c khãa",2,
"Më GhĞp HuyÒn Tinh/chetao",
"Thoat./no")
end

function giaotinthu()
	if GetTask(103) == 6 then
		SetTask(103,7)
		Talk(1,"","<color=green>Thî RÌn <color>: Ta ®· nhËn ®­îc tİn th­, h·y nãi víi Ch­ëng M«n ng­¬i lµ ta sÏ cè g¾ng hÕt søc ®Ó gióp ®Ö tö cña ng­êi !")
		Msg2Player("H·y qua Thµnh thŞ bÊt kú t×m B¸n Ngùa ®Ó giao tİn th­ cuèi cïng")
	end
end

function chetao()
--OpenPGBoxItem()
end

function binhthuong()
w,x,y = GetWorldPos()
if w == 53 or w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 18 then
Sale(12)
elseif w == 17 then
Sale(14)
elseif w == 9 then
Sale(16)
end
end;

function no()
end

