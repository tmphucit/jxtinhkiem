Include("\\script\\lib\\thuvien.lua")
Include("\\script\\liendau\\liendau_head.lua")
Include("\\script\\Global\\doimaump.lua")
Include("\\datascript\\liendau\\danhsach.lua")
Include("\\datascript\\liendau\\danhsachxephang.lua")


dsdau = {}
dsdau_temp = {}


function main()
W,X,Y = GetWorldPos()
if checkten() == 0 and W == 42 then
	SetTask(145,0)
	SetFightState(0)
	SetCamp(GetTask(16))
	SetCurCamp(GetTask(16))
	SetDeathScript("")
	BlockPKState(0)
	SetRevPos(19)
	NewWorld(53,200*8,200*16)
	Msg2Player("Ng­¬i ch­a ®¨ng ký chiÕn ®éi, hÖ thèng tù ®éng ®­a ng­êi ra khái héi tr­êng !")
else
	SetTask(145,checkten())
end



if W == 42 then
sugialiendau()
else
sugiadangkyliendau()
end
end






function sugialiendau()
ngay =  tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
	if check_khoang_time_ld(1,4) == 1 and ngay >= ngaybatdau and ngay <= ngayketthuc then
		Say("<color=green>Sø gi¶ Liªn ®Êu <color>: HiÖn ®ang trong giai ®o¹n <color=yellow>B¸o Danh Liªn §Êu<color>, c¸c b¹n h·y nhanh ch©n ®¨ng ký ",5,
		"§¨ng ký tham gia liªn ®Êu /thamchien",
		"Xem th«ng tin liªn ®Êu /XemThongTin",
		"Xem Danh S¸ch Top Cao Thñ/xemtop",
		"Cöa hµng vinh dù /doipt",
		"Tho¸t./no")
	else
		Say("<color=green>Sø gi¶ Héi Tr­êng: <color>: Thêi gian b¸o danh Vâ L©m Liªn §Êu ch­a b¾t ®Çu !",4,
		"Xem th«ng tin liªn ®Êu /XemThongTin",
		"Xem Danh S¸ch Top Cao Thñ/xemtop",
		"Cöa hµng vinh dù /doipt",
		"Tho¸t./no")
	end
end

function xemtop()
if getn(danhsachxephang) >= 10 then
	Say("Danh s¸ch Top 10 ChiÕn ®éi m¹nh nhÊt : ",10,
	"H¹ng 1/xemtop2",
	"H¹ng 2/xemtop2",
	"H¹ng 3/xemtop2",
	"H¹ng 4/xemtop2",
	"H¹ng 5/xemtop2",
	"H¹ng 6/xemtop2",
	"H¹ng 7/xemtop2",
	"H¹ng 8/xemtop2",
	"H¹ng 9/xemtop2",
	"H¹ng 10/xemtop2")
	
else
	Talk(1,"","Danh s¸ch Top Cao Thñ ch­a ®­îc cËp nhËt !")
end
end

function xemtop2(nsel)
i = nsel+1
if danhsachxephang[i] ~= nil then
sotran = danhsachxephang[i][6] + danhsachxephang[i][7] + danhsachxephang[i][8]
if danhsachxephang[i][6] == 0 and danhsachxephang[i][7] == 0 and danhsachxephang[i][8] == 0 then
tilethang = 0
else
tilethang = floor(danhsachxephang[i][6] / sotran * 100)
end
Say("ChiÕn ®éi: [<color=yellow>"..danhsachxephang[i][5].."<color>], thµnh viªn: [<color=blue>"..danhsachxephang[i][3].."<color>] ®· tham gia <color=red>"..sotran.."<color> trËn\nTh¾ng: "..danhsachxephang[i][6].." - Hßa: "..danhsachxephang[i][7].." - Thua: "..danhsachxephang[i][8].."\nTØ lÖ th¾ng: "..tilethang.." %\n§iÓm tÝch lòy chiÕn ®éi: "..danhsachxephang[i][4].."",1,
"KÕt thóc ®èi tho¹i/no")
else
Talk(1,"","X¶y ra lçi danh s¸ch xÕp h¹ng !")
end
end
function XemThongTin()
if GetTask(145) == 0 then
Msg2Player("B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rëi khái héi tr­ëng vµ ®¨ng ký l¹i !")
return
end

