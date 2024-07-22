Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsachtop60.lua")
Include("\\script\\danhsachtop80.lua")
Include("\\script\\monphai.lua")


function main()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Chµo "..GetName()..", ng­¬i cÇn ta gióp g× ?",8,
"Më Shop B¸n §å /moshop",
"Trang bÞ xanh /nhantbxanh1",
"NhËn Hç Trî C¬ B¶n/nhanhotrotest",
"NhËn VËt PhÈm Th¨ng CÊp/nhanhotrotest2",
"§æi mµu luyÖn c«ng /doimau",
"§æi Giíi TÝnh /doigioitinh",
"§æi Phóc Duyªn /doiph",
"Tho¸t./no")
end


function nhanhktt()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
		nam = 2018
		if thang == 12 then
			thang = 1
			nam = 2019
		else
			thang = thang + 2
		end
		SetTask(468,9999)
		idxitem = AddItem(0,2,80,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,4,21,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,6,27,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,5,25,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,8,23,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,7,42,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,9,21,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,3,40,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,3,41,1,0,0,0)
		SetTimeItem(idxitem,550324);
		SetHSD(idxitem, nam , thang, ngay, gio )
end
function nhanhkmp()
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän m«n ph¸i ",10,
"ThiÕu L©m /nhanhkmp2",
"Thiªn V­¬ng /nhanhkmp2",
"§­êng M«n /nhanhkmp2",
"Ngò §éc /nhanhkmp2",
"Nga Mi /nhanhkmp2",
"Thóy Yªn /nhanhkmp2",
"C¸i Bang /nhanhkmp2",
"Thiªn NhÉn /nhanhkmp2",
"Vâ §ang /nhanhkmp2",
"C«n L«n /nhanhkmp2")
end

function nhanhkmp2(nsel)
i = nsel + 1
if i == 1 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"Méng Long /thieulam",
"Tø Kh«ng /thieulam",
"Phôc Ma /thieulam",
"Tho¸t./no")
elseif i == 2 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"Ngù Long /thienvuong",
"KÕ NghiÖp /thienvuong",
"H¸m Thiªn /thienvuong",
"Tho¸t./no")
elseif i == 3 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",5,
"B¨ng Hµn /duongmon",
"S©m Hoµng /duongmon",
"Thiªn Quang /duongmon",
"§Þa Ph¸ch /duongmon",
"Tho¸t./no")
elseif i == 4 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"U Lung /ngudoc",
"Minh ¶o /ngudoc",
"Chó Ph­îc /ngudoc",
"Tho¸t./no")
elseif i == 5 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"V« Ma /ngami",
"V« Gian /ngami",
"V« TrÇn /ngami",
"Tho¸t./no")
elseif i == 6 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",3,
"Tª Hoµng /thuyyen",
"BÝch H¶i /thuyyen",
"Tho¸t./no")
elseif i == 7 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",3,
"§ång Cõu /caibang",
"§Þch Kh¸i /caibang",
"Tho¸t./no")
elseif i == 8 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"Ma Hoµng /thiennhan",
"Ma S¸t /thiennhan",
"Ma ThÞ /thiennhan",
"Tho¸t./no")
elseif i == 9 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",3,
"CËp Phong /vodang",
"L¨ng Nh¹c /vodang",
"Tho¸t./no")
elseif i == 10 then
SayNew("<color=green>Hç Trî T©n Thñ <color>:  Chän trang bÞ ",4,
"S­¬ng Tinh /conlon",
"L«i Khung /conlon",
"Vô ¶o /conlon",
"Tho¸t./no")



end
end

