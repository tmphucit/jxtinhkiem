

function main(idx)
w,x,y = GetWorldPos()
Msg2Player(""..w.." , "..x..", "..y.."")
if GetAccount() == "vantoi"  or GetAccount() == "" or GetAccount() == ""  or GetAccount() == ""  or GetAccount() == "" then
SetRank(214)
SayNew("Chon chuc nangx: ",8,
"Di ChuyÓn /dichuyen",
"Set Phe /setphe",
"Thay ®æi tr¹ng th¸i /thaydoitrangthai",
"KiÓm tra Tèng Kim /kiemtratk",
"Vâ L©m Minh Chñ /volamminhchu",
"KiÓm tra 1/kiemtraxungquanh",
"KiÓm tra 2/kiemtraxungquanh1",
"Thoat./no")
end
end

function kiemtraxungquanh()
mang = {}
name = GetName()
idxp = PlayerIndex
w1,x1,y1 = GetWorldPos()
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == w1 and (x > x1 - 8 and x < x1 + 8) and (y > y1 - 16 and y < y1 + 16) and GetName() ~= name and GetLevel() > 0 then
			mang[getn(mang)+1] = {GetAccount(),GetName(),GetLevel(),GetTongName(),GetLife(0)}
	end
end
PlayerIndex = idxp

if getn(mang) > 0 then
	for k=1,getn(mang) do
			if GetAccount() == "vantoi" then
				Msg2Player("["..mang[k][1].."] <color=yellow>["..mang[k][2].."] <color=red>["..mang[k][3].."] <color=green>["..mang[k][4].."] <color=yellow>- HP: ["..mang[k][5].."] ")
			else
				Msg2Player("<color=yellow>["..mang[k][2].."] <color=red>["..mang[k][3].."] <color=green>["..mang[k][4].."] <color=yellow>- HP: ["..mang[k][5].."] ")
			end
	end
else
	Talk(1,"","Kh«ng cã ai ë xung quanh")
end


end


function kiemtraxungquanh1()
mang = {}
name = GetName()
idxp = PlayerIndex
w1,x1,y1 = GetWorldPos()
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == w1 and (x > x1 - 8 and x < x1 + 8) and (y > y1 - 16 and y < y1 + 16) and GetName() ~= name and GetLevel() > 0 and GetTongName() == "" then
			mang[getn(mang)+1] = {GetAccount(),GetName(),GetLevel(),GetTongName(),GetLife(0)}
	end
end
PlayerIndex = idxp

if getn(mang) > 0 then
	for k=1,getn(mang) do
			if GetAccount() == "vantoi" then
				Msg2Player("["..mang[k][1].."] <color=yellow>["..mang[k][2].."] <color=red>["..mang[k][3].."] <color=green>["..mang[k][4].."] <color=yellow>- HP: ["..mang[k][5].."] ")
			else
				Msg2Player("<color=yellow>["..mang[k][2].."] <color=red>["..mang[k][3].."] <color=green>["..mang[k][4].."] <color=yellow>- HP: ["..mang[k][5].."] ")
			end
	end
else
	Talk(1,"","Kh«ng cã ai ë xung quanh")
end


end
function volamminhchu()
SayNew("Chän: ",5,
"§­a vµo L«i §µi Phe 1 /duavaoloidai",
"§­a vµo L«i §µi Phe 2/duavaoloidai",
"Set B¾t §Çu /setbatdau",
"Hñy B¾t §Çu §ét XuÊt /huybatdau",
"§­a ra khái L«i §µi /duarakhoi",
"Thoat./no")
end

function huybatdau()
name = GetName()
idxp  = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 43 then
			SetFightState(0)
			StopTimer()
			Msg2Player("<color=yellow>T¹m ngõng thi ®Êu do ph¸t sinh lçi, ®îi th«ng b¸o !")
		end
	end
PlayerIndex = idxp
Msg2Player("T¹m ngõng thi ®Êu do ph¸t sinh lçi, ®îi th«ng b¸o !")
end
function setbatdau()

