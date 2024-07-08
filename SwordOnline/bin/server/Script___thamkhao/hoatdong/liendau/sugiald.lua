Include("\\script\\lib\\thuvien.lua")
Include("\\script\\hoatdong\\liendau\\liendau_head.lua")
Include("\\script\\Global\\doimaump.lua")
Include("\\datascript\\liendau\\danhsach.lua")
Include("\\datascript\\liendau\\danhsachxephang.lua")


dsdau = {}
dsdau_temp = {}

function main()


W,X,Y = GetWorldPos()
if W == 42 then
sugialiendau()
else
sugiadangkyliendau()
end
end

function check_danh_sach_t6()
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][3] then
		return i
	end
end
return 0
end


function nhanphanthuongthang6()
vt = check_danh_sach_t6()
if vt == 0 then
Talk(1,"","B¹n kh«ng cã tªn trong danh s¸ch")
return
end



if danhsach[vt][4] == 0 then
Talk(1,"","B¹n kh«ng cã trËn th¾ng nµo, kh«ng thÓ nhËn phÇn th­ëng !")
return
end
danhsach[vt][5] = danhsach[vt][3]
danhsach[vt][3] = ""

if danhsach[vt][3] == "" and danhsach[vt][4] > 0 then
vinhdu = danhsach[vt][4] * 100
SetTask(124, GetTask(124) + vinhdu)
Msg2Player("B¹n nhËn ®­îc "..vinhdu.." ®iÓm vinh dù ")

BANG = TaoBang(danhsach,"danhsach")
LuuBang("datascript/liendau/danhsach.lua",BANG)

end
end



function sugialiendau()
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
	if check_khoang_time_ld(1,4) == 1 and ngay >= ngaybatdau and ngay <= ngayketthuc then
		SayNew("<color=green>Sø gi¶ Liªn ®Êu <color>: HiÖn ®ang trong giai ®o¹n <color=yellow>B¸o Danh Liªn §Êu<color>, c¸c b¹n h·y nhanh ch©n ®¨ng ký ",4,
		"§¨ng ký tham gia liªn ®Êu /thamchien",
		"Xem th«ng tin liªn ®Êu /XemThongTin",
		"Xem Danh S¸ch Top Cao Thñ/xemtop",
		"Cöa hµng vinh dù /doipt",
		"Tho¸t./no")
	else
		SayNew("<color=green>Sø gi¶ Héi Tr­êng: <color>: Thêi gian b¸o danh Vâ L©m Liªn §Êu ch­a b¾t ®Çu !",3,
		"Xem th«ng tin liªn ®Êu /XemThongTin",
		"Xem Danh S¸ch Top Cao Thñ/xemtop",
		"Cöa hµng vinh dù /doipt",
		"Tho¸t./no")
	end
end

function xemtop()
CapNhatHangTamThoi()

if ngay >= ngaybatdau and ngay < ngayketthuc then

	if getn(mangtam) >= 10 then
		SayNew("Danh s¸ch Top 10 chiÕn ®éi m¹nh nhÊt hiÖn t¹i: ",10,
		"H¹ng 1/xemtop3",
		"H¹ng 2/xemtop3",
		"H¹ng 3/xemtop3",
		"H¹ng 4/xemtop3",
		"H¹ng 5/xemtop3",
		"H¹ng 6/xemtop3",
		"H¹ng 7/xemtop3",
		"H¹ng 8/xemtop3",
		"H¹ng 9/xemtop3",
		"H¹ng 10/xemtop3")
	else
		Talk(1,"","Danh s¸ch Top Cao Thñ ch­a ®­îc cËp nhËt !")
	end