thang = xemthang()
thua = xemthua()
hoa = xemhoa()
if (thang == 0 and thua == 0 and hoa == 0) then
tilethang = 0
else
tilethang = floor(thang / ((thang + thua+ hoa)* 100))
end
Say("<color=green>Sø gi¶ Liªn ®Êu <color>: Tªn chiÕn ®éi: [<color=yellow>"..checkcd().."<color>] \n§iÓm tÝch lòy chiÕn ®éi: <color=red>"..diemcd().."<color>\n§iÓm vinh dù: <color=red>"..GetTask(124).."<color>\nXÕp h¹ng: <color=red>"..xemhang().."<color>\nTh¾ng: "..thang.." - Hßa: "..hoa.." - Thua: "..thua..". ",1,"Tho¸t./no")
end

function doipt()
Talk(1,"","<color=green>Sø gi¶ Liªn ®Êu <color>: Cöa hµng sÏ më cöa sau khi b¾t ®Çu liªn ®Êu 2 tuÇn !")
end
function doipt1()
Sale(26,3)
Msg2Player("B¹n hiÖn ®ang cã "..GetTask(124).." ®iÓm vinh dù !")
end

function thamchien()
if GetLevel() < 120 then
Talk(1,"","§½ng cÊp < 120 kh«ng thÓ tham gia liªn ®Êu !")
return
end

if checkten() == 0 then
	Talk(1,"","<color=green>Sø gi¶ Héi Tr­êng: <color>: B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rêi khái héi tr­êng b»ng xa phu vµ ®¨ng ký chiÕn ®éi cho tuÇn míi !")
return
end

if GetTask(145) == 0 then
Msg2Player("B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rëi khái héi tr­ëng vµ ®¨ng ký l¹i !")
return
end

a = GetGlbMissionV(12)
if a >= 100 then
Talk(1,"","<color=green>Sø gi¶ Héi Tr­êng: <color>: Sè l­îng ®¨ng ký liªn ®Êu ®¹t 100 ng­êi kh«ng thÓ ®¨ng ký thªm !") 
return
end
if check_sotran_max() == 1 then
Talk(1,"","<color=green>Sø gi¶ Héi Tr­êng: <color>: B¹n ®· tham gia ®ñ <color=red>"..sotranmax.."<color> trong th¸ng nµy !")
return
end


if GetTaskTemp(22) == 0 and a < 100 then
	SetTaskTemp(22,1)
	SetGlbMissionV(12,a+1)
	SetTask(16,GetCurCamp())
	Talk(1,"","<color=green>Sø gi¶ Héi Tr­êng: <color>: Chóc mõng b¹n ®· ®¨ng ký liªn ®Êu thµnh c«ng. Vui lßng kh«ng rêi khái héi tr­êng ®Õn khi b¾t ®Çu giao chiÕn ! ") 
	Msg2Player("Chóc mõng b¹n ®· ®¨ng ký liªn ®Êu thµnh c«ng. Vui lßng kh«ng rêi khái héi tr­êng ®Õn khi b¾t ®Çu giao chiÕn !")
else
	Talk(1,"","<color=green>Sø gi¶ Héi Tr­êng: <color>: B¹n ®· ®¨ng ký trËn ®Êu råi , kh«ng thÓ ®¨ng ký thªm n÷a ")
end
end

function save()
BANG = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG)
BANG2 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG2)
end

function savetimer()
BANG = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG)
BANG2 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG2)
end