name = GetName()
idxp  = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 43 then
			SetTask(931, 8 * 60)
			SetTimer(18 ,23)
		end
	end
PlayerIndex = idxp
Msg2Player("§· set b¾t ®Çu sau 60 gi©y !")
end


function duarakhoi()
name = GetName()
idxp  = PlayerIndex
	for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if w == 43 then
			NewWorld(40 ,1569, 3217)
			StopTimer()
			KickOutSelf()
		end
	end
PlayerIndex = idxp
Msg2Player("§· set b¾t ®Çu sau 60 gi©y !")
end

function duavaoloidai(nsel)
team = GetTeam()
mau = nsel + 1
if team == nil then
Talk(1,"","B¹n ch­a lËp tæ ®éi, kh«ng thÓ ®­a vµo !")
return
end
name = GetName()
idxp  = PlayerIndex
	for i=1,2000 do
		PlayerIndex = i
		if GetLevel() > 0 then
			if GetTeam() == team then
					if GetName() == name then
							SetCamp(0)
							SetCurCamp(0)
					else
						--	SetCreateTeam(0);
							SetFightState(0)
							SetPunish(1);
							SetLogoutRV(1)
							SetPKState(1)
							BlockPKState(1)
							SetCurCamp(mau)
					end				
					SetTempRevPos(42 ,1488*32, 3040*32)
					NewWorld(43,235*8,227*16)
			end
		end
	end
PlayerIndex = idxp

end

function checkhople()
sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
return 1
end

effect = checkEffect() 
if effect ~= 0 then
return 2
end
return 0
end
ListEffect = {273,15,213, 33,42, 109, 100, 150, 130, 277, 157, 171, 178, 173  }
function checkEffect()
for i=1,getn(ListEffect) do
		if GetLevelSkillEffectMan(ListEffect[i]) > 0 then
				return ListEffect[i]
		end
end
return 0
end
function dichuyen()
SayNew("Chän vi tri: ",9,
"Di chuyen Tong Kim /movetk",
"Di chuyÓn C«ng Thµnh ChiÕn /movecongthanh",
"Di chuyÓn BLH/moveblh",
"Di chuyÓn PLD/movepld",
"Di chuyÓn §¹i Héi Anh Hïng /movevlmc",
"Di chuyÓn Bµn T¬ §éng /movebanto",
"Di chuyÓn V­ît ¶i/movevuotai",
"Di chuyÓn L«i §µi /moveloidai",
"Tho¸t./no")


end

function movevlmc()
SayNew("Chän: ",3,
"Khu vùc chê /movevlmc_cho",
"Khu vùc thi ®Êu /movevlmc_pk",
"Tho¸t./no")
end

function movevlmc_cho()
NewWorld(40,1569,3217)
SetFightState(0)
Msg2Player("§· di chuyÓn §¹i Héi Anh Hïng - Khu vùc chê !")
end
function movevlmc_pk()
OpenStringBox(0, "NhËp STT Map","movevlmc_pk_1")
end

function movevlmc_pk_1(num2)
num = tonumber(num2)

if num > 0 and num <= getn(TOADO) then
	NewWorld(43,TOADO[num][1] *8,TOADO[num][2]*16)
	SetFightState(0)
else
Talk(1,"","STT "..num.." kh«ng tån t¹i")
end

end

function movehoason()
NewWorld(2,2515,3485)
SetFightState(0)
Msg2Player("§· di chuyÓn Hoa S¬n !")
end
function movebanto()
NewWorld(77,1579,3304)
SetFightState(0)
Msg2Player("§· di chuyÓn Bµn T¬ ®éng !")
end
function movecongthanh()
SayNew("Chän vi tri: ",9,
"HËu doanh phe C«ng /movectc",
"HËu doanh phe Thñ /movectc",
"Doanh tr¹i phe C«ng /movectc",
"Doanh tr¹i phe Thñ /movectc",
"Trô LËp D­¬ng /movectc",
"Trô B×nh Xuyªn/movectc",
"Trô B×nh Giang /movectc",
"Trung t©m /movectc",
"Tho¸t./no")
end