else
	if getn(danhsachxephang) >= 10 then
		SayNew("Danh s¸ch Top 10 chiÕn ®éi m¹nh nhÊt : ",10,
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
end
function xemtop3(nsel)
i = nsel+1
if mangtam[i] ~= nil then
sotran = mangtam[i][6] + mangtam[i][7] + mangtam[i][8]
if mangtam[i][6] == 0 and mangtam[i][7] == 0 and mangtam[i][8] == 0 then
tilethang = 0
else
tilethang = floor(mangtam[i][6] / sotran * 100)
end
SayNew("ChiÕn ®éi: [<color=yellow>"..mangtam[i][5].."<color>], thµnh viªn: [<color=blue>"..mangtam[i][3].."<color>] ®· tham gia <color=red>"..sotran.."<color> trËn\nTh¾ng: "..mangtam[i][6].." - Hßa: "..mangtam[i][7].." - Thua: "..mangtam[i][8].."\nTØ lÖ th¾ng: "..tilethang.." %\n§iÓm tÝch lòy chiÕn ®éi: "..mangtam[i][4].."",1,
"KÕt thóc ®èi tho¹i/no")
else
Talk(1,"","X¶y ra lçi danh s¸ch xÕp h¹ng !")
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
SayNew("ChiÕn ®éi: [<color=yellow>"..danhsachxephang[i][5].."<color>], thµnh viªn: [<color=blue>"..danhsachxephang[i][3].."<color>] ®· tham gia <color=red>"..sotran.."<color> trËn\nTh¾ng: "..danhsachxephang[i][6].." - Hßa: "..danhsachxephang[i][7].." - Thua: "..danhsachxephang[i][8].."\nTØ lÖ th¾ng: "..tilethang.." %\n§iÓm tÝch lòy chiÕn ®éi: "..danhsachxephang[i][4].."",1,
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
SayNew("<color=green>Sø gi¶ Liªn ®Êu <color>: Tªn chiÕn ®éi: [<color=yellow>"..checkcd().."<color>] \n§iÓm tÝch lòy chiÕn ®éi: <color=red>"..diemcd().."<color>\n§iÓm vinh dù: <color=red>"..GetTask(124).."<color>\nXÕp h¹ng: <color=red>"..xemhang().."<color>\nTh¾ng: "..thang.." - Hßa: "..hoa.." - Thua: "..thua..". ",1,"Tho¸t./no")
end



function doipt()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
SayNew("HiÖn t¹i b¹n cã <color=red>"..GetTask(124).."<color> ®iÓm vinh dù. B¹n muèn ®æi g× ?",8,
"§æi An Bang Liªn §Êu/muaitem",
"§æi §Þnh Quèc Liªn §Êu/muaitem",
"§æi An Bang Mini [Khãa] /muaitem",
"§æi §Þnh Quèc Mini [Khãa] /muaitem",
"§æi B¶o VËt/muaitem",
"§æi VËt PhÈm/muaitem",
"§æi LB Vinh Dù /muaitem",
"Tho¸t./no")
end


function muaitem(nsel)
i = nsel + 1
if i == 1 then
	muaanbangliendau()
elseif i == 2 then
	muadinhquoc1()
elseif i == 3 then
	muaanbangliendaumini()
elseif i == 4 then
	muadinhquocmini()
elseif i == 5 then
	muabaovat()
elseif i == 6 then
	muavatpham()
elseif i == 7 then
	mualbvd()
end
end


function thongtinabliendau()
Talk(1,"","An Bang Liªn §Êu gåm 4 mãn, kh«ng thÓ dïng chung víi An Bang Th­êng, b¾t buéc ph¶i ®ñ 1 Set Liªn §Êu ")
end

function muabaovat()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: ",4,
"Phi V©n [50000 ®iÓm] /muabaovat1",
"B«n Tiªu [200000 ®iÓm] /muabaovat1",
"V« Danh ChØ Hoµn [500000 ®iÓm] /muabaovat1",
"V« Danh Giíi ChØ [500000 ®iÓm] /muabaovat1",
"Tho¸t./no")
end


function muabaovat1(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 50000
elseif i == 2 then
	vang = 200000
elseif i == 3 then
	vang = 500000
elseif i == 4 then
	vang = 500000
end

if vang == 0 then
return
end
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,10,8,1,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,10,6,1,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,3,31,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,3,32,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end


function muaanbangliendau()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: Trang bÞ Max Option",5,
"D©y ChuyÒn Liªn §Êu [30000]/muaab1",
"NhÉn Cóc Hoa Liªn §Êu [20000]/muaab1",
"NhÉn Kª HuyÕt Liªn §Êu [20000]/muaab1",
"Ngäc Béi Liªn §Êu [15000]/muaab1",
"Tho¸t./no")
end

function muaab1(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 30000
elseif i == 2 then
	vang = 20000
elseif i == 3 then
	vang = 20000
elseif i == 4 then
	vang = 15000
end

if vang == 0 then
return
end
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,4,18,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,3,33,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,3,34,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,9,18,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end

function muaanbangliendaumini()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: Trang bÞ Min Option - Khãa VÜnh ViÔn",5,
"D©y ChuyÒn Liªn §Êu [6000]/muaab2",
"NhÉn Cóc Hoa Liªn §Êu [5000]/muaab2",
"NhÉn Kª HuyÕt Liªn §Êu [5000]/muaab2",
"Ngäc Béi Liªn §Êu [4000]/muaab2",
"Tho¸t./no")
end
function muaab2(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 6000
elseif i == 2 then
	vang = 5000
elseif i == 3 then
	vang = 5000
elseif i == 4 then
	vang = 4000
end

if vang == 0 then
return
end
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,4,18,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,3,33,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,3,34,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,9,18,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end


function muaphivan()

vang = 70000
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
			idxitem = AddItem(0,10,5,5,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).."")		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end


function muadinhquoc1()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: Trang bÞ Max Option",6,
"Nãn §Þnh Quèc Liªn §Êu [10000]/muadq1",
"¸o §Þnh Quèc Liªn §Êu [10000]/muadq1",
"Giµy §Þnh Quèc Liªn §Êu [5000]/muadq1",
"Bao Tay §Þnh Quèc Liªn §Êu [5000]/muadq1",
"Th¾t L­ng §Þnh Quèc Liªn §Êu [5000]/muadq1",
"Tho¸t./no")
end