function conlon(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,3,27,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,19,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,49,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,22,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,1,151,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,4,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,28,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,23,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,26,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,4,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,26,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,19,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,25,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")

end
end
function vodang(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,4,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,23,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,21,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,0,171,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,24,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,25,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,48,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,0,121,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")

end
end

function thiennhan(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,4,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,17,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,17,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,19,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,23,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,22,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,18,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,20,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,47,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,3,121,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,4,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,21,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,18,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,24,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")

end
end
function caibang(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,3,19,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,17,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,22,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,45,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,20,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,18,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,2,121,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,46,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
end
end
function thuyyen(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,3,18,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,44,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,1,181,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,4,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,5,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,47,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")

end
end
function ngami(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,3,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,20,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,43,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,42,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,0,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,4,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,17,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,9,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,21,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
end
end
function ngudoc(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,8,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,14,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,19,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,40,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,15,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,41,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,1,171,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,4,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,13,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,18,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")

end
end
function duongmon(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,9,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,38,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,1,1,21,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,9,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,39,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,1,0,41,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,4,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,11,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,12,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,1,2,31,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 4 then
	idxitem = AddItem(0,4,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,10,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,17,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
end
end
function thienvuong(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,4,6,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,3,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,1,121,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,8,5,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,36,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,3,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,8,6,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,9,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,37,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,4,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
end	
end
function thieulam(nsel)
i = nsel + 1
if i == 1 then
	idxitem = AddItem(0,9,6,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,6,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,4,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,7,16,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,33,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 2 then
	idxitem = AddItem(0,3,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,8,4,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,5,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,34,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,1,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
elseif i == 3 then
	idxitem = AddItem(0,3,8,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,5,7,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,6,6,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,0,2,61,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
	idxitem = AddItem(0,2,35,1,0,0,0)
	Msg2Player(""..GetNameItemBox(idxitem).."")
end
end


function doiph()
SayNew("<color=green>Hç Trî T©n Thñ  <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
"Phóc duyªn tiÓu/doiph2",
"Phóc duyªn trung/doiph2",
"Phóc duyªn ®¹i/doiph2",
"Tho¸t./no")
end


function doiph2(nsel)
i = nsel+1
sl = GetTask(162)
if i == 1 then
	if GetTask(162) >= 12 then
		SetTask(162,GetTask(162)-12)
		if GetTask(162) == (sl-12) then
			AddEventItem(173)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn tiÓu")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 12 ®iÓm phóc duyªn !")
	end
elseif i == 2 then
	if GetTask(162) >= 24 then
		SetTask(162,GetTask(162)-24)
		if GetTask(162) == (sl-24) then
			AddEventItem(174)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn trung")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 24 ®iÓm phóc duyªn !")
	end
elseif i == 3 then
	if GetTask(162) >= 60 then
		SetTask(162,GetTask(162)-60)
		if GetTask(162) == (sl-60) then
			AddEventItem(175)
			Msg2Player("B¹n nhËn ®­îc 1 b×nh Phóc Duyªn ®¹i")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>Hç Trî T©n Thñ  <color>: B¹n kh«ng ®ñ 60 ®iÓm phóc duyªn !")
	end
end
end
function muadaithanh()
muadaithanh1()
--SayNew("Ng­¬i cã ch¾c ch¾n chÞu phÝ <color=yellow>40 vµng<color> ®Ó tinh th«ng toµn bé kü n¨ng m«n ph¸i kh«ng?",2,
--"Ta ®ång ý /muadaithanh1",
--"Ta sÏ liªn hÖ l¹i sau /no")
end
function inlogdaithanh(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ThanBi/DaiThanhBiKip.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function muadaithanh1()
if mp() == 0 then
Talk(1,"","Ng­¬i ch­a gia nhËp m«n ph¸i, kh«ng thÓ häc")
return
end


		if mp() == 1 then	
			AddMagic(350,20)
			AddMagic(351,20)
			AddMagic(353,20)
		elseif mp() == 2 then
			AddMagic(342,20)
			AddMagic(347,20)
			AddMagic(345,20)
		elseif mp() == 3 then
		AddMagic(355,20)
	AddMagic(358,20)
	AddMagic(302,20)
	AddMagic(399,0)
		elseif mp() == 4 then
		AddMagic(359,20)
		AddMagic(361,20)
		AddMagic(327)
		elseif mp() == 5 then
		AddMagic(374,20)
	AddMagic(370,20)
	AddMagic(291)
		elseif mp() == 6 then
		AddMagic(377,20)
	AddMagic(378,20)
		elseif mp() == 7 then
		AddMagic(362,20)
		AddMagic(389,20)
		elseif mp() == 8 then
		AddMagic(365,20)
		AddMagic(367,20)
		AddMagic(328)
		elseif mp() == 9 then
			AddMagic(380,20)
		AddMagic(382,20)
		elseif mp() == 10 then
			AddMagic(385,20)
			AddMagic(384,20)
			AddMagic(329)
		end
		inlogdaithanh(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..mp().."")
		Msg2Player("§· tinh th«ng toµn bé kü n¨ng m«n ph¸i")

end
	
function muatstl()
vang = GetTask(99)
if GetTask(99) >= 80 then
	SetTask(99 , GetTask(99) - 80)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - 80 then
		AddEventItem(161)
		Msg2Player("B¹n nhËn ®­îc 1 Thiªn S¬n TuyÕt Liªn")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Ng­¬i kh«ng ®ñ 80 vµng, kh«ng thÓ mua")
end
end
function nhanlevel90()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetTask(486) == 0 then
		SetTask(486,1000)
		for p=1,(90-GetLevel()) do AddOwnExp(200000000) end
		idxitem = AddItem(0,5,4,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,4,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		
		idxitem = AddItem(0,2,29,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,7,14,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,9,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,8,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,6,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,3,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,3,1,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,10,5,4,0,0,0)
		SetTimeItem(idxitem,550324);
		ngay = ngay + 7
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		SetHSD(idxitem, 2017 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 §Ých L« 7 ngµy")
		
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2017 , thang, ngay, gio )
		Msg2SubWorld("Chµo mõng t©n thñ míi: <color=yellow>"..GetName().."")
else
	Talk(1,"","B¹n ®· nhËn phÇn th­ëng hç trî, kh«ng thÓ nhËn thªm ")
end
end


function tinhkiem_hotro2_3()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetItemCount2(264) > 0 then
Talk(1,"","B¹n ®· cã tui mau VIP råi, kh«ng thÓ nhËn thªm")
return
end
if GetLevel() < 100 then
	ngay = ngay + 1
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		for p=1,10 do
			itemidx = AddEventItem(264)
			SetBindItem(itemidx,1)
		end
	--	SetBindItem(itemidx , 1)
	--	SetHSD(itemidx, 2017 , thang, ngay, gio )
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")	
	Talk(0,"")
else
	Talk(1,"","§¼ng cÊp d­íi 100 míi cã thÓ nhËn")
end
end

function tinhkiem_hotro2_1()
if GetTask(304) ~= 0 then
Talk(1,"","B¹n ®· nhËn hç trî nµy råi, kh«ng thÓ nhËn thªm")
return
end
if GetLevel() < 80 then
	SetTask(304, 123)
	for p=1,1000 do AddOwnExp(10000) end
	Msg2Player("B¹n nhËn ®­îc 10.000.000 kinh nghiÖm")
	Talk(0,"")
else
	Talk(1,"","§¼ng cÊp d­íi 80 míi cã thÓ nhËn")
end
end

function tinhkiem_hotro2_2()
ngay = tonumber(date("%d"))
if GetTask(305) == ngay then
Talk(1,"","B¹n ®· nhËn hç trî trong ngµy h«m nay råi, kh«ng thÓ nhËn thªm")
return
end


if GetLevel() < 100 then
	SetTask(305, ngay)

	
SetTask(172, GetTask(172) + 10*60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)

Msg2Player("Thêi gian nh©n ®«i kinh nghiÖm hiÖn t¹i: "..floor(GetTask(172)/18/60).." phót !")
	Talk(0,"")
else
	Talk(1,"","§¼ng cÊp d­íi 100 míi cã thÓ nhËn")
end

end

function testtbtim()
Talk(1,"","Dang cap nhat ")
end
function taytuynhanh()
if GetTask(196) == 0 then
	SetTask(196,4)
	TayTiemNang()
	TayKyNang()
else
Talk(1,"","B¹n ®· tÈy tñy 1 lÇn miÔn phÝ, kh«ng ®­îc tÈy tñy thªm")
end
end
function nhantienthaolo()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if gio == 23 then
Talk(1,"","Thêi gian nµy kh«ng cho nhËn Tiªn Th¶o Lé, quay l¹i lóc 0h00 nhÐ")
return
end
if GetLevel() >= 90 and GetLevel() < 100 then
	idxitem = AddEventItem(120)
	SetBindItem(idxitem)
	SetHSD(idxitem , 2017, thang, ngay , gio + 1)
	Msg2Player("B¹n nhËn ®­îc 1 b×nh Tiªn Th¶o Lé 6 Giê ")
else
	Talk(1,"","ChØ nhËn Tiªn Th¶o Lé miÔn phÝ cho ®¼ng cÊp 90 - 99 trong thêi gian ®ua top")
end
end

function nhanvk()
SayNew("Vui lßng chän Vò KhÝ muèn nhËn ",10,
"Phi Tiªu /nhanvk2",
"Phi §ao /nhanvk2",
"Phi Ná /nhanvk2",
"KiÕm /nhanvk2",
"§ao /nhanvk2",
"Bæng /nhanvk2",
"Th­¬ng /nhanvk2",
"Chñy /nhanvk2",
"Song §ao /nhanvk2",
"Tho¸t./no")
end

function nhanvk2(nsel)
i = nsel+1
if i == 1 then
	idxitem = AddItem(0,1,0,1,0,0,0)
	SetTimeItem(idxitem,550324);
	idxitem = AddItem(0,1,0,10,0,0,0)
	SetTimeItem(idxitem,550324);
elseif i == 2 then
	idxitem = AddItem(0,1,1,1,0,0,0)
	SetTimeItem(idxitem,550324);
	idxitem = AddItem(0,1,1,10,0,0,0)
	SetTimeItem(idxitem,550324);
elseif i == 3 then
	idxitem = AddItem(0,1,2,1,0,0,0)
	SetTimeItem(idxitem,550324);
	idxitem = AddItem(0,1,2,10,0,0,0)
	SetTimeItem(idxitem,550324);
else
	idxitem = AddItem(0,0,i-4,1,0,0,0)
	SetTimeItem(idxitem,550324);
	idxitem = AddItem(0,0,i-4,10,0,0,0)
	SetTimeItem(idxitem,550324);
end
Msg2Player("B¹n ®· nhËn ®­îc Vò KhÝ Hç Trî, ®Õn Thî RÌn ®Ó hñy trang bÞ Khãa VÜnh ViÔn")
end

function nhapgiftcode()
if CheckFreeBoxItem(0,3,1,10) == 0 then
				Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 6 «, vui lßng kiÓm tra l¹i !")
				return
				end
				
				
OpenStringBox (2,"NhËp Code" , "acceptcode1")
end

function acceptcode1(num2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
num = tonumber(num2)
if num < 111111 or num > 99999999 then
Talk(1,"","ChØ ®­îc nhËp M· Code tõ: 111111 - 999999")
return
end
	if GetTask(333) > 0 then
			Talk(1,"","Nh©n vËt nµy ®· sö dông Gift Code, kh«ng thÓ sö dông thªm lÇn n÷a")
			return	
	end
		
if num == 18032017 then
	SetTask(333, 1)
	
	itemidx = AddEventItem(264)
	SetHSD(itemidx, 2017 , thang + 1, ngay, gio )
	SetBindItem(itemidx,1);
	for i=1,5 do
		itemidx = AddEventItem(115)
		SetBindItem(itemidx,1);
	end
	for i=1,5 do
		itemidx = AddEventItem(119)
		SetBindItem(itemidx,1);
	end
	for i=28,30 do
		itemidx = AddEventItem(i)
		SetBindItem(itemidx,1);
	end
	for i=1,6 do
		itemidx = AddEventItem(31)
		SetBindItem(itemidx,1);
	end
	
	Msg2Player("B¹n ®· nhËp Gift Code thµnh c«ng !")
	Msg2SubWorld("Chµo mõng t©n thñ míi <color=yellow>"..GetName().."<color=red> gia nhËp céng ®ång Vâ L©m Håi øc")
else
Talk(1,"","Gift Code kh«ng hîp lÖ !")
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function tinhkiem_nhanptmoc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(307) == 0 then
		SetTask(307,1)
elseif GetTask(307) == 1 then
	if GetLevel() >= 20 then
		SetTask(307,2)
		idxitem = AddItem(0,10,random(0,4),1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B¹n nhËn ®­îc Thó C­ìi 20")
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 20, kh«ng thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(307) == 2 then
	if GetLevel() >= 30 then
		SetTask(307,3)
		
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 30, kh«ng thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(307) == 3 then
	if GetLevel() >= 40 then
		SetTask(307,4)
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 40, kh«ng thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(307) == 4 then
	if GetLevel() >= 50 then
		SetTask(307,5)

	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 50, kh«ng thÓ nhËn phÇn th­ëng")
	end	
elseif GetTask(307) == 5 then
	if GetLevel() >= 60 then
		SetTask(307,6)
	
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 60, kh«ng thÓ nhËn phÇn th­ëng")
	end		
elseif GetTask(307) == 6 then
	if GetLevel() >= 80 then
		if mp() == 1 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"§¹t Ma §é Giang/bk_thieulam",
			"V« T­íng Tr¶m /bk_thieulam",
			"Hoµn T¶o Thiªn Qu©n/bk_thieulam",
			"Tho¸t./no")
		elseif mp() == 2 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Truy Tinh Tróc NguyÖt/bk_thienvuong",
			"Truy Phong QuyÕt/bk_thienvuong",
			"Ph¸ Thiªn tr¶m/bk_thienvuong",
			"Tho¸t./no")
		elseif mp() == 3 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",5,
			"B¹o Vò Lª Hoa /bk_duongmon",
			"NhiÕp Hån NguyÖt ¶nh/bk_duongmon",
			"Cöu Cung Phi Tinh /bk_duongmon",
			"Lo¹n Hoµn KÝch /bk_duongmon",
			"Tho¸t./no")
		elseif mp() == 4 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"¢m Phong Thùc Cèt /bk_ngudoc",
			"HuyÒn ¢m Tr¶m/bk_ngudoc",
			"§o¹n C©n Hñ Cèt/bk_ngudoc",
			"Tho¸t./no")
		elseif mp() == 5 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Phong S­¬ng To¸I ¶nh /bk_ngamy",
			"Tam Nga Tª TuyÕt /bk_ngamy",
			"Phæ §é Chóng Sinh /bk_ngamy",
			"Tho¸t./no")	
		elseif mp() == 6 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"B¨ng Tung V« ¶nh /bk_thuyyen",
			"B¨ng T©m Tiªn Tö /bk_thuyyen",
			"Tho¸t./no")	
		elseif mp() == 7 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Phi Long T¹i Thiªn /bk_caibang",
			"Thiªn H¹ V« CÈu /bk_caibang",
			"Tho¸t./no")		
		elseif mp() == 8 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Thiªn Ngo¹i L­u Tinh /bk_thiennhan",
			"V©n Long KÝch/bk_thiennhan",
			"NhiÕp Hån Lo¹n T©m/bk_thiennhan",
			"Tho¸t./no")	
		elseif mp() == 9 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Thiªn §Þa V« Cùc /bk_vodang",
			"Nh©n KiÕm Hîp NhÊt/bk_vodang",
			"Tho¸t./no")	
		elseif mp() == 10 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"L«i §éng Cöu Thiªn /bk_conlon",
			"Ng¹o TuyÕt Khiªu Phong/bk_conlon",
			"Tóy Tiªn T¸ Cèt/bk_conlon",
			"Tho¸t./no")		
		end
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 80, kh«ng thÓ nhËn phÇn th­ëng")
	end
elseif GetTask(307) == 7 then
	if GetLevel() >= 90 then
		SetTask(307,8)

	else
	Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 90, kh«ng thÓ nhËn phÇn th­ëng")
	end
end
end

function bk_thieulam(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 75)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thienvuong(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 78)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_duongmon(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 81)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_ngudoc(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 85)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function bk_ngamy(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 88)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thuyyen(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 91)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_caibang(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 93)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thiennhan(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 95)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_vodang(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 98)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_conlon(nsel)
if GetTask(307) == 6 then
	SetTask(307, 7 )
	idx = AddEventItem(nsel + 100)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function nhanmau()
for p=1,60 do AddItem(1,2,0,5,0,0,0) end
end
function main_hoalong()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Chµo "..GetName()..", ng­¬i cÇn ta gióp g× ?",6,
"NhËn phÇn th­ëng cÊp 50 /phanthuongcap50",
"NhËn phÇn th­ëng cÊp 80/phanthuongcap80",
"NhËn phÇn th­ëng cÊp 120/phanthuongcap120",
"TÝnh N¨ng: §æi Giíi TÝnh /doigioitinh",
"§æi mµu luyÖn c«ng /doimau",
"Tho¸t./no")
end
function phanthuongcap120()
if GetTask(450) ~= 0 then
Talk(1,"","ChØ cã nh©n vËt Háa Long míi ®­îc nhËn !")
return
end
if GetLevel() >= 120 then
	if GetTask(307) == 10 then
			if CheckFreeBoxItem(0,10,5,1) == 0 then
				Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
				return
				end
				idx = AddEventItem(19)
				SetBindItem(idx,1);
				SetTask(307,11)
				Msg2Player("B¹n nhËn ®­îc 1 Bi Kip 120")

	else
		Talk(1,"","C¸c h¹ ch­a nhËn hÕt phÇn th­ëng cÊp 50, 80, kh«ng thÓ nhËn phÇn th­ëng cÊp 120")
	end
	
	
else
	Talk(1,"","§¼ng cÊp cña c¸c h¹ kh«ng ®ñ 80, kh«ng thÓ nhËn")
end
end

function phanthuongcap80()
if GetLevel() >= 80 then
	if GetTask(307) == 9 then
			if CheckFreeBoxItem(0,10,5,1) == 0 then
				Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
				return
				end
				idx = AddItem(0,10,5,random(1,4),0,0,0)
				SetTimeItem(idx,550324);
				SetTask(307,10)
				Msg2Player("B¹n nhËn ®­îc 1 thó c­ìi 80")

	else
		Talk(1,"","C¸c h¹ ch­a nhËn hÕt phÇn th­ëng cÊp 50, kh«ng thÓ nhËn phÇn th­ëng cÊp 80")
	end
	
	
else
	Talk(1,"","§¼ng cÊp cña c¸c h¹ kh«ng ®ñ 80, kh«ng thÓ nhËn")
end
end
function phanthuongcap50()

if GetLevel() >= 50 then
			
				idx = AddItem(0,6,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,5,4,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,9,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,2,29,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,7,14,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,8,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,4,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,3,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,3,1,1,0,0,0)
				SetTimeItem(idx,550324);
				Msg2Player("B¹n nhËn ®­îc Set Kim Phong, ®Õn Thî RÌn ®Ó hñy trang bÞ khãa vÜnh viÔn")
				if GetTask(307) < 9 then
					SetTask(307,9)
				end
else
	Talk(1,"","§¼ng cÊp cña c¸c h¹ ch­a ®ñ 50, kh«ng thÓ nhËn phÇn th­ëng")
end
end


function moshop()
Sale(10)
end

function nhantbxanh()
nhantbxanh1()
end



function tbxanh_tamxa()
SayNew("Chän lo¹i vò khÝ",4,
"Phi Tiªu /tbxanh_tamxa1",
"Phi §ao /tbxanh_tamxa1",
"Ná /tbxanh_tamxa1",
"Tho¸t./no")
end

function tbxanh_vukhi()
SayNew("Chän lo¹i vò khÝ",7,
"KiÕm /tbxanh_vukhi1",
"§ao /tbxanh_vukhi1",
"Bæng /tbxanh_vukhi1",
"Th­¬ng /tbxanh_vukhi1",
"Chïy /tbxanh_vukhi1",
"Song §ao /tbxanh_vukhi1",
"Tho¸t./no")
end

function tbxanh_vukhi1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_vukhi2",
"Méc /tbxanh_vukhi2",
"Thñy/tbxanh_vukhi2",
"Háa /tbxanh_vukhi2",
"Thæ /tbxanh_vukhi2",
"Thoat./no")
end
function tbxanh_tamxa1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_tamxa2",
"Méc /tbxanh_tamxa2",
"Thñy/tbxanh_tamxa2",
"Háa /tbxanh_tamxa2",
"Thæ /tbxanh_tamxa2",
"Thoat./no")
end


function tbxanh1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh2",
"Méc /tbxanh2",
"Thñy/tbxanh2",
"Háa /tbxanh2",
"Thæ /tbxanh2",
"Thoat./no")
end

function tbxanh_vukhi2(nsel)
id = GetTaskTemp(1)
for k=1,50 do
AddItem(0,0,id,random(1,10),nsel,50,10)
end
end

function tbxanh_tamxa2(nsel)
id = GetTaskTemp(1)
for k=1,50 do
AddItem(0,1,id,random(1,10),nsel,50,10)
end
end


function nhantbxanh1()
SayNew("Chon Loai Trang Bi: ",10,
"Vò khÝ cËn chiÕn /tbxanh_vukhi",
"Vò khÝ tÇm xa /tbxanh_tamxa",
"Ao /tbxanh1",
"NhÉn /tbxanh1",
"D©y ChuyÒn /tbxanh1",
"Giµy /tbxanh1",
"Th¾t l­ng /tbxanh1",
"Nãn /tbxanh1",
"Bao Tay/tbxanh1",
"Ngäc Béi/tbxanh1",
"Tho¸t/no")
end

function tbxanh2(nsel)
id = 0
i = GetTaskTemp(1)
if i == 0 then
id = random(0,5)
elseif i == 1 then
id = random(0,2)
elseif i == 2 then
if GetSex() == 0 then
	id = random(0,6)	
else
	id = random(7,13)
end
elseif i == 3 then
id = 0
elseif i == 4 then
id = random(0,1)
elseif i == 5 then

if GetSex() == 0 then
	id = random(0,1)	
else
	id = random(2,3)
end

elseif i == 6 then


id = random(0,1)


elseif i == 7 then
id = random(0,13)
elseif i == 8 then
id = random(0,1)
elseif i == 9 then
id = random(0,1)
end

for k=1,50 do
AddItem(0,i,id,random(1,10),nsel,50,10)
end

end

function level()

return 10
end


function nhanhotrotest()
SayNew("Chän chøc n¨ng cÇn hç trî ",8,
"NhËn Level /test_nhanlv",
"NhËn ng©n l­îng /test_nhantien",
"Bi Kip 120 /test_bk",
"§¹i Thµnh BÝ Kip 90/muadaithanh",
"NhËn Ngùa MiÔn PhÝ /test_nhanngua",
"NhËn tÈy tñy miÔn phÝ /nhantaytuy",
"Nhan TTK, VLMT /test_mattich",
"Tho¸t./no")
end
function nhanhotrotest2()
SayNew("Chän chøc n¨ng cÇn hç trî ",10,
"NhËn Set An Bang /test_nhanab",
"NhËn Set Dinh Quoc /test_nhandq",
"NhËn Hoµng Kim M«n Ph¸i /nhanhkmp",
"NhËn Hoµng Kim T©n Thñ /nhanhktt",
"NhËn NLCH TB Xanh /nhanngoccuong",
"NhËn NLTT TB Xanh /nhandatai",
"NhËn NLCH An Bang /nhanmanh",
"NhËn NLCH ABHM /nhanmanh",
"NhËn M·nh HKMP /nhanmanh",
"Tho¸t./no")
end



function nhanmanh()
min = 0
max = 0
if mp() == 0 then
Talk(1,"","Ng­¬i ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn")
return
elseif mp() == 1 then
min = 426
max = 440
elseif mp() == 2 then
min = 441
max = 455
elseif mp() == 3 then
min = 456
max = 475
elseif mp() == 4 then
min = 476
max = 490
elseif mp() == 5 then
min = 491
max = 505
elseif mp() == 6 then
min = 506
max = 515
elseif mp() == 7 then
min = 516
max = 525
elseif mp() == 8 then
min = 526
max = 540
elseif mp() == 9 then
min = 541
max = 550
elseif mp() == 10 then
min = 551
max = 565
end
if min > 0 then
for i=min,max do AddEventItem(i) end
else
Talk(1,"","Lçi råi, b¸o admin gÊp")
end
end

function nhanngoccuong()
for i=1,5 do AddEventItem(414) end
for i=1,5 do AddEventItem(415) end
end

function test_mattich()
AddEventItem(0)
AddEventItem(1)

end
function test_bk()
AddEventItem(19)
end
function test_nhanngua()
AddItem(0,10,5,5,0,0,0)
AddItem(0,10,6,1,0,0,0)
AddItem(0,10,7,1,0,0,0)
AddItem(0,10,8,1,0,0,0)
end
function nhantaytuy()
SetTask(196,0)
Msg2Player("B¹n ®Õn xa phu thµnh thÞ ®Ó lÓn ®¶o tÈy tñy nhÐ ")
end

function test_nhanruong()
for i=1,5 do AddEventItem(366) end
end

function test_nhandq()
AddItem(0,7,15,random(5,10),0,0,0)
AddItem(0,2,30,random(5,10),0,0,0)
AddItem(0,6,3,random(5,10),0,0,0)
AddItem(0,5,5,random(5,10),0,0,0)
AddItem(0,8,3,random(5,10),0,0,0)
end

function test_nhanab()
AddItem(0,4,3,random(5,10),0,0,0)
AddItem(0,3,3,random(5,10),0,0,0)
AddItem(0,3,4,random(5,10),0,0,0)
AddItem(0,9,3,random(5,10),0,0,0)
end
function test_nhankp()
				idx = AddItem(0,6,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,5,4,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,9,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,2,29,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,7,14,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,8,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,4,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,3,2,1,0,0,0)
				SetTimeItem(idx,550324);
				idx = AddItem(0,3,1,1,0,0,0)
				SetTimeItem(idx,550324);
				Msg2Player("B¹n nhËn ®­îc Set Kim Phong, ®Õn Thî RÌn ®Ó hñy trang bÞ khãa vÜnh viÔn")
end

function test_nhanlv()

SetTask(139,1)
AddOwnExp(2000000000)
end

function test_nhantien()
Pay(GetCash())
Earn(20000000)
end



mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function nhanhotrotanthu()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetLevel() < 60 then
	for p=1,(60-GetLevel()) do
		AddOwnExp(200000000)
	end
		Msg2Player("B¹n ®· nhËn hç trî cÊp 60")
	
		nam = 2017
		if ngay == 31 and thang == 12 then
		ngay = 1
		thang = 1
		nam = 2017
		elseif ngay == mangthang[thang] then
		ngay = 1
		thang = thang + 1
		else
		ngay = ngay + 1
		end
		itemidx = AddEventItem(264)
		SetHSD(itemidx, nam , thang, ngay, gio )
		SetBindItem(itemidx , 1)
		Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")
		Msg2SubWorld("Vâ L©m Håi øc chµo mõng t©n thñ míi: <color=pink>"..GetName().."")
		Msg2Player("<color=yellow>H·y gia nhËp m«n ph¸i vµ b¾t ®Çu lµm nhiÖm vô m«n ph¸i ®Ó nhËn kü n¨ng!")
else
	Talk(1,"","§¼ng cÊp d­íi 60 míi cã thÓ nhËn Hç Trî T©n Thñ !")
end
end
function doigioitinh()
SayNew("<color=green>Hç Trî T©n Thñ <color>: §Ó ®æi giíi tÝnh, b¹n tiªu hao <color=yellow>2 Kim Nguyªn B¶o<color>, ng­¬i cã ch¾c ch¾n muèn ®æi giíi tÝnh kh«ng?",2,
"Ta ch¾c ch¾n muèn ®æi giíi tÝnh /doigioitinh1",
"Tho¸t./no")
end

function doigioitinh1()
if GetItemCount(17) < 2 then
Talk(1,"","Ng­¬i kh«ng ®ñ <color=yellow>2 Kim Nguyªn B¶o<color>, kh«ng thÓ ®æi giíi tÝnh !")
return
end

if GetSeries() == 0 or GetSeries() == 2 then
Talk(1,"","HÖ Kim vµ HÖ Thñy kh«ng thÓ ®æi gií tÝnh !")
return
end
 if CheckItemEquipCS() ~= 1 then
Talk(1,"","Ng­¬i ph¶i th¸o toµn bé trang bÞ trªn ng­êi xuèng míi cã thÓ ®æi giíi tÝnh")
return
end


sl = GetItemCount(17)
for k=1,2 do DelItem(17) end

if GetItemCount(17) == sl - 2 then
	if GetSex() == 1 then
		SetSex(0)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().." <color=red>võa ®æi giíi tÝnh sang <color=green>Giíi TÝnh Nam !")
	else
		SetSex(1)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().." <color=red>võa ®æi giíi tÝnh sang <color=green>Giíi TÝnh N÷ !")
	end
	KickOutSelf()
