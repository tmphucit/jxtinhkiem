Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsachtop60.lua")
Include("\\script\\danhsachtop80.lua")
Include("\\script\\admin\\monphai.lua")


function main()
dofile("script\\npcchucnang\\hotrotanthu.lua")
SayNew("<color=green>H� Tr� T�n Th� <color>: Ch�o "..GetName()..", ng��i c�n ta gi�p g� ?",8,
--"Nh�n h� tr� t�n th� c�p 120/nhanhotro90",
--"Nh�n Set Kim Phong/nhankimphong",
--"Nh�n V� Kh� C� B�n /nhanvk",
--"Nh�n Th�a Ti�n M�t L� Bao TOP /nhanttmtop",
--"Ki�m tra B�o L�u Nh�n V�t /checkbaoluu",
--"Th�ng c�p l�n 80 [1 KNB]/nhanhotro80",
--"M� Shop B�n �� /moshop",
--"Nh�n H� Tr� Test/nhanhotrotest",
--"Trang b� xanh /nhantbxanh1",
--"Nh�n 10 Gi� Nh�n ��i/tinhkiem_hotro2_2",
--"Nh�n t�i m�u VIP /tinhkiem_hotro2_3", 
--"��i m�u luy�n c�ng /doimau",
--"��i Gi�i T�nh /doigioitinh",
--"��i Ph�c Duy�n /doiph",
"Tho�t./no")
end

function hotroskill9x()
local hephai =timmonphai()
if hephai==0 then
Talk(1,"","Ng��i ch�a gia nh�p m�n ph�i ch�a th� nh�n")
end
if GetLevel() < 80 then
Talk(1,"","C�p 80 r�i h�ng t�m ta nh�")
end
	if hephai==1 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"��t Ma �� Giang/nhan9xhotro",
		"V� T��ng Tr�m/nhan9xhotro",
		"Ho�nh T�o Thi�n Qu�n/nhan9xhotro",
		"Tho�t./no")
		end
	if hephai==2 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"Truy Tinh Tr�c Nguy�t/nhan9xhotro",
		"Truy Phong Quy�t/nhan9xhotro",
		"Ph� Thi�n Tr�m/nhan9xhotro",
		"Tho�t./no")
		end
	if hephai==3 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"B�o V� L� Hoa/nhan9xhotro",
		"Nhi�p H�n Nguy�t �nh/nhan9xhotro",
		"C�u Cung Phi Tinh/nhan9xhotro",
		"Lo�n Ho�n K�ch/nhan9xhotro",
		"Tho�t./no")
		end
		if hephai==4 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"�m Phong Th�c C�t/nhan9xhotro",
		"Huy�n �m Tr�m/nhan9xhotro",
		"�o�n C�n H� C�t/nhan9xhotro",
		"Tho�t./no")
		end

	if hephai==5 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"Phong S��ng To�I �nh/nhan9xhotro",
		"Tam Nga T� Tuy�t/nhan9xhotro",
		"Ph� �� Ch�ng Sinh/nhan9xhotro",
		"Tho�t./no")
		end
	if hephai==6 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"B�ng Tung V� �nh/nhan9xhotro",
		"B�ng T�m Ti�n T�/nhan9xhotro",
		"Tho�t./no")
		end
			if hephai==7 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"Phi Long T�i Thi�n/nhan9xhotro",
		"Thi�n H� V� C�u/nhan9xhotro",
		"Tho�t./no")
		end
			if hephai==8 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"Thi�n Ngo�i L�u Tinh/nhan9xhotro",
		"V�n Long K�ch/nhan9xhotro",
		"Nhi�p H�n Lo�n T�m/nhan9xhotro",
		"Tho�t./no")
		end
			if hephai==9 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",3,
		"Thi�n ��a V� C�c/nhan9xhotro",
		"Nh�n Ki�m H�p Nh�t/nhan9xhotro",
		"Tho�t./no")
		end
		if hephai==10 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
		"L�i ��ng C�u Thi�n/nhan9xhotro",
		"Ng�o Tuy�t Ti�u Phong/nhan9xhotro",
		"Tu� Ti�n T� C�t/nhan9xhotro",
		"Tho�t./no")
		end
