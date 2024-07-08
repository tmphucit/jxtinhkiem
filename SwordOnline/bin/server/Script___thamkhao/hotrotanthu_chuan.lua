Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsachtop60.lua")
Include("\\script\\danhsachtop80.lua")
Include("\\script\\monphai.lua")


function main()
SayNew("<color=green>Hç Trî T©n Thñ <color>: Chµo "..GetName()..", ng­¬i cÇn ta gióp g× ?",7,
"NhËn phÇn th­ëng ®¹t cÊp ®é /nhanphanthuonglevel",
"NhËn Vò KhÝ C¬ B¶n /nhanvk",
"§æi mµu luyÖn c«ng /doimau",
"Häc khinh c«ng/hockhinhcong",
"NhËn Tói M¸u VIP [3 ngµy[/nhantuimauvip",
"§æi Giíi TÝnh /doigioitinh",
"Tho¸t./no")
end


function nhantuimauvip()
if GetItemCount2(264) > 0 then
Talk(1,"","B¹n ®· cã 1 Tói M¸u VIP trong hµnh trang, kh«ng thÓ nhËn hç trî !")
return
end

gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
if GetTask(927) ~= 0 then
Talk(1,"","B¹n ®· nhËn phÇn th­ëng nµy råi !")
return
end

ngay = ngay + 3
	if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
	thang = thang + 1
	end
SetTask(927,1)
itemidx = AddEventItem(264)
SetBindItem(itemidx,1)
SetHSD(itemidx, 2021 , thang, ngay, gio )
Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")	


end
function hockhinhcong()
if HaveMagic(210) <= 0 then
	AddMagic(210,1)
	Talk(1,"","B¹n ®· häc kü n¨ng Khinh C«ng")
else
Talk(1,"","B¹n ®· häc kü n¨ng nµy rå!")
	end
end

function nhanphanthuonglevel()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

task = 944
if GetTask(task) == 0 then
	if GetLevel() >= 10 then
		SetTask(task,1)
		idxitem = AddEventItem(696)
		SetBindItem(idxitem, 1)
		
		ngay = ngay + 7
		if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
		thang = thang + 1
		end
		SetHSD(idxitem, 2021 , thang, ngay, gio )	
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 10: <color=yellow>S¸ch Th«ng hµnh 7 ngµy")
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 10")
	end