function OnDeath(Launcher)
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
bigiet = GetName()
PlayerIndex1 = NpcIdx2PIdx(Launcher)
OrgPlayer = PlayerIndex;
if PlayerIndex1 > 0 then
	PlayerIndex = PlayerIndex1
	giet = GetName()
	Msg2Player("B¹n ®· giÕt chÕt ®èi thñ ["..bigiet.."] vµ giµnh chiÕn th¾ng !!")
	phanthuongthang()
	kickmove()	
	PlayerIndex = OrgPlayer
	SetDeathScript("")
	SetFightState(0)
	SetPKState(0)
	BlockPKState(0)
	SetPunish(0);
	SetTaskTemp(22,0)
	Msg2Player("B¹n ®· bÞ ["..giet.."] ®¸nh b¹i.")
	AddKinhNghiem(1)
	
end
end
end



function RunTimer()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio,phut,giay = GetTimeNew()

if check_khoang_time_ld(1,4) == 1 then
Msg2SubWorld("Vâ l©m Liªn §Êu ®ang trong giai ®o¹n b¸o danh, c¸c b¹n h·y nhanh ch©n ®Õn sø gi¶ héi tr­êng ®Ó ®¨ng ký !")
AddGlobalCountNews("Vâ l©m Liªn §Êu ®ang trong giai ®o¹n b¸o danh, c¸c b¹n h·y nhanh ch©n ®Òn sø gi¶ héi tr­êng ®Ó ®¨ng ký !",1)
end

	if check_time_ld(4) == 1 then
		dsdau = {}
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
		w,x,y = GetWorldPos()
		if GetTaskTemp(22) == 1 and w == 42 then
			danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] + 1
			SetTempRevPos(42,186*8*32,190*16*32)
			SetLogoutRV(1)
			NewWorld(42,199*8,187*16)
			SetTaskTemp(50,0)
			SetCurCamp(4)
			Msg2Player("B¹n ®­îc ®­a ®Õn phßng chê thi ®Êu, trËn ®Êu sÏ b¾t ®Çu sau 1 phót n÷a !")
		end	
		end		
		dsdau_temp = {}
		for i=1,GetGlbMissionV(12) do
			dsdau_temp[i] = {"",""}
		end
	elseif check_time_ld(5) == 1 then
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 42 and GetTaskTemp(22) == 1 then
				vitri = random(1,getn(dsdau_temp))
				if dsdau_temp[vitri][1] ~= "" then
					for u=1,getn(dsdau_temp) do
						if dsdau_temp[u][1] == "" then
							dsdau_temp[u][1] = GetName()
							dsdau_temp[u][2] = GetUUID()
							break
						end
					end
				else
					dsdau_temp[vitri][1] = GetName()
					dsdau_temp[vitri][2] = GetUUID()
				end
			end
		end
		for i=1,getn(dsdau_temp) do
			if dsdau_temp[i][1] ~= "" then
				dsdau[getn(dsdau)+1] = {dsdau_temp[i][1],dsdau_temp[i][2],0,0}
			end
		end	
		for j=1,GetCountPlayerMax() do
		PlayerIndex = j
			w,x,y = GetWorldPos()
			if w == 42 and GetTaskTemp(22) == 1 then 
				SetTaskTemp(22,vitridsdau())
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("Lçi v­ît qu¸ danh s¸ch thi ®Êu 1 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
					if GetTaskTemp(22) == getn(dsdau) and mod(GetTaskTemp(22),2) == 1 then
						Msg2Player("Kh«ng cã ®èi thñ cho b¹n, v× thÕ b¹n ®­îc xö th¾ng !")
						phanthuongthang1()
						kickmove()
					else
						if mod(GetTaskTemp(22),2) == 0 then
						vitri = GetTaskTemp(22)
						else
						vitri=GetTaskTemp(22) + 1
						end
						SetDeathScript("\\script\\liendau\\sugiald.lua")
						NewWorld(43,TOADO[vitri/2][1]*8,TOADO[vitri/2][2]*16)
						SetCurCamp(mod(GetTaskTemp(22),2)+1)
						SetCamp(mod(GetTaskTemp(22),2)+1)
						SetFightState(0)
						SetLogoutRV(1)
						SetPunish(1);
						Msg2Player("B¹n ®­îc ®­a ®Õn phßng thi ®Êu, trËn ®Êu sÏ chÝnh thøc b¾t ®Çu sau 1 phót n÷a ")
					end
				end
			end
		end
	elseif check_time_ld(6) == 1 then
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				SetFightState(1)
				SetPKState(2)
				BlockPKState(1)
				Msg2Player("TrËn ®Êu b¾t ®Çu.....")
			end
		end
	elseif check_khoang_time_ld(7,13) == 1 then
		-- Check tat ca doi thu con trong map va dua vao mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("Lçi v­ît qu¸ danh s¸ch thi ®Êu 2 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
					dsdau[GetTaskTemp(22)][3] = 2
				end
			end
		end
		-- Check nguoi choi va mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()				
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("Lçi v­ît qu¸ danh s¸ch thi ®Êu 3 !")
					inlog()
				elseif GetTaskTemp(22) > 0 then
				if mod(GetTaskTemp(22),2) == 1 then
					if dsdau[GetTaskTemp(22)+1][3]  ~= 2 then
						phanthuongthang()	
						kickmove()
						Msg2Player("§èi thñ cña b¹n ®· tho¸t khái game, v× thÕ b¹n giµnh chiÕn th¾ng ")
					end
					elseif mod(GetTaskTemp(22),2) == 0 then
						if dsdau[GetTaskTemp(22)-1][3] ~= 2 then
							phanthuongthang()	
							kickmove()
							Msg2Player("§èi thñ cña b¹n ®· tho¸t khái game, v× thÕ b¹n giµnh chiÕn th¾ng ")
						end
					end
				end
			end
		end
	elseif check_time_ld(13) == 1 then
		-- Check tat ca doi thu con trong map va dua vao mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("Lçi v­ît qu¸ danh s¸ch thi ®Êu 4 !")
					inlog()
				elseif GetTaskTemp(22) > 0  then
					dsdau[GetTaskTemp(22)][3] = 3
					dsdau[GetTaskTemp(22)][4] = GetTaskTemp(50)
				end
			end
		end
		-- Check nguoi choi va mang
		for i=1,GetCountPlayerMax() do
		PlayerIndex = i
			w,x,y = GetWorldPos()				
			if w == 43 then
				if GetTaskTemp(22) > getn(dsdau) then
					kickmove()
					Msg2Player("Lçi v­ît qu¸ danh s¸ch thi ®Êu !")
				elseif GetTaskTemp(22) > 0 then
					if mod(GetTaskTemp(22),2) == 1 then
					if dsdau[GetTaskTemp(22)+1][3] ~= 3 then
						phanthuongthang()	
						kickmove()
						Msg2Player("§èi thñ cña b¹n ®· tho¸t khái game, v× thÕ b¹n giµnh chiÕn th¾ng ")
					else
						Msg2Player("Tæng Damage cña b¹n: "..GetTaskTemp(50).." - Tæng Damage cña "..dsdau[GetTaskTemp(22)+1][1]..": "..dsdau[GetTaskTemp(22)+1][4].." ")
						if dsdau[GetTaskTemp(22)+1][4] < GetTaskTemp(50) then
							phanthuongthang()	
							kickmove()
							Msg2Player("Sau 4 phót thi ®Êu, kh«ng cã ai tö vong, b¹n ®· giµnh chiÕn th¾ng v× cã sè damage vµo ®èi thñ nhiÒu h¬n !")
						elseif dsdau[GetTaskTemp(22)+1][4] > GetTaskTemp(50) then
							if w == 43 and GetTaskTemp(22) > 0 then
								AddKinhNghiem(1)
								Msg2Player("Sau 7 phót thi ®Êu, kh«ng cã ai tö vong, b¹n bÞ xö thua v× cã sè damage ®¸nh vµo ®èi thñ Ýt h¬n !")
							end
							kickmove()
						else											
							Msg2Player("Sau 7 phót thi ®Êu, hai bªn kh«ng ph©n th¾ng b¹i. KÕt qu¶: Hßa")
							phanthuonghoa()
							kickmove()
						end
					end
			
					elseif mod(GetTaskTemp(22),2) == 0 then
					if dsdau[GetTaskTemp(22)-1][3] ~= 3 then
						phanthuongthang()	
						kickmove()
						Msg2Player("§èi thñ cña b¹n ®· tho¸t khái game, v× thÕ b¹n giµnh chiÕn th¾ng ")
	
					else
						Msg2Player("Tæng Damage cña b¹n: "..GetTaskTemp(50).." - Tæng Damage cña "..dsdau[GetTaskTemp(22)-1][1]..": "..dsdau[GetTaskTemp(22)-1][4].." ")
						if dsdau[GetTaskTemp(22)-1][4] < GetTaskTemp(50) then
							phanthuongthang()	
							kickmove()
							Msg2Player("Sau 4 phót thi ®Êu, kh«ng cã ai tö vong, b¹n ®· giµnh chiÕn th¾ng v× cã sè damage vµo ®èi thñ nhiÒu h¬n !")
						elseif dsdau[GetTaskTemp(22)-1][4] > GetTaskTemp(50) then
							if w == 43 and GetTaskTemp(22) > 0 then
								AddKinhNghiem(1)
								Msg2Player("Sau 7 phót thi ®Êu, kh«ng cã ai tö vong, b¹n bÞ xö thua v× cã sè damage ®¸nh vµo ®èi thñ Ýt h¬n !")
							end
							kickmove()
						else										
							Msg2Player("Sau 7phót thi ®Êu, hai bªn kh«ng ph©n th¾ng b¹i. KÕt qu¶: Hßa")
							phanthuonghoa()
							kickmove()
						end
					end
					end
				end
			end
		end
		
		dsdau = {}
		SetGlbMissionV(12,0)
		if check_time_xh() == 1 then
			CapNhatThuHangLienDau()
		end	
	end
end

function vitridsdau()
for i=1,getn(dsdau) do
	if GetName() == dsdau[i][1] and GetUUID() == dsdau[i][2] then
		return i
	end
end
end

function kickmove()
SetDeathScript("")
SetTempRevPos(42,186*8*32,190*16*32)
NewWorld(42,186*8,190*16)
SetFightState(0)
SetPKState(0)
BlockPKState(0)
SetPunish(0);
SetTaskTemp(22,0)
end

function phanthuongthang1()
if GetTask(145) == 0 then
Msg2Player("B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rëi khái héi tr­ëng vµ ®¨ng ký l¹i !")
return
end
w,x,y = GetWorldPos()
if w == 42 and GetTaskTemp(22) > 0 then
AddKinhNghiem(3)
SetTask(124,GetTask(124)+5)
Msg2Player("§iÓm vinh dù hiÖn t¹i: "..GetTask(124).." ®iÓm ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 3
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][6] = danhsach[GetTask(145)][6] + 1
Msg2Player("§iÓm chiÕn ®éi hiÖn t¹i : "..danhsach[GetTask(145)][4].." ®iÓm ")
end
end

function phanthuongthang()
if GetTask(145) == 0 then
Msg2Player("B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rëi khái héi tr­ëng vµ ®¨ng ký l¹i !")
return
end
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
AddKinhNghiem(3)
SetTask(124,GetTask(124)+5)
Msg2Player("§iÓm vinh dù hiÖn t¹i: "..GetTask(124).." ®iÓm ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 3
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][6] = danhsach[GetTask(145)][6] + 1
Msg2Player("§iÓm chiÕn ®éi hiÖn t¹i : "..danhsach[GetTask(145)][4].." ®iÓm ")
end
end

function phanthuonghoa()
if GetTask(145) == 0 then
Msg2Player("B¹n ch­a ®¨ng ký chiÕn ®éi, vui lßng rëi khái héi tr­ëng vµ ®¨ng ký l¹i !")
return
end
w,x,y = GetWorldPos()
if w == 43 and GetTaskTemp(22) > 0 then
AddKinhNghiem(2)
SetTask(124,GetTask(124)+2)
Msg2Player("§iÓm vinh dù hiÖn t¹i: "..GetTask(124).." ®iÓm ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 1
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][7] = danhsach[GetTask(145)][7] + 1
Msg2Player("§iÓm chiÕn ®éi hiÖn t¹i : "..danhsach[GetTask(145)][4].." ®iÓm ")
end
end

function sugiadangkyliendau()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()
if ngay > ngayketthuc or ngay < ngaybatdau then
	Say("<color=green>Sø gi¶ Liªn ®Êu <color>: HiÖn t¹i ®ang trong thêi gian nghØ ng¬i, kh«ng cã bÊt kú trËn thi ®Êu nµo diÔn ra. Thêi gian liªn ®Êu tõ ngµy 8 ®Õn 28 hµng th¸ng.",3,
	"Ta ®Õn nhËn phÇn th­ëng xÕp h¹ng liªn ®Êu /nhanphanthuong",
	"Cöa hµng vinh dù /doipt",
	"Tho¸t ./no")
else
	Say("<color=green>Sø gi¶ Liªn ®Êu <color>:",3,
	"Ta muèn ®Õn vâ l©m liªn ®Êu héi tr­êng /denhoitruong",
	"Ta muèn lËp chiÕn ®éi/lapchiendoi",
	"Tho¸t/no")
end
end

function nhanphanthuong()
ngay = tonumber(date("%d"))
if ngay > ngayketthuc or ngay < ngaybatdau then
havemang = 0
	for i=1,getn(danhsachxephang) do
		if GetName() == danhsachxephang[i][3] then			
			havemang = 1
			if danhsachxephang[i][9] == 0 or danhsachxephang[i][9] == nil then
				nhanphanthuong2(i)
			else
				Talk(1,"","B¹n ®· nhËn phÇn th­ëng xÕp h¹ng liªn ®Êu trong th¸ng nµy råi !")		
			end
		end
	end
if havemang == 0 then
Talk(1,"","B¹n kh«ng cã trong danh s¸ch xÕp h¹ng, kh«ng cã phÇn th­ëng cho b¹n !")
end
else
Talk(1,"","Thêi gian nhËn phÇn th­ëng b¾t ®Çu vµo 0h00 ngµy 29 !")
end
end


function nhanphanthuong2(num)
ngay = tonumber(date("%d"))
nl = danhsachxephang[num][9]
if ngay > ngayketthuc or ngay < ngaybatdau then
if num <= danhhieuliendau[getn(danhhieuliendau)][3] then
	if danhsachxephang[num][9] == 0 or danhsachxephang[num][9] == nil then
		danhsachxephang[num][9] = 1
		if danhsachxephang[num][9] == 1 then
			vitri = check_vitri_danhhieu(num)
			SetTask(124,GetTask(124) + danhhieuliendau[vitri][6])
			Talk(1,"","B¹n nhËn phÇn th­ëng liªn ®Êu h¹ng "..num.." ®­îc <color=red>"..danhhieuliendau[vitri][6].."<color> ®iÓm vinh dù ")
			Talk(0,"")
		end
	end
end
end
end


function denhoitruong()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

if GetLevel() < 120 then
Talk(1,"","§½ng cÊp < 120 kh«ng thÓ tham gia liªn ®Êu !")
return
end

if checkten() == 0 then
Talk(1,"","Ng­¬i ch­a ®¨ng ký chiÕn ®éi, kh«ng thÓ vµo héi tr­êng ")
return
end

if GetTask(145) == 0 then
SetTask(145,checkstt())
Msg2Player("HÖ thèng tù ®éng fix lçi do bÞ rollback, vui lßng tham gia l¹i !")
return
end
NewWorld(42,182*8,188*16)
LeaveTeam()
SetFightState(0)
SetTask(16,GetCurCamp())
SetRevPos(20)
SetCreateTeam(0);
SetTask(22,ngay) -- Task Lien Dau
SetDeathScript("\\script\\liendau\\sugiald.lua")
Msg2Player("Di chuyÓn ®Õn héi tr­êng liªn ®Êu .....")
Msg2Player("Tªn chiÕn ®éi: "..danhsach[GetTask(145)][5].." ")
Talk(1,"","H·y nhanh ch©n ®Õn <color=green>Sø Gi¶ Héi Tr­êng <color> ®Ó ®¨ng ký trËn ®Êu ")
end

function checkstt()
for i=1,getn(danhsach) do
if GetName() == danhsach[i][3] then
return i
end
end
end
function lapchiendoi()
ngay = tonumber(date("%d"))
gio,phut,giay = GetTimeNew()

if ngay >= ngayketthuc or ngay < ngaybatdau then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>: ChØ cho phÐp lËp chiÕn ®éi trong thêi gian thi ®Êu tõ ngµy "..ngaybatdau.." ®Õn ngµy "..ngayketthuc.." hµng th¸ng ")
return
end

if GetLevel() < 120 then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>:  §½ng cÊp < 120 kh«ng thÓ tham gia liªn ®Êu !")
return
end
if GetFaction == "" or GetCurCamp() == 0 or GetCamp() == 0  then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>:  B¹n ch­a gia nhËp m«n ph¸i kh«ng thÓ t¹o chiÕn ®éi !")
return
end

if checkten() ~= 0 then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>:  B¹n ®· ®¨ng ký chiÕn ®éi <color=yellow>["..danhsach[checkten()][5].."]<color> råi, cßn muèn ®¨ng ký g× n÷a ")
return
end

OpenStringBox (1,"NhËp tªn chiÕn ®éi" , "xnchiendoi")
end


function xnchiendoi(string)
if string == "" then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>: Tªn chiÕn ®éi kh«ng ®­îc ®Ó trèng !")
return
end
if checktencd(string) ~= 0 then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>:  Tªn chiÕn ®éi b¹n nhËp vµo ®· tån t¹i, vui lßng nhËp tªn kh¸c! ")
return
end

danhsach[getn(danhsach)+1] = {GetAccount(),GetUUID(),GetName(),0,string,0,0,0,0}
SetTask(145,getn(danhsach))
Say("<color=green>Sø gi¶ Liªn §Êu <color>: B¹n ®· lËp ®éi thµnh c«ng, tªn ®éi lµ <color=yellow>[<color=yellow>"..checkcd().." <color>] !",1,"KÕt thóc ®èi tho¹i/no")
end

function xemhang()
if GetTask(145) == 0 then
return "V« Danh"
else
	hang = 0
	for i=1,getn(danhsach) do
		if danhsach[GetTask(145)][4] <= danhsach[i][4] then
			hang = hang + 1
		end
	end
return hang
end
end

function checktencd(string)
for i=1,getn(danhsach) do
	if string == danhsach[i][5] then
		return 1
	end
end
return 0
end

function diemcd()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][4]
end
end
function xemthang()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][6]
end
end