end
function nhan9xhotro(nsel)
-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
-- phut = tonumber(date("%M"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetLevel() < 80 then
	Talk(1,"","C�p 80 m�i c� th� nh�n !")
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
		Msg2World("Ch�c m�ng cao th� <color=yellow>"..GetName().." <color=red> �� nh�n ���c 1 cu�n b� k�p 9x t�i  NPC M�n Ph�i")		
	else
			Talk(1,"","B�n �� nh�n ph�n th��ng h� tr�, kh�ng th� nh�n th�m ")
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
Talk(1,"","Nh�n v�t c�a b�n kh�ng c� kinh nghi�m b�o l�u ")
return
end
Talk(1,"","B�n �� b�o l�u: C�p ��: "..(120+GetTask(523)).." - Kinh nghi�m: "..GetTask(524).." - "..GetTask(199).." VLMT - "..GetTask(198).." TTK")
end



function nhanhotro90()
w,x,y = GetWorldPos()
if w == 53 then
	if GetLevel() < 120 then
		for i=1,(120-GetLevel()) do AddOwnExp(1000000000) end
		Msg2World("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red>gia nh�p V� L�m Ch�n Thi�n")
	else
		Talk(1,"","��ng c�p 120 tr� l�n kh�ng th� nh�n h� tr� !")
	end
elseif w == 4 then
		if GetLevel() < 130 then
		for i=1,(130-GetLevel()) do AddOwnExp(1000000000) end
		Msg2World("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red>gia nh�p V� L�m Ch�n Thi�n")
	else
		Talk(1,"","��ng c�p 130 tr� l�n kh�ng th� nh�n h� tr� !")
	end
end
end
function nhanhotro80()
SayNew("B�n ch�c ch�n mu�n d�ng <color=yellow>1 Kim Nguy�n B�o<color> �� th�ng c�p nh�n v�t l�n 80? ",2,
"Ta mu�n th�ng c�p l�n 80/nhanhotro802",
"Tho�t./no")
end

function nhanhotro802()
if GetItemCount(17) == 0 then
Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end
if GetLevel() < 80 then
		DelItem(17)
		for p=1,(80-GetLevel()) do AddOwnExp(100000000) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� s� d�ng 1 Kim Nguy�n B�o th�ng c�p nh�n v�t l�n 80")
		Talk(0,"")
else
	Talk(1,"","��ng c�p d��i 80 m�i c� th� s� d�ng ch�c n�ng n�y !")
end
end
function nhanhotro60()
if GetLevel() < 60 then
	for p=1,(60-GetLevel()) do AddOwnExp(100000000) end
	idxitem = AddItem(0,10,2,10,0,0,0)
	SetTimeItem(idxitem,550324);
	Talk(1,"","B�n nh�n ���c ��ng c�p 60 v� 1 Ng�a T�c S��ng ")
else
Talk(1,"","��ng c�p 60 tr� l�n kh�ng ���c h� tr� !")
end
end
function doiph()
SayNew("<color=green>H� Tr� T�n Th�  <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
"Ph�c duy�n ti�u/doiph2",
"Ph�c duy�n trung/doiph2",
"Ph�c duy�n ��i/doiph2",
"Tho�t./no")
end


function doiph2(nsel)
i = nsel+1
sl = GetTask(162)
if i == 1 then
	if GetTask(162) >= 12 then
		SetTask(162,GetTask(162)-12)
		if GetTask(162) == (sl-12) then
			AddEventItem(173)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n ti�u")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 12 �i�m ph�c duy�n !")
	end
elseif i == 2 then
	if GetTask(162) >= 24 then
		SetTask(162,GetTask(162)-24)
		if GetTask(162) == (sl-24) then
			AddEventItem(174)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n trung")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 24 �i�m ph�c duy�n !")
	end
elseif i == 3 then
	if GetTask(162) >= 60 then
		SetTask(162,GetTask(162)-60)
		if GetTask(162) == (sl-60) then
			AddEventItem(175)
			Msg2Player("B�n nh�n ���c 1 b�nh Ph�c Duy�n ��i")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","<color=green>H� Tr� T�n Th�  <color>: B�n kh�ng �� 60 �i�m ph�c duy�n !")
	end
end
end
function muadaithanh()
muadaithanh1()
--SayNew("Ng��i c� ch�c ch�n ch�u ph� <color=yellow>40 v�ng<color> �� tinh th�ng to�n b� k� n�ng m�n ph�i kh�ng?",2,
--"Ta ��ng � /muadaithanh1",
--"Ta s� li�n h� l�i sau /no")
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
Talk(1,"","Ng��i ch�a gia nh�p m�n ph�i, kh�ng th� h�c")
return
end
-- if GetTask(103) < 45 then
-- Talk(1,"","Ng��i ch�a c� k� n�ng 90 trong ng��i, kh�ng th�  hack ��i th�nh")
-- return
-- end

		if mp() == 1 then	
			if HaveMagic(350) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
			AddMagic(350,20)
			AddMagic(351,20)
			AddMagic(353,20)
			AddMagic(412, 20)
		elseif mp() == 2 then	
			if HaveMagic(342) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
			AddMagic(342,20)
			AddMagic(347,20)
			AddMagic(345,20)
			AddMagic(414,20)
		elseif mp() == 3 then	
			if HaveMagic(355) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(355,20)
	AddMagic(358,20)
	AddMagic(302,20)
	AddMagic(399,0)
	AddMagic(416,20)
		elseif mp() == 4 then	
			if HaveMagic(359) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(359,20)
		AddMagic(361,20)
		AddMagic(327)
		AddMagic(418,20)
		elseif mp() == 5 then	
			if HaveMagic(374) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(374,20)
	AddMagic(370,20)
	AddMagic(291)
		AddMagic(420,20)
		elseif mp() == 6 then	
			if HaveMagic(377) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(377,20)
	AddMagic(378,20)
		AddMagic(422,20)
		elseif mp() == 7 then	
			if HaveMagic(362) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(362,20)
		AddMagic(389,20)
		AddMagic(424,20)
		elseif mp() == 8 then	
			if HaveMagic(365) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
		AddMagic(365,20)
		AddMagic(367,20)
		AddMagic(328)
		AddMagic(426,20)
		elseif mp() == 9 then	
			if HaveMagic(380) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
			AddMagic(380,20)
		AddMagic(382,20)
		AddMagic(428,20)
		elseif mp() == 10 then	
			if HaveMagic(385) < 1 then
			Talk(1,"","Ng��i ch�a h�c k� n�ng 90, kh�ng th� hack max")
			return
			end
			AddMagic(385,20)
			AddMagic(384,20)
			AddMagic(329)
		AddMagic(430,20)
		end
		inlogdaithanh(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..mp().."")
		Msg2Player("�� tinh th�ng to�n b� k� n�ng m�n ph�i")

