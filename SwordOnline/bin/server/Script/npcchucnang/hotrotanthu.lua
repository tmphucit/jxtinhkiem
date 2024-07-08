Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsachtop60.lua")
Include("\\script\\danhsachtop80.lua")
Include("\\script\\admin\\monphai.lua")


function main()
dofile("script\\npcchucnang\\hotrotanthu.lua")
SayNew("<color=green>Hç Trî T©n Thñ <color>: Chµo "..GetName()..", ng­¬i cÇn ta gióp g× ?",8,
--"NhËn hç trî t©n thñ cÊp 120/nhanhotro90",
--"NhËn Set Kim Phong/nhankimphong",
--"NhËn Vò KhÝ C¬ B¶n /nhanvk",
--"NhËn Thõa Tiªn MËt LÔ Bao TOP /nhanttmtop",
--"KiÓm tra B¶o L­u Nh©n VËt /checkbaoluu",
--"Th¨ng cÊp lªn 80 [1 KNB]/nhanhotro80",
--"Më Shop B¸n §å /moshop",
--"NhËn Hç Trî Test/nhanhotrotest",
--"Trang bÞ xanh /nhantbxanh1",
--"NhËn 10 Giê Nh©n §«i/tinhkiem_hotro2_2",
--"NhËn tói m¸u VIP /tinhkiem_hotro2_3", 
--"§æi mµu luyÖn c«ng /doimau",
--"§æi Giíi TÝnh /doigioitinh",
--"§æi Phóc Duyªn /doiph",
"Tho¸t./no")
end

function hotroskill9x()
local hephai =timmonphai()
if hephai==0 then
Talk(1,"","Ng­¬i ch­a gia nhËp m«n ph¸i ch­a thÓ nhËn")
end
if GetLevel() < 80 then
Talk(1,"","CÊp 80 råi h½ng t×m ta nhÐ")
end
	if hephai==1 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"§¹t Ma §é Giang/nhan9xhotro",
		"V« T­íng Tr¶m/nhan9xhotro",
		"Hoµnh T¶o Thiªn Qu©n/nhan9xhotro",
		"Tho¸t./no")
		end
	if hephai==2 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"Truy Tinh Tróc NguyÖt/nhan9xhotro",
		"Truy Phong QuyÕt/nhan9xhotro",
		"Ph¸ Thiªn Tr¶m/nhan9xhotro",
		"Tho¸t./no")
		end
	if hephai==3 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"B¶o Vò Lª Hoa/nhan9xhotro",
		"NhiÕp Hån NguyÖt ¶nh/nhan9xhotro",
		"Cöu Cung Phi Tinh/nhan9xhotro",
		"Lo¹n Hoµn KÝch/nhan9xhotro",
		"Tho¸t./no")
		end
		if hephai==4 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"¢m Phong Thùc Cèt/nhan9xhotro",
		"HuyÒn ¢m Tr¶m/nhan9xhotro",
		"§o¹n C©n Hñ Cèt/nhan9xhotro",
		"Tho¸t./no")
		end

	if hephai==5 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"Phong S­¬ng To¸I ¶nh/nhan9xhotro",
		"Tam Nga Tª TuyÕt/nhan9xhotro",
		"Phæ §é Chóng Sinh/nhan9xhotro",
		"Tho¸t./no")
		end
	if hephai==6 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"B¨ng Tung V« ¶nh/nhan9xhotro",
		"B¨ng T©m Tiªn Tö/nhan9xhotro",
		"Tho¸t./no")
		end
			if hephai==7 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"Phi Long T¹i Thiªn/nhan9xhotro",
		"Thiªn H¹ V« Cèu/nhan9xhotro",
		"Tho¸t./no")
		end
			if hephai==8 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"Thiªn Ngo¹i L­u Tinh/nhan9xhotro",
		"V©n Long KÝch/nhan9xhotro",
		"NhiÕp Hån Lo¹n T©m/nhan9xhotro",
		"Tho¸t./no")
		end
			if hephai==9 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",3,
		"Thiªn §Þa V« Cùc/nhan9xhotro",
		"Nh©n KiÕm Hîp NhÊt/nhan9xhotro",
		"Tho¸t./no")
		end
		if hephai==10 then
		SayNew("<color=green>Hç Trî 1 Skill 9X <color>: Chµo §¹i hiÖp <color=red>"..GetName().."<color>. B¹n chän lo¹i nµo ?",4,
		"L«i §éng Cöu Thiªn/nhan9xhotro",
		"Ng¹o TuyÕt Tiªu Phong/nhan9xhotro",
		"Tuý Tiªn T¸ Cèt/nhan9xhotro",
		"Tho¸t./no")
		end