function muadq1(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 10000
elseif i == 2 then
	vang = 10000
elseif i == 3 then
	vang = 5000
elseif i == 4 then
	vang = 5000
elseif i == 5 then
	vang = 5000
end

if vang == 0 then
return
end
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,7,44,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,2,82,2,0,0,0)
		
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,5,27,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,8,25,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			idxitem = AddItem(0,6,29,2,0,0,0)
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end

function muadinhquocmini()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: Trang bÞ Min Option",6,
"Nãn §Þnh Quèc Mini [3000]/muadq2",
"¸o §Þnh Quèc Mini [3000]/muadq2",
"Giµy §Þnh Quèc Mini [1000]/muadq2",
"Bao Tay §Þnh Quèc Mini [1000]/muadq2",
"Th¾t L­ng §Þnh Quèc Mini [1000]/muadq2",
"Tho¸t./no")
end
function muadq2(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 3000
elseif i == 2 then
	vang = 3000
elseif i == 3 then
	vang = 1000
elseif i == 4 then
	vang = 1000
elseif i == 5 then
	vang = 1000
end

if vang == 0 then
return
end
diem = GetTask(124)
if GetTask(124) >= vang then
	SetTask(124,GetTask(124) - vang)
	if GetTask(124) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,7,44,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,2,82,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,5,27,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,8,25,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			idxitem = AddItem(0,6,29,1,0,0,0)
			SetTimeItem(idxitem,550324);
			Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng­¬i kh«ng mang ®ñ "..GetTask(124).." ®iÓm vinh dù ")
end
end


function mualbvd()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: B¹n muèn ®æi g× ?",5,
"LÖnh bµi vinh dù Hoµng Kim [600 ®iÓm]/mualbvd1",
"LÖnh bµi vinh dù B¹ch Ng©n [120 ®iÓm]/mualbvd1",
"LÖnh bµi vinh dù Thanh §ång [60 ®iÓm]/mualbvd1",
"LÖnh bµi vinh dù Hµn ThiÕt [12 ®iÓm]/mualbvd1",
"Tho¸t./no")
end

function mualbvd1(nsel)
xacnhanmuaitem(nsel+1)
end