end
	
function muatstl()
vang = GetTask(99)
if GetTask(99) >= 80 then
	SetTask(99 , GetTask(99) - 80)
	SetTask(101, GetTask(99))
	if GetTask(99) == vang - 80 then
		AddEventItem(161)
		Msg2Player("B�n nh�n ���c 1 Thi�n S�n Tuy�t Li�n")
	else
		Talk(1,"","Hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 80 v�ng, kh�ng th� mua")
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
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
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
		Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red>gia nh�p M�y Ch� Thi�n S�n")
else
	Talk(1,"","B�n �� nh�n ph�n th��ng h� tr�, kh�ng th� nh�n th�m ")
end
end


function tinhkiem_hotro2_3()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetItemCount2(264) > 0 then
Talk(1,"","B�n �� c� tui mau VIP r�i, kh�ng th� nh�n th�m")
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
		Msg2Player("B�n nh�n ���c 1 [VIP] Th�a Ti�n M�t L� Bao")	
	Talk(0,"")
else
	Talk(1,"","��ng c�p d��i 100 m�i c� th� nh�n")
end
end

function tinhkiem_hotro2_1()
if GetTask(304) ~= 0 then
Talk(1,"","B�n �� nh�n h� tr� n�y r�i, kh�ng th� nh�n th�m")
return
end
if GetLevel() < 80 then
	SetTask(304, 123)
	for p=1,1000 do AddOwnExp(10000) end
	Msg2Player("B�n nh�n ���c 10.000.000 kinh nghi�m")
	Talk(0,"")
else
	Talk(1,"","��ng c�p d��i 80 m�i c� th� nh�n")
end
end

function tinhkiem_hotro2_2()
ngay = tonumber(date("%d"))
if GetTask(305) == ngay then
Talk(1,"","B�n �� nh�n h� tr� trong ng�y h�m nay r�i, kh�ng th� nh�n th�m")
return
end


if GetLevel() < 100 then
	SetTask(305, ngay)

	
SetTask(172, GetTask(172) + 10*60*60*18)
AddSkillEffect(460,1,GetTask(172))
SetTask(141,1)

Msg2Player("Th�i gian nh�n ��i kinh nghi�m hi�n t�i: "..floor(GetTask(172)/18/60).." ph�t !")
	Talk(0,"")
else
	Talk(1,"","��ng c�p d��i 100 m�i c� th� nh�n")
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
Talk(1,"","B�n �� t�y t�y 1 l�n mi�n ph�, kh�ng ���c t�y t�y th�m")
end
end
function nhantienthaolo()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if gio == 23 then
Talk(1,"","Th�i gian n�y kh�ng cho nh�n Ti�n Th�o L�, quay l�i l�c 0h00 nh�")
return
end
if GetLevel() >= 90 and GetLevel() < 100 then
	idxitem = AddEventItem(120)
	SetBindItem(idxitem)
	SetHSD(idxitem , 2017, thang, ngay , gio + 1)
	Msg2Player("B�n nh�n ���c 1 b�nh Ti�n Th�o L� 6 Gi� ")
else
	Talk(1,"","Ch� nh�n Ti�n Th�o L� mi�n ph� cho ��ng c�p 90 - 99 trong th�i gian �ua top")
end
end

function nhanvk()
SayNew("Vui l�ng ch�n V� Kh� mu�n nh�n ",10,
"Phi Ti�u /nhanvk2",
"Phi �ao /nhanvk2",
"Phi N� /nhanvk2",
"Ki�m /nhanvk2",
"�ao /nhanvk2",
"B�ng /nhanvk2",
"Th��ng /nhanvk2",
"Ch�y /nhanvk2",
"Song �ao /nhanvk2",
"Tho�t./no")
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
Msg2Player("B�n �� nh�n ���c V� Kh� H� Tr�, ��n Th� R�n �� h�y trang b� Kh�a V�nh Vi�n")
end

