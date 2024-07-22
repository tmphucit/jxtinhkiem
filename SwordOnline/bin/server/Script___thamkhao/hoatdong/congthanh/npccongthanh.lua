Include("\\script\\lib\\thuvien.lua")

longtru1 = 323
longtru2 = 32
longtru3 = 32
longtru11 = 32
longtru22 = 32
longtru33 = 33

IDKCL = 23
Include("\\datascript\\congthanh\\danhsachKCL.lua")
Include("\\datascript\\congthanh\\DauGiaKCL.lua")
Include("\\datascript\\congthanh\\danhsachcongthanh.lua")
Include("\\script\\hoatdong\\congthanh\\headtime.lua")
Include("\\script\\hoatdong\\congthanh\\thoigian.lua")
Include("\\datascript\\congthanh\\danhsachlebao.lua")
Include("\\DataScript\\banghoi\\danhsachthanhthi.lua")

function save()
BANG1 = TaoBang(mang_daugiakcl,"mang_daugiakcl")
LuuBang("datascript/congthanh/DauGiaKCL.lua",BANG1)
BANG2 = TaoBang(mangkcl,"mangkcl")
LuuBang("datascript/congthanh/danhsachKCL.lua",BANG2)
BANG3 = TaoBang(DSCTC,"DSCTC")
LuuBang("datascript/congthanh/danhsachcongthanh.lua",BANG3)
end
function savetimer()
BANG1 = TaoBang(mang_daugiakcl,"mang_daugiakcl")
LuuBang("datascript/congthanh/DauGiaKCL.lua",BANG1)
BANG2 = TaoBang(mangkcl,"mangkcl")
LuuBang("datascript/congthanh/danhsachKCL.lua",BANG2)
BANG3 = TaoBang(DSCTC,"DSCTC")
LuuBang("datascript/congthanh/danhsachcongthanh.lua",BANG3)
end

function resetdaugia()
local IPData = openfile("datascript/congthanh/logdaugia.txt", "a");
for i=1,getn(mang_daugiakcl) do
write(IPData,"Tong: "..mang_daugiakcl[i][1].."\t"..mang_daugiakcl[i][2].."\t"..mang_daugiakcl[i][3].."\n");
end
closefile(IPData)
mang_daugiakcl = {}
save()
end
function ghilog(num_kcl,max_kcl)
time = tonumber(date("%H%M%d%m"))
local IPData = openfile("datascript/congthanh/logdaugia.txt", "a");
write(IPData,""..GetTongName().." - "..num_kcl.." - "..max_kcl.." - "..time.."\n");
closefile(IPData)
end


tam_duatop = {"",0,0}
function SapXepHangDuaTop()
for i=1,getn(mang_daugiakcl) do
	for j=1,getn(mang_daugiakcl) do
		if mang_daugiakcl[i][2] > mang_daugiakcl[j][2] then
			tam_duatop = mang_daugiakcl[i]
			mang_daugiakcl[i] = mang_daugiakcl[j]
			mang_daugiakcl[j] = tam_duatop
		end
	end
end

end

function RunTimer__()

end
function RunTimer()

if SubWorldID2Idx(36) == -1 then
return
end

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
giay = tonumber(date("%S"))

SapXepHangDuaTop()

if gio == 18 and check_ngaythang() == 1 then
	if getn(mang_daugiakcl) > 0 then
		if mod(phut,5) == 0 then
			Msg2SubWorld("Danh s¸ch xÕp h¹ng §Êu Gi¸ KhiÕu ChiÕn LÖnh hiÖn t¹i: ")
			for i =1, getn(mang_daugiakcl) do
					Msg2SubWorld("- <color=yellow>H¹ng "..i..": "..mang_daugiakcl[i][1].."")
			end		
		else
			Msg2SubWorld("Bang héi ®ang dÉn ®Çu b¶ng ®Êu gi¸ Khiªu ChiÕn LÖnh lµ : <color=yellow>"..mang_daugiakcl[1][1].." ")
		end
	else
		Msg2SubWorld("§Êu gi¸ Khiªu ChiÕn LÖnh ®· b¾t ®Çu phót thø "..phut..". Ch­a cã bang héi nµo b¸o  danh !")
	end