end
function nhan9xhotro(nsel)
-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
-- phut = tonumber(date("%M"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetLevel() < 80 then
	Talk(1,"","CÊp 80 míi cã thÓ nhËn !")
	return
end
local i= nsel
local hephai =timmonphai()
	if GetTask(503) ~= 2001 then
	SetTask(503,2001)	
			if hephai==1 then
				itemidx = AddEventItem(i+75)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==2 then
				itemidx = AddEventItem(i+78)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==3 then
				itemidx = AddEventItem(i+81)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==4 then
				itemidx = AddEventItem(i+85)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end			
			if hephai==5 then
				itemidx = AddEventItem(i+88)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==6 then
				itemidx = AddEventItem(i+91)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==7 then
				itemidx = AddEventItem(i+93)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==8 then
				itemidx = AddEventItem(i+95)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end		
			if hephai==9 then
				itemidx = AddEventItem(i+98)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end
			if hephai==10 then
				itemidx = AddEventItem(i+100)
				SetBindItem(itemidx,1)
				-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
			end	
		Msg2World("Chóc mõng cao thñ <color=yellow>"..GetName().." <color=red> ®· nhËn ®­îc 1 cuèn bÝ kÝp 9x t¹i  NPC M«n Ph¸i")		
	else
			Talk(1,"","B¹n ®· nhËn phÇn th­ëng hç trî, kh«ng thÓ nhËn thªm ")
	end
end
function timmonphai()
	if GetFaction() == "Thieu Lam Phai" then
	return 1
	elseif GetFaction() == "Thien Vuong Bang" then
	return 2
	elseif GetFaction() == "Duong Mon" then
	return 3
	elseif GetFaction() == "Ngu Doc Giao" then
	return 4
	elseif GetFaction() == "Nga My Phai" then
	return 5
	elseif GetFaction() == "Thuy Yen Mon" then
	return 6
	elseif GetFaction() == "Cai Bang" then
	return 7
	elseif GetFaction() == "Thien Nhan Giao" then
	return 8
	elseif GetFaction() == "Vo Dang Phai" then
	return 9
	elseif GetFaction() == "Con Lon Phai" then
	return 10
	else
	return 0
	end
end;

function xoatoanbo()
DeleteAllItem()
end
function nhanttmtop()
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , 7, 14,17)
end
function checkbaoluu()
if GetTask(523) == 0 and GetTask(524) == 0 then
Talk(1,"","Nh©n vËt cña b¹n kh«ng cã kinh nghiÖm b¶o l­u ")
return
end
Talk(1,"","B¹n ®· b¶o l­u: CÊp ®é: "..(120+GetTask(523)).." - Kinh nghiÖm: "..GetTask(524).." - "..GetTask(199).." VLMT - "..GetTask(198).." TTK")
end



function nhanhotro90()
w,x,y = GetWorldPos()
if w == 53 then
	if GetLevel() < 120 then
		for i=1,(120-GetLevel()) do AddOwnExp(1000000000) end
		Msg2World("Chµo mõng t©n thñ <color=yellow>"..GetName().." <color=red>gia nhËp Vâ L©m ChÊn Thiªn")
	else
		Talk(1,"","§¼ng cÊp 120 trë lªn kh«ng thÓ nhËn hç trî !")
	end
elseif w == 4 then
		if GetLevel() < 130 then
		for i=1,(130-GetLevel()) do AddOwnExp(1000000000) end
		Msg2World("Chµo mõng t©n thñ <color=yellow>"..GetName().." <color=red>gia nhËp Vâ L©m ChÊn Thiªn")
	else
		Talk(1,"","§¼ng cÊp 130 trë lªn kh«ng thÓ nhËn hç trî !")
	end
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
-- if GetTask(103) < 45 then
-- Talk(1,"","Ng­¬i ch­a cã kü n¨ng 90 trong ng­êi, kh«ng thÓ  hack ®¹i thµnh")
-- return
-- end

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
function nhankimphong111()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
end
if GetTask(486) ~= 2000 then
		SetTask(486,2000)
		--for p=1,(90-GetLevel()) do AddOwnExp(200000000) end
		idxitem = AddItem(0,6,2,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,5,4,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,9,2,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,2,29,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,7,14,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,8,2,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,4,2,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,3,2,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		idxitem = AddItem(0,3,1,5,0,0,0)
		SetTimeItem(idxitem,550324);
		-- SetHSD(idxitem, nam , thang, ngay, gio )
		for p=1,5 do
		itemidx = AddEventItem(120)
		SetBindItem(itemidx,1)
		end
		ngayvp = ngay + 5
		thangvp = thang
		if ngayvp > mangthang[thang] then
			ngayvp = ngayvp - mangthang[thang]
			thangvp = thang + 1
		end
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		Msg2SubWorld("Chµo mõng t©n thñ <color=yellow>"..GetName().." <color=red>gia nhËp M¸y Chñ Thiªn S¬n")
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

function nhapgiftcodeTK()
if CheckFreeBoxItem(0,3,1,10) == 0 then
				Talk(1,"","Hµnh trang kh«ng ®ñ 6 x 6 «, vui lßng kiÓm tra l¹i !")
				return
				end
				
				
OpenStringBox (2,"NhËp Code" , "acceptcode1TK")
end

function acceptcode1TK(num2)
-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
num = tonumber(num2)
if num < 111111 or num > 99999999 then
Talk(1,"","M· Code Sai ")
return
end
	if GetTask(633) > 0 then
			Talk(1,"","Nh©n vËt nµy ®· sö dông Gift Code, kh«ng thÓ sö dông thªm lÇn n÷a")
			return	
	end
		
	if GetLevel() < 92 then
			Talk(1,"","Nh©n vËt nµy kh«ng ®ñ ®iÒu kiÖn nhËn Gift Code")
			return	
	end
if num == 18032017 then
	SetTask(633, 1)
	
	for i=1,5 do
		itemidx = AddEventItem(654)
		SetBindItem(itemidx,1);
	end
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/nhancodegameTK.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Msg2Player("B¹n ®· nhËp Gift Code thµnh c«ng !")
	Msg2SubWorld("Chµo mõng t©n thñ míi <color=yellow>"..GetName().."<color=red> NhËn ®­îc code Tèng kim Vâ L©m ChÊn Thiªn")
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
if GetTask(307) > 0 then
			Talk(1,"","Nh©n vËt nµy ®· nhËn phÇn quµ nµy råi , kh«ng thÓ sö dông thªm lÇn n÷a")
			return	
end
-- if GetTask(307) == 0 then
		
-- elseif GetTask(307) == 1 then
	-- if GetLevel() >= 20 then
		-- SetTask(307,2)
		-- idxitem = AddItem(0,10,random(0,4),1,0,0,0)
		-- SetTimeItem(idxitem,550324);
		-- Msg2Player("B¹n nhËn ®­îc Thó C­ìi 20")
	-- else
		-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 20, kh«ng thÓ nhËn phÇn th­ëng")
	-- end
-- elseif GetTask(307) == 2 then
	-- if GetLevel() >= 30 then
		-- SetTask(307,3)
		
	-- else
		-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 30, kh«ng thÓ nhËn phÇn th­ëng")
	-- end
-- elseif GetTask(307) == 3 then
	-- if GetLevel() >= 40 then
		-- SetTask(307,4)
	-- else
		-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 40, kh«ng thÓ nhËn phÇn th­ëng")
	-- end
-- elseif GetTask(307) == 4 then
	-- if GetLevel() >= 50 then
		-- SetTask(307,5)

	-- else
		-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 50, kh«ng thÓ nhËn phÇn th­ëng")
	-- end	
-- elseif GetTask(307) == 5 then
	-- if GetLevel() >= 60 then
		-- SetTask(307,6)
	
	-- else
		-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 60, kh«ng thÓ nhËn phÇn th­ëng")
	-- end		
-- if GetTask(307) == 1 then
-- if GetTask(307) == 0 then
	if GetLevel() >= 80 then
		SetTask(307,1)
		if mp() == 1 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"§¹t Ma §é Giang/bk_thieulam",
			"V« T­íng Tr¶m /bk_thieulam",
			"Hoµn T¶o Thiªn Qu©n/bk_thieulam",
			"Tho¸t./no")
		elseif mp() == 2 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Truy Tinh Tróc NguyÖt/bk_thienvuong",
			"Truy Phong QuyÕt/bk_thienvuong",
			"Ph¸ Thiªn tr¶m/bk_thienvuong",
			"Tho¸t./no")
		elseif mp() == 3 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",4,
			"B¹o Vò Lª Hoa /bk_duongmon",
			"NhiÕp Hån NguyÖt ¶nh/bk_duongmon",
			"Cöu Cung Phi Tinh /bk_duongmon",
			"Lo¹n Hoµn KÝch /bk_duongmon",
			"Tho¸t./no")
		elseif mp() == 4 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"¢m Phong Thùc Cèt /bk_ngudoc",
			"HuyÒn ¢m Tr¶m/bk_ngudoc",
			"§o¹n C©n Hñ Cèt/bk_ngudoc",
			"Tho¸t./no")
		elseif mp() == 5 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"Phong S­¬ng To¸I ¶nh /bk_ngamy",
			"Tam Nga Tª TuyÕt /bk_ngamy",
			"Phæ §é Chóng Sinh /bk_ngamy",
			"Tho¸t./no")	
		elseif mp() == 6 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",2,
			"B¨ng Tung V« ¶nh /bk_thuyyen",
			"B¨ng T©m Tiªn Tö /bk_thuyyen",
			"Tho¸t./no")	
		elseif mp() == 7 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",2,
			"Phi Long T¹i Thiªn /bk_caibang",
			"Thiªn H¹ V« CÈu /bk_caibang",
			"Tho¸t./no")		
		elseif mp() == 8 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",2,
			"Thiªn Ngo¹i L­u Tinh /bk_thiennhan",
			--"V©n Long KÝch/bk_thiennhan",
			"NhiÕp Hån Lo¹n T©m/bk_thiennhan",
			"Tho¸t./no")	
		elseif mp() == 9 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",2,
			"Thiªn §Þa V« Cùc /bk_vodang",
			"Nh©n KiÕm Hîp NhÊt/bk_vodang",
			"Tho¸t./no")	
		elseif mp() == 10 then
			SayNew("Vui lßng chän Bi Kip muèn nhËn:",3,
			"L«i §éng Cöu Thiªn /bk_conlon",
			"Ng¹o TuyÕt Khiªu Phong/bk_conlon",
			"Tóy Tiªn T¸ Cèt/bk_conlon",
			"Tho¸t./no")		
		end
	else
		Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 80, kh«ng thÓ nhËn phÇn th­ëng")
	end