function nhapgiftcodeTK()
if CheckFreeBoxItem(0,3,1,10) == 0 then
				Talk(1,"","H�nh trang kh�ng �� 6 x 6 �, vui l�ng ki�m tra l�i !")
				return
				end
				
				
OpenStringBox (2,"Nh�p Code" , "acceptcode1TK")
end

function acceptcode1TK(num2)
-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
num = tonumber(num2)
if num < 111111 or num > 99999999 then
Talk(1,"","M� Code Sai ")
return
end
	if GetTask(633) > 0 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
			return	
	end
		
	if GetLevel() < 92 then
			Talk(1,"","Nh�n v�t n�y kh�ng �� �i�u ki�n nh�n Gift Code")
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
	Msg2Player("B�n �� nh�p Gift Code th�nh c�ng !")
	Msg2SubWorld("Ch�o m�ng t�n th� m�i <color=yellow>"..GetName().."<color=red> Nh�n ���c code T�ng kim V� L�m Ch�n Thi�n")
else
Talk(1,"","Gift Code kh�ng h�p l� !")
end
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function tinhkiem_nhanptmoc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(307) > 0 then
			Talk(1,"","Nh�n v�t n�y �� nh�n ph�n qu� n�y r�i , kh�ng th� s� d�ng th�m l�n n�a")
			return	
end
-- if GetTask(307) == 0 then
		
-- elseif GetTask(307) == 1 then
	-- if GetLevel() >= 20 then
		-- SetTask(307,2)
		-- idxitem = AddItem(0,10,random(0,4),1,0,0,0)
		-- SetTimeItem(idxitem,550324);
		-- Msg2Player("B�n nh�n ���c Th� C��i 20")
	-- else
		-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 20, kh�ng th� nh�n ph�n th��ng")
	-- end
-- elseif GetTask(307) == 2 then
	-- if GetLevel() >= 30 then
		-- SetTask(307,3)
		
	-- else
		-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 30, kh�ng th� nh�n ph�n th��ng")
	-- end
-- elseif GetTask(307) == 3 then
	-- if GetLevel() >= 40 then
		-- SetTask(307,4)
	-- else
		-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 40, kh�ng th� nh�n ph�n th��ng")
	-- end
-- elseif GetTask(307) == 4 then
	-- if GetLevel() >= 50 then
		-- SetTask(307,5)

	-- else
		-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 50, kh�ng th� nh�n ph�n th��ng")
	-- end	
-- elseif GetTask(307) == 5 then
	-- if GetLevel() >= 60 then
		-- SetTask(307,6)
	
	-- else
		-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 60, kh�ng th� nh�n ph�n th��ng")
	-- end		
-- if GetTask(307) == 1 then
-- if GetTask(307) == 0 then
	if GetLevel() >= 80 then
		SetTask(307,1)
		if mp() == 1 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"��t Ma �� Giang/bk_thieulam",
			"V� T��ng Tr�m /bk_thieulam",
			"Ho�n T�o Thi�n Qu�n/bk_thieulam",
			"Tho�t./no")
		elseif mp() == 2 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"Truy Tinh Tr�c Nguy�t/bk_thienvuong",
			"Truy Phong Quy�t/bk_thienvuong",
			"Ph� Thi�n tr�m/bk_thienvuong",
			"Tho�t./no")
		elseif mp() == 3 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"B�o V� L� Hoa /bk_duongmon",
			"Nhi�p H�n Nguy�t �nh/bk_duongmon",
			"C�u Cung Phi Tinh /bk_duongmon",
			"Lo�n Ho�n K�ch /bk_duongmon",
			"Tho�t./no")
		elseif mp() == 4 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"�m Phong Th�c C�t /bk_ngudoc",
			"Huy�n �m Tr�m/bk_ngudoc",
			"�o�n C�n H� C�t/bk_ngudoc",
			"Tho�t./no")
		elseif mp() == 5 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"Phong S��ng To�I �nh /bk_ngamy",
			"Tam Nga T� Tuy�t /bk_ngamy",
			"Ph� �� Ch�ng Sinh /bk_ngamy",
			"Tho�t./no")	
		elseif mp() == 6 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",2,
			"B�ng Tung V� �nh /bk_thuyyen",
			"B�ng T�m Ti�n T� /bk_thuyyen",
			"Tho�t./no")	
		elseif mp() == 7 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",2,
			"Phi Long T�i Thi�n /bk_caibang",
			"Thi�n H� V� C�u /bk_caibang",
			"Tho�t./no")		
		elseif mp() == 8 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",2,
			"Thi�n Ngo�i L�u Tinh /bk_thiennhan",
			--"V�n Long K�ch/bk_thiennhan",
			"Nhi�p H�n Lo�n T�m/bk_thiennhan",
			"Tho�t./no")	
		elseif mp() == 9 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",2,
			"Thi�n ��a V� C�c /bk_vodang",
			"Nh�n Ki�m H�p Nh�t/bk_vodang",
			"Tho�t./no")	
		elseif mp() == 10 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"L�i ��ng C�u Thi�n /bk_conlon",
			"Ng�o Tuy�t Khi�u Phong/bk_conlon",
			"T�y Ti�n T� C�t/bk_conlon",
			"Tho�t./no")		
		end
	else
		Talk(1,"","C�c h� ch�a ��t ��ng c�p 80, kh�ng th� nh�n ph�n th��ng")
	end