else
Talk(1,"","hackj ha em")
end
end


function nhanttl()
if GetTask(168) <= 0 then
Talk(1,"","Ng­¬i kh«ng cßn thêi gian nh©n ®«i tõ GIFT CODE")
return
end
if GetTask(172) > 0 then
Talk(1,"","Ng­¬i ®ang sö dông Tiªn Th¶o Lé, kh«ng thÓ nhËn !")
return
end
ngay = tonumber(date("%d"))
if GetTask(169) == ngay then
Talk(1,"","Ng­¬i ®· nhËn nh©n ®«i trong ngµy h«m nay råi, ngµy mai quay l¹i nhÐ !")
return
end

a = GetTask(168)
SetTask(168,GetTask(168)-2)
if GetTask(168) == (a-2) then
SetTask(169, ngay)
Setx2Exp(2*60*60*18)
AddSkillEffect(460,1,2*60*60*18)
SetTask(141,1)
Msg2Player("B¹n ®· sö dông nh©n ®«i kinh nghiÖm trong vßng 2 giê")
Msg2Player("B¹n cßn: "..GetTask(168).." giê sö dông nh©n ®«i")
end
end

function top2_1()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Vui lßng chän kü n¨ng 9x muèn nhËn ",2,
"Chän Kü N¨ng 9x /chonkynang1",
"Tho¸t./no")
end