elseif GetTask(task) == 1 then
	if GetLevel() >= 20 then
		SetTask(task , 2)
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 20: ")
		idxitem = AddItem(0,10,random(0,4),1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 20")
	end
elseif GetTask(task) == 2 then
	if GetLevel() >= 30 then
		SetTask(task , 3)
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 30: ")
		idxitem = AddItem(0,5,4,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,4,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 30")
	end	
elseif GetTask(task) == 3 then
	if GetLevel() >= 40 then
		SetTask(task , 4)
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 40: ")
		idxitem = AddItem(0,7,14,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,9,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,2,29,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,3,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 40")
	end	
elseif GetTask(task) == 4 then
	if GetLevel() >= 50 then
		SetTask(task , 5)
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 50: ")
		idxitem = AddItem(0,6,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")				
		idxitem = AddItem(0,8,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 50")
	end	
elseif GetTask(task) == 5 then
	if GetLevel() >= 60 then
		SetTask(task , 6)
		Msg2Player("NhËn phÇn th­ëng ®¹t cÊp 60: ")
		idxitem = AddItem(0,3,1,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,10,random(0,4),9,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 60")
	end	
elseif GetTask(task) == 6 then
	if GetLevel() >= 80 then
		nhanhotrobikip()
	else
		Talk(1,"","§¼ng cÊp nhËn phÇn th­ëng tiÕp theo: <color=yellow>CÊp 80")
	end	
else
	Talk(1,"","Ng­¬i ®· nhËn hÕt toµn bé hç trî cña m¸y chñ PhËt S¬n")
end	
end

function hotronnh()
if GetTask(929) > 0 then
Talk(1,"","Ng­¬i ®· nhËn hç trî råi, kh«ng thÓ nhËn thªm !")
return
end
if GetLevel() < 80 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 80, kh«ng thÓ nhËn !")
return
end
SetTask(929, 1)
SetTask(173, GetTask(173) + 24*60*60*18)
end
function taytuymienphi()
if GetLevel() < 50 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 50, kh«ng thÓ nhËn !")
return
end
if GetTask(928) ~= 0 then
Talk(1,"","Ng­¬i ®· nhËn tÈy tñy råi, kh«ng thÓ nhËn thªm !")
return
end

SayNew("B¹n chØ cã 1 lÇn tÈy tñy miÔn phÝ, b¹n cã ch¾c ch¾n muèn sö dông kh«ng?",2,
"T«i ®ång ý tÈy tñy /taytuymienphi2",
"Tho¸t./no")
end

function taytuymienphi2()
SetTask(928, 1)
TayTiemNang()
TayKyNang()
end

function nhansethktt()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(926) ~= 0 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm !")
return
end

if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp d­íi 100 kh«ng thÓ nhËn phÇn th­ëng !") 
return
end

SetTask(926, 1)
ngay = ngay + 14
if ngay > mangthang[thang] then
		ngay = ngay - mangthang[thang]
thang = thang + 1
end


itemidx = AddItem(0,2,80,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,4,21,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,6,27,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,5,25,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,8,23,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,7,42,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,9,21,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,3,40,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )
itemidx = AddItem(0,3,41,1,0,0,0)
SetTimeItem(itemidx,550324);
SetHSD(itemidx, 2021 , thang, ngay, gio )



end

function nhanhotrobikip()
monphai = mp()
if monphai == 0 then
Talk(1,"","C¸c h¹ ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn !")
return
end
if GetTask(944) ~= 6 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng råi, kh«ng thÓ nhËn thªm")
return
end
if monphai == 1 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"§¹t Ma §é Giang/bk_thieulam",
			"V« T­íng Tr¶m /bk_thieulam",
			"Hoµn T¶o Thiªn Qu©n/bk_thieulam",
			"Tho¸t./no")
		elseif monphai == 2 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Truy Tinh Tróc NguyÖt/bk_thienvuong",
			"Truy Phong QuyÕt/bk_thienvuong",
			"Ph¸ Thiªn tr¶m/bk_thienvuong",
			"Tho¸t./no")
		elseif monphai == 3 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",5,
			"B¹o Vò Lª Hoa /bk_duongmon",
			"NhiÕp Hån NguyÖt ¶nh/bk_duongmon",
			"Cöu Cung Phi Tinh /bk_duongmon",
			"Lo¹n Hoµn KÝch /bk_duongmon",
			"Tho¸t./no")
		elseif monphai == 4 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"¢m Phong Thùc Cèt /bk_ngudoc",
			"HuyÒn ¢m Tr¶m/bk_ngudoc",
			"§o¹n C©n Hñ Cèt/bk_ngudoc",
			"Tho¸t./no")
		elseif monphai == 5 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Phong S­¬ng To¸I ¶nh /bk_ngamy",
			"Tam Nga Tª TuyÕt /bk_ngamy",
			"Phæ §é Chóng Sinh /bk_ngamy",
			"Tho¸t./no")	
		elseif monphai == 6 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"B¨ng Tung V« ¶nh /bk_thuyyen",
			"B¨ng T©m Tiªn Tö /bk_thuyyen",
			"Tho¸t./no")	
		elseif monphai == 7 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Phi Long T¹i Thiªn /bk_caibang",
			"Thiªn H¹ V« CÈu /bk_caibang",
			"Tho¸t./no")		
		elseif monphai == 8 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"Thiªn Ngo¹i L­u Tinh /bk_thiennhan",
			"V©n Long KÝch/bk_thiennhan",
			"NhiÕp Hån Lo¹n T©m/bk_thiennhan",
			"Tho¸t./no")	
		elseif monphai == 9 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Thiªn §Þa V« Cùc /bk_vodang",
			"Nh©n KiÕm Hîp NhÊt/bk_vodang",
			"Tho¸t./no")	
		elseif monphai == 10 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"L«i §éng Cöu Thiªn /bk_conlon",
			"Ng¹o TuyÕt Khiªu Phong/bk_conlon",
			"Tóy Tiªn T¸ Cèt/bk_conlon",
			"Tho¸t./no")		
		end

end



function nhanhotrotanthu()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end