-- elseif GetTask(307) == 7 then
	-- if GetLevel() >= 90 then
		-- SetTask(307,8)

	-- else
	-- Talk(1,"","C�c h� ch�a ��t ��ng c�p 90, kh�ng th� nh�n ph�n th��ng")
	-- end
end
function bk_thieulam(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 75)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thienvuong(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 78)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_duongmon(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 81)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_ngudoc(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 85)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function bk_ngamy(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 88)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thuyyen(nsel)
if GetTask(307) == 1 then
	--SetTask(307, 7 )
	idx = AddEventItem(nsel + 91)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_caibang(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 93)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thiennhan(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 95)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_vodang(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 98)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_conlon(nsel)
if GetTask(307) == 1 then
	-- SetTask(307, 7 )
	idx = AddEventItem(nsel + 100)
	SetBindItem(idx, 1)
	Msg2Player("B�n nh�n ���c "..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function nhanmau()
for p=1,60 do AddItem(1,2,0,5,0,0,0) end
end
function main_hoalong()
SayNew("<color=green>H� Tr� T�n Th� <color>: Ch�o "..GetName()..", ng��i c�n ta gi�p g� ?",6,
"Nh�n ph�n th��ng c�p 50 /phanthuongcap50",
"Nh�n ph�n th��ng c�p 80/phanthuongcap80",
"Nh�n ph�n th��ng c�p 120/phanthuongcap120",
"T�nh N�ng: ��i Gi�i T�nh /doigioitinh",
"��i m�u luy�n c�ng /doimau",
"Tho�t./no")
end
function phanthuongcap120()
if GetTask(450) ~= 0 then
Talk(1,"","Ch� c� nh�n v�t H�a Long m�i ���c nh�n !")
return
end
if GetLevel() >= 120 then
	if GetTask(307) == 10 then
			if CheckFreeBoxItem(0,10,5,1) == 0 then
				Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
				return
				end
				idx = AddEventItem(19)
				SetBindItem(idx,1);
				SetTask(307,11)
				Msg2Player("B�n nh�n ���c 1 Bi Kip 120")

	else
		Talk(1,"","C�c h� ch�a nh�n h�t ph�n th��ng c�p 50, 80, kh�ng th� nh�n ph�n th��ng c�p 120")
	end
	
	
else
	Talk(1,"","��ng c�p c�a c�c h� kh�ng �� 80, kh�ng th� nh�n")
end
end

function phanthuongcap80()
if GetLevel() >= 80 then
	if GetTask(307) == 9 then
			if CheckFreeBoxItem(0,10,5,1) == 0 then
				Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
				return
				end
				idx = AddItem(0,10,5,random(1,4),0,0,0)
				SetTimeItem(idx,550324);
				SetTask(307,10)
				Msg2Player("B�n nh�n ���c 1 th� c��i 80")

	else
		Talk(1,"","C�c h� ch�a nh�n h�t ph�n th��ng c�p 50, kh�ng th� nh�n ph�n th��ng c�p 80")
	end
	
	
else
	Talk(1,"","��ng c�p c�a c�c h� kh�ng �� 80, kh�ng th� nh�n")
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
				Msg2Player("B�n nh�n ���c Set Kim Phong, ��n Th� R�n �� h�y trang b� kh�a v�nh vi�n")
				if GetTask(307) < 9 then
					SetTask(307,9)
				end
else
	Talk(1,"","��ng c�p c�a c�c h� ch�a �� 50, kh�ng th� nh�n ph�n th��ng")
end
end


function moshop()
Sale(10)
end

function nhantbxanh()
nhantbxanh1()
end



function tbxanh_tamxa()
SayNew("Ch�n lo�i v� kh�",4,
"Phi Ti�u /tbxanh_tamxa1",
"Phi �ao /tbxanh_tamxa1",
"N� /tbxanh_tamxa1",
"Tho�t./no")
end

function tbxanh_vukhi()
SayNew("Ch�n lo�i v� kh�",7,
"Ki�m /tbxanh_vukhi1",
"�ao /tbxanh_vukhi1",
"B�ng /tbxanh_vukhi1",
"Th��ng /tbxanh_vukhi1",
"Ch�y /tbxanh_vukhi1",
"Song �ao /tbxanh_vukhi1",
"Tho�t./no")
end

function tbxanh_vukhi1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_vukhi2",
"M�c /tbxanh_vukhi2",
"Th�y/tbxanh_vukhi2",
"H�a /tbxanh_vukhi2",
"Th� /tbxanh_vukhi2",
"Thoat./no")
end
function tbxanh_tamxa1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_tamxa2",
"M�c /tbxanh_tamxa2",
"Th�y/tbxanh_tamxa2",
"H�a /tbxanh_tamxa2",
"Th� /tbxanh_tamxa2",
"Thoat./no")
end