function chonkynang1()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Vui lßng chän kü n¨ng 9x muèn nhËn ",10,
""..BIKIP[1].."/xacnhankynang1",
""..BIKIP[2].."/xacnhankynang1",
""..BIKIP[3].."/xacnhankynang1",
""..BIKIP[4].."/xacnhankynang1",
""..BIKIP[5].."/xacnhankynang1",
""..BIKIP[6].."/xacnhankynang1",
""..BIKIP[7].."/xacnhankynang1",
""..BIKIP[8].."/xacnhankynang1",
""..BIKIP[9].."/xacnhankynang1",
"Trang kÕ tiÕp /chonkynang2")
end

function chonkynang2()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Vui lßng chän kü n¨ng 9x muèn nhËn ",10,
""..BIKIP[10].."/xacnhankynang2",
""..BIKIP[11].."/xacnhankynang2",
""..BIKIP[12].."/xacnhankynang2",
""..BIKIP[13].."/xacnhankynang2",
""..BIKIP[14].."/xacnhankynang2",
""..BIKIP[15].."/xacnhankynang2",
""..BIKIP[16].."/xacnhankynang2",
""..BIKIP[17].."/xacnhankynang2",
""..BIKIP[18].."/xacnhankynang2",
"Trang kÕ tiÕp/chonkynang3")
end
function chonkynang3()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Vui lßng chän kü n¨ng 9x muèn nhËn ",10,
""..BIKIP[19].."/xacnhankynang3",
""..BIKIP[20].."/xacnhankynang3",
""..BIKIP[21].."/xacnhankynang3",
""..BIKIP[22].."/xacnhankynang3",
""..BIKIP[23].."/xacnhankynang3",
""..BIKIP[24].."/xacnhankynang3",
""..BIKIP[25].."/xacnhankynang3",
""..BIKIP[26].."/xacnhankynang3",
""..BIKIP[27].."/xacnhankynang3",
"Trang kÕ tiÕp/chonkynang4")
end
function chonkynang4()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Vui lßng chän kü n¨ng 9x muèn nhËn ",2,
""..BIKIP[28].."/xacnhankynang4",
"Quay l¹i trang 1/chonkynang1")
end