if GetTask(307) ~= 0 then
Talk(1,"","C¸c h¹ ®· nhËn hç trî råi, kh«ng thÓ nhËn thªm !")
return
end

				lv = GetLevel()
				if lv < 10 then
					for i=1,(10-lv) do AddOwnExp(100000) end
				end
						
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
				idxitem = AddItem(0,10,2,10,0,0,0)
				SetTimeItem(idxitem,550324);
				
				SetTask(307,1)
				Msg2Player("B¹n nhËn ®­îc Set Kim Phong vµ Ngùa Tóc S­¬ng, ®Õn Thî RÌn ®Ó hñy trang bÞ khãa vÜnh viÔn")
				
end

function hoanganh_hotro()
SayNew("Test",7,
"NhËn Hç Trî 130 nhanh /nhanhotronhanh",
"Më Shop B¸n §å /moshop",
"NhËn Hç Trî Test/nhanhotrotest",
"Trang bÞ xanh /nhantbxanh1",
"Tang 1 PK /tangpk",
"Giam 1  PK /giampk",
"Thoat/no")
end

function tangpk()
SetPK(GetPK() + 1)
end
function giampk()
SetPK(GetPK() - 1)
end
function nhanhotronhanh()
if GetLevel() < 130 then
	for k=1,(130-GetLevel()) do AddOwnExp(2000000000) end
	AddItem(0,10,5,5,0,0,0)
	Earn(50000000)
	SetTask(99,2000)
	SetTask(101,2000)

AddItem(0,7,15,1,0,0,0)
AddItem(0,2,30,1,0,0,0)
AddItem(0,6,3,1,0,0,0)
AddItem(0,5,5,1,0,0,0)
AddItem(0,8,3,1,0,0,0)



AddItem(0,4,3,1,0,0,0)
AddItem(0,3,3,1,0,0,0)
AddItem(0,3,4,1,0,0,0)
AddItem(0,9,3,1,0,0,0)

	
	
end

end

function nhanhotro80()
SayNew("B¹n ch¾c ch¾n muèn dïng <color=yellow>1 Kim Nguyªn B¶o<color> ®Ó th¨ng cÊp nh©n vËt lªn 80? ",2,
"Ta muèn th¨ng cÊp lªn 80/nhanhotro802",
"Tho¸t./no")
end

function nhanhotro802()
if GetItemCount(17) == 0 then
Talk(1,"","Ng­¬i kh«ng mang theo 1 Kim Nguyªn B¶o, kh«ng thÓ sö dông chøc n¨ng nµy")
return
end
if GetLevel() < 80 then
		DelItem(17)
		for p=1,(80-GetLevel()) do AddOwnExp(100000000) end
		Msg2SubWorld("Chóc mõng "..GetName().." ®· sö dông 1 Kim Nguyªn B¶o th¨ng cÊp nh©n vËt lªn 80")
		Talk(0,"")
else
	Talk(1,"","§¼ng cÊp d­íi 80 míi cã thÓ sö dông chøc n¨ng nµy !")
end
end
function nhanhotro60()
if GetLevel() < 60 then
	for p=1,(60-GetLevel()) do AddOwnExp(100000000) end
	idxitem = AddItem(0,10,2,10,0,0,0)
	SetTimeItem(idxitem,550324);
	Talk(1,"","B¹n nhËn ®­îc ®¼ng cÊp 60 vµ 1 Ngùa Tóc S­¬ng ")
