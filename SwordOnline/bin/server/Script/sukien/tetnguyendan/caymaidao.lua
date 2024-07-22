Include("\\script\\lib\\thuvien.lua")

Include("\\script\\event\\tetnguyendan\\dstopngay.lua")
Include("\\script\\event\\tetnguyendan\\dstopevent.lua")

AutoSave = 0
ThongBaoXepHang = 0

function main()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))

if ThongBaoXepHang ~= gio then
	ThongBaoXepHang = gio
	ThongBaoTopSuKien()
end

if ngay == 29 or ngay == 30 or ngay == 31 or ngay == 1 then
	if DSTOP_NGAY[2][1] ~= ngay then
		SapXepHangDuaTop_Ngay()
		KetThucDuaTopNgay()
		DSTOP_NGAY={	{{"",0},{"",0},	{"",0},{"",0},	{"",0},	{"",0},	{"",0},	{"",0},	{"",0},	{"",0}},{ngay}	}
	end
end

SayNew("",3,
"Treo Phóc Léc Thä /giaonop",
"KiÓm tra danh s¸ch TOP /kiemtra",
"Tho¸t./no")
end

function KetThucDuaTopNgay()
LoginLog = openfile("Data/SuKien/DanhSachDuaTopNgay.txt", "a");
if LoginLog then
	write(LoginLog,"-------------- DUATOP NGAY "..DSTOP_NGAY[2][1].." ---------------\n");
	for k=1,10 do
		write(LoginLog,"[Hang "..k.."] ["..DSTOP_NGAY[1][k][1].."] [SL: "..DSTOP_NGAY[1][k][2].."]\n");
	end
end
closefile(LoginLog)
end

function ThongBaoTopSuKien()
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if ngay >= 28 and thang == 1 then		
	SapXepHangDuaTop_Ngay()
	Msg2SubWorld("<color=green>Danh s¸ch TOP Ngµy "..ngay.."/"..thang..":")
	for k=1,getn(DSTOP_NGAY[1]) do
		if k <= getn(DSTOP_NGAY[1]) then
			Msg2SubWorld("- H¹ng "..k..": "..DSTOP_NGAY[1][k][1].." - "..DSTOP_NGAY[1][k][2].." ")
		end
	end
end
	SapXepHangDuaTop_Event()
	Msg2SubWorld("<color=green>Danh s¸ch TOP Event:")
	for k=1,getn(DSTOP_EVENT) do
		if k <= getn(DSTOP_EVENT) then
			Msg2SubWorld("- H¹ng "..k..": "..DSTOP_EVENT[k][1].." - "..DSTOP_EVENT[k][2].." ")
		end
	end
end