function xacnhankynang1(nsel)
xacnhankynang(nsel+1)
end
function xacnhankynang2(nsel)
xacnhankynang(nsel+10)
end
function xacnhankynang3(nsel)
xacnhankynang(nsel+19)
end
function xacnhankynang4(nsel)
xacnhankynang(nsel+28)
end



function doimau()
if GetTeamSize() > 0 then
LeaveTeam();
end

if GetFaction() == "" and GetCurCamp() > 0 then
SetCurCamp(0)
SetCamp(0)
return
end

if GetCurCamp() == 0 and GetFaction() == "" then
Talk(1,"","B¹n ch­a gia nhËp ph¸i")
return
end

if GetTongNameID() == 0 then
SayNew("<color=green>Vui lßng chän mµu:",5,
"ChÝnh Ph¸i/doimau11",
"Tµ Ph¸i/doimau11",
"Trung LËp /doimau11",
"S¸t Thñ/doimau11",
"Tho¸t./no")
else
Talk(1,"","V« bang kh«ng ®æi mµu ®­îc !")
end
end

function doimau11(nsel)
if GetCash() >= 100000 then
Pay(100000)
SetCamp(nsel+1)
SetCurCamp(nsel+1)
else
Talk(1,"","<color=green>Hç trî t©n thñ: <color>Kh«ng ®ñ 10 v¹n l­îng")
end
end