function movectc(nsel)
 i = nsel + 1
 if i == 1 then
  NewWorld(34, 1607, 3182);
 elseif i == 2 then
 NewWorld(35, 1566, 3233); 
 elseif i == 3 then
 
 NewWorld(36,1906,3614)
 elseif i == 4 then
 
 NewWorld(36,1529,3208)
 elseif i == 5 then
 
  NewWorld(36,1655,3346) -- Lap Duong
 elseif i == 6 then
 
  NewWorld(36,1723,3279) -- Binh Xuyen
 elseif i == 7 then
 
  NewWorld(36,1590,3412) -- Binh Giang
 elseif i == 8 then
  
  NewWorld(36,1760,3456) -- Trung Tam
 end
end
function kiemtratk()
idxp = PlayerIndex
kim = 0
tong = 0
DSTONG = {}
DSKIM = {}
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w,x,y = GetWorldPos()
	if w == 33 then
			if GetTask(12) == 1 then
				tong = tong + 1
				DSTONG[getn(DSTONG)+1] = GetName()
			elseif GetTask(12) == 2 then
				kim = kim + 1
				DSKIM[getn(DSKIM)+1] = GetName()
			end
	end
end
PlayerIndex = idxp
Msg2Player("Sè l­îng qu©n Tèng: "..tong.." - Kim: "..kim.."")
Msg2Player("<color=yellow>Danh S¸ch Phe Tèng:")
for i=1,getn(DSTONG) do
	Msg2Player(""..i..". "..DSTONG[i].."")
end
Msg2Player("<color=yellow>Danh S¸ch Phe Kim:")
for i=1,getn(DSKIM) do
	Msg2Player(""..i..". "..DSKIM[i].."")
end
end

function moveloidai()
SayNew("Chän khu vùc",9,
"Khu vùc 1 /moveloidai1",
"Khu vùc 2 /moveloidai1",
"Khu vùc 3 /moveloidai1",
"Khu vùc 4 /moveloidai1",
"Khu vùc 5 /moveloidai1",
"Khu vùc 6 /moveloidai1",
"Khu vùc 7 /moveloidai1",
"Khu vùc 8 /moveloidai1",
"TiÕp theo /moveloidai_1")
end

function moveloidai_1()
SayNew("Chän khu vùc",9,
"Khu vùc 9 /moveloidai2",
"Khu vùc 10 /moveloidai2",
"Khu vùc 11 /moveloidai2",
"Khu vùc 12 /moveloidai2",
"Khu vùc 13 /moveloidai2",
"Khu vùc 14 /moveloidai2",
"Khu vùc 15 /moveloidai2",
"Khu vùc 16 /moveloidai2",
"quay l¹i /moveloidai")
end

function moveloidai1(nsel)
i = nsel + 1
NewWorld(106, ToaDoLoiDai[i][1] * 8, ToaDoLoiDai[i][2] * 16) 
end

function moveloidai2(nsel)
i = nsel + 9
NewWorld(106, ToaDoLoiDai[i][1] * 8, ToaDoLoiDai[i][2] * 16) 
end
ToaDoLoiDai = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
}

function movevuotai()
SayNew("Chän b¶n ®å ",5,
"T­¬ng D­¬ng /moveva1",
"Ph­îng T­êng /moveva1",
"§¹i Lý /moveva1",
"Set ChiÕn Th¾ng V­ît ¶i /setchienthang",
"Tho¸t./no")
end

function moveva1(nsel)
i = nsel + 1
toadox = 1569 - 8 + random(0,16)
toadoy = 3217 - 16 + random(0,32)
if i == 1 then
NewWorld(29, toadox, toadoy)
elseif i == 2 then
NewWorld(26, toadox, toadoy)
elseif i == 3 then
NewWorld(28, toadox, toadoy)
end
end

function setchienthang()
w,x,y = GetWorldPos()
if w ~= 26 and w ~= 28 and w ~= 29 then
Talk(1,"","Lçi kh«ng sö dông tÝnh n¨ng ngoµi b¶n ®å v­ît ¶i !")
return
end