function kiemtra()
phut = tonumber(date("%M"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if ngay >= 28 and thang == 1 then		
	SapXepHangDuaTop_Ngay()
	Msg2Player("<color=green>Danh s¸ch TOP Ngµy "..ngay.."/"..thang..":")
	for k=1,getn(DSTOP_NGAY[1]) do
		if k <= getn(DSTOP_NGAY[1]) then
			Msg2Player("- H¹ng "..k..": "..DSTOP_NGAY[1][k][1].." - "..DSTOP_NGAY[1][k][2].." ")
		end
	end
end
	SapXepHangDuaTop_Event()
	Msg2Player("<color=green>Danh s¸ch TOP Event:")
	for k=1,getn(DSTOP_EVENT) do
		if k <= getn(DSTOP_EVENT) then
			Msg2Player("- H¹ng "..k..": "..DSTOP_EVENT[k][1].." - "..DSTOP_EVENT[k][2].." ")
		end
	end

	if AutoSave ~= phut then
		AutoSave = phut
		savebang()
	end
end

function savebang()
BANG = TaoBang(DSTOP_NGAY,"DSTOP_NGAY")		
LuuBang("script/event/tetnguyendan/dstopngay.lua",BANG)
BANG2 = TaoBang(DSTOP_EVENT,"DSTOP_EVENT")		
LuuBang("script/event/tetnguyendan/dstopevent.lua",BANG2)
end
function giaonop()
OpenStringBox(0, "NhËp 1 - 100","giaonop1")
end
function giaonop1(num2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if num2 == "" then
num2 = 0
end
num = tonumber(num2)
if num == 0 then
Talk(1,"","ChØ ®­îc nhËp 1 - 100!")
return
end

if num > 100 then
Talk(1,"","ChØ ®­îc nhËp 1 - 100!")
return
end

sl1 = GetItemCount(318)
sl2 = GetItemCount(319)
sl3 = GetItemCount(320)


if floor(GetTask(984)/1000000) ~= ngay then
	SetTask(984,ngay*1000000)
end

soluonggioihan = 100
if sl1 < num or sl2 < num or sl3 < num then
Talk(1,"","Kh«ng cã ®ñ "..num.." bé Phóc - Léc - Thä ®Ó treo, vui lßng kiÓm tra l¹i hµnh trang !")
return
end
themexp = 0
for k=1,num do
	DelItem(318)
	DelItem(319)
	DelItem(320)
	if GetTask(984) - (ngay*1000000) < soluonggioihan then
		AddOwnExp(1000000)	
		themexp = themexp + 1
	end
	
		SetTask(984,GetTask(984)+1) -- TOP NGAY
		
	if ngay >= 28 and thang == 1 then		
		SetTask(983, GetTask(983) + 1) -- TOP TONG
	end
	
end

Msg2Player("B¹n nhËn ®­îc <color=yellow>"..themexp.." triÖu <color=red>kinh nghiÖm !")
Msg2Player("Sè l­îng treo Phóc Léc Thä h«m nay: <color=pink>"..(GetTask(984) - (ngay*1000000)).." / "..soluonggioihan.." lÇn")

	-- TOP NGAY
	if ngay >= 28 and thang == 1 then		
			vt = checkds_ngay()
			soluongngay = GetTask(984) - (ngay*1000000)
			if vt == 0 then
				vtmin = checkmin_ngay()		
				if soluongngay > DSTOP_NGAY[1][vtmin][2] then
					DSTOP_NGAY[1][vtmin][1] = GetName()
					DSTOP_NGAY[1][vtmin][2] = soluongngay
				end
			else
				DSTOP_NGAY[1][vt][2] = soluongngay
			end			
			
					--- TOP TONG
			vt = checkds_event()
			if vt == 0 then
				vtmin = checkmin_event()
				if GetTask(983) > DSTOP_EVENT[vtmin][2] then
					DSTOP_EVENT[vtmin][1] = GetName()
					DSTOP_EVENT[vtmin][2] = GetTask(983)
				end
			else
				DSTOP_EVENT[vt][2] = GetTask(983)
			end	
	end
		
			

end


tam_duatop = {"",0}
function SapXepHangDuaTop_Ngay()
for i=1,getn(DSTOP_NGAY[1]) do
	for j=1,getn(DSTOP_NGAY[1]) do
		if DSTOP_NGAY[1][i][2] > DSTOP_NGAY[1][j][2] then
			tam_duatop = DSTOP_NGAY[1][i]
			DSTOP_NGAY[1][i] = DSTOP_NGAY[1][j]
			DSTOP_NGAY[1][j] = tam_duatop
		end
	end
end
end
function SapXepHangDuaTop_Event()
for i=1,getn(DSTOP_EVENT) do
	for j=1,getn(DSTOP_EVENT) do
		if DSTOP_EVENT[i][2] > DSTOP_EVENT[j][2] then
			tam_duatop = DSTOP_EVENT[i]
			DSTOP_EVENT[i] = DSTOP_EVENT[j]
			DSTOP_EVENT[j] = tam_duatop
		end
	end
end
end

function no()
end

function checkds_ngay()
for i=1,getn(DSTOP_NGAY[1]) do
	if GetName() == DSTOP_NGAY[1][i][1] then
		return i
	end
end
return 0
end

function checkmin_ngay()
vtmin = 1
giatrimin = DSTOP_NGAY[1][vtmin][2]
for i=2,getn(DSTOP_NGAY[1]) do
		if giatrimin > DSTOP_NGAY[1][i][2] then
			vtmin = i
			giatrimin = DSTOP_NGAY[1][i][2]
		end
end
return vtmin
end


function checkds_event()
for i=1,getn(DSTOP_EVENT) do
	if GetName() == DSTOP_EVENT[i][1] then
		return i
	end
end
return 0
end

function checkmin_event()
vtmin = 1
giatrimin = DSTOP_EVENT[vtmin][2]
for i=2,getn(DSTOP_EVENT) do
		if giatrimin > DSTOP_EVENT[i][2] then
			vtmin = i
			giatrimin = DSTOP_EVENT[i][2]
		end
end
return vtmin
end