-- elseif GetTask(307) == 7 then
	-- if GetLevel() >= 90 then
		-- SetTask(307,8)

	-- else
	-- Talk(1,"","C¸c h¹ ch­a ®¹t ®¼ng cÊp 90, kh«ng thÓ nhËn phÇn th­ëng")
	-- end
end
function bk_thieulam(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 75)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thienvuong(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 78)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_duongmon(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 81)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_ngudoc(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 85)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function bk_ngamy(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 88)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thuyyen(nsel)
if GetTask(307) == 1 then
	--SetTask(307, 7 )
	idx = AddEventItem(nsel + 91)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_caibang(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 93)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thiennhan(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 95)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_vodang(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 98)
	SetBindItem(idx, 1)
	Msg2Player("B¹n nhËn ®­îc "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_conlon(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
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
for k=1,1 do
AddItem(0,0,id,10,nsel,50,10)
end
end

function tbxanh_tamxa2(nsel)
id = GetTaskTemp(1)
for k=1,1 do
AddItem(0,1,id,10,nsel,50,10)
end
end


function tbxanh_vukhi3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_vukhi4",
"Méc /tbxanh_vukhi4",
"Thñy/tbxanh_vukhi4",
"Háa /tbxanh_vukhi4",
"Thæ /tbxanh_vukhi4",
"Thoat./no")
end
function tbxanh_tamxa3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ngò hµnh ",6,
"Kim/tbxanh_tamxa4",
"Méc /tbxanh_tamxa4",
"Thñy/tbxanh_tamxa4",
"Háa /tbxanh_tamxa4",
"Thæ /tbxanh_tamxa4",
"Thoat./no")
end

