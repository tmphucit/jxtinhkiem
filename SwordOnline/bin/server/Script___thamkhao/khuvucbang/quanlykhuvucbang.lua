Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\banghoi\\mapbanghoi.lua")

function main()
w,x,y = GetWorldPos()

vtmap = CheckDanhSachBang()

if w == 58 then
	if vtmap == 0 then
		SayNew("dsadsa",2,
		"§¨ng ký l·nh ®Þa bang héi /TaoKhuVucBang",
		"Tho¸t./no")
	else
		SayNew("dsadsa",2,
		"Di chuyÓn vµo l·nh ®Þa bang héi /DiChuyenLanhDiaBang",
		"Tho¸t./no")
	end
else
		LanhDiaBang()
end
end


function DiChuyenLanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi !")
return
end
vtmap = CheckDanhSachBang()
if vtmap == 0 then
Talk(1,"","Bang héi cña b¹n ch­a thiÕt lËp L·nh §Þa Bang Héi, kh«ng thÓ vµo !")
return
end

SetFightState(0)
SetLogoutRV(0)
SetPunish(1)
SetRevPos(115 + vtmap, 59 + vtmap)
NewWorld(115 + vtmap,1721,3317)
Msg2Player("Ngåi yªn, chóng ta vµo L·nh §Þa Bang")
end



function TaoKhuVucBang()
if GetTongName() == "" then
Talk(1,"","B¹n ch­a cã Bang Héi, kh«ng thÓ ®¨ng ký l·nh ®Þa !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B¹n kh«ng ph¶i bang chñ, kh«ng thÓ ®¨ng ký l·nh ®Þa")
return
end
nl = GetCash()
if GetCash() < 50000000 then
Talk(1,"","B¹n kh«ng ®ñ <color=yellow>5.000 v¹n l­îng")
return
end

vtmap = CheckDanhSachBang()
if vtmap > 0 then
Talk(1,"","Bang héi cña b¹n ®· ®¨ng ký l·nh ®Þa bang héi !")
return
end

	Pay(50000000)
	if GetCash() == nl-50000000 then
		MAP_BANG_HOI[getn(MAP_BANG_HOI)+1] = {GetTongName(),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
		-- 1 Ten bang, 2 CTC LE Bao, 7 Diem Quan Cong, 8 Ngay Reset, 9 - 15 NV Bang Hoi, 16 Loai Nhiem Vu
		save()
		Msg2SubWorld("Bang chñ <color=yellow>"..GetName().." <color=red> ®· thiÕt lËp thµnh c«ng L·nh §Þa Bang Héi <color=green>"..GetTongName()..". <color=red>Tõ h«m nay, thµnh viªn bang héi h·y còng nhau gãp søc cïng x©y dùng vµ ph¸t triÓn l·nh ®Þa cña m×nh ")
		AddGlobalCountNews("Bang chñ <color=yellow>"..GetName().." <color=red> ®· thiÕt lËp thµnh c«ng L·nh §Þa Bang Héi <color=green>"..GetTongName()..". <color=red>Tõ h«m nay, thµnh viªn bang héi h·y còng nhau gãp søc cïng x©y dùng vµ ph¸t triÓn l·nh ®Þa cña m×nh",1)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em ")
	end
end



function LanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B¹n kh«ng cã bang héi , kh«ng thÓ sö dông chøc n¨ng !")
return
end

if GetTongFigure() == 3 then
	SayNew("<color=green>Qu¶n Lý L·nh §Þa<color>: HiÖn t¹i ®ang cã <color=red>"..soluongthanhvienlanhdia().."<color> thµnh viªn trong L·nh §Þa Bang Héi. Vui lßng chän chøc n¨ng qu¶n lý ",7,
	--"T¹o Boss Bang Héi /taoboss",
	--"Di chuyÓn khu vùc Boss /dichuyenkhuvucboss",
	--"N©ng cÊp Boss Bang Héi/nangcapboss",
	"Ph¸t L­¬ng TÊt C¶ Thµnh Viªn /phatluong",
	--"NhiÖm vô Bang Héi /nhiemvubang",
	--"Shop Bang Héi /shopbanghoi",
	--"Kick Ng­êi Ch¬i L¹/kicknguoichoi",
	"Tho¸t./no")
else
		SayNew("<color=green>Qu¶n Lý L·nh §Þa<color>: HiÖn t¹i ®ang cã <color=red>"..soluongthanhvienlanhdia().."<color> thµnh viªn trong L·nh §Þa Bang Héi. ",3,
		--"Di chuyÓn khu vùc Boss /dichuyenkhuvucboss",
		--"NhiÖm vô Bang Héi /nhiemvubang",
		--"Shop Bang Héi /shopbanghoi",
		"Tho¸t./no")
end
end

function save()
BANGMAP = TaoBang(MAP_BANG_HOI,"MAP_BANG_HOI")
LuuBang("datascript/banghoi/mapbanghoi.lua",BANGMAP)
end

function CheckDanhSachBang()
for i=1,getn(MAP_BANG_HOI) do
	if GetTongName() == MAP_BANG_HOI[i][1] then
		return i
	end
end
return 0
end

function no()
end