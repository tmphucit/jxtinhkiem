Include("\\script\\lib\\thuvien.lua")
Include("\\datascript\\banghoi\\mapbanghoi.lua")

function main()
w,x,y = GetWorldPos()

vtmap = CheckDanhSachBang()

if w == 58 then
	if vtmap == 0 then
		SayNew("dsadsa",2,
		"��ng k� l�nh ��a bang h�i /TaoKhuVucBang",
		"Tho�t./no")
	else
		SayNew("dsadsa",2,
		"Di chuy�n v�o l�nh ��a bang h�i /DiChuyenLanhDiaBang",
		"Tho�t./no")
	end
else
		LanhDiaBang()
end
end


function DiChuyenLanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i !")
return
end
vtmap = CheckDanhSachBang()
if vtmap == 0 then
Talk(1,"","Bang h�i c�a b�n ch�a thi�t l�p L�nh ��a Bang H�i, kh�ng th� v�o !")
return
end

SetFightState(0)
SetLogoutRV(0)
SetPunish(1)
SetRevPos(115 + vtmap, 59 + vtmap)
NewWorld(115 + vtmap,1721,3317)
Msg2Player("Ng�i y�n, ch�ng ta v�o L�nh ��a Bang")
end



function TaoKhuVucBang()
if GetTongName() == "" then
Talk(1,"","B�n ch�a c� Bang H�i, kh�ng th� ��ng k� l�nh ��a !")
return
end
if GetTongFigure() ~= 3 then
Talk(1,"","B�n kh�ng ph�i bang ch�, kh�ng th� ��ng k� l�nh ��a")
return
end
nl = GetCash()
if GetCash() < 50000000 then
Talk(1,"","B�n kh�ng �� <color=yellow>5.000 v�n l��ng")
return
end

vtmap = CheckDanhSachBang()
if vtmap > 0 then
Talk(1,"","Bang h�i c�a b�n �� ��ng k� l�nh ��a bang h�i !")
return
end

	Pay(50000000)
	if GetCash() == nl-50000000 then
		MAP_BANG_HOI[getn(MAP_BANG_HOI)+1] = {GetTongName(),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
		-- 1 Ten bang, 2 CTC LE Bao, 7 Diem Quan Cong, 8 Ngay Reset, 9 - 15 NV Bang Hoi, 16 Loai Nhiem Vu
		save()
		Msg2SubWorld("Bang ch� <color=yellow>"..GetName().." <color=red> �� thi�t l�p th�nh c�ng L�nh ��a Bang H�i <color=green>"..GetTongName()..". <color=red>T� h�m nay, th�nh vi�n bang h�i h�y c�ng nhau g�p s�c c�ng x�y d�ng v� ph�t tri�n l�nh ��a c�a m�nh ")
		AddGlobalCountNews("Bang ch� <color=yellow>"..GetName().." <color=red> �� thi�t l�p th�nh c�ng L�nh ��a Bang H�i <color=green>"..GetTongName()..". <color=red>T� h�m nay, th�nh vi�n bang h�i h�y c�ng nhau g�p s�c c�ng x�y d�ng v� ph�t tri�n l�nh ��a c�a m�nh",1)
		
		Talk(0,"")
	else
		Talk(1,"","Hack ha em ")
	end
end



function LanhDiaBang()
if GetTongName() == "" then
Talk(1,"","B�n kh�ng c� bang h�i , kh�ng th� s� d�ng ch�c n�ng !")
return
end

if GetTongFigure() == 3 then
	SayNew("<color=green>Qu�n L� L�nh ��a<color>: Hi�n t�i �ang c� <color=red>"..soluongthanhvienlanhdia().."<color> th�nh vi�n trong L�nh ��a Bang H�i. Vui l�ng ch�n ch�c n�ng qu�n l� ",7,
	--"T�o Boss Bang H�i /taoboss",
	--"Di chuy�n khu v�c Boss /dichuyenkhuvucboss",
	--"N�ng c�p Boss Bang H�i/nangcapboss",
	"Ph�t L��ng T�t C� Th�nh Vi�n /phatluong",
	--"Nhi�m v� Bang H�i /nhiemvubang",
	--"Shop Bang H�i /shopbanghoi",
	--"Kick Ng��i Ch�i L�/kicknguoichoi",
	"Tho�t./no")
else
		SayNew("<color=green>Qu�n L� L�nh ��a<color>: Hi�n t�i �ang c� <color=red>"..soluongthanhvienlanhdia().."<color> th�nh vi�n trong L�nh ��a Bang H�i. ",3,
		--"Di chuy�n khu v�c Boss /dichuyenkhuvucboss",
		--"Nhi�m v� Bang H�i /nhiemvubang",
		--"Shop Bang H�i /shopbanghoi",
		"Tho�t./no")
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