function tbxanh_vukhi4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,0,id,10,nsel,1,1)
SetTimeItem(idxitem,550324);
SetTask(777,1)
end

function tbxanh_tamxa4(nsel)
id = GetTaskTemp(1)
idxitem = AddItem(0,1,id,10,nsel,1,1)
SetTimeItem(idxitem,550324);
SetTask(777,1)
end
function nhantbxanh101()
if GetTask(777) >= 1 then
	Talk(1,"","Ng­¬i ®· nhËn råi kh«ng thÓ nhËn l¹i n÷a !")
	return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó C©y Th«ng 6 x 5 « míi cã thÓ nhËn !")
	return
end

SayNew("Chon Loai Trang Bi: ",3,
"Vò khÝ cËn chiÕn /tbxanh_vukhi_ruong",
"Vò khÝ tÇm xa /tbxanh_tamxa_ruong",
-- "Ao /tbxanh1",
-- "NhÉn /tbxanh1",
-- "D©y ChuyÒn /tbxanh1",
-- "Giµy /tbxanh1",
-- "Th¾t l­ng /tbxanh1",
-- "Nãn /tbxanh1",
-- "Bao Tay/tbxanh1",
-- "Ngäc Béi/tbxanh1",
"Tho¸t/no")
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
		id = 10
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
	if GetSex() == 0 then
		id = 1	
	else
		id = 0
	end