else
Talk(1,"","§¼ng cÊp 60 trë lªn kh«ng ®­îc hç trî !")
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
if GetTask(103) < 45 then
Talk(1,"","Ng­¬i ch­a cã kü n¨ng 90 trong ng­êi, kh«ng thÓ  hack ®¹i thµnh")
return
end

		if mp() == 1 then	
			if HaveMagic(350) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
			AddMagic(350,20)
			AddMagic(351,20)
			AddMagic(353,20)
			AddMagic(412, 20)
		elseif mp() == 2 then	
			if HaveMagic(342) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
			AddMagic(342,20)
			AddMagic(347,20)
			AddMagic(345,20)
			AddMagic(414,20)
		elseif mp() == 3 then	
			if HaveMagic(355) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(355,20)
	AddMagic(358,20)
	AddMagic(302,20)
	AddMagic(399,0)
	AddMagic(416,20)
		elseif mp() == 4 then	
			if HaveMagic(359) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(359,20)
		AddMagic(361,20)
		AddMagic(327)
		AddMagic(418,20)
		elseif mp() == 5 then	
			if HaveMagic(374) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(374,20)
	AddMagic(370,20)
	AddMagic(291)
		AddMagic(420,20)
		elseif mp() == 6 then	
			if HaveMagic(377) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(377,20)
	AddMagic(378,20)
		AddMagic(422,20)
		elseif mp() == 7 then	
			if HaveMagic(362) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(362,20)
		AddMagic(389,20)
		AddMagic(424,20)
		elseif mp() == 8 then	
			if HaveMagic(365) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
		AddMagic(365,20)
		AddMagic(367,20)
		AddMagic(328)
		AddMagic(426,20)
		elseif mp() == 9 then	
			if HaveMagic(380) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
			AddMagic(380,20)
		AddMagic(382,20)
		AddMagic(428,20)
		elseif mp() == 10 then	
			if HaveMagic(385) < 1 then
			Talk(1,"","Ng­¬i ch­a häc kü n¨ng 90, kh«ng thÓ hack max")
			return
			end
			AddMagic(385,20)
			AddMagic(384,20)
			AddMagic(329)
		AddMagic(430,20)
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
if GetTask(927) ~= 0 then
Talk(1,"","Ng­¬i ®· nhËn phÇn th­ëng nµy råi, kh«ng thÓ nhËn thªm !")
return
end
if GetTask(925) ~= 9999 then
Talk(1,"","Hç trî chØ ¸p dông cho thµnh viªn ®ua top !")
return
end
if GetLevel() < 100 then
Talk(1,"","§¼ng cÊp kh«ng ®ñ 100, kh«ng thÓ nhËn !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetItemCount2(264) > 0 then
Talk(1,"","B¹n ®· cã tui m¸u VIP råi, kh«ng thÓ nhËn thªm")
return
end
ngay = ngay + 3
	if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
	thang = thang + 1
	end
SetTask(927,1)
	itemidx = AddEventItem(264)
	SetBindItem(itemidx,1)
	SetHSD(itemidx, 2021 , thang, ngay, gio )
	Msg2Player("B¹n nhËn ®­îc 1 [VIP] Thõa Tiªn MËt LÔ Bao")	
	Talk(0,"")

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

function bk_thieulam(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 75)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thienvuong(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 78)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_duongmon(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 81)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_ngudoc(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 85)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function bk_ngamy(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 88)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thuyyen(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 91)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_caibang(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 93)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thiennhan(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 95)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_vodang(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 98)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_conlon(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 100)
	SetBindItem(idx, 1)
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().." <color=red>®· nhËn phÇn th­ëng mèc cÊp 80: <color=yellow>"..GetNameItemBox(idx).."")
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
AddItem(0,0,id,10,nsel,50,10)
end
end

function tbxanh_tamxa2(nsel)
id = GetTaskTemp(1)
for k=1,50 do
AddItem(0,1,id,10,nsel,50,10)
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
	if GetSex() == 0 then
		id = 1
	else
		id = 0
	end
elseif i == 5 then
	if GetSex() == 0 then
		id = random(0,1)	
	else
		id = random(2,3)
	end
elseif i == 6 then
id = random(0,1)
elseif i == 7 then
	if GetSex() == 0 then
		id = random(0,6)	
	else
		id = random(7,13)
	end
elseif i == 8 then
	if GetSex() == 0 then
		id = 1
	else
		id = 0
	end
elseif i == 9 then
	if GetSex() == 0 then
		id = 1
	else
		id = 0
	end
end

for k=1,50 do
if GetAccount() == "biduy2" then
AddItem(0,i,id,10,nsel,50,1)
else
AddItem(0,i,id,10,nsel,50,10)
end
end

end

function level()

return 10
end

function test_giamlv()
SetLevel(GetLevel() - 10)
end