elseif gio == 19 and phut == 0 and check_ngaythang() == 1 then
if (getn(mang_daugiakcl) == 0) then
Msg2SubWorld("Kh«ng cã Bang Héi nµo tham gia ®Êu gi¸ nªn ngµy mai sÏ kh«ng tæ chøc CTC !")
else
		Msg2SubWorld("Danh s¸ch xÕp h¹ng §Êu Gi¸ KhiÕu ChiÕn LÖnh hiÖn t¹i: ")
		for i =1, getn(mang_daugiakcl) do
			Msg2SubWorld("- <color=yellow>H¹ng "..i..": "..mang_daugiakcl[i][1].." - Sè l­îng: "..mang_daugiakcl[i][2].." c¸i")
		end		
		Msg2SubWorld("Chóc mõng bang héi <color=yellow>"..mang_daugiakcl[1][1].." <color=red>®· th¾ng trong cuéc ®Êu gi¸ h«m nay.")
		
		idmap,tenmap,vitritt = check_vitri_dau_gia()
		
		--a,b,c,d,e,f,g = GetTongMap(checkIDMAP())
		if DSTT[vitritt][1] == 0 then
			Msg2SubWorld("Do thµnh thÞ "..tenmap.." ch­a cã bang héi chiÕm lÜnh nªn Bang Héi <color=yellow>"..mang_daugiakcl[1][1].." <color=red>®­îc quyÒn qu¶n lý thµnh thÞ nµy !")
			AddGlobalCountNews("Bang héi <color=red>"..mang_daugiakcl[1][1].." <color>®· giµnh chiÕn th¾ng cuéc ®Êu gi¸ khiªu chiÕn lÖnh h«m nay vµ <color=red>"..mang_daugiakcl[1][4].." <color> ®­îc phong hµm <color=blue>Th¸i Thó "..tenmap.."",1)
			
			if (getn(mang_daugiakcl) > 1) then
				Msg2SubWorld("Bang Héi <color=green>"..mang_daugiakcl[2][1].." <color=red>®­îc quyÒn C«ng Thµnh ChiÕn vµo ngµy mai !")
			else
				Msg2SubWorld("<color=green>H«m nay chØ cã 1 Bang Héi tham gia ®Êu gi¸ nªn ngµy mai kh«ng cã C«ng Thµnh ChiÕn")
			end
			
		

			

			SetTongMap(15,mang_daugiakcl[1][1],mang_daugiakcl[1][3],mang_daugiakcl[1][4],mang_daugiakcl[1][5],10,10)
			SetTongMap(17,mang_daugiakcl[1][1],mang_daugiakcl[1][3],mang_daugiakcl[1][4],mang_daugiakcl[1][5],10,10)
			SetTongMap(11,mang_daugiakcl[1][1],mang_daugiakcl[1][3],mang_daugiakcl[1][4],mang_daugiakcl[1][5],10,10)
			
			DSCTC[vitritt][2][1] = mang_daugiakcl[1][1]
			DSCTC[vitritt][2][2] = mang_daugiakcl[1][3]
			DSCTC[vitritt][2][3] = mang_daugiakcl[1][4]
			DSCTC[vitritt][2][4] = mang_daugiakcl[1][5]
			
			if getn(mang_daugiakcl) > 1 then
				DSCTC[vitritt][1][1] = mang_daugiakcl[2][1]
				DSCTC[vitritt][1][2] = mang_daugiakcl[2][3]
				DSCTC[vitritt][1][3] = mang_daugiakcl[2][4]
				DSCTC[vitritt][1][4] = mang_daugiakcl[2][5]	
			end
			save()
		else
			DSCTC[vitritt][1][1] = mang_daugiakcl[1][1]
			DSCTC[vitritt][1][2] = mang_daugiakcl[1][3]
			DSCTC[vitritt][1][3] = mang_daugiakcl[1][4]
			DSCTC[vitritt][1][4] = mang_daugiakcl[1][5]	
			
			Msg2SubWorld("TrËn c«ng thµnh chiÕn ngµy mai vµo lóc 20h00 ngµy "..(ngay+1).."/"..thang.."/2021")
			Msg2SubWorld("C«ng Thµnh "..DSCTC[vitritt][1][1].." vs. Thñ Thµnh  "..DSCTC[vitritt][2][1].." ")
			AddGlobalCountNews("Bang héi <color=red>"..mang_daugiakcl[1][1].."<color> ®· giµnh chiÕn th¾ng trong ®Êu gi¸ h«m nay vµ sÏ tham gia C«ng Thµnh ChiÕn víi bang  "..DSCTC[vitritt][2][1].." vµo lóc 20h00 ngµy "..(ngay+1).."/"..thang.."/2021 ",1)
			save()
			--vtbang = checktenbang(mang_daugiakcl[1][1])
			--if vtbang == 0 then
			--	DSLB[getn(DSLB)+1] = {mang_daugiakcl[1][1], 0, 20}
			--else
			--	DSLB[vtbang][3] = 20
			--end
			--BANG1 = TaoBang(DSLB,"DSLB")
			--LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
		end	
end
		resetdaugia()
end

time = 59 - phut
if gio == 19 and phut == 45 and checktimeCTC() == 1 then
	idxp = PlayerIndex
	for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
		if w == 36 or w == 34 or w == 35 then
			SetFightState(0)
			SetRevPos(19)
			SetRank(1)
			SetTask(80,0)
			SetTask(128,0)
			Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn ")
			NewWorld(53,200*8,200*16)
		end
	end
	PlayerIndex = idxp
elseif gio == 19 and phut > 45 and checktimeCTC() == 1 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	AddGlobalCountNews("C«ng thµnh chiÕn gi÷a bang c«ng thµnh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> vµ bang thñ thµnh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> sÏ b¾t ®Çu sau <color=red>"..time.."<color> phót n÷a. H·y vµo C«ng Thµnh Quan ®Ó tham gia ",1)
	Msg2SubWorld("C«ng thµnh chiÕn gi÷a bang c«ng thµnh ["..DSCTC[vitrictc()][1][1].."] vµ bang thñ thµnh ["..DSCTC[vitrictc()][2][1].."] sÏ b¾t ®Çu sau "..time.." phót n÷a. H·y vµo C«ng Thµnh Quan ®Ó tham gia !")
	end
elseif gio == 20 and phut == 0 and checktimeCTC() == 1 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	Msg2SubWorld("C«ng thµnh chiÕn gi÷a bang c«ng thµnh ["..DSCTC[vitrictc()][1][1].."] vµ bang thñ thµnh ["..DSCTC[vitrictc()][2][1].."] b¾t ®Çu !")
	AddGlobalCountNews("C«ng thµnh chiÕn gi÷a bang c«ng thµnh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> vµ bang thñ thµnh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> ®· b¾t ®Çu ! ",1)
	ctc = SubWorldID2Idx(36)
	AddNpc(782,95,ctc,1666*32,3477*32)
	AddNpc(783,95,ctc,1675*32,3485*32)
	AddNpc(782,95,ctc,1732*32,3414*32)
	AddNpc(783,95,ctc,1741*32,3421*32)
	AddNpc(782,95,ctc,1799*32,3347*32)
	AddNpc(783,95,ctc,1808*32,3355*32)
	
	end