elseif i == 7 then
	if GetSex() == 0 then
		id = random(0,6)	
	else
		id = random(7,13)
	end
	-- id = random(0,13)
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

for k=1,1 do
if GetAccount() == "" then
AddItem(0,i,id,10,nsel,10,10)
else
AddItem(0,i,id,10,nsel,10,10)

end
end
end



function level()

return 10
end

function test_giamlv()
SetLevel(GetLevel() - 10)
end

function daithanh9x()
AddEventItem(177)
end
function nhanqht()
for i = 1,10 do AddEventItem(654) end
end
function nhanxu()
SetTask(99,2000)
SetTask(101,2000)
end

function nhandqtest()
AddItem(0,7,15,1,0,0,0)
AddItem(0,2,30,1,0,0,0)
AddItem(0,6,3,1,0,0,0)
AddItem(0,5,5,1,0,0,0)
AddItem(0,8,3,1,0,0,0)
end
function nhanabtest()
AddItem(0,4,3,random(1,5),0,0,0)
AddItem(0,3,3,random(1,5),0,0,0)
AddItem(0,3,4,random(1,5),0,0,0)
AddItem(0,9,3,random(1,5),0,0,0)
end
function kiemtra_skill120()
for i=412,430 do
if HaveMagic(i) > 0 then
return i
end
end
return 0
end