function TayTiemNang()
a = GetSeries()
if a == 0 then
RestAP(35,25,25,15)
elseif a == 1 then
RestAP(20,35,20,25)
elseif a == 2 then
RestAP(25,25,25,25)
elseif a == 3 then
RestAP(30,20,30,20)
elseif a == 4 then
RestAP(20,15,25,40)
end
diemtn = GetProp()
AddProp(-diemtn)
diem = (GetLevel()-1)*5+GetTask(198)*5 + getTiemNang()
AddProp(diem)
KickOutSelf()
end


function TayKyNang()
diemkn = GetMagicPoint()
AddMagicPoint(-diemkn)
diemkn2 = (GetLevel()-1)+GetTask(199) + getKyNang()
AddMagicPoint(diemkn2)
RollbackSkill()
UpdateSkill()
KickOutSelf()
end
function getTiemNang()
if GetTask(139) == 1 then
return 50
elseif GetTask(139) == 2 then
return 100
elseif GetTask(139) == 3 then
return 200
elseif GetTask(139) == 4 then
return 300
elseif GetTask(139) == 5 then
return 400
else
return 0
end
end
function getKyNang()
if GetTask(139) == 1 then
return 10
elseif GetTask(139) == 2 then
return 20
elseif GetTask(139) == 3 then
return 40
elseif GetTask(139) == 4 then
return 60
elseif GetTask(139) == 5 then
return 80
else
return 0
end
end
function no()
if GetAccount() == "adphuchung" then
ReLoadScript("\\script\\hotrotanthu.lua")
ReLoadScript("\\script\\item\\questkey\\176.lua")
end
for i=0,599 do
for p=1,GetItemCount(i) do
DelItem(i)
end
end