function xemhoa()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][7]
end
end
function xemthua()
if GetTask(145) == 0 then
return 0
else
return danhsach[GetTask(145)][8]
end
end


function checkten()
check = 0
for i=1,getn(danhsach) do
if GetUUID() == danhsach[i][2] then
check = i
break
end
end
return check
end


function thutuds()
for i=1,getn(dsdau) do
if GetName() == dsdau[i][1] then
return i
end
end
end
function checkcd()
for i=1,getn(danhsach) do
if GetUUID() == danhsach[i][2] then
return danhsach[i][5]

end
end
end

function no()
end
function inlog()
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/adminlog.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetGlbMissionV(12).." - "..GetTaskTemp(22).." - "..getn(dsdau).." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangtam = {}
function CapNhatThuHangLienDau()
for i=1,512 do
mangtam[getn(mangtam)+1] = {"",0,"",0,"",0,0,0,0}
end
vtmin = check_min_mangtam()
for i=1,getn(danhsach) do
	if danhsach[i][4] > mangtam[vtmin][4] then
		mangtam[vtmin] = danhsach[i]
		vtmin = check_min_mangtam()
	end
end
print("Cap Nhat Xep Hang Moi Thanh Cong !")
SapXepThuHangLienDau()
print("Sap Xep Bang Xep Hang Xong")
danhsach_backup = danhsach
danhsach = {}
BANG2 = TaoBang(danhsach_backup,"danhsach_backup")				
LuuBang("datascript/liendau/danhsach_backup.lua",BANG2)