function muavatpham()
SayNew("<color=green>Sø Gi¸ Liªn §Êu<color>: B¹n muèn ®æi g× ?",9,
"Vâ L©m MËt TÞch [1000 ®iÓm]/muavpquy1",
"TÈy Tñy Kinh [1000 ®iÓm]/muavpquy1",
"Lam Thñy  Tinh [300 ®iÓm]/muavpquy1",
"Lôc Thñy  Tinh [300 ®iÓm]/muavpquy1",
"Tö Thñy  Tinh [300 ®iÓm]/muavpquy1",
"Tinh Hång B¶o Th¹ch [200 ®iÓm]/muavpquy1",
"Phi Phong [50 ®iÓm]/muavpquy1",
"Ho¸n Binh Th¹ch [1000 ®iÓm]/muavpquy1",
"Tho¸t./no")
end

function muavpquy1(nsel)
xacnhanmuaitem(nsel+5)
end

function xacnhanmuaitem(num)
diem = GetTask(124)

if GetTask(124) >= mangitem[num][3] then
	SetTask(124,GetTask(124) - mangitem[num][3])
	if GetTask(124) == diem - mangitem[num][3] then
		AddEventItem(mangitem[num][1])
		Msg2Player("B¹n nhËn ®­îc "..mangitem[num][2].." ")
	
		inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..num.." - "..mangitem[num][2].." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","§Ó ®æi "..mangitem[num][2].." cÇn cã "..mangitem[num][3].." ®iÓm vinh dù ")
end


end


function inlogvinhdu(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ShopVinhDu.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Con lai: "..GetTask(124).." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end



mangitem = {
{55,"LÖnh bµi Vinh Dù Hoµng Kim",600},
{56,"LÖnh bµi Vinh Dù B¹ch Ng©n",120},
{57,"LÖnh bµi Vinh Dù Thanh §ång ",60},
{58,"LÖnh bµi Vinh Dù HÇn ThiÕt ",12},
{0,"Vâ L©m MËt TÞch",1000},
{1,"TÈy Tñy Kinh",1000},
{28,"Lam Thñy Tinh",300},
{30,"Lôc Thñy Tinh",300},
{29,"Tö Thñy Tinh",300},
{31,"Tinh Hång B¶o Th¹ch",200},
{251,"Phi Phong",50},
{674,"Ho¸n Binh Th¹ch",1000},
}

function doipt1()
Sale(26,3)
Msg2Player("B¹n hiÖn ®ang cã "..GetTask(124).." ®iÓm vinh dù !")
end

function thamchien()
if GetLevel() < 90 then
Talk(1,"","§½ng cÊp < 90 kh«ng thÓ tham gia liªn ®Êu !")
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
	SetTask(124,GetTask(124)+5)
	Msg2Player("§iÓm vinh dù hiÖn t¹i: "..GetTask(124).." ®iÓm ")
	
end
end
end

function RunTimer()

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))


if check_khoang_time_ld(1,4) == 1 then
Msg2SubWorld("<color=yellow>[Sù KiÖn] <color=red>Vâ l©m Liªn §Êu ®ang trong giai ®o¹n b¸o danh, c¸c b¹n h·y nhanh ch©n ®Õn sø gi¶ héi tr­êng ®Ó ®¨ng ký !")
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
			SetTaskTemp(50,0)
			SetCurCamp(4)
			SetDeathScript("\\script\\liendau\\sugiald.lua")
			LeaveTeam()
			SetCreateTeam(0);
			
			NewWorld(42,199*8,187*16)
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
				vitri = RandomNew(1,getn(dsdau_temp))
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
	end
	

if check_time_xh() == 1 then
		CapNhatThuHangLienDau()
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
SetTask(124,GetTask(124)+10)
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
SetTask(124,GetTask(124)+10)
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
SetTask(124,GetTask(124)+5)
Msg2Player("§iÓm vinh dù hiÖn t¹i: "..GetTask(124).." ®iÓm ")
danhsach[GetTask(145)][4] = danhsach[GetTask(145)][4] + 1
danhsach[GetTask(145)][8] = danhsach[GetTask(145)][8] - 1
danhsach[GetTask(145)][7] = danhsach[GetTask(145)][7] + 1
Msg2Player("§iÓm chiÕn ®éi hiÖn t¹i : "..danhsach[GetTask(145)][4].." ®iÓm ")
end
end