SetTask(99,1000)
SetTask(101,1000)
for p=1,100 do AddEventItem(44) end
Earn(50000000)

for i=1,20 do
for p=594,599 do
	AddEventItem(p)
end
end
end
function xacnhankynang(num)
if GetLevel() < 80 then
	Talk(1,"","§¼ng cÊp ch­a ®ñ 80, kh«ng thÓ nhËn !")
	return
end
if num <= 0 or num > getn(BIKIP) then
	Talk(1,"","Chän kü n¨ng ch­a hîp lÖ !")
	return
end
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","Hµnh trang kh«ng cßn chç trèng vui lßng kiÓm tra l¹i !")
return
end
if checkvt_80() == 0 then
		TOP_80[getn(TOP_80)+1] = GetName()
		BANG1 = TaoBang(TOP_80,"TOP_80")
		LuuBang("script/danhsachtop80.lua",BANG1)
		if getn(TOP_80) <= 3 then
			AddEventItem(num+74)
			Msg2Player("B¹n nhËn ®­îc BÝ Kip "..BIKIP[num].."")
			AddItem(0,10,5,5,0,0,0)
			Msg2Player("B¹n nhËn ®­îc Thó C­ìi 8x")
		elseif getn(TOP_80) > 3 and getn(TOP_80) <= 50 then
			AddEventItem(num+74)
			Msg2Player("B¹n nhËn ®­îc BÝ Kip "..BIKIP[num].."")
			AddItem(0,10,5,random(1,4),0,0,0)
			Msg2Player("B¹n nhËn ®­îc Thó C­ìi 8x")
		else
			idxitem = AddEventItem(num+74)
			SetBindItem(idxitem,1)
			Msg2Player("B¹n nhËn ®­îc BÝ Kip "..BIKIP[num].."")
		end
		Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..getn(TOP_80).." thµnh c«ng !")
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm !")
end
end