elseif gio == 21 and phut == 15 and checktimeCTC() == 1 then
	if DSCTC[vitrictc()][1][1] ~= "" then
	kickall()
	if GetGlbMissionV(10) == 2 then
		AddGlobalCountNews("C«ng thµnh chiÕn gi÷a bang c«ng thµnh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> vµ bang thñ thµnh<color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> ®· kÕt thóc, phÇn th¾ng thuéc vÒ Phe C«ng Thµnh",1)
		Msg2World("C«ng thµnh chiÕn gi÷a bang c«ng thµnh ["..DSCTC[vitrictc()][1][1].."] vµ bang thñ thµnh ["..DSCTC[vitrictc()][2][1].."] ®· kÕt thóc, phÇn th¾ng thuéc vÒ phe C«ng Thµnh!")
		
			DSCTC[vitrictc()][2][1] = DSCTC[vitrictc()][1][1]
			DSCTC[vitrictc()][2][2] = DSCTC[vitrictc()][1][2]
			DSCTC[vitrictc()][2][3] = DSCTC[vitrictc()][1][3] 
			DSCTC[vitrictc()][2][4] = DSCTC[vitrictc()][1][4]
		
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
		SetTongMap(11,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
		SetTongMap(17,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
		SetTongMap(15,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
	idmap,tenmap,vt = check_vitri_ctc()
	Msg2SubWorld("Bang héi "..DSCTC[vitrictc()][2][1].." ®· giµnh chiÕn th¾ng vµ "..DSCTC[vitrictc()][2][3].." ®­îc phong hµm Th¸i Thó "..tenmap.."")
	elseif GetGlbMissionV(10) == 1 or GetGlbMissionV(10) == 0 then
		
		AddGlobalCountNews("C«ng thµnh chiÕn gi÷a bang c«ng thµnh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> vµ bang thñ thµnh <color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> ®· kÕt thóc, phÇn th¾ng thuéc vÒ Phe Thñ Thµnh",1)	
		Msg2SubWorld("C«ng thµnh chiÕn gi÷a bang c«ng thµnh ["..DSCTC[vitrictc()][1][1].."] vµ bang thñ thµnh ["..DSCTC[vitrictc()][2][1].."] ®· kÕt thóc, phÇn th¾ng thuéc vÒ phe Thñ Thµnh!")
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
	end
	end
end		

if gio == 2 and phut == 0 and timelebao() == 1 then
	--	tenbangtest = DSCTC[3][2][1]
	--	vtbang = checktenbang(tenbangtest)
		--	if vtbang == 0 then
		--		DSLB[getn(DSLB)+1] = {tenbangtest, 1, 0}
		--	else
	--			DSLB[vtbang][2] = 1
	--		end
	--		BANG1 = TaoBang(DSLB,"DSLB")
	--		LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
			
	--Msg2SubWorld("<color=pink>§· cËp nhËt danh s¸ch LÔ Bao C«ng Thµnh ChiÕn tuÇn võa råi. C¸c Th¸i Thó ®Õn Hç Trî T©n Thñ ®Ó nhËn phÇn th­ëng !")
end

end


soluongquai =  {{1,500,1200},{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{201,1200,1800}}

function kickall()
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
PlayerIndex = i
w,x,y = GetWorldPos()

	if w == 36 or w == 34 or w == 35 then
		vt = 1
		for i=1,getn(soluongquai) do
		if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
		vt = i
		end
		end
		exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
		exp2 = exp / 10000 * 2000 / 2 * 8
		AddOwnExp(exp2)
		Msg2Player("B¹n nhËn ®­îc "..exp2.." kinh nghiÖm. ")
		Talk(0,"")
	end
	if w == 36 then
		if GetTask(80) == 1 then
			NewWorld(34, 201*8, 200*16);
		elseif GetTask(80) == 2 then
			NewWorld(35, 1566, 3233);
		end	
	end
end
PlayerIndex = idxp
end



function checkTongName()
for i=1,getn(DSTT) do
	if GetTongName() == DSTT[i][4] then
		return DSTT[i][2]
	end
end
return ""
end
function checkTongName_()
_,a,a2,_,_,_,_ = GetTongMap(11)
_,b,b2,_,_,_,_ = GetTongMap(17)
_,c,c2,_,_,_,_ = GetTongMap(9)
_,d,d2,_,_,_,_ = GetTongMap(15)
if GetTongName() == a and GetTongNameID() == a2 then
return "§¹i Lý "
elseif GetTongName() == b and GetTongNameID() == b2 then
return "Ph­îng T­êng"
elseif GetTongName() == c and GetTongNameID() == c2 then
return "BiÖn Kinh"
elseif GetTongName() == d and GetTongNameID() == d2 then
return "T­¬ng D­¬ng"
else
return ""
end
end


function checkCTCName()
for i=1,getn(DSCTC) do
	if GetTongName() == DSCTC[i][1][1] or GetTongNameID() == DSCTC[i][1][2] or GetTongName() == DSCTC[i][2][1] or GetTongNameID() == DSCTC[i][2][2] then
		return 1
	end
end
return 0
end


function check_ngaythang()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

for i =1,getn(mang_time_dau_gia[thang]) do
	if ngay == mang_time_dau_gia[thang][i][1] then
		return 1
	end
end
return 0
end

function main__()
Talk(1,"","TÝnh n¨ng t¹m khãa trong thêi gian ®ua top !")
end
function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
w,x,y = GetWorldPos()

if GetTongNameID() == 0 then
Talk(1,"","Vui lßng ®Õn NPC Qu¶n Lý Bang Héi ®Ó t¹o bang héi !")
return
end
		if check_ngaythang() == 1 and gio == 18 and GetTongFigure() == 3 then
			SayNew("<color=green>Qu¶n Lý Bang Héi<color>:<enter>Thêi gian ®Êu gi¸ cßn l¹i lµ: <color=red>"..(59-phut).."<color> phót <color=red>"..(59-giay).."<color> gi©y ! ",6,
			"§Êu gi¸ Khiªu ChiÕn LÖnh/daugiakclxx",
			"Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
			"Xem thêi gian §Êu Gi¸ /timedaugia",
			"Xem thêi gian C«ng Thµnh ChiÕn /timectc",
			"Xem Ho¹t §éng H«m Nay/hoatdong",
			"Tho¸t ./no")
		else
			if 1 == checktimeCTC() then
				SayNew("<color=green>Qu¶n Lý Bang Héi<color>:",8,
				"Giao nép khiªu chiÕn lÖnh /nopkcl",
				"Tham gia C«ng Thµnh ChiÕn /thamgia",
				"Tham gia C«ng Thµnh ChiÕn - Liªn Minh/thamgiamienphi1",
				"Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
				"Xem thêi gian §Êu Gi¸ /timedaugia",
				"Xem thêi gian C«ng Thµnh ChiÕn /timectc",
				"Xem Ho¹t §éng H«m Nay/hoatdong",	
--			--	"Mua VËt PhÈm/rutvpctc",
				"Tho¸t./no")
			else
				SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Ta chuyªn qu¶n lý nh÷ng vÊn ®Ò vÒ Bang héi ",3,
				"Giao nép khiªu chiÕn lÖnh /nopkcl",
				"Xem sè l­îng Khiªu ChiÕn LÖnh /xemsl",
				"Xem thêi gian §Êu Gi¸ /timedaugia",
				"Xem thêi gian C«ng Thµnh ChiÕn /timectc",
				"Xem Ho¹t §éng H«m Nay/hoatdong",
--				"NhËn phÇn th­ëng C«ng Thµnh ChiÕn /nhanptctc",
				"Tho¸t./no")
			end
		end	
end

function checktenbang(tongname)
	for i=1,getn(DSLB) do
		if tongname == DSLB[i][1] then
			return i
		end
	end
return 0
end

function nhanptctc()
	SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Vui lßng chän vËt phÈm cÇn mua ",2,
	"NhËn phÇn th­ëng CTC tuÇn ®Çu tiªn/rutvpctc00",
--	"NhËn LÔ Bao C«ng Thµnh ChiÕn/rutvpctc01",
	"Tho¸t./no")
end
function rutvpctc()
	SayNew("<color=green>Qu¶n Lý Bang Héi<color>: Vui lßng chän vËt phÈm cÇn mua ",3,
	"Mua 1 LÖnh Bµi C«ng Thµnh ChiÕn = 150 v¹n /rutvpctc1",
	"Mua 1 LÖnh Bµi C«ng Thµnh ChiÕn = 1 KNB /rutvpctc2",
	"Tho¸t./no")
end

function rutvpctc00()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
		return
	end

if GetTongFigure() == 3 then
	vtbang = checktenbang(GetTongName()) 
	if vtbang > 0 then
				if DSLB[vtbang][2] == 1 then
					DSLB[vtbang][2]  = 0
					
					for k=1,3 do
						AddThienHoang()
						AddEventItem(689)
						AddEventItem(690)
					end
					
					BANG1 = TaoBang(DSLB,"DSLB")
					LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
					Msg2SubWorld("Bang chñ "..GetName().." thuéc bang "..GetTongName().." ®· nhËn <color=yellow>PhÇn th­ëng C«ng Thµnh ChiÕn tuÇn ®Çu tiªn")
				elseif DSLB[vtbang][2] == 2 then
					DSLB[vtbang][2]  = 0
					
					AddThienHoang()
					AddEventItem(689)
					AddEventItem(690)
					
					BANG1 = TaoBang(DSLB,"DSLB")
					LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
					Msg2SubWorld("Bang chñ "..GetName().." thuéc bang "..GetTongName().." ®· nhËn <color=yellow>PhÇn th­ëng C«ng Thµnh ChiÕn tuÇn ®Çu tiªn")
				else
					Talk(1,"","Bang héi nµy ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
				end
	else
		Talk(1,"","Bang héi cña ng­¬i kh«ng cã tªn trong danh s¸ch nhËn phÇn th­ëng !")
	end
else
	Talk(1,"","ChØ cã bang chñ míi cã thÓ thùc hiÖn tÝnh n¨ng nµy !")
end
end

function AddThienHoang()
item = RandomNew(1,9)
							if item == 1 then	
								idxitem = AddItem(0,4,19,1,0,0,0)
							
							elseif item == 2 then
								idxitem = AddItem(0,2,79,1,0,0,0)
							
							elseif item == 3 then
								idxitem = AddItem(0,5,24,1,0,0,0)
							
							elseif item == 4 then
								idxitem = AddItem(0,8,22,1,0,0,0)
							
							elseif item == 5 then
								idxitem = AddItem(0,7,41,1,0,0,0)
							
							elseif item == 6 then
								idxitem = AddItem(0,6,26,1,0,0,0)
							
							elseif item == 7 then
								idxitem = AddItem(0,9,19,1,0,0,0)
							
							elseif item == 8 then
								idxitem = AddItem(0,3,35,1,0,0,0)
							elseif item == 9 then
								idxitem = AddItem(0,3,36,1,0,0,0)
							end
end

function rutvpctc01()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end

if GetTongFigure() == 3 then
	vtbang = checktenbang(GetTongName()) 
	if vtbang > 0 then
		if DSLB[vtbang][2] > 0 then

				DSLB[vtbang][2] = DSLB[vtbang][2] - 1
				BANG1 = TaoBang(DSLB,"DSLB")
				LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
				AddEventItem(249)
				Msg2SubWorld("Bang chñ "..GetName().." thuéc bang "..GetTongName().." ®· rót 1 LÔ Bao C«ng Thµnh ChiÕn")
				Msg2Player("Sè l­îng LÔ Bao C«ng Thµnh ChiÕn cã thÓ nhËn ®­îc: <color=green>"..DSLB[vtbang][2] .." c¸i")
	
		else
			Talk(1,"","Bang héi cña ng­¬i ®· mua hÕt LÖnh Bµi cña tuÇn nµy råi, kh«ng thÓ mua thªm !")
		end
	else
		Talk(1,"","Bang héi cña ng­¬i kh«ng cã tªn trong danh s¸ch mua LÖnh Bµi !")
	end
else
	Talk(1,"","ChØ cã bang chñ míi cã thÓ thùc hiÖn tÝnh n¨ng nµy !")
end
end

function rutvpctc1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
if GetTongFigure() == 3 then
	vtbang = checktenbang(GetTongName()) 
	if vtbang > 0 then
		if DSLB[vtbang][3] > 0 then
			if GetCash() >= 1500000 then
				Pay(1500000)
				DSLB[vtbang][3] = DSLB[vtbang][3] - 1
				BANG1 = TaoBang(DSLB,"DSLB")
				LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
				AddLenhBaiCTC()
				Msg2SubWorld("Bang chñ "..GetName().." thuéc bang "..GetTongName().." ®· chi 1 Kim Nguyªn B¶o ®Ó mua <color=yellow>1 LÖnh Bµi C«ng Thµnh ChiÕn")
				Msg2Player("Sè l­îng LÖnh Bµi C«ng Thµnh ChiÕn cã thÓ mua ®­îc: <color=green>"..DSLB[vtbang][3] .." c¸i")
			else
				Talk(1,"","Ng­¬i kh«ng mang ®ñ 150 v¹n l­îng, kh«ng thÓ mua !")
			end
		else
			Talk(1,"","Bang héi cña ng­¬i ®· mua hÕt LÖnh Bµi cña tuÇn nµy råi, kh«ng thÓ mua thªm !")
		end
	else
		Talk(1,"","Bang héi cña ng­¬i kh«ng cã tªn trong danh s¸ch mua LÖnh Bµi !")
	end
else
	Talk(1,"","ChØ cã bang chñ míi cã thÓ thùc hiÖn tÝnh n¨ng nµy !")
end
end


mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function AddLenhBaiCTC()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

		ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		itemidx = AddEventItem(166)
		SetHSD(itemidx, 2021 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 LÖnh Bµi C«ng Thµnh ChiÕn")
end


function rutvpctc2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","Hµnh trang kh«ng ®ñ chç trèng !")
return
end
if GetTongFigure() == 3 then
	vtbang = checktenbang(GetTongName()) 
	if vtbang > 0 then
		if DSLB[vtbang][3] > 0 then
			if GetItemCount(17) >= 1 then
				DelItem(17)
				DSLB[vtbang][3] = DSLB[vtbang][3] - 1
				BANG1 = TaoBang(DSLB,"DSLB")
				LuuBang("datascript/congthanh/danhsachlebao.lua",BANG1)
				AddLenhBaiCTC()
				Msg2SubWorld("Bang chñ "..GetName().." thuéc bang "..GetTongName().." ®· chi 1 Kim Nguyªn B¶o ®Ó mua <color=yellow>1 LÖnh Bµi C«ng Thµnh ChiÕn")
				Msg2Player("Sè l­îng LÖnh Bµi C«ng Thµnh ChiÕn cã thÓ mua ®­îc: <color=green>"..DSLB[vtbang][3] .." c¸i")
			else
				Talk(1,"","Ng­¬i kh«ng mang ®ñ 1 Kim Nguyªn B¶o, kh«ng thÓ mua !")
			end
		else
			Talk(1,"","Bang héi cña ng­¬i ®· mua hÕt LÖnh Bµi cña tuÇn nµy råi, kh«ng thÓ mua thªm !")
		end
	else
		Talk(1,"","Bang héi cña ng­¬i kh«ng cã tªn trong danh s¸ch mua LÖnh Bµi !")
	end
else
	Talk(1,"","ChØ cã bang chñ míi cã thÓ thùc hiÖn tÝnh n¨ng nµy !")
end
end
function hoatdong()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

daugiakcl = ""
for i =1,getn(mang_time_dau_gia[thang]) do
	if ngay == mang_time_dau_gia[thang][i][1] then
		daugiakcl = mang_time_dau_gia[thang][i][3]
	end
end
congthanhchien = ""
for i =1,getn(mang_time_ctc[thang]) do
	if ngay == mang_time_ctc[thang][i][1] then
		congthanhchien = mang_time_ctc[thang][i][3]
	end
end

if daugiakcl ~= "" then
	Talk(1,"","<color=yellow>H«m nay 18h00 - 19h00: §Êu Gi¸ Khiªu ChiÕn LÖnh - "..daugiakcl.."")
end
if congthanhchien ~= "" then
	Talk(1,"","<color=yellow>H«m nay 20h00 - 21h15: C«ng Thµnh ChiÕn - "..congthanhchien.."")
end

if daugiakcl == "" and congthanhchien == "" then
	Talk(2,"","§Êu gi¸ Khiªu ChiÕn LÖnh vµo 18h00 - 19h00 hµng tuÇn:\n- Thø 2: §¹i Lý\n- Thø 4: Ph­îng T­êng\n- Thø 6: T­¬ng D­¬ng","C«ng Thµnh ChiÕn vµo 20h00 - 21h15 hµng tuÇn:\n- Thø 3: §¹i Lý\n- Thø 5: Ph­îng T­êng\n- Thø 7: T­¬ng D­¬ng")
end
end

function timedaugia()
Talk(2,"","Thêi gian ®Êu gi¸ b¾t ®Çu tõ 18h00 - 19h00 Thø 2, Thø 4, Thø 6 t¹i NPC Qu¶n Lý Bang Héi - Minh NguyÖt TrÊn",
"Sau khi kÕt thóc Bang Héi nµo giµnh chiÕn th¾ng ®Êu gi¸ sÏ ®­îc C«ng Thµnh ChiÕn vµo ngµy mai !")
end
function timectc()
Talk(2,"","Thêi gian c«ng thµnh chiÕn b¾t ®Çu tõ 20h00 - 21h15 Thø 3, Thø 5, Thø 7 hµng tuÇn t¹i NPC Qu¶n Lý Bang Héi - Minh NguyÖt TrÊn",
"Bang héi chiÕm thµnh sÏ nhËn ®­îc phÇn th­ëng vµo s¸ng thø 2 hµng tuÇn")
end

function daugiakclxx()
w,x,y = GetWorldPos()
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i lµ <color=red>Bang Chñ <color>. Kh«ng cã quyÒn tham gia ®Êu gi¸ !")
return
end

ThanhThiDangChiem = checkTongName()
if ThanhThiDangChiem ~= "" then
Talk(1,"","Bang héi cña b¹n ®ang chiÕm lÜnh thµnh thÞ <color=blue>"..ThanhThiDangChiem.."<color>. Kh«ng thÓ tham gia ®Êu gi¸ !")
return
end

if checkCTCName() == 1 then
Talk(1,"","Bang héi cña b¹n ®· cã trong danh s¸ch tham gia C«ng Thµnh ChiÕn. V× thÕ kh«ng thÓ tham gia ®Êu gi¸ !")
return
end

if check_daugiakcl() == 0 then
mang_daugiakcl[getn(mang_daugiakcl)+1] = {GetTongName(),0,GetTongNameID(),GetName(),GetUUID()}
Msg2Player("Khëi t¹o §Êu Gi¸ KCL thµnh c«ng !")
end
vtbang = checkbang()
if vtbang == 0 then
Talk(1,"","Bang héi cña b¹n kh«ng cã Khiªu chiÕn LÖnh, kh«ng thÓ ®Êu gi¸ ")
return
end
--sl = mangkcl[vtbang][2]
--SayNew("<color=green>Qu¶n Lý C«ng Thµnh<color>: B¹n cã ch¾c ch¾n muèn §Êu Gi¸ Toµn Bé "..sl.." Khiªu ChiÕn LÖnh cña bang héi kh«ng?",2,
--"Ta ch¾c ch¾n muèn ®Êu "..sl.." Khiªu ChiÕn LÖnh/daugiakcl2",
--"Tho¸t./no")
OpenStringBox(2,"NhËp sè l­îng","daugiakcl2")
end

function daugiakcl2(num)
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if gio ~= 18 then
Msg2Player("<color=pink>: §· hÕt thêi gian ®Êu gi¸ !")
return
end

vtbang = checkbang()
--num = mangkcl[vtbang][2]

num2 = tonumber(num)
if num2 <= 0 then
Talk(1,"","HiÖn t¹i bang héi ®· hÕt KCL, kh«ng thÓ ®Êu gi¸ tiÕp !")
return
end
if check_daugiakcl() == 0 then
	mang_daugiakcl[getn(mang_daugiakcl)+1] = {GetTongName(),0,GetTongNameID(),GetName(),GetUUID()}
	Msg2Player("Khëi t¹o §Êu Gi¸ KCL thµnh c«ng !")
else
	vt_daugia = check_daugiakcl()
	sl = mangkcl[vtbang][2]
	if num2 > sl then
	Talk(1,"","Sè l­îng Khiªu ChiÕn LÖnh trong Bang Héi ®· hÕt !")
	return
	end

	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh«ng ®­îc ®Ó trèng ! ")
	return
	end
	mangkcl[vtbang][2] = mangkcl[vtbang][2] - num2
	if  mangkcl[vtbang][2] == (sl-num2) then
		mang_daugiakcl[vt_daugia][2] =  mang_daugiakcl[vt_daugia][2] + num2
		Msg2Player("B¹n ®· ®Êu gi¸ thªm "..num2.." Khiªu ChiÕn LÖnh ")
		Msg2Player("Khiªu ChiÕn LÖnh ®· ®Êu gi¸: "..mang_daugiakcl[vt_daugia][2].." ")
		Talk(1,"","Bang héi ®ang dÉn ®Çu b¶ng ®Êu gi¸ lµ :<color=red> "..mang_daugiakcl[check_hang_nhat()][1].." ")
		ghilog(num2,mang_daugiakcl[vt_daugia][2])
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
end	
end

function check_hang_nhat()
vt_hang = 1
max = mang_daugiakcl[1][2]
for i=1,getn(mang_daugiakcl) do
	if mang_daugiakcl[i][2] > max then
		max = mang_daugiakcl[i][2]
		vt_hang = i
	end
end
return vt_hang
end



function check_daugiakcl()
vt_check = 0
for i=1,getn(mang_daugiakcl) do
	if GetTongName() == mang_daugiakcl[i][1] and GetTongNameID() == mang_daugiakcl[i][3] then
	vt_check = i
	break
	end
end
return vt_check
end

function checkbang()
vitri = 0
for i=1,getn(mangkcl) do
	if GetTongName() == mangkcl[i][1] and GetTongNameID() == mangkcl[i][3]then
	vitri = i
	break
	end
end
return vitri
end

function nopkcl()
OpenStringBox(1,"NhËp sè l­îng","nopkcl2")
end

function nopkcl2(num)
ngay = tonumber(date("%d"))
if GetTask(136) ~= ngay then
SetTask(136,ngay)
SetTask(137,0)
SetTask(82,0)
SetTask(9,0)
SetTask(2,0)
SetTask(3,0)
	SetTask(908, 0) -- Reset Task Su Kien
	SetTask(945, 0) -- Reset Task Su Kien


end
num2 = tonumber(num)
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {GetTongName(),0,GetTongNameID()}
	Msg2Player("Khëi t¹o KCL thµnh c«ng !")
else
	vitri_kcl = checkbang()
	sl = GetItemCount(IDKCL)
	if num2 > sl then
		Talk(1,"","Khiªu chiÕn lÖnh trong hµnh trang kh«ng ®ñ !")
	return
	end
	if num2 == 0 or num2 == nil then
	Talk(1,"","Kh«ng ®­îc ®Ó trèng ! ")
	return
	end
	if (GetTask(9)+num2) > 20 then
	Talk(1,"","V­ît qu¸ giíi h¹n 20 c¸i !")
	return
	end

	for i=1,num2 do
		DelItem(IDKCL)
	end
		if GetItemCount(IDKCL) == (sl-num2) then
			mangkcl[vitri_kcl ][2] = mangkcl[vitri_kcl ][2]+num2
			SetTask(9,GetTask(9)+num2)
			SetTask(999,GetTask(999)+num2)
			Msg2Player("B¹n ®· giao nép thµnh c«ng "..num2.." Khiªu ChiÕn LÖnh !")
			Msg2Player("Sè l­îng KCL trong ngµy: "..GetTask(9).." / 20 ")
			for k=1,num2 do
				AddOwnExp(200000)
			end
			
			Msg2Player("B¹n nhËn ®­îc "..(num2*200000).." kinh nghiÖm ")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end

end
end

function xemsl()
if checkbang() == 0 then
	mangkcl[getn(mangkcl)+1] = {GetTongName(),0,GetTongNameID()}
	Msg2Player("Khëi t¹o KCL thµnh c«ng !")
else
	vt = checkbang()
	if GetTongFigure() >= 2 then
		Talk(1,"","Sè Khiªu ChiÕn LÖnh hiÖn t¹i cña Bang Héi lµ: <color=red>"..mangkcl[vt][2].."<color> ")
	else
		Talk(1,"","ChØ cã <color=red>Bang Chñ <color> hoÆc <color=red>Tr­ëng L·o<color> míi cã thÓ xem !")
	end
end
end



function thamgia2()
Talk(1,"","<color=green>Qu¶n Lý Bang Héi<color>: C«ng thµnh chiÕn sÏ b¸o danh lóc 18h45 vµ diÔn ra tõ 19h00 - 21h00 ")
end

function no()
if GetAccount() == "vantoi" then
Msg2Player(" "..longtru11.." "..longtru22.." "..longtru33.." "..longtru1.." "..longtru2.." "..longtru3.."") 
end
end



function TaoLongTru()
npcmapindex = SubWorldID2Idx(36)

longtru1 = AddNpc(776,95,npcmapindex,1655*32,3346*32)
SetNpcScript(longtru1, "\\script\\congthanh\\npccongthanh.lua");
longtru2 = AddNpc(776,95,npcmapindex,1723*32,3279*32)
SetNpcScript(longtru2, "\\script\\congthanh\\npccongthanh.lua");
longtru3 = AddNpc(776,95,npcmapindex,1590*32,3412*32)
SetNpcScript(longtru3, "\\script\\congthanh\\npccongthanh.lua");

longtru11 = AddNpc(778,95,npcmapindex,1655*32,3346*32)
SetNpcScript(longtru11, "\\script\\congthanh\\npccongthanh.lua");
longtru22 = AddNpc(778,95,npcmapindex,1723*32,3279*32)
SetNpcScript(longtru22, "\\script\\congthanh\\npccongthanh.lua");
longtru33 = AddNpc(778,95,npcmapindex,1590*32,3412*32)
SetNpcScript(longtru33, "\\script\\congthanh\\npccongthanh.lua");


end

function OnDeath(idx)
if GetTask(80) == 1 and GetCurCamp() == 2 then 
	if ( longtru11 == tonumber(idx)) then
		HideNpc(longtru11,99999999)
		HideNpc(longtru1,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru22 then 
		HideNpc(longtru22,999999999)
		HideNpc(longtru2,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy §Þnh Xuyªn Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru33 then 
		HideNpc(longtru33,999999999)
		HideNpc(longtru3,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)+1)
		Msg2World("C«ng thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy B×nh Giang Long Trô, sè l­îng Long Trô chiÕm ®­îc bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 5 gi©y sÏ xuÊt hiÖn Long Trô Hån TrÊn !")
	if GetGlbMissionV(10) == 3 then
		kickall()
		Msg2World("Bªn C«ng Thµnh ®· chiÕn ®­îc 3 Long Trô vµ giµnh chiÕn th¾ng hoµn toµn !")
		AddGlobalCountNews("C«ng thµnh chiÕn gi÷a bang c«ng thµnh <color=green>["..DSCTC[vitrictc()][1][1].."]<color> vµ bang thñ thµnh<color=yellow>["..DSCTC[vitrictc()][2][1].."]<color> ®· kÕt thóc, phÇn th¾ng thuéc vÒ Phe C«ng Thµnh",1)
		Msg2World("C«ng thµnh chiÕn gi÷a bang c«ng thµnh ["..DSCTC[vitrictc()][1][1].."] vµ bang thñ thµnh ["..DSCTC[vitrictc()][2][1].."] ®· kÕt thóc, phÇn th¾ng thuéc vÒ phe C«ng Thµnh!")
		DSCTC[vitrictc()][2][1] = DSCTC[vitrictc()][1][1]
		DSCTC[vitrictc()][2][2] = DSCTC[vitrictc()][1][2]
		DSCTC[vitrictc()][2][3] = DSCTC[vitrictc()][1][3] 
		DSCTC[vitrictc()][2][4] = DSCTC[vitrictc()][1][4]
		DSCTC[vitrictc()][1][1] = ""
		DSCTC[vitrictc()][1][2] = 0
		DSCTC[vitrictc()][1][3] = ""
		DSCTC[vitrictc()][1][4] = 0
		SetTongMap(11,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
		SetTongMap(17,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
		SetTongMap(15,DSCTC[vitrictc()][2][1],DSCTC[vitrictc()][2][2],DSCTC[vitrictc()][2][3],DSCTC[vitrictc()][2][4],10,10)
		
		idmap,tenmap,vt = check_vitri_ctc()
		Msg2SubWorld("Bang héi "..DSCTC[vitrictc()][2][1].." ®· giµnh chiÕn th¾ng vµ "..DSCTC[vitrictc()][2][3].." ®­îc phong hµm Th¸i Thó "..tenmap.."")
		
	end
elseif GetCurCamp() == 1 and GetTask(80) == 2 then -- Ben thu
	if tonumber(idx) == longtru1 then -- tru giua vang
		HideNpc(longtru1,999999999)
		HideNpc(longtru11,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru2 then 
		HideNpc(longtru2,999999999)
		HideNpc(longtru22,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	elseif tonumber(idx) == longtru3 then 
		HideNpc(longtru3,999999999)
		HideNpc(longtru33,18*5)
		SetGlbMissionV(10,GetGlbMissionV(10)-1)
		Msg2World("Thñ thµnh binh sÜ ["..GetName().."] ®· ph¸ hñy LËp D­¬ng Long Trô, sè l­îng Long Trô bÞ chiÕm bªn c«ng thµnh lµ : "..GetGlbMissionV(10).." ")
	end
Msg2Player("Sau 5 gi©y sÏ xuÊt hiÖn Long Trô TrÊn Gi÷ !")
end
end

function OnDrop()
end

function thamgiamienphi1()
SayNew("§Ó vµo C«ng Thµnh ChiÕn - Liªn Minh cÇn 1 <color=yellow>LÖnh Bµi C«ng Thµnh ChiÕn<color>. Khi vµo trong sÏ <color=red>bÞ mÊt lÖnh bµi<color>. Ng­¬i ch¾c ch¾n muèn vµo chø ?",2,
"Ta muèn vµo C«ng Thµnh ChiÕn/thamgiamienphi",
"Tho¸t./no")
end
function thamgiamienphi()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))


if gio < 19 or (gio == 19 and phut < 45) then
Talk(1,"","Thêi gian vµo C«ng Thµnh ChiÕn b¾t ®Çu tõ 19h45 phót !")
return
end

if gio > 21 or (gio == 21 and phut > 15) then
Talk(1,"","TrËn C«ng Thµnh ChiÕn h«m nay ®· kÕt thóc !")
return
end
if DSCTC[vitrictc()][1][1] == "" then
Talk(1,"","H«m nay kh«ng cã C«ng Thµnh ChiÕn do kh«ng cã Bang Héi C«ng Thµnh ")
return
end

if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tham gia C«ng Thµnh ChiÕn !")
return
end

if GetItemCount(166) <  1 then
	Talk(1,"","Ng­¬i kh«ng cã LÖnh Bµi C«ng Thµnh ChiÕn, kh«ng thÓ tham gia !")
	return
end

DelItem(166)

-- if GetTongName() == DSCTC[vitrictc()][1][1] then
ngay = tonumber(date("%d"))
SetTask(10,ngay)
LeaveTeam()
SetTask(16,GetCurCamp())
SetRevPos(21)
SetCurCamp(2)
SetCamp(2)
SetTask(80,1) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetLogoutRV(0)
SetRank(215)
SetTask(128,1)
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn C«ng")
NewWorld(34, 201*8, 200*16);
Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color=red>] - thuéc bang [<color=green>"..GetTongName().."<color=red>] ®· vµo b¶n ®å C«ng Thµnh ChiÕn ®Ó hç trî Phe C«ng !")


-- elseif GetTongName() == DSCTC[vitrictc()][2][1] then
-- SetTask(10,ngay)
-- SetTask(128,1)
-- LeaveTeam()
-- SetTask(16,GetCurCamp())
-- SetRevPos(22)
-- SetCurCamp(1)
-- SetCamp(1)
-- SetTask(80,2) -- TaskCongThanh
-- SetCreateTeam(0);
-- SetFightState(0)
-- SetRank(216)
-- SetLogoutRV(0)
-- Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn Thñ ")
-- NewWorld(35, 1566, 3233);
-- Msg2SubWorld("§¹i hiÖp [<color=green>"..GetName().."<color=red>] - thuéc bang [<color=green>"..GetTongName().."<color=red>] ®· vµo b¶n ®å C«ng Thµnh ChiÕn ®Ó hç trî Phe Thñ !")
-- end
end
function thamgia()
if GetGlbMissionV(9) == 0 then
SetGlbMissionV(9,1)
TaoLongTru()
HideNpc(longtru1,999999999)
HideNpc(longtru2,999999999)
HideNpc(longtru3,999999999)
end

gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio < 19 or (gio == 19 and phut < 45) then
Talk(1,"","Thêi gian vµo C«ng Thµnh ChiÕn b¾t ®Çu tõ 19h45 phót !")
return
elseif gio == 21 then
Talk(1,"","TrËn C«ng Thµnh ChiÕn h«m nay ®· kÕt thóc !")
end

if GetTongNameID() == 0 then
Talk(1,"","<color=green>Qu¶n lý Bang héi <color>: B¹n ch­a gia nhËp bang kh«ng thÓ tham gia c«ng thµnh !")
return
end
if DSCTC[vitrictc()][1][1] == "" then
Talk(1,"","H«m nay kh«ng cã C«ng Thµnh ChiÕn do kh«ng cã Bang Héi C«ng Thµnh ")
return
end
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp d­íi 80 kh«ng thÓ tham gia C«ng Thµnh ChiÕn !")
return
end

if (GetTongName() == DSCTC[vitrictc()][1][1] and GetTongNameID() == DSCTC[vitrictc()][1][2]) then
	bencong()
elseif GetTongName() == DSCTC[vitrictc()][2][1] and GetTongNameID() == DSCTC[vitrictc()][2][2] then
	benthu()
else
Talk(2,"","<color=green>Qu¶n lý Bang héi <color>: Bang héi cña b¹n kh«ng cã tªn trong danh s¸ch c«ng thµnh h«m nay ",
	"C«ng thµnh bang ["..DSCTC[vitrictc()][1][1].."] - thñ thµnh bang ["..DSCTC[vitrictc()][2][1].."] ")
end
end

function check_time_gia_nhap()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
time = thang*1000+ngay
thanggianhap = floor(GetTask(8)/1000)
ngaygianhap = mod(GetTask(8),1000)
if ngaygianhap == 0 or ngaygianhap > 31 then
return 0
end
if thanggianhap == 0 or thanggianhap > 12 then
return 0
end
if thanggianhap == thang and ngay - ngaygianhap < 1 then
	return 1
elseif thang - thanggianhap == 1 and time_gia_nhap[thanggianhap] - ngaygianhap + ngay < 1 then
	return 1
end 
return 0
end

function bencong()
ngay = tonumber(date("%d"))
if check_time_gia_nhap() == 1 then
Talk(1,"","B¹n gia nhËp bang héi ch­a ®ñ 1 ngµy, kh«ng thÓ tham gia C«ng Thµnh ChiÕn !")
return
end
SetTask(10,ngay)
LeaveTeam()
SetTask(16,GetCurCamp())
SetRevPos(21)
SetCurCamp(2)
SetCamp(2)
SetTask(80,1) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetLogoutRV(0)
SetRank(215)
SetTask(128,1)
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn C«ng")
NewWorld(34, 201*8, 200*16);
end

function benthu()
ngay = tonumber(date("%d"))
if check_time_gia_nhap() == 1 then
Talk(1,"","B¹n gia nhËp bang héi ch­a ®ñ 1 ngµy, kh«ng thÓ tham gia C«ng Thµnh ChiÕn !")
return
end
SetTask(10,ngay)
SetTask(128,1)
LeaveTeam()
SetTask(16,GetCurCamp())
SetRevPos(22)
SetCurCamp(1)
SetCamp(1)
SetTask(80,2) -- TaskCongThanh
SetCreateTeam(0);
SetFightState(0)
SetRank(216)
SetLogoutRV(0)
Msg2Player("Di chuyÓn ®Õn hËu ph­¬ng bªn Thñ ")
NewWorld(35, 1566, 3233);
end