function tbxanh1(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh2",
"M�c /tbxanh2",
"Th�y/tbxanh2",
"H�a /tbxanh2",
"Th� /tbxanh2",
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
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_vukhi4",
"M�c /tbxanh_vukhi4",
"Th�y/tbxanh_vukhi4",
"H�a /tbxanh_vukhi4",
"Th� /tbxanh_vukhi4",
"Thoat./no")
end
function tbxanh_tamxa3(nsel)
SetTaskTemp(1,nsel)
SayNew("Chon Ng� h�nh ",6,
"Kim/tbxanh_tamxa4",
"M�c /tbxanh_tamxa4",
"Th�y/tbxanh_tamxa4",
"H�a /tbxanh_tamxa4",
"Th� /tbxanh_tamxa4",
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
	Talk(1,"","Ng��i �� nh�n r�i kh�ng th� nh�n l�i n�a !")
	return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

SayNew("Chon Loai Trang Bi: ",3,
"V� kh� c�n chi�n /tbxanh_vukhi_ruong",
"V� kh� t�m xa /tbxanh_tamxa_ruong",
-- "Ao /tbxanh1",
-- "Nh�n /tbxanh1",
-- "D�y Chuy�n /tbxanh1",
-- "Gi�y /tbxanh1",
-- "Th�t l�ng /tbxanh1",
-- "N�n /tbxanh1",
-- "Bao Tay/tbxanh1",
-- "Ng�c B�i/tbxanh1",
"Tho�t/no")
end

function nhantbxanh1()
SayNew("Chon Loai Trang Bi: ",10,
"V� kh� c�n chi�n /tbxanh_vukhi",
"V� kh� t�m xa /tbxanh_tamxa",
"Ao /tbxanh1",
"Nh�n /tbxanh1",
"D�y Chuy�n /tbxanh1",
"Gi�y /tbxanh1",
"Th�t l�ng /tbxanh1",
"N�n /tbxanh1",
"Bao Tay/tbxanh1",
"Ng�c B�i/tbxanh1",
"Tho�t/no")
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
Talk(1,"","Ng��i h�y h�c k� n�ng 120 sau �� quay l�i t�m ta !")
return
end
AddMagic(idskill,20)
Talk(1,"","Ch�c m�ng ng��i �� th�ng th�o tuy�t k� 120 c�a m�n ph�i !")
end

function test_nhanab2()
for k=1,50 do
	for i=283,286 do AddEventItem(i) end
end
for k=1,200 do AddEventItem(664) end
Msg2Player("B�n �� nh�n nguy�n li�u ch� t�o trang b� An Bang. H�y ��n th� r�n �� ch� t�o ...")
end
function test_nhandq2()
for k=1,50 do
	for i=287,291 do AddEventItem(i) end
end
for k=1,200 do AddEventItem(665) end
Msg2Player("B�n �� nh�n nguy�n li�u ch� t�o trang b� An Bang. H�y ��n th� r�n �� ch� t�o ...")
end



function hoanthanh()
if GetFaction() == "" then
Talk(1,"","Ng��i ch�a gia nh�p ph�i, kh�ng th� Hack ho�n th�nh nhi�m v� ")
return
end
SetTask(103,45)
Msg2Player("��n NPC M�n Ph�i �� nh�n k� n�ng")
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
Msg2Player("B�n ��n xa phu th�nh th� �� l�n ��o t�y t�y nh� ")
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
				Msg2Player("B�n nh�n ���c Set Kim Phong, ��n Th� R�n �� h�y trang b� kh�a v�nh vi�n")
end

function test_nhanlv()
SayNew("Vui l�ng ch�n ch� �� hack. L�u �: Khi gi�m level s� t� ��ng t�y t�y ",5,
"T�ng 1 level /testnhanlv1",
"T�ng 5 level /testnhanlv1",
"T�ng 50 level /testnhanlv1",
"T�ng 100 Level /testnhanlv1",
"Tho�t./no")
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
		Msg2Player("B�n �� nh�n h� tr� c�p 60")
	
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
		Msg2Player("B�n nh�n ���c 1 [VIP] Th�a Ti�n M�t L� Bao")
		Msg2SubWorld("V� L�m Ch�n Thi�n ch�o m�ng t�n th� m�i: <color=pink>"..GetName().."")
		Msg2Player("<color=yellow>H�y gia nh�p m�n ph�i v� b�t ��u l�m nhi�m v� m�n ph�i �� nh�n k� n�ng!")
else
	Talk(1,"","��ng c�p d��i 60 m�i c� th� nh�n H� Tr� T�n Th� !")
end
end
function doigioitinh()
SayNew("<color=green>H� Tr� T�n Th� <color>: �� ��i gi�i t�nh, b�n ti�u hao <color=yellow>5 Kim Nguy�n B�o<color>, ng��i c� ch�c ch�n mu�n ��i gi�i t�nh kh�ng?",2,
"Ta ch�c ch�n mu�n ��i gi�i t�nh /doigioitinh1",
"Tho�t./no")
end

function doigioitinh1()
if GetItemCount(17) < 5 then
Talk(1,"","Ng��i kh�ng �� <color=yellow>5 Kim Nguy�n B�o<color>, kh�ng th� ��i gi�i t�nh !")
return
end

if GetSeries() == 0 or GetSeries() == 2 then
Talk(1,"","H� Kim v� H� Th�y kh�ng th� ��i gi� t�nh !")
return
end
 if CheckItemEquipCS() ~= 1 then
Talk(1,"","Ng��i ph�i th�o to�n b� trang b� tr�n ng��i xu�ng m�i c� th� ��i gi�i t�nh")
return
end


sl = GetItemCount(17)
for k=1,5 do DelItem(17) end

if GetItemCount(17) == sl - 5 then
	if GetSex() == 1 then
		SetSex(0)
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=yellow>"..GetName().." <color=red>v�a ��i gi�i t�nh sang <color=green>Gi�i T�nh Nam !")
	else
		SetSex(1)
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=yellow>"..GetName().." <color=red>v�a ��i gi�i t�nh sang <color=green>Gi�i T�nh N� !")
	end
	KickOutSelf()
else
Talk(1,"","hack ha em")
end
end


function nhanttl()
if GetTask(168) <= 0 then
Talk(1,"","Ng��i kh�ng c�n th�i gian nh�n ��i t� GIFT CODE")
return
end
if GetTask(172) > 0 then
Talk(1,"","Ng��i �ang s� d�ng Ti�n Th�o L�, kh�ng th� nh�n !")
return
end
ngay = tonumber(date("%d"))
if GetTask(169) == ngay then
Talk(1,"","Ng��i �� nh�n nh�n ��i trong ng�y h�m nay r�i, ng�y mai quay l�i nh� !")
return
end

a = GetTask(168)
SetTask(168,GetTask(168)-2)
if GetTask(168) == (a-2) then
SetTask(169, ngay)
Setx2Exp(2*60*60*18)
AddSkillEffect(460,1,2*60*60*18)
SetTask(141,1)
Msg2Player("B�n �� s� d�ng nh�n ��i kinh nghi�m trong v�ng 2 gi�")
Msg2Player("B�n c�n: "..GetTask(168).." gi� s� d�ng nh�n ��i")
end
end

function top2_1()
SayNew("<color=green>H� Tr� T�n Th� <color>: Vui l�ng ch�n k� n�ng 9x mu�n nh�n ",2,
"Ch�n K� N�ng 9x /chonkynang1",
"Tho�t./no")
end

function chonkynang1()
SayNew("<color=green>H� Tr� T�n Th� <color>: Vui l�ng ch�n k� n�ng 9x mu�n nh�n ",10,
""..BIKIP[1].."/xacnhankynang1",
""..BIKIP[2].."/xacnhankynang1",
""..BIKIP[3].."/xacnhankynang1",
""..BIKIP[4].."/xacnhankynang1",
""..BIKIP[5].."/xacnhankynang1",
""..BIKIP[6].."/xacnhankynang1",
""..BIKIP[7].."/xacnhankynang1",
""..BIKIP[8].."/xacnhankynang1",
""..BIKIP[9].."/xacnhankynang1",
"Trang k� ti�p /chonkynang2")
end

function chonkynang2()
SayNew("<color=green>H� Tr� T�n Th� <color>: Vui l�ng ch�n k� n�ng 9x mu�n nh�n ",10,
""..BIKIP[10].."/xacnhankynang2",
""..BIKIP[11].."/xacnhankynang2",
""..BIKIP[12].."/xacnhankynang2",
""..BIKIP[13].."/xacnhankynang2",
""..BIKIP[14].."/xacnhankynang2",
""..BIKIP[15].."/xacnhankynang2",
""..BIKIP[16].."/xacnhankynang2",
""..BIKIP[17].."/xacnhankynang2",
""..BIKIP[18].."/xacnhankynang2",
"Trang k� ti�p/chonkynang3")
end
function chonkynang3()
SayNew("<color=green>H� Tr� T�n Th� <color>: Vui l�ng ch�n k� n�ng 9x mu�n nh�n ",10,
""..BIKIP[19].."/xacnhankynang3",
""..BIKIP[20].."/xacnhankynang3",
""..BIKIP[21].."/xacnhankynang3",
""..BIKIP[22].."/xacnhankynang3",
""..BIKIP[23].."/xacnhankynang3",
""..BIKIP[24].."/xacnhankynang3",
""..BIKIP[25].."/xacnhankynang3",
""..BIKIP[26].."/xacnhankynang3",
""..BIKIP[27].."/xacnhankynang3",
"Trang k� ti�p/chonkynang4")
end
function chonkynang4()
SayNew("<color=green>H� Tr� T�n Th� <color>: Vui l�ng ch�n k� n�ng 9x mu�n nh�n ",2,
""..BIKIP[28].."/xacnhankynang4",
"Quay l�i trang 1/chonkynang1")
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
Talk(1,"","B�n ch�a gia nh�p ph�i")
return
end

if GetTongNameID() == 0 then
SayNew("<color=green>Vui l�ng ch�n m�u:",5,
"Ch�nh Ph�i/doimau11",
"T� Ph�i/doimau11",
"Trung L�p /doimau11",
"S�t Th�/doimau11",
"Tho�t./no")
else
Talk(1,"","V� bang kh�ng ��i m�u ���c !")
end
end

function doimau11(nsel)
if GetCash() >= 10000 then
Pay(10000)
SetCamp(nsel+1)
SetCurCamp(nsel+1)
else
Talk(1,"","<color=green>H� tr� t�n th�: <color>Kh�ng �� 1 v�n l��ng")
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
	Talk(1,"","��ng c�p ch�a �� 80, kh�ng th� nh�n !")
	return
end
if num <= 0 or num > getn(BIKIP) then
	Talk(1,"","Ch�n k� n�ng ch�a h�p l� !")
	return
end
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng c�n ch� tr�ng vui l�ng ki�m tra l�i !")
return
end
if checkvt_80() == 0 then
		TOP_80[getn(TOP_80)+1] = GetName()
		BANG1 = TaoBang(TOP_80,"TOP_80")
		LuuBang("script/danhsachtop80.lua",BANG1)
		if getn(TOP_80) <= 3 then
			AddEventItem(num+74)
			Msg2Player("B�n nh�n ���c B� Kip "..BIKIP[num].."")
			AddItem(0,10,5,5,0,0,0)
			Msg2Player("B�n nh�n ���c Th� C��i 8x")
		elseif getn(TOP_80) > 3 and getn(TOP_80) <= 50 then
			AddEventItem(num+74)
			Msg2Player("B�n nh�n ���c B� Kip "..BIKIP[num].."")
			AddItem(0,10,5,random(1,4),0,0,0)
			Msg2Player("B�n nh�n ���c Th� C��i 8x")
		else
			idxitem = AddEventItem(num+74)
			SetBindItem(idxitem,1)
			Msg2Player("B�n nh�n ���c B� Kip "..BIKIP[num].."")
		end
		Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..getn(TOP_80).." th�nh c�ng !")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m !")