function top1()
if GetLevel() < 60 then
	Talk(1,"","§¼ng cÊp ch­a ®ñ 60, kh«ng thÓ nhËn !")
	return
end
if getn(TOP_60) >= 50 then
	Talk(1,"","HiÖn t¹i ®· ®ñ 50 ng­êi nhËn th­ëng, ta kh«ng thÓ ph¸t thªm cho ng­¬")
return
end
if checkvt_60() == 0 then
		TOP_60[getn(TOP_60)+1] = GetName()
		BANG1 = TaoBang(TOP_60,"TOP_60")
		LuuBang("script/danhsachtop60.lua",BANG1)
		if getn(TOP_60) <= 5 then
			AddEventItem(164)
			Earn(10000000)
		elseif getn(TOP_60) > 5 and getn(TOP_60) <= 50 then
			Earn(5000000)
		end
		Msg2SubWorld("<color=green>Chóc mõng "..GetName().." ®· nhËn th­ëng TOP "..getn(TOP_60).." thµnh c«ng !")		
else
	Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm !")
end
end

function checkvt_60()
if getn(TOP_60) == 0 then
return 0
end

for i=1,getn(TOP_60) do
	if GetName() == TOP_60[i] then
		return 1	
	end
end
return 0
end

BIKIP = {
"§¹t Ma §é Giang ",
"V« T­íng Tr¶m ",
"Hoµnh T¶o Thiªn Qu©n ",
"Truy Tinh Tróc NguyÖt ",
"Truy Phong QuyÕt ",
"Ph¸ Thiªn Tr¶m ",
"B¶o Vò Lª Hoa ",
"NhiÕp Hån NguyÖt ¶nh ",
"Cöu Cung Phi Tinh ",
"Lo¹n Hoµn KÝch ",
"¢m Phong Thùc Cèt ",
"HuyÒn ¢m Tr¶m ",
"§o¹n C©n Hñ Cèt ",
"Phong S­¬ng To¸I ¶nh ",
"Tam Nga Tª TuyÕt ",
"Phæ §é Chóng Sinh ",
"B¨ng Tung V« ¶nh ",
"B¨ng T©m Tiªn Tö ",
"Phi Long T¹i Thiªn",
"Thiªn H¹ V« Cèu",
"Thiªn Ngo¹i L­u Tinh",
"V©n Long KÝch",
"NhiÕp Hån Lo¹n T©m",
"Thiªn §Þa V« Cùc",
"Nh©n KiÕm Hîp NhÊt",
"L«i §éng Cöu Thiªn",
"Ng¹o TuyÕt Tiªu Phong",
"Tuý Tiªn T¸ Cèt"}

function checkvt_80()
if getn(TOP_80) == 0 then
return 0
end

for i=1,getn(TOP_80) do
	if GetName() == TOP_80[i] then
		return 1	
	end
end
return 0
end