function maxskill120()
idskill = kiemtra_skill120()
if idskill == 0 then
Talk(1,"","Ng­¬i h·y häc kü n¨ng 120 sau ®ã quay l¹i t×m ta !")
return
end
AddMagic(idskill,20)
Talk(1,"","Chóc mõng ng­¬i ®· th«ng th¹o tuyÖt kü 120 cña m«n ph¸i !")
end

function test_nhanab2()
for k=1,50 do
	for i=283,286 do AddEventItem(i) end
end
for k=1,200 do AddEventItem(664) end
Msg2Player("B¹n ®· nhËn nguyªn liÖu chÕ t¹o trang bÞ An Bang. H·y ®Õn thî rÌn ®Ó chÕ t¹o ...")
end
function test_nhandq2()
for k=1,50 do
	for i=287,291 do AddEventItem(i) end
end
for k=1,200 do AddEventItem(665) end
Msg2Player("B¹n ®· nhËn nguyªn liÖu chÕ t¹o trang bÞ An Bang. H·y ®Õn thî rÌn ®Ó chÕ t¹o ...")
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
for i=1,10 do AddEventItem(0) end
for i=1,10 do AddEventItem(1) end
end
function test_bk()
AddEventItem(19)
end
function test_nhanngua()
-- for i=1,4 do
AddItem(0,10,5,10,0,0,0)
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,1,0,0,0)
AddItem(0,10,13,10,0,0,0)
-- AddItem(0,10,7,3,0,0,0)
-- AddItem(0,10,7,4,0,0,0)
-- AddItem(0,10,7,5,0,0,0)
-- end
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
"T¨ng 50 level /testnhanlv1",
"T¨ng 100 Level /testnhanlv1",
"Tho¸t./no")
end
function testnhanlv1(nsel)
i = nsel + 1
if i == 1 then
AddOwnExp(2000000000)
elseif i == 2 then
for t=1,5 do AddOwnExp(2000000000) end
elseif i == 3 then
for t=1,50 do AddOwnExp(2000000000) end
else
for t=1,100 do AddOwnExp(2000000000) end
end
end

function test_nhantien()
Pay(GetCash())
Earn(50000000)
nhanxu()
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
		Msg2SubWorld("Vâ L©m ChÊn Thiªn chµo mõng t©n thñ míi: <color=pink>"..GetName().."")
		Msg2Player("<color=yellow>H·y gia nhËp m«n ph¸i vµ b¾t ®Çu lµm nhiÖm vô m«n ph¸i ®Ó nhËn kü n¨ng!")
else
	Talk(1,"","§¼ng cÊp d­íi 60 míi cã thÓ nhËn Hç Trî T©n Thñ !")
end
end
function doigioitinh()
SayNew("<color=green>Hç Trî T©n Thñ <color>: §Ó ®æi giíi tÝnh, b¹n tiªu hao <color=yellow>5 Kim Nguyªn B¶o<color>, ng­¬i cã ch¾c ch¾n muèn ®æi giíi tÝnh kh«ng?",2,
"Ta ch¾c ch¾n muèn ®æi giíi tÝnh /doigioitinh1",
"Tho¸t./no")
end

function doigioitinh1()
if GetItemCount(17) < 5 then
Talk(1,"","Ng­¬i kh«ng ®ñ <color=yellow>5 Kim Nguyªn B¶o<color>, kh«ng thÓ ®æi giíi tÝnh !")
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
for k=1,5 do DelItem(17) end

if GetItemCount(17) == sl - 5 then
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
if GetAccount() == "hinodl01" then
	ReLoadScript("\\script\\item\\questkey\\176.lua")
	AddEventItem(176)
	Msg2Player("Reload xong")
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