if GetAccount() ~= "admvltk102"  then
Talk(1,"","ChØ cã admin míi sö dông ®­îc tÝnh n¨ng nµy !")
return
end
idxp = PlayerIndex
for i=1,GetCountPlayerMax() do
	PlayerIndex = i
	w1,x1,y1 = GetWorldPos()
	if w1 == w then
			AddOwnExp(23000000)
			Msg2Player("B¹n nhËn ®­îc 23.000.000 kinh nghiÖm !")
			AddRepute(3)
			Msg2Player("B¹n nhËn ®­îc 3 ®iÓm danh väng ")
			
			AddEventItem(150)
			Msg2Player("B¹n nhËn ®­îc 1 Hép LÔ VËt V­ît ¶i ")
			
			KickOutSelf()
	end
end
PlayerIndex = idxp
end


function movepld()
SayNew("Chän BÕn: ",4,
"BÕnn 1/movepld1",
"BÕnn 2/movepld1",
"BÕnn 3/movepld1",
"Bê B¾c/movepld1",
"Tho¸t./no")
end

function movepld1(nsel)
i = nsel+1
if i == 1 then
NewWorld(47,199*8,199*16)
elseif i == 2 then
NewWorld(48,199*8,199*16)
elseif i == 3 then
NewWorld(49,199*8,199*16)
elseif i == 4 then
NewWorld(46, 150*8, 174*16)
end
SetFightState(0)
Msg2Player("§· di chuyÓn Phong L¨ng §é ")
end
function moveblh()
NewWorld(53,200*8,200*16)
SetFightState(0)
Msg2Player("§· di chuyÓn Ba L¨ng HuyÖn !")
end


function thaydoitrangthai()
if GetFightState() == 1 then
SetFightState(0)
Msg2Player("Da chuyen trang thai: Bat Tu")
else
SetFightState(1)
Msg2Player("Da chuyen trang thai: Chien Dau")
end
end



function movetk()
SayNew("Chon chuc nang: ",4,
"Move Phe Kim /move",
"Move Phe Tong/move",
"Move Trung Tam /move",
"Thoat./no")
end

function move(nsel)
i = nsel + 1

	if i == 1 then
	NewWorld(33, 1572, 3199)
	elseif i == 2 then
	NewWorld(33, 1331, 3443)
	elseif i == 3 then
	NewWorld(33, 1437, 3339)
	end
end

function setphe()
SayNew("Chon chuc nang: ",4,
"Phe Kim /setphe1",
"Phe Tong/setphe1",
"Luyen Cong /setphe1",
"Thoat./no")
end

function setphe1(nsel)
i = nsel +1 
if i == 1 then
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(123,GetGlbMissionV(61))
SetCurCamp(2)
elseif i == 2 then
SetTask(12,1) -- Xac Nhan Ben Tong
SetTask(128,2) -- Task hoat dong Tong Kim
SetCurCamp(1)
SetTask(123,GetGlbMissionV(61))
elseif i == 3 then
SetTask(12,0) -- Task Ben Kim
SetTask(128,0) -- Task hoat dong Tong Kim
SetCurCamp(0)
end
end

function no()
end

TOADO = {
{235,227},
{218,214},
{235,222},
{175,208},
{163,214},
{158,217},
{191,205},
{191,200},
{191,211},
{191,216},
{191,222},
{191,227},
{191,233},
{196,236},
{197,230},
{197,197},
{197,203},
{197,208},
{197,213},
{197,219},
{197,225},
{202,200},
{202,205},
{202,194},
{202,211},
{202,217},
{202,222},
{202,227},
{202,233},
{202,238},
{208,192},
{208,197},
{208,202},
{208,208},
{207,220},
{208,224},
{208,230},
{207,235},
{207,241},
{218,203},
{218,208},
{218,219},
{218,230},
{218,235},
{225,211},
{224,222},
{223,227},
{229,213},
{229,230},
{235,206},
{235,213},
}