BANG1 = TaoBang(danhsach,"danhsach")				
LuuBang("datascript/liendau/danhsach.lua",BANG1)
danhsachxephang = mangtam
BANG3 = TaoBang(danhsachxephang,"danhsachxephang")				
LuuBang("datascript/liendau/danhsachxephang.lua",BANG3)

print("Reset danh sach xong !")
end

function check_min_mangtam()
min = mangtam[1][4]
vt_min = 1
for i=2,getn(mangtam) do
	if min > mangtam[i][4] then	
		min = mangtam[i][4]
		vt_min = i
	end
end
return vt_min
end

tam = {"",0,"",0,"",0,0,0,0}
function SapXepThuHangLienDau()
for i=1,getn(mangtam) do
	for j=1,getn(mangtam) do
		if mangtam[i][4] > mangtam[j][4] then
			tam = mangtam[i]
			mangtam[i] = mangtam[j]
			mangtam[j] = tam
		elseif mangtam[i][4] == mangtam[j][4] then
			if mangtam[i][6] > mangtam[j][6] then
				tam = mangtam[i]
				mangtam[i] = mangtam[j]
				mangtam[j] = tam
			elseif mangtam[i][8] < mangtam[j][8] then
				tam = mangtam[i]
				mangtam[i] = mangtam[j]
				mangtam[j] = tam
			end
		end
	end
end

end


function check_sotran_max()
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][3] then
		sotran = danhsach[i][6] + danhsach[i][7] + danhsach[i][8] 
		if sotran >= sotranmax then
			return 1
		end
	end
end
return 0
end

kinhnghiem={{10,187},{50,262},{60,337},{70,412},{80,600},{90,750},{100,975},{999,0}}
soluongquai =  {{1,500,1200},{80,500,1200},{90,700,1500},{100,800,1800},{120,900,1800},{150,1000,1800},{201,1200,1800}}

function AddKinhNghiem(num)
if num == 1 then
doiexp2(1000)
elseif num == 2 then
doiexp2(1500)
elseif num == 3 then
doiexp2(2000)
end
end

function doiexp2(num)
	vt = 1
	for i=1,getn(soluongquai) do
	if (GetLevel() >= soluongquai[i][1]) and (GetLevel() < soluongquai[i+1][1]) then
	vt = i
	end
	end
	exp = soluongquai[vt][2] * soluongquai[vt][3] * 3 
	exp2 = exp / 10000 * num / 2
	AddOwnExp(exp2)
	Msg2Player("B¹n nhËn ®­îc "..exp2.." ®iÓm kinh nghiÖm")
	Talk(0,"")
end