end
end

function top1()
if GetLevel() < 60 then
	Talk(1,"","��ng c�p ch�a �� 60, kh�ng th� nh�n !")
	return
end
if getn(TOP_60) >= 50 then
	Talk(1,"","Hi�n t�i �� �� 50 ng��i nh�n th��ng, ta kh�ng th� ph�t th�m cho ng��")
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
		Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..getn(TOP_60).." th�nh c�ng !")		
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m !")
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
"��t Ma �� Giang ",
"V� T��ng Tr�m ",
"Ho�nh T�o Thi�n Qu�n ",
"Truy Tinh Tr�c Nguy�t ",
"Truy Phong Quy�t ",
"Ph� Thi�n Tr�m ",
"B�o V� L� Hoa ",
"Nhi�p H�n Nguy�t �nh ",
"C�u Cung Phi Tinh ",
"Lo�n Ho�n K�ch ",
"�m Phong Th�c C�t ",
"Huy�n �m Tr�m ",
"�o�n C�n H� C�t ",
"Phong S��ng To�I �nh ",
"Tam Nga T� Tuy�t ",
"Ph� �� Ch�ng Sinh ",
"B�ng Tung V� �nh ",
"B�ng T�m Ti�n T� ",
"Phi Long T�i Thi�n",
"Thi�n H� V� C�u",
"Thi�n Ngo�i L�u Tinh",
"V�n Long K�ch",
"Nhi�p H�n Lo�n T�m",
"Thi�n ��a V� C�c",
"Nh�n Ki�m H�p Nh�t",
"L�i ��ng C�u Thi�n",
"Ng�o Tuy�t Ti�u Phong",
"Tu� Ti�n T� C�t"}

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