function sugiadangkyliendau()

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if ngay > ngayketthuc or ngay < ngaybatdau then
	SayNew("<color=green>Sø gi¶ Liªn ®Êu <color>: HiÖn t¹i ®ang trong thêi gian nghØ ng¬i, kh«ng cã bÊt kú trËn thi ®Êu nµo diÔn ra. Thêi gian liªn ®Êu tõ ngµy 8 ®Õn 28 hµng th¸ng::",2,
	"Ta ®Õn nhËn phÇn th­ëng xÕp h¹ng liªn ®Êu /nhanphanthuong",
	"Cöa hµng vinh dù /doipt",
	"Tho¸t ./no")
else
	SayNew("<color=green>Sø gi¶ Liªn ®Êu <color>:y",3,
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
			
			inlog5("[NhanVD] ["..danhhieuliendau[vitri][6].."] ["..GetTask(124).."] ["..GetName().."] ["..GetAccount().."]")
			
			Talk(0,"")
		end
	end
end
end
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/NhanDiemVinhDu.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
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


function denhoitruong()

ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))



sl1 = GetItemCountAll(1,10,0,1)
sl2 = GetItemCountAll(1,10,0,2)
sl3 = GetItemCountAll(1,10,0,3)

if sl1 > 0 or sl2 > 0 or sl3 > 0 then
Talk(1,"","B¹n kh«ng ®­îc mang D­îc PhÈm ®Æc biÖt vµo l«i ®µi, h·y sö dông hÕt míi cã thÓ vµo !")
Msg2Player("Cã "..sl1.." Ngò Hoa Ngäc Lé Hoµn §Æc BiÖt !")
Msg2Player("Cã "..sl2.." Cöu ChuyÓn Hoµn Hån §an §Æc BiÖt !")
Msg2Player("Cã "..sl3.." Håi Thiªn T¸i T¹o §¬n !")
return
end


effect = checkEffect() 
if effect ~= 0 then
Talk(1,"","B¹n vui lßng ®¨ng nhËp l¹i ®Ó <color=yellow>lo¹i bá tÊt c¶ hiÖu øng<color> cßn hiÖu qu¶ !")
Msg2Player("M· hiÖu øng: "..effect.."")
return
end

if GetLevel() < 90 then
Talk(1,"","§½ng cÊp d­íi 90 kh«ng thÓ tham gia liªn ®Êu !")
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
SetCreateTeam(0);
SetRevPos(42,20)
SetTask(22,ngay) -- Task Lien Dau
Msg2Player("Di chuyÓn ®Õn héi tr­êng liªn ®Êu .....")
Msg2Player("Tªn chiÕn ®éi: "..danhsach[GetTask(145)][5].." ")
Msg2Player("Liªn ®Êu khai më tõ ngµy 8 - 28 hµng th¸ng.")
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
ngay =  tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))

if ngay >= ngayketthuc or ngay < ngaybatdau then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>: ChØ cho phÐp lËp chiÕn ®éi trong thêi gian thi ®Êu tõ ngµy "..ngaybatdau.." ®Õn ngµy "..ngayketthuc.." hµng th¸ng ")
return
end

if GetLevel() < 90 then
Talk(1,"","<color=green>Sø Gi¶ Liªn §Êu: <color>:  §½ng cÊp < 90 kh«ng thÓ tham gia liªn ®Êu !")
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
SayNew("<color=green>Sø gi¶ Liªn §Êu <color>: B¹n ®· lËp ®éi thµnh c«ng, tªn ®éi lµ <color=yellow>[<color=yellow>"..checkcd().." <color>] !",1,"KÕt thóc ®èi tho¹i/no")
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
ThoiGianUpdate = 0
function CapNhatHangTamThoi()
phut = tonumber(date("%M"))
if ThoiGianUpdate == phut then
return
end
ThoiGianUpdate = phut

mangtam = {}
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
SapXepThuHangLienDau()
end

function CapNhatThuHangLienDau()
mangtam = {}
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
doiexp2(1000000)
elseif num == 2 then
doiexp2(1000000)
elseif num == 3 then
doiexp2(2000000)
end
end

function doiexp2(exp2)
	AddOwnExp(exp2)
	Msg2Player("B¹n nhËn ®­îc "..exp2.." ®iÓm kinh nghiÖm")
	Talk(0,"")
end