function nhanhotrotest()
SayNew("Chän chøc n¨ng cÇn hç trî ",10,
"Hack Level /test_nhanlv",
"Hack ng©n l­îng /test_nhantien",
"Hoµn thµnh hÕt nhiÖm vô /hoanthanh",
"§¹i Thµnh BÝ Kip 90, 120/muadaithanh",
"NhËn Set An Bang /test_nhanab",
"NhËn Set Dinh Quoc /test_nhandq",
"Nhan TTK, VLMT /test_mattich",
"NhËn tÈy tñy miÔn phÝ /nhantaytuy",
"NhËn ngùa 80 /test_nhanngua",
"Tho¸t./no")
end

function hoanthanh()
if GetFaction() == "" then
Talk(1,"","Ng­¬i ch­a gia nhËp ph¸i, kh«ng thÓ Hack hoµn thµnh nhiÖm vô ")
return
end
SetTask(103,45)
Msg2Player("§Õn NPC M«n Ph¸i ®Ó nhËn kü n¨ng")
end
function test_mattich()
AddEventItem(0)
AddEventItem(1)

end
function test_bk()
AddEventItem(19)
end
function test_nhanngua()
AddItem(0,10,5,random(1,5),0,0,0)
end
function nhantaytuy()
SetTask(196,0)
Msg2Player("B¹n ®Õn xa phu thµnh thÞ ®Ó lÓn ®¶o tÈy tñy nhÐ ")
end

function test_nhanruong()
for i=1,5 do AddEventItem(366) end
end

function test_nhandq()
AddItem(0,7,15,1,0,0,0)
AddItem(0,2,30,1,0,0,0)
AddItem(0,6,3,1,0,0,0)
AddItem(0,5,5,1,0,0,0)
AddItem(0,8,3,1,0,0,0)
end

function test_nhanab()
AddItem(0,4,3,1,0,0,0)
AddItem(0,3,3,1,0,0,0)
AddItem(0,3,4,1,0,0,0)
AddItem(0,9,3,1,0,0,0)
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
SayNew("Vui lßng chän chÕ ®é hack. L­u ý: Khi gi¶m level sÏ tù ®éng tÈy tñy ",5,
"T¨ng 1 level /testnhanlv1",
"T¨ng 5 level /testnhanlv1",
"T¨ng 10 level /testnhanlv1",
"Gi¶m 10 Level /testnhanlv1",
"Tho¸t./no")
end
function testnhanlv1(nsel)
i = nsel + 1
if i == 1 then
AddOwnExp(2000000000)
elseif i == 2 then
for t=1,5 do AddOwnExp(2000000000) end
elseif i == 3 then
for t=1,10 do AddOwnExp(2000000000) end
else
SetLevel(GetLevel() - 10)
TayTiemNang()
TayKyNang()
end

if GetLevel() > 130 then
SetLevel(130)
TayTiemNang()
TayKyNang()

end

end
function test_nhantien()
Pay(GetCash())
Earn(20000000)
end



mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function nhanhotrotanthu_()
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
SayNew("<color=green>Hç Trî T©n Thñ <color>: §Ó ®æi giíi tÝnh, b¹n tiªu hao <color=yellow>100 TiÒn §ång<color>, ng­¬i cã ch¾c ch¾n muèn ®æi giíi tÝnh kh«ng?",2,
"Ta ch¾c ch¾n muèn ®æi giíi tÝnh /doigioitinh1",
"Tho¸t./no")
end

function doigioitinh1()
if GetItemCount(697) < 100 then
Talk(1,"","Ng­¬i kh«ng ®ñ <color=yellow>100 TiÒn §ång<color>, kh«ng thÓ ®æi giíi tÝnh !")
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


sl = GetItemCount(697)
for k=1,100 do DelItem(697) end

if GetItemCount(697) == sl - 100 then
	if GetSex() == 1 then
		SetSex(0)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().." <color=red>võa ®æi giíi tÝnh sang <color=green>Giíi TÝnh Nam !")
	else
		SetSex(1)
		Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().." <color=red>võa ®æi giíi tÝnh sang <color=green>Giíi TÝnh N÷ !")
	end
	KickOutSelf()
else
Talk(1,"","hack ha em")
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
if GetCash() >= 10000 then
Pay(10000)
SetCamp(nsel+1)
SetCurCamp(nsel+1)
else
Talk(1,"","<color=green>Hç trî t©n thñ: <color>Kh«ng ®ñ 1 v¹n l­îng")
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
if GetAccount() == "admvltk102" then
SetPK(10)
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