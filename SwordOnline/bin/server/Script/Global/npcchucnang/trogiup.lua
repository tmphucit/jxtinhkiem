Include("\\script\\admin\\monphai.lua")
Include("\\script\\admin\\shopktc.lua")
Include("\\script\\npcchucnang\\hotrotanthu.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\script\\codeevent.lua")
Include("\\script\\codenew.lua")
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");

-- function main(NpcIndex)
	 -- dofile("script\\Global\\lequan.lua")
	-- lequan(NpcIndex)
-- end

function main()
 dofile("script\\Global\\lequan.lua")
--if ( GetAccount() == "mroxheo01" or GetAccount() == "mroxheo02" or GetAccount() == "tuan300" or GetAccount() == "hucphuonglam" or GetAccount() == "namdoc1" or GetAccount() == "minh12" or GetAccount() == "tuanbomdz" or GetAccount() == "tuantu" or GetAccount() == "thopro"or GetAccount() == "aloha6" or GetAccount() == "anhthu020315" or GetAccount() == "aloha1" or GetAccount() == "alibaba" or GetAccount() == "huynhoc96" or GetAccount() == "nhokbip" or GetAccount() == "bisunnotrain" or GetAccount() == "vodang" or GetAccount() == "hongthang" or GetAccount() == "thientam1" or GetAccount() == "batgioiii" or GetAccount() == "nguyenhuy1" or GetAccount() == "urikoken" or GetAccount() == "chu0gdac1" or GetAccount() == "chinhphuong" or GetAccount() == "nguyenvangiau" or GetAccount() == "lynguyen90" or GetAccount() == "dinhphong" or GetAccount() == "chuanhoc97" or GetAccount() == "qqeeww1111" ) then
	if GetTask(506) >= 2000000 then
	SayNew("<color=green>L� Quan<color>:ta l� ph� tr�ch g�i l� v�t ��ch L� Quan , ng��i mu�n tham d� c�i n�o ho�t ��ng ��y?"
	,2,
			--"Nh�n L�nh b�i  /nhanlbgop",	
			-- "Shop Ti�n V�n/shopnganluong",	
			-- "Nh�n G�i N�p Th� Th�ng 10/thongtingoi",
			-- "Nh�n ��n B� Ng��i C�/nhandenbusvcu",			
			-- "�i�m S� Ki�n ��i l�y v�t ph�m./thuyenrong_doidiem",
			-- "Event Mini Trung Thu /NewTrungThu_Main",
			-- "Nh�p Gift Code Like + Share/nhapseri",
			-- "Nh�n H� Tr� T�n Th�/hotrotanthuchanthien",
			--"Nh�n V� Kh� C� B�n /nhanvk",
			-- "��i m�u luy�n c�ng /doimau",
			"Thoat./no")
else
	SayNew("<color=green>L� Quan<color>:ta l� ph� tr�ch g�i l� v�t ��ch L� Quan , ng��i mu�n tham d� c�i n�o ho�t ��ng ��y?"
	,10,
				
			-- "Event Ng��i Tuy�t/NewTrungThu_Main",
			"B�n Item C�n Thi�t /cacgoinapthe",	
			"Nh�n TEST VIP ./nhanviptest",			
			--"Nh�n Th��ng M�c VIP /nhanquavip",
			"Nh�n THP /thanhanhphu",
			"Nh�n L�nh b�i  /nhanlbgop",
			-- "Nh�n Exp K� N�ng 120 /nhanskill12",  -- nhanskill12
			-- "Nh�n ��n B� Lag Game/nhandenbusvcu",	
			-- "Nh�n Full K� N�ng 120/maxskill120",
			-- "Nh�n Giftcode New/nhandenhotronew",	
			-- "Shop �i�m S� Ki�n/shopdiemsukien",
			-- "Shop �i�m T�ch L�y N�p/shopdiemnapgame",
			-- "Nh�n R��ng V� Kh�./nhanruongvk",		
			"Nh�n H� Tr� T�n Th�/hotrotanthuchanthien",
			--"�i�m S� Ki�n ��i l�y v�t ph�m./doidiemsukien",
			-- "Nh�n Nguy�n Li�u C�c Ph�m./nhannguyenlieucucpham",
			-- "Nh�n B� Ki�p M�n Ph�i./nhanbikiemmonphai",
			"Nh�n Nguy�n Li�u VKHKMP./nhannguyenlieuvkhoangkim",
			"Nh�n Nguy�n Li�u Trang B� HKMP./nhantest_1",
			"Nh�n Nguy�n Li�u T�i T�o HKMP./nhandataitao",
			"Nh�n H� Tr� Th� Nghi�m/nhanhotrotest",
		    -- "H� Tr� Nh�n Trang B� Xanh /nhantbxanh1",
			"��i m�u luy�n c�ng /doimau",
			-- "��i Gi�i T�nh /doigioitinh",
			"Tho�t./no")
end

end

function thanhanhphu()
	AddEventItem(709)
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end



function nhanquavip()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
SayNew(" B�n mu�n ��i g� ?",11,
"Nh�n Th��ng VIP 1/nhan_01_VIP",
"Nh�n Th��ng VIP 2 /nhan_02_VIP",
"Nh�n Th��ng VIP 3/nhan_03_VIP",
"Nh�n Th��ng VIP 4 /nhan_04_VIP",
"Nh�n Th��ng VIP 5 /nhan_05_VIP",
"Nh�n Th��ng VIP 6/nhan_06_VIP",
"Nh�n Th��ng VIP 7/nhan_07_VIP",
"Nh�n Th��ng VIP 8/nhan_08_VIP",
"Nh�n Th��ng VIP 9/nhan_09_VIP",
"Nh�n Th��ng VIP 10/nhan_10_VIP",
-- "Mua LB Vinh D� /muaitem",
-- "��i Phi V�n [2000 �i�m]/muaitem",
"Tho�t./no")
end

function nhan_01_VIP()
	if GetTask(485) < 1 then
	Talk(1,"","Ng��i Ch�a ��t VIP 1 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 1 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
		SetTask(888,1)
		for p=1,5 do
		itemidx = AddEventItem(120)
		SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 1: 5 <color=pink>"..GetNameItemBox(itemidx).." ")
end
function nhan_02_VIP()
	if GetTask(485) < 2 then
	Talk(1,"","Ng��i Ch�a ��t VIP 2 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 2 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 1 then
	SetTask(888,2)
		for p=1,10 do
		itemidx = AddEventItem(120)
		SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 2: 10 <color=pink>"..GetNameItemBox(itemidx).." ")
	end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 1 !")
end
function nhan_03_VIP()
	if GetTask(485) < 3 then
	Talk(1,"","Ng��i Ch�a ��t VIP 3 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 3 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 2 then
	SetTask(888,3)
		for p=1,5 do
		itemidx = AddEventItem(713)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 3: 5 <color=pink>B�o R��ng M�nh Ng�a ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 2 !")
end

function nhan_04_VIP()

	if GetTask(485) < 4 then
	Talk(1,"","Ng��i Ch�a ��t VIP 4 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 4 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 3 then
	SetTask(888,4)
		for p=1,10 do
		itemidx = AddEventItem(713)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 4: 10 <color=pink>B�o R��ng M�nh Ng�a ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 3 !")
end
function nhan_05_VIP()
	if GetTask(485) < 5 then
	Talk(1,"","Ng��i Ch�a ��t VIP 5 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 5 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 4 then
	SetTask(888,5)
		-- for p=1,5 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 5: 1 <color=pink>B�o R��ng Thi�n Ho�ng ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 4 !")
end
function nhan_06_VIP()
	if GetTask(485) < 6 then
	Talk(1,"","Ng��i Ch�a ��t VIP 6 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 6 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 5 then
	SetTask(888,6)
		-- for p=1,5 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 6: 1<color=pink>B�o R��ng Thi�n Ho�ng ")
			end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 5 !")
end
function nhan_07_VIP()
	if GetTask(485) < 7 then
	Talk(1,"","Ng��i Ch�a ��t VIP 7 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 7 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 6 then
	SetTask(888,7)
		for p=1,2 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 7: 2 <color=pink>B�o R��ng Thi�n Ho�ng ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 6 !")
end
function nhan_08_VIP()
	if GetTask(485) < 8 then
	Talk(1,"","Ng��i Ch�a ��t VIP 8 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 8 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 7 then
	SetTask(888,8)
		for p=1,2 do
		itemidx = AddEventItem(710)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 8: 3 <color=pink>B�o R��ng Thi�n Ho�ng ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 7 !")
end
function nhan_09_VIP()
	if GetTask(485) < 9 then
	Talk(1,"","Ng��i Ch�a ��t VIP 9 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 9 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 8 then
	SetTask(888,9)
		-- for p=1,3 do
		itemidx = AddEventItem(243)
		-- SetBindItem(itemidx,1)
		-- end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 9: 1<color=pink>"..GetNameItemBox(itemidx).." ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 8 !")
end
function nhan_10_VIP()
	if GetTask(485) < 10 then
	Talk(1,"","Ng��i Ch�a ��t VIP 10 kh�ng th� nh�n !")
	return
	end
	if GetTask(888) >= 10 then
	Talk(1,"","Ng��i �� nh�n r�i ko th� nh�n l�i n�a !")
	return
	end
	if GetTask(888) == 9 then
	SetTask(888,10)
		for p=1,2 do
		itemidx = AddEventItem(243)
		-- SetBindItem(itemidx,1)
		end
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng VIP 10: 2<color=pink>"..GetNameItemBox(itemidx).." ")
		end
	-- Talk(1,"","Ng��i ch�a nh�n th��ng VIP 9 !")
end

function nhanviptest()
if GetTask(485) >= 10 then
	Talk(1,"","Kh�ng th� nh�n th�m VIP  !")
	return
end
SetTask(485, GetTask(485) + 1)
Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> th�ng c�p VIP l�n :  <color=pink>VIP "..GetTask(485).."<color> N�ng T� L� May M�n Trong Qu� Tr�nh Bu�n T�u Giang H�")
end
function nhantest_1()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
SayNew(" B�n mu�n ��i g� ?",9,
"Nh�n m�nh bao tay/nhan_01",
"Nh�n m�nh th�t l�ng /nhan_01",
"Nh�n m�nh gi�y/nhan_01",
"Nh�n m�nh d�y chuy�n /nhan_01",
"Nh�n m�nh ng�c b�i /nhan_01",
"Nh�n m�nh nh�n/nhan_01",
"Nh�n m�nh n�n/nhan_01",
"Nh�n m�nh �o/nhan_01",
-- "Mua LB Vinh D� /muaitem",
-- "��i Phi V�n [2000 �i�m]/muaitem",
"Tho�t./no")
end


function nhan_01(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	item_1 = 207,212
elseif i == 2 then
	item_1 = 213,218
elseif i == 3 then
	item_1 = 219,224
elseif i == 4 then
	item_1 = 225,230
elseif i == 5 then
	item_1 = 231,236
elseif i == 6 then
	item_1 = 237,243
elseif i == 7 then
	item_1 = 389,394
elseif i == 8 then
	item_1 = 395,400
end

if item_1 == 0 then
return
end

-- diem = GetTask(779)
-- if GetTask(779) >= vang then
	-- SetTask(779,GetTask(779) - vang)
	-- if GetTask(779) == diem - vang then
		if i == 1 then
			for i = 207,212 do AddEventItem(i) end
			AddEventItem(243)
			-- idxitem = AddItem(0,4,3,random(1,7),0,0,0)
			--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			for i = 213,218 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			for i = 219,224 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			for i = 225,230 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			for i = 231,236 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 6 then
			for i = 237,243 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 7 then
			for i = 389,394 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 8 then
			for i = 395,400 do AddEventItem(i) end
			AddEventItem(243)
		--SetTimeItem(idxitem,550324);
			-- Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			-- inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		-- end
		-- Talk(0,"")
	-- else
		-- Talk(1,"","hack ha em")
	-- end
-- else
	-- Talk(1,"","Ng��i kh�ng mang �� "..vang.." �i�m vinh d� ")
end
end

---------------////////////////////SHOP ITEM EVENT DB /////////////////------------------------------
function shopevent1()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
SayNew("Hi�n t�i b�n c� <color=red>"..GetTask(779).."<color> �i�m Event ��t Bi�t. B�n mu�n ��i g� ?",4,
-- "��i An Bang [Kh�a]/muaitem",
-- "��i ��nh Qu�c ��i [Kh�a] /muaitem",
-- "��i ��nh Qu�c Ti�u [Kh�a] /muaitem",
"��i Trang B� An Bang /muaitem",
"��i Trang B� ��nh Qu�c /muaitem",
-- "��i ��nh Qu�c Ti�u/muaitem",
-- "Mua LB Vinh D� /muaitem",
"��i Phi V�n [2000 �i�m]/muaitem",
"Tho�t./no")
end


function muaitem(nsel)
i = nsel + 1
if i == 1 then
	muaanbang_x2()
elseif i == 2 then
	muadinhquoc1_x2()
elseif i == 3 then
	muaphivan()
end
end



function muaanbang_x2()
SayNew("<color=green>Shop Event<color>: Trang b� Kh�ng Kh�a",5,
"D�y Chuy�n An Bang [1500]/muaab1_x2",
"Nh�n C�c Hoa An Bang [1000]/muaab1_x2",
"Nh�n K� Huy�t An Bang [1000]/muaab1_x2",
"Ng�c B�i An Bang [1000]/muaab1_x2",
-- "D�y Chuy�n Ti�u [12000]/muaab1_x2",
-- "Nh�n C�c Hoa Ti�u [10000]/muaab1_x2",
-- "Nh�n K� Huy�t Ti�u [10000]/muaab1_x2",
-- "Ng�c B�i Ti�u [8000]/muaab1_x2",
"Tho�t./no")
end

function inlogvinhdu(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ShopEvent.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Con lai: "..GetTask(779).." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlogvinhdu_t(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/ShopEventThuong.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Con lai: "..GetTask(778).." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function muaab1_x2(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 1500
elseif i == 2 then
	vang = 1000
elseif i == 3 then
	vang = 1000
elseif i == 4 then
	vang = 1000
elseif i == 5 then
	vang = 12000
elseif i == 6 then
	vang = 10000
elseif i == 7 then
	vang = 10000
elseif i == 8 then
	vang = 8000
end

if vang == 0 then
return
end

diem = GetTask(779)
if GetTask(779) >= vang then
	SetTask(779,GetTask(779) - vang)
	if GetTask(779) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,4,3,random(1,7),0,0,0)
			--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,3,3,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,3,4,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,9,3,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			idxitem = AddItem(0,4,18,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 6 then
			idxitem = AddItem(0,3,33,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 7 then
			idxitem = AddItem(0,3,34,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 8 then
			idxitem = AddItem(0,9,18,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." �i�m vinh d� ")
end
end

function muaphivan()

vang = 2000
diem = GetTask(779)
if GetTask(779) >= vang then
	SetTask(779,GetTask(779) - vang)
	if GetTask(779) == diem - vang then
			idxitem = AddItem(0,10,5,5,0,0,0)
			-- SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).."")		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..GetTask(124).." �i�m Event DB ")
end
end



function muadinhquoc1_x2()
SayNew("<color=green>Shop Event<color>: Trang b� Kh�ng Kh�a",6,
"N�n ��nh Qu�c ��i [700]/muadq1_x2",
"�o ��nh Qu�c ��i [500]/muadq1_x2",
"Gi�y ��nh Qu�c ��i [300]/muadq1_x2",
"Bao Tay ��nh Qu�c ��i [300]/muadq1_x2",
"Th�t L�ng ��nh Qu�c ��i [300]/muadq1_x2",
"Tho�t./no")
end



---------------------///////////////EVENT THUONG /////////////////////------------------------------------
---------------////////////////////SHOP ITEM EVENT/////////////////------------------------------
function shopevent2()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
SayNew("Hi�n t�i b�n c� <color=red>"..GetTask(778).."<color> �i�m Event Th��ng. B�n mu�n ��i g� ?",4,
"��i Trang B� An Bang /muaitem_2_1",
"��i Trang B� ��nh Qu�c /muaitem_2_1",
"��i Phi V�n [4000 �i�m]/muaitem_2_1",
"Tho�t./no")
end


function muaitem_2_1(nsel)
i = nsel + 1
if i == 1 then
	muaanbang_x2_t()
elseif i == 2 then
	muadinhquoc1_x2_t()
elseif i == 3 then
	muaphivan_t()
end
end




function muaanbang_x2_t()
SayNew("<color=green>Shop Event<color>: Trang b� Kh�ng Kh�a",5,
"D�y Chuy�n An Bang [3000]/muaab1_x2_t",
"Nh�n C�c Hoa An Bang [2000]/muaab1_x2_t",
"Nh�n K� Huy�t An Bang [2000]/muaab1_x2_t",
"Ng�c B�i An Bang [2000]/muaab1_x2_t",
"Tho�t./no")
end
function muaab1_x2_t(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 3000
elseif i == 2 then
	vang = 2000
elseif i == 3 then
	vang = 2000
elseif i == 4 then
	vang = 2000
end

if vang == 0 then
return
end

diem = GetTask(778)
if GetTask(778) >= vang then
	SetTask(778,GetTask(778) - vang)
	if GetTask(778) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,4,3,random(1,7),0,0,0)
			--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,3,3,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,3,4,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,9,3,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			idxitem = AddItem(0,4,18,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 6 then
			idxitem = AddItem(0,3,33,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 7 then
			idxitem = AddItem(0,3,34,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 8 then
			idxitem = AddItem(0,9,18,1,0,0,0)
		--SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." �i�m vinh d� ")
end
end

function muaphivan_t()

vang = 4000
diem = GetTask(778)
if GetTask(778) >= vang then
	SetTask(778,GetTask(778) - vang)
	if GetTask(778) == diem - vang then
			idxitem = AddItem(0,10,5,5,0,0,0)
			-- SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).."")		
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." �i�m Event DB ")
end
end






function muadinhquoc1_x2_t()
SayNew("<color=green>Shop Event<color>: Trang b� Kh�ng Kh�a",6,
"N�n ��nh Qu�c ��i [1500]/muadq1_x2_t",
"�o ��nh Qu�c ��i [1200]/muadq1_x2_t",
"Gi�y ��nh Qu�c ��i [700]/muadq1_x2_t",
"Bao Tay ��nh Qu�c ��i [700]/muadq1_x2_t",
"Th�t L�ng ��nh Qu�c ��i [700]/muadq1_x2_t",
"Tho�t./no")
end


function muadq1_x2_t(nsel)
i = nsel + 1
vang = 0
if i == 1 then
	vang = 1500
elseif i == 2 then
	vang = 1200
elseif i == 3 then
	vang = 700
elseif i == 4 then
	vang = 700
elseif i == 5 then
	vang = 700
end

if vang == 0 then
return
end
diem = GetTask(778)
if GetTask(778) >= vang then
	SetTask(778,GetTask(778) - vang)
	if GetTask(778) == diem - vang then
		if i == 1 then
			idxitem = AddItem(0,7,15,random(5,10),0,0,0)
	--	SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 2 then
			idxitem = AddItem(0,2,30,random(5,10),0,0,0)
	--	SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 3 then
			idxitem = AddItem(0,5,5,random(5,10),0,0,0)
	--	SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 4 then
			idxitem = AddItem(0,8,3,random(5,10),0,0,0)
--		SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		elseif i == 5 then
			idxitem = AddItem(0,6,3,random(5,10),0,0,0)
	--	SetTimeItem(idxitem,550324);
			Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
			inlogvinhdu_t(" "..GetAccount().." - "..GetName().." - "..GetNameItemBox(idxitem).." - "..vang.."")
		end
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." �i�m Event DB ")
end
end



-----------------------///////////HET////////////////////-----------------------------------------

function nhandenhotronew()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	if GetTask(803) >= 1 then
		Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
		return	
	end
	if GetTask(506) <= 49 then
		Talk(1,"","Nh�n v�t n�y t�ch l�y N�p ch�a ��t 50 Xu")
		return	
	end
	if GetLevel() < 80 then
		Talk(1,"","Nh�n v�t n�y kh�ng �� c�p 80 kh�ng th� nh�n")
		return	
	end
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/lognhanhotronew.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			SetTask(803,1)
			
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
ngayvp = ngay + 7
		thangvp = thang
		if ngayvp > mangthang[thang] then
		ngayvp = ngayvp - mangthang[thang]
		thangvp = thang + 1
		end
		itemidx = AddItem(0,10,5,random(3,4),0,0,0)
		SetTimeItem(itemidx,550324)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
	Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red> �� nh�p ���c h� tr� New. Ng�a 8X Random")
end

function nhandataitao()
for i = 1,5 do AddEventItem(415) end
-- AddEventItem(0) 
-- AddEventItem(1) 
end

function nhanbikiemmonphai()
for i = 75,102 do AddEventItem(i) end
-- AddEventItem(0) 
-- AddEventItem(1) 
end
function nhanruongvk()
for i = 1,50 do AddEventItem(714) end
-- AddEventItem(0) 
-- AddEventItem(1) 
end
function hotroskill9x()
local hephai =timmonphai()
if hephai==0 then
Talk(1,"","Ng��i ch�a gia nh�p m�n ph�i ch�a th� nh�n")
end
if GetLevel()<80 then
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
		--"V�n Long K�ch/nhan9xhotro",
	--	"Nhi�p H�n Lo�n T�m/nhan9xhotro",
		"Tho�t./no")
		end
			if hephai==9 then
		SayNew("<color=green>H� Tr� 1 Skill 9X <color>: Ch�o ��i hi�p <color=red>"..GetName().."<color>. B�n ch�n lo�i n�o ?",4,
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
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
local i= nsel
local hephai =timmonphai()
	if GetTask(503) ~= 2001 then
	-- SetTask(503,2001)	
			if hephai==1 then
				itemidx = AddEventItem(i+75)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==2 then
				itemidx = AddEventItem(i+78)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==3 then
				itemidx = AddEventItem(i+81)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==4 then
				itemidx = AddEventItem(i+85)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end			
			if hephai==5 then
				itemidx = AddEventItem(i+88)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==6 then
				itemidx = AddEventItem(i+91)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==7 then
				itemidx = AddEventItem(i+93)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==8 then
				itemidx = AddEventItem(i+95)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end		
			if hephai==9 then
				itemidx = AddEventItem(i+98)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end
			if hephai==10 then
				itemidx = AddEventItem(i+100)
				SetBindItem(itemidx,1)
				SetHSD(itemidx, 2022 , 7, 14,17)
			end	
		Msg2World("Ch�c m�ng cao th� <color=yellow>"..GetName().." <color=red> �� ��t c�p 80 v� nh�n ���c 1 cu�n b� k�p 9x t�i  NPC H� Tr� T�n Th�")		
	-- else
			-- Talk(1,"","B�n �� nh�n ph�n th��ng h� tr�, kh�ng th� nh�n th�m ")
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



function shopdiemnapgame()
SayNew("<color=green>Shop �i�m N�p Xu: <color> B�n �ang c�: \n <color=yellow>"..GetTask(507).."<color> �i�m n�p xu.",6,
-- "L�nh b�i boss ti�u [100 �i�m]/shopdiemnap",  
"M�nh Ng�a X�ch Th� [50 �i�m] /shopdiemnap",
"M�nh Ng�a Chi�u D� [70 �i�m] /shopdiemnap",
"Ti�n Th�o L� ��t bi�t[80 �i�m] /shopdiemnap",
"T�y T�y Kinh [300 �i�m] /shopdiemnap",
"V� L�m M�t T�ch [300 �i�m] /shopdiemnap",
-- "�� T�i T�o [50 �i�m] /shopdiemnap",
-- "�� T�i T�o [50 �i�m] /shopdiemnap",
"Tho�t./no")
end

function shopdiemnap(nsel)
i = nsel + 1

tieuhaox = 0
iditem = 0
if i == 1 then
	iditem = 655
	tieuhaox = 50
elseif i == 2 then
	iditem = 273
	tieuhaox = 70
elseif i == 3 then
	iditem = 120
	tieuhaox = 80
elseif i == 4 then
	iditem = 1
	tieuhaox = 300
elseif i == 5 then
	iditem = 0
	tieuhaox = 300
elseif i == 6 then
	iditem = 415
	tieuhaox = 50
end
if tieuhao == 0 then
Talk(1,"","V�t ph�m ch�a c�p nh�t !")
return
end

if GetTask(507) < tieuhaox then
Talk(1,"","Ng��i kh�ng �� "..tieuhaox.." �i�m n�p , kh�ng th� ��i !")
return
end

SetTask(507, GetTask(507) - tieuhaox)
idxitem = AddEventItem(iditem)
Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
end

function shopdiemsukien()
SayNew("<color=green>Shop �i�m S� Ki�n: <color> B�n �ang c�: \n <color=yellow>"..GetTask(612).."<color> �i�m t�ch lu� tham gia ho�t ��ng trong ng�y.",8,
"L�nh b�i boss ti�u [100 �i�m]/mualbboss",  
"Ti�n Th�o L� ��t bi�t[100 �i�m] /mualbboss",
"T�y T�y Kinh [500 �i�m] /mualbboss",
"V� L�m M�t T�ch [500 �i�m] /mualbboss",
"�� T�i T�o [50 �i�m] /mualbboss",
"��i Th�nh B� Ki�p [700 �i�m] /mualbboss",
-- "C� R�t [15 �i�m] /mualbboss",
-- "C�y Th�ng [50 �i�m] /mualbboss",
"��i T�i M�u 3 ng�y [600] /doidiemsukienmau",
-- "M�nh Ng�a Chi�u D� /doidiemtichluynew2",
-- "M�nh ��nh Qu�c /doidiemtichluynew2",
-- "M�nh An Bang /doidiemtichluynew2",
"Tho�t./no")
end
function doidiemsukienmau()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
tieuhao = 600

if GetTask(612) < tieuhao then
Talk(1,"","Ng��i kh�ng �� "..tieuhao.." �i�m s� ki�n , kh�ng th� ��i. H�y tham ho�t ��ng h�ng ng�y �� ki�m th�m �i�m !")
return
end

SetTask(612, GetTask(612) - tieuhao)

ngayvp = ngay + 3
		thangvp = thang
		if ngayvp > mangthang[thang] then
			ngayvp = ngayvp - mangthang[thang]
			thangvp = thang + 1
		end
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
Msg2Player("B�n nh�n ���c T�i M�u VIP 3 Ng�y")
end

function mualbboss(nsel)
i = nsel + 1

tieuhao = 0
iditem = 0
if i == 1 then
	iditem = 128
	tieuhao = 100
elseif i == 2 then
	iditem = 120
	tieuhao = 100
elseif i == 3 then
	iditem = 1
	tieuhao = 500
elseif i == 4 then
	iditem = 0
	tieuhao = 500
elseif i == 5 then
	iditem = 415
	tieuhao = 50
elseif i == 6 then
	iditem = 177
	tieuhao = 700
elseif i == 7 then
	iditem = 260
	tieuhao = 50
end
if tieuhao == 0 then
Talk(1,"","V�t ph�m ch�a c�p nh�t !")
return
end

if GetTask(612) < tieuhao then
Talk(1,"","Ng��i kh�ng �� "..tieuhao.." �i�m s� ki�n , kh�ng th� ��i. H�y tham ho�t ��ng h�ng ng�y �� ki�m th�m �i�m !")
return
end

SetTask(612, GetTask(612) - tieuhao)
idxitem = AddEventItem(iditem)
Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
end



function nhapmacodenheae()
OpenStringBox (2,"Nh�p Code" , "nhancodegioihan")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function nhancodegioihan(num2)
num = tonumber(num2)
thoigian = tonumber(date("%H%M%d%m"))

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� 6 x 5 � m�i c� th� nh�n !")
	return
end

m_codeevent = check_code_3(num)
-- if m_codeevent == 0 then
-- Talk(1,"","Gift Code kh�ng t�n t�i")
-- return
-- end
        if GetLevel() < 30 then
			Talk(1,"","Nh�n v�t c�p 30 tr� l�n m�i c� th� s� d�ng")
			return	
		end
        -- if GetLevel() > 100 then
			-- Talk(1,"","Nh�n v�t d��i c�p 100 m�i c� th� s� d�ng")
			-- return	
		-- end
	
		if GetTask(813) >= 1 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
			return	
		end
		if m_codeevent > 0 then

	    if Code_New[m_codeevent][2] == 0 then
	
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/logGiaHanGiftCodeLikeNew.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
	
	        -- Code_Event[getn(m_codeevent)+1] = thoigian
			Code_New[m_codeevent][2] = thoigian
			SetTask(813,1)
			
			-- for p=1,3 do 
				-- idxp = AddEventItem(714)
				-- SetBindItem(idxp,1)
				-- idxp = AddEventItem(116)
				-- SetBindItem(idxp,1)
			-- end	
			-- for i=1,100 do AddOwnExp(1000000) end
			idxp = AddEventItem(119)
				SetBindItem(idxp,1)
			idxp = AddEventItem(119)
				SetBindItem(idxp,1)
			idxp = AddEventItem(119)
				SetBindItem(idxp,1)
				
			idxp = AddEventItem(0)
				SetBindItem(idxp,1)
			idxp = AddEventItem(1)
				SetBindItem(idxp,1)
			-- idxp = AddEventItem(31)
				-- SetBindItem(idxp,1)
			-- idxp = AddEventItem(31)
				-- SetBindItem(idxp,1)
			-- idxp = AddEventItem(31)
				-- SetBindItem(idxp,1)
			-- idxp = AddEventItem(31)
				-- SetBindItem(idxp,1)
		--	Talk(1,"","B�n �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 6 ti�n th�o l�, 6 n� nhi h�ng, 1 ng�a T�c S��ng")
			Msg2SubWorld("<color=blue> Ch�c m�ng <color> <color=yellow>"..GetName().." <color=blue> �� nh�n ���c<color=white> Gift Code Live S� <color><color=blue> th�nh c�ng: 3 Ti�n Th�o L�, 1 TTK v� 1 VLMT.<color> ")

        	
        	
			BANG2 = TaoBang(Code_New,"Code_New")
			LuuBang("script/codenew.lua",BANG2)
		--	Code_Event[getn(Code_Event)+1] = {GetName(),GetAccount(),thoigian,0}
			
	else
			Talk(1,"","Gift Code �� ���c ng��i kh�c s� d�ng ")
	end
else
Talk(1,"","Seri ho�c m� code kh�ng ��ng, GIFT CODE kh�ng t�n t�i !")
end

end

function check_code_7(num)
for i=1,getn(Code_Event) do
	if num == Code_Event[i][1] then
		return i
	end
end
return 0
end

function check_code_3(num)
for i=1,getn(Code_New) do
	if num == Code_New[i][1] then
		return i
	end
end
return 0
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

function nhannguyenlieucucpham()
for i = 1,100 do AddEventItem(568) end
AddEventItem(0) 
AddEventItem(1) 
end
function nhannguyenlieuvkhoangkim()
for i = 383,388 do AddEventItem(i) end
-- AddEventItem(96)
AddEventItem(243)
end
function thongtingoihoiuc()
SayNew("<color=green>Chi Ti�t T�i Web jxhoiuc2005.com",6,
"Nh�n M�c N�p 300[Xu]/nhangoinapthe",
-- "Nh�n M�c N�p 800[Xu]/nhangoinapthe800",
"Nh�n M�c N�p 1000[Xu]/nhangoinapthe1000",
-- "Nh�n M�c N�p 1500[Xu]/nhangoinapthe1500",
"Nh�n M�c N�p 2000[Xu]/nhangoinapthe2000",
-- "Nh�n M�c N�p 2500[Xu]/nhangoinapthe2500",
"Nh�n M�c N�p 3000[Xu]/nhangoinapthe3000",
"Nh�n M�c N�p 5000[Xu]/nhangoinapthe5000",
"Tho�t./no")
end

function muatuimau7ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetItemCount(17) == 0 then
Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end
if GetLevel() >= 80 then
		DelItem(17)


		ngayvp = ngay + 7
		thangvp = thang
		if ngayvp > mangthang[thang] then
		ngayvp = ngayvp - mangthang[thang]
		thangvp = thang + 1
		end
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� s� d�ng 1 Kim Nguy�n B�o ��i L�y T�i M�u")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/muatuimau7ngaylog.txt", "a");
				if LoginLog then
				write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
else
	Talk(1,"","��ng c�p tr�n 80 m�i c� th� s� d�ng ch�c n�ng n�y !")
end
end
function muaTHP7ngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetItemCount(17) == 0 then
Talk(1,"","Ng��i kh�ng mang theo 1 Kim Nguy�n B�o, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end
if GetLevel() >= 80 then
		DelItem(17)


		ngayvp = ngay + 7
		thangvp = thang
		if ngayvp > mangthang[thang] then
		ngayvp = ngayvp - mangthang[thang]
		thangvp = thang + 1
		end
		itemidx = AddEventItem(709)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� s� d�ng 1 Kim Nguy�n B�o ��i L�y Th�n H�nh Ph�.")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/muatuiTHPngaylog.txt", "a");
				if LoginLog then
				write(LoginLog,""..GetAccount().." - "..GetName().." "..GetExp().." - "..GetLevel().." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
else
	Talk(1,"","��ng c�p tr�n 80 m�i c� th� s� d�ng ch�c n�ng n�y !")
end
end
function nhangoinapthe()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 777 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end

if GetTask(506) < 300 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /300 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 300 then
	SetTask(682, 777)
		for i = 1,10 do
		AddEventItem(120) 
		end
		-- for i = 1,10 do
		-- AddEventItem(325) 
		-- end
		for i = 1,10 do
		AddEventItem(34) 
		end
		AddEventItem(177) 
	--nhantuimaunap()
	-- Talk(1,"","N�u AutoPlay kh�ng t� ��ng m� Th�a Ti�n M�t L� Bao. Vui l�ng tho�t to�n b� Game v� ch�y l�i �� c�p nh�t ")
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 300 xu th�ng 4 nh�n ���c 10 D�y Th�ng C�p Si�u Quang + 1 ��i Th�nh B� Ki�p 90 + 10 TTL ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc300Thang4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end

function nhangoinapthe800()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 888 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(506) < 800 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /800 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 800 then
	SetTask(682, 888)
		for i = 1,15 do
		AddEventItem(120) 
		end
		for i = 1,10 do
		AddEventItem(34) 
		end

	--nhantuimaunap()
	-- Talk(1,"","N�u AutoPlay kh�ng t� ��ng m� Th�a Ti�n M�t L� Bao. Vui l�ng tho�t to�n b� Game v� ch�y l�i �� c�p nh�t ")
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 800 xu th�ng 3 nh�n ���c 15 L�nh B�i Boss + 15 TTL + 10 D�y Th�ng C�p Si�u Quang")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc800Thang4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end


function nhangoinapthe1000()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 999 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 888 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(506) < 1000 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /1000 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 1000 then
	SetTask(682, 999)
		-- for i = 1,5 do
		-- AddEventItem(654) 
		-- end
		for i = 1,15 do
		AddEventItem(120) 
		end
		for i = 1,15 do
		AddEventItem(34) 
		end
	--nhantuimaunap()
	-- Talk(1,"","N�u AutoPlay kh�ng t� ��ng m� Th�a Ti�n M�t L� Bao. Vui l�ng tho�t to�n b� Game v� ch�y l�i �� c�p nh�t ")
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 1000 xu th�ng 4 nh�n ���c 20 D�y Th�ng C�p Si�u Quang + 15 TTL. ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc1000Thang4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end
function nhangoinapthe1500()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 1111 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 888 then
Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 999 then
Talk(1,"","Ng��i ch�a nh�n m�c [1000], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(506) < 1500 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /1500 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 1500 then
	SetTask(682, 1111)
		-- for i = 1,50 do
		-- AddEventItem(665) 
		-- end
		for i = 1,10 do
		AddEventItem(120) 
		end
		for i = 1,20 do
		AddEventItem(34) 
		end
		-- for i = 1,15 do
		AddEventItem(243) 
		-- end
	--nhantuimaunap()
	-- Talk(1,"","N�u AutoPlay kh�ng t� ��ng m� Th�a Ti�n M�t L� Bao. Vui l�ng tho�t to�n b� Game v� ch�y l�i �� c�p nh�t ")
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 1500 xu th�ng 3 nh�n ���c 20 D�y Th�ng C�p Si�u Quang + 10 TTL + 1 �� Ph� HKMP. ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc1500Thang4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end

function nhangoinapthe2000()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 1222 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 888 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(682) < 999 then
Talk(1,"","Ng��i ch�a nh�n m�c [1000], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 1111 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [1500], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(506) < 2000 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /2000 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 2000 then
	SetTask(682, 1222)
		for i = 1,20 do
		AddEventItem(120) 
		end
		for i = 1,3 do
		AddEventItem(0) 
		end
		for i = 1,3 do
		AddEventItem(1) 
		end
		for i = 1,50 do
		AddEventItem(34) 
		end
	--nhantuimaunap()
	-- Talk(1,"","N�u AutoPlay kh�ng t� ��ng m� Th�a Ti�n M�t L� Bao. Vui l�ng tho�t to�n b� Game v� ch�y l�i �� c�p nh�t ")
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 2000 xu th�ng 3 nh�n ���c 50 D�y Th�ng C�p Si�u Quang + 3 VLMT + 3 TTK + 20 TTL")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc2000T4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end

function nhangoinapthe2500()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 1333 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 888 then
Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 999 then
Talk(1,"","Ng��i ch�a nh�n m�c [1000], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 1111 then
Talk(1,"","Ng��i ch�a nh�n m�c [1500], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(682) < 1222 then
Talk(1,"","Ng��i ch�a nh�n m�c [2000], kh�ng th� nh�n m�c n�y ")
return
end
if GetTask(506) < 2500 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /2500 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 2500 then
	SetTask(682, 1333)
		for i = 1,5 do
		AddEventItem(0) 
		end
		for i = 1,5 do
		AddEventItem(1) 
		end
		for i = 1,25 do
		AddEventItem(128) 
		end
		for i = 1,20 do
		AddEventItem(273) 
		end
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 2500 xu th�ng 3 nh�n ���c 25 L�nh B�i Boss 50 D�y Th�ng C�p Si�u Quang +")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc2500T4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end

function nhangoinapthe3000()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 1444 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 888 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(682) < 999 then
Talk(1,"","Ng��i ch�a nh�n m�c [1000], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 1111 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [1500], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(682) < 1222 then
Talk(1,"","Ng��i ch�a nh�n m�c [2000], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 1333 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [2500], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(506) < 3000 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /3000 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 3000 then
	SetTask(682, 1444)
		for i = 1,50 do
		AddEventItem(34) 
		end
		for i = 1,2 do
		AddEventItem(243) 
		end
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 3000 xu th�ng 4 nh�n ���c 50 D�y Th�ng C�p Si�u Quang + 2 �� Ph� HKMP")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc3000T4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end


function nhangoinapthe5000()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if GetTask(682) >= 1555 then
Talk(1,"","M�i nh�n v�t ch� nh�n ���c 1 g�i, kh�ng th� nh�n th�m")
return
end
if GetTask(682) < 777 then
Talk(1,"","Ng��i ch�a nh�n m�c [300], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 888 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [800], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(682) < 999 then
Talk(1,"","Ng��i ch�a nh�n m�c [1000], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 1111 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [1500], kh�ng th� nh�n m�c n�y ")
-- return
-- end
if GetTask(682) < 1222 then
Talk(1,"","Ng��i ch�a nh�n m�c [2000], kh�ng th� nh�n m�c n�y ")
return
end
-- if GetTask(682) < 1333 then
-- Talk(1,"","Ng��i ch�a nh�n m�c [2500], kh�ng th� nh�n m�c n�y ")
-- return
-- end

if GetTask(682) < 1444 then
Talk(1,"","Ng��i ch�a nh�n m�c [3000], kh�ng th� nh�n m�c n�y ")
return
end

if GetTask(506) < 5000 then
Talk(1,"","B�n ch�a n�p �� <color=yellow>"..GetTask(506).." /5000 Xu<color> �� nh�n G�i Qu� n�y")
return 
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(506) >= 5000 then
	SetTask(682, 1555)
		for i = 1,200 do
		AddEventItem(34) 
		end
		for i = 1,5 do
		AddEventItem(243) 
		end
	Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." tham gia G�i Qu� Khuy�n M�i N�p Th� M�c 5000 xu th�ng 4 nh�n ���c 200 D�y Th�ng C�p Si�u Quang + 5 �� Ph� HKMP ")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/LogQuaNapMoc5000T4.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().."  - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
end

end


function nhannguyenlieu()
SayNew("<color=green>L� Quan<color>:ta l� ph� tr�ch g�i l� v�t ��ch L� Quan , ng��i mu�n tham d� c�i n�o ho�t ��ng ��y?"
,4,
"Nh�n Ho�n M� Tinh Th�ch /nhanhmtt",
"Nh�n M�nh Thi�n Th�ch 1 - 6 /nhanmanhthienthach",
"Nh�n Lam Th�y Tinh /nhanlamthuytinh",
			"Tho�t./no")
end

function doidiemsukien()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(612).." �i�m T�ch L�y S� Ki�n<color>, ng��i mu�n ��i ph�n th��ng n�o?",3,
"��i 300 �i�m /thuyenrong_doidiem2",
"��i 1500 �i�m /thuyenrong_doidiem2",
-- "��i 1500 �i�m /thuyenrong_doidiem2",
-- "��i 2000 �i�m /thuyenrong_doidiem2",
-- "��i 400 �i�m /thuyenrong_doidiem2",
-- "��i 401 �i�m /thuyenrong_doidiem2",
-- "��i 402 �i�m /thuyenrong_doidiem2",
-- "��i 403 �i�m /thuyenrong_doidiem2",
"Tho�t./no")
end

function thuyenrong_doidiem2(nsel)

i = nsel + 1
if i == 1 then
	SayNew("B�n c� ch�c ch�n ��i 300 �i�m T�ch L�y S� Ki�n �� l�y: 30% Ti�n Th�o L� 6 Gi�, 30% ��i Th�nh 90, 20% T�y T�y Kinh, 20% V� L�m M�t T�ch",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_1",
	"Tho�t./no")
elseif i == 2 then
	SayNew("B�n c� ch�c ch�n ��i 1500 �i�m T�ch L�y S� Ki�n �� l�y: 15% N�n ��nh Qu�c, 15% �o ��nh Qu�c, 20% Gi�y ��nh Qu�c, 20% Bao Tay ��nh Qu�c, 20% Th�t L�ng ��nh Qu�c, 10% Chi�u D� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_3",
	"Tho�t./no")
elseif i == 3 then
	SayNew("B�n c� ch�c ch�n ��i 2000 �i�m T�ch L�y S� Ki�n �� l�y: 30% ��nh Qu�c Tinh Luy�n Th�ch x50, 30% An Bang Tinh Luy�n Th�ch x50, 10% Ho�n M� Tinh Th�ch x500, 30% C�c Ph�m Tinh Th�ch x50 ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_4",
	"Tho�t./no")
elseif i == 4 then
	SayNew("B�n c� ch�c ch�n ��i 2000 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 15% Nh�n C�c Hoa, 15% Nh�n K� Huy�t, 15% Ng�c B�i AB, 15% D�y Chuy�n An Bang, 10% Chi�u D� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_4",
	"Tho�t./no")
elseif i == 5 then
	SayNew("B�n c� ch�c ch�n ��i 400 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 67% Ng�c B�i An Bang, 3% Phi V�n Th�n M� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_5",
	"Tho�t./no")
elseif i == 6 then
	SayNew("B�n c� ch�c ch�n ��i 401 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 67% Nh�n C�c Hoa, 3% Phi V�n Th�n M� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_6",
	"Tho�t./no")
elseif i == 7 then
	SayNew("B�n c� ch�c ch�n ��i 402 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 67% Nh�n K� Huy�t, 3% Phi V�n Th�n M� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_7",
	"Tho�t./no")
elseif i == 8 then
	SayNew("B�n c� ch�c ch�n ��i 403 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 67%D�y Chuy�n An Bang, 3% Phi V�n Th�n M� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_8",
	"Tho�t./no")
end
end

function thuyenrong_doidiem_1()
diem = 300
task = GetTask(612)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(612, GetTask(612) - diem)
if GetTask(612) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(120)
		idxitem = AddEventItem(120)
		idxitem = AddEventItem(120)
		idxitem = AddEventItem(120)
		idxitem = AddEventItem(120)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 60 then
		idxitem = AddEventItem(177)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 80 then
		idxitem = AddEventItem(0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(1)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
diem = 500
task = GetTask(612)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(612, GetTask(612) - diem)
if GetTask(612) == task - diem then
	sx = random(1,100)
	if sx < 25 then
		ngayitem = ngay + 15
		thangitem = thang
		if ngayitem > mangthang[thang] then
		ngayitem = ngayitem - mangthang[thang]
		thangitem = thang + 1
		end
		idxitem = AddItem(0,10,5,4,0,0,0)
		SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 25 and sx < 50 then
		ngayitem = ngay + 15
		thangitem = thang
		if ngayitem > mangthang[thang] then
		ngayitem = ngayitem - mangthang[thang]
		thangitem = thang + 1
		end
		idxitem = AddItem(0,10,5,3,0,0,0)
		SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 75 then
		ngayitem = ngay + 15
		thangitem = thang
		if ngayitem > mangthang[thang] then
		ngayitem = ngayitem - mangthang[thang]
		thangitem = thang + 1
		end
		idxitem = AddItem(0,10,5,1,0,0,0)
		SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 95 then
		ngayitem = ngay + 15
		thangitem = thang
		if ngayitem > mangthang[thang] then
		ngayitem = ngayitem - mangthang[thang]
		thangitem = thang + 1
		end
		idxitem = AddItem(0,10,5,1,0,0,0)
		SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		-- ngayitem = ngay + 15
		-- thangitem = thang
		-- if ngayitem > mangthang[thang] then
		-- ngayitem = ngayitem - mangthang[thang]
		-- thangitem = thang + 1
		-- end
		idxitem = AddItem(0,10,5,10,0,0,0)
		-- SetHSD(idxitem, 2022 , thangitem, ngayitem, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_3()
diem = 1500
task = GetTask(612)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(612, GetTask(612) - diem)
if GetTask(612) == task - diem then
	sx = random(1,100)
	if sx < 15 then
		idxitem = AddItem(0,7,15,random(1,8),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 15 and sx < 30 then
		idxitem = AddItem(0,2,30,random(1,8),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 50 then
		idxitem = AddItem(0,6,3,random(1,8),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 70 then
		idxitem = AddItem(0,8,3,random(1,8),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 70 and sx < 95 then
		idxitem = AddItem(0,5,5,random(1,8),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,10,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function thuyenrong_doidiem_4()
diem = 2000
task = GetTask(612)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(612, GetTask(612) - diem)
if GetTask(612) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		for i = 1,50 do AddEventItem(665) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>50 ��nh Qu�c Tinh Luy�n Th�ch")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 60 then
		for i = 1,50 do AddEventItem(664) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>50 An Bang Tinh Luy�n Th�ch")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 70 then
		for i = 1,500 do AddEventItem(567) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>500 Ho�n M� Tinh Th�ch")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		for i = 1,50 do AddEventItem(568) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>50 C�c Ph�m Tinh Th�ch")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_5()
diem = 400
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 5] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,9,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 5] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_6()
diem = 401
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 6] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,3,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 6] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_7()
diem = 402
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 7] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,3,4,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 7] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function thuyenrong_doidiem_8()
diem = 403
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 35 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 8] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,4,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 8] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function nhanhmtt()
for i = 1 , 500 do AddEventItem(567) end
end
function nhanlamthuytinh()
for i = 1 , 9 do AddEventItem(28) end
end
function nhanmanhthienthach()
for i = 61 , 66 do AddEventItem(i) end
end
function nhanlbgop()
AddEventItem(176)
end
function nhandenbusvcu()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	if GetTask(803) >= 1 then
		Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
		return	
	end
	if GetLevel() < 90 then
		Talk(1,"","Nh�n v�t n�y kh�ng �� c�p 90 kh�ng th� nh�n")
		return	
	end
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/lognhandenbu.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			SetTask(803,1)
			
				idxp = AddEventItem(120)
				SetBindItem(idxp,1)
				idxp = AddEventItem(120)
				SetBindItem(idxp,1)
				idxp = AddEventItem(120)
				SetBindItem(idxp,1)
	Msg2Player("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red> �� nh�p ���c ��n b�. Nh�n ���c: 3 TTL")
end

function NewTrungThu_Main()
SayNew("S� ki�n Event Mini b�t ��u v�o 08/07/2021 - 18/07/2021. Ng��i c�n ta gi�p g�?",8,
"Mua C� R�t  /muanodo",
"Mua C�y Th�ng/muagiotraicay",
"Shop Event Th��ng  /shopevent2",
"Shop Event ��t Bi�t /shopevent1",
"Tham Gia Event Ng��i Tuy�t /NewTrungThu_NauBanh",
-- "Gia h�n Ng��i tuy�t cho�ng kh�n xanh (th��ng)./giahanthiepchucmung",
-- "Gia h�n Ng��i tuy�t cho�ng kh�n �� (��c bi�t)./gianhanhopqua",
"Nh�n th��ng Ng��i tuy�t cho�ng kh�n xanh (th��ng)./NewTrungThu_GioiHanT",
"Nh�n th��ng Ng��i tuy�t cho�ng kh�n �� (��c bi�t)./NewTrungThu_GioiHan",
-- "Nh�n th��ng MAX 2 L�n Ng��i tuy�t cho�ng kh�n xanh (th��ng)./nhanmax2lanthuong",
-- "Nh�n th��ng MAX 2 L�n Ng��i tuy�t cho�ng kh�n �� (��c bi�t)./nhanmax2landb",
"Tho�t./no")
end
function muanodo()
SayNew("Shop N� �� ?",4,
"Mua 1 C� R�t [1 V�n]./muano1",
"Mua 10 C� R�t [10 V�n L��ng]./muano10",
"Mua 50 C� R�t [50 V�n L��ng]./muano50",
"Tho�t./no")
end

function muano1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
	if GetCash() >= 10000 then
	AddEventItem(NGUYENLIEUT)
	Pay(10000)
	else
	Talk(1,"","<color=green>Shop C� R�t: <color>Kh�ng �� 1 V�n")
	end
end

function muano10()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
	if GetCash() >= 100000 then
	for i =1,10 do AddEventItem(NGUYENLIEUT) end 
	Pay(100000)
	else
	Talk(1,"","<color=green>Shop C� R�t: <color>Kh�ng �� 10 V�n L��ng")
	end
end

function muano50()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
	if GetCash() >= 500000 then
	for i =1, 50 do AddEventItem(NGUYENLIEUT) end 
	Pay(500000)
	else
	Talk(1,"","<color=green>Shop C� R�t: <color>Kh�ng �� 50 V�n L��ng")
	end
end



function muagiotraicay()
SayNew("Shop C�y Th�ng",4,
"Mua 1 C�y Th�ng [1 Xu]./muagiotraicay2",
"Mua 10 C�y Th�ng [10 Xu]./muagiotraicay10",
"Mua 50 C�y Th�ng [50 Xu]./muagiotraicay50",
"Tho�t./no")
end

function muagiotraicay2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 1 and GetTask(101) >= 1 then
		SetTask(99,GetTask(99) - 1)
		SetTask(101,GetTask(101) - 1)
		if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
			
			-- for i=1,2 do
			AddEventItem(NGUYENLIEUDB)
			-- end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/CayThong.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
       else
	   Talk(1,"","Ng��i kh�ng mang �� xu! Kh�ng th� mua !")
		end
	end
end
function muagiotraicay10()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 10 and GetTask(101) >= 10 then
		SetTask(99,GetTask(99) - 10)
		SetTask(101,GetTask(101) - 10)
		if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
			
			for i=1,10 do
			AddEventItem(NGUYENLIEUDB)
			end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/CayThong.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
       else
	Talk(1,"","Ng��i kh�ng mang �� xu! Kh�ng th� mua !")
		end
	end
end

function muagiotraicay50()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 50 and GetTask(101) >= 50 then
		SetTask(99,GetTask(99) - 50)
		SetTask(101,GetTask(101) - 50)
		if GetTask(99) == vang-50 and GetTask(101) == vang2 - 50 and GetTask(99) == GetTask(101) then
			
			for i=1,50 do
			AddEventItem(NGUYENLIEUDB)
			end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/CayThong.txt", "a");
				LoginLog = openfile("Data/SuKien/CayThong.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
       else
	Talk(1,"","Ng��i kh�ng mang �� xu! Kh�ng th� mua !")
		end
	end
end



function gianhanhopqua()
	if GetTask(Task_GH_Event_DB) >= 1 then
		Talk(1,"","Ng��i �� gia h�n 1 l�n r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	if GetTask(Task_GH_THUYENRONGLON) < 1500 then
		Talk(1,"","B�n hi�n t�i <color=yellow>"..GetTask(Task_GH_THUYENRONGLON).."<color>/1500 c�i ch�a �� �� nh�n ")
		return
	end
	if GetTask(Task_GH_MocEvent) == 0 then
		Talk(1,"","Ng��i ch�a nh�n th��ng MAX Event kh�ng th� gia h�n Event  ?")
	return
	end
	if GetItemCount(17) < 5 then
		Talk(1,"","B�n kh�ng �� 5 KNB, h�y ki�m tra l�i !")
		return
	end
	Msg2SubWorld("Ch�o m�ng <color=yellow>"..GetName().." <color=red> �� d�ng 5KNB gia h�n l�i event Ng��i tuy�t cho�ng kh�n �� (��c bi�t)!")
	SetTask(Task_GH_THUYENRONGLON, GetTask(Task_GH_THUYENRONGLON) - 1500)
	SetTask(Task_GH_MocEvent,0)
	-- SetTask(Task_GH_Event_DB,1)
	SetTask(Task_GH_Event_DB,1)
	for i = 1,5 do DelItem(17) end
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logGianhanEventDB2007.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
end

function giahanthiepchucmung()
	if GetTask(Task_GH_Event_T) >= 1 then
		Talk(1,"","Ng��i �� gia h�n 1 l�n r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	if GetTask(Task_GH_THUYENRONGNHO) < 2000 then
		Talk(1,"","B�n hi�n t�i <color=yellow>"..GetTask(Task_GH_THUYENRONGNHO).."<color>/2000 c�i ch�a �� �� nh�n ")
		return
	end
	if GetTask(Task_GH_MocEventT) == 0 then
		Talk(1,"","Ng��i ch�a nh�n th��ng MAX Event kh�ng th� gia h�n Event  ?")
	return
	end
	if GetItemCount(17) < 3 then
		Talk(1,"","B�n kh�ng �� 3 KNB, h�y ki�m tra l�i !")
		return
	end
	Msg2SubWorld("Ch�o m�ng <color=yellow>"..GetName().." <color=red> �� d�ng 3KNB gia h�n l�i event Ng��i tuy�t cho�ng kh�n xanh (th��ng).  !")
	SetTask(Task_GH_THUYENRONGNHO, GetTask(Task_GH_THUYENRONGNHO) - 2000)
	SetTask(Task_GH_MocEventT,0)
	-- SetTask(Task_GH_Event_T,1)
	SetTask(Task_GH_Event_T,1)
	for i = 1,3 do DelItem(17) end
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logGiaHanEventThuong2007.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
end
function nhanmax2lanthuong()
	if GetTask(Task_MAX_2EVENTT) >= 1 then
		Talk(1,"","Ng��i �� nh�n 1 l�n r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	if GetTask(Task_GH_THUYENRONGNHO) < 2000 then
		Talk(1,"","B�n hi�n t�i ch�a �n max 2 l�n event th��ng n�n kh�ng th� nh�n th��ng! ")
		return
	end
	if  GetTask(Task_GH_Event_T) < 1 then
		Talk(1,"","B�n hi�n t�i ch�a �n max 2 l�n event th��ng n�n kh�ng th� nh�n th��ng! ")
		return
	end
    nhanmoceventthuong()
	-- Msg2SubWorld("Ch�o m�ng <color=yellow>"..GetName().." <color=red> �� nh�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c ��i th�nh B� Ki�p 120 !")
	SetTask(Task_MAX_2EVENTT,1)
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logmax2laneventthuong.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
end

function nhanmax2landb()
	if GetTask(Task_MAX_2EVENTDB) >= 1 then
		Talk(1,"","Ng��i �� nh�n 1 l�n r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	if GetTask(Task_GH_THUYENRONGLON) < 1500 then
		Talk(1,"","B�n hi�n t�i ch�a �n max 2 l�n event th��ng n�n kh�ng th� nh�n th��ng! ")
		return
	end
	if  GetTask(Task_GH_Event_DB) < 1 then
		Talk(1,"","B�n hi�n t�i ch�a �n max 2 l�n event th��ng n�n kh�ng th� nh�n th��ng! ")
		return
	end
    nhanmoceventdb()
	-- Msg2SubWorld("Ch�o m�ng <color=yellow>"..GetName().." <color=red> �� nh�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c Ng�a B�n Ti�u v� ��i th�nh B� Ki�p 120!")
	SetTask(Task_MAX_2EVENTDB,1)
	thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logmax2laneventdb.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
end


function NewTrungThu_GioiHan()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(Task_GH_THUYENRONGLON) < 1500 then
		Talk(1,"","B�n hi�n t�i <color=yellow>"..GetTask(Task_GH_THUYENRONGLON).."<color>/1500 c�i ch�a �� �� nh�n ")
	return
	end
	if GetTask(Task_GH_MocEvent) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [1500] r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	SetTask(Task_GH_MocEvent,1)
	-- AddEventItem(708)
	for i = 1,3 do AddEventItem(713) end
	for i = 1,2 do AddEventItem(710) end
	
	
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logNhanThuongEventDB2007.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
    Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [1500] Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c: <color=pink>2 B�o R��ng Thi�n Ho�ng v� 3 B�o R��ng M�nh Ng�a")
	
end

function nhanmoceventthuong()
dinhquoc = random(1,5)
	if dinhquoc == 1 then
		idxitem = AddItem(0,7,15,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif dinhquoc == 2 then
		idxitem = AddItem(0,2,30,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif dinhquoc == 3 then
		idxitem = AddItem(0,8,3,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif dinhquoc == 4 then
		idxitem = AddItem(0,6,3,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif dinhquoc == 5 then
		idxitem = AddItem(0,5,5,random(5,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
end
function nhanmoceventdb()
anbang = random(1,3)
	if anbang == 1 then
		idxitem = AddItem(0,9,3,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif anbang == 2 then
		idxitem = AddItem(0,3,3,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	elseif anbang == 3 then
		idxitem = AddItem(0,3,4,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng <color=yellow> "..GetName().."<color> nh�n ph�n th��ng max 2 l�n event Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	-- elseif anbang == 4 then
		-- idxitem = AddItem(0,9,3,1,0,0,0)
		-- Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [1000] Ng��i tuy�t cho�ng kh�n �� (��c bi�t) nh�n ���c: <color=pink>"..GetNameItemBox(idxitem).." ")
	end
end

function NewTrungThu_GioiHanT()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(Task_GH_THUYENRONGNHO) < 2000 then
		Talk(1,"","B�n hi�n t�i <color=yellow>"..GetTask(Task_GH_THUYENRONGNHO).."<color>/2000 c�i ch�a �� �� nh�n ")
	return
	end
	if GetTask(Task_GH_MocEventT) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [2000] r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	SetTask(Task_GH_MocEventT,1)
	for i = 1,2 do AddEventItem(713) end
	AddEventItem(710)
	-- nhanmoceventthuong()
	-- idxitem = AddEventItem(713)
	-- for k=1,50 do AddOwnExp(1000000) end
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/logNhanThuongEventT2007.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

	-- Msg2Player("B�n nh�n ���c 50.000.000 kinh nghi�m")
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [2000] Ng��i tuy�t cho�ng kh�n xanh (th��ng) nh�n ���c: <color=pink>2 B�o R��ng M�nh Ng�a v� m�t b�o r��ng Thi�n Ho�ng")
end



function NewTrungThu_NauBanh()
SayNew("Vui l�ng ch�n lo�i Hoa mu�n ch� t�o: ",7,
"1 Ng��i tuy�t cho�ng kh�n xanh (th��ng) /NewTrungThu_NauBanh_2",
"10 Ng��i tuy�t cho�ng kh�n xanh (th��ng) /NewTrungThu_NauBanh_2",
"50 Ng��i tuy�t cho�ng kh�n xanh (th��ng) /NewTrungThu_NauBanh_2",
"1 Ng��i tuy�t cho�ng kh�n �� (��c bi�t) /NewTrungThu_NauBanh_2",
"10 Ng��i tuy�t cho�ng kh�n �� (��c bi�t) /NewTrungThu_NauBanh_2",
"50 Ng��i tuy�t cho�ng kh�n �� (��c bi�t) /NewTrungThu_NauBanh_2",
"Tho�t./no")
end

function NewTrungThu_NauBanh_2(nsel)
i = nsel + 1
if i == 1 then
NewTrungThu_NauBanh_3(1, MAICHEO, "Kh�n cho�ng (xanh)", NGUYENLIEUT," C� R�t", THUYENRONGNHO, "Ng��i tuy�t cho�ng kh�n xanh (th��ng)")
elseif i == 2 then
NewTrungThu_NauBanh_3(10, MAICHEO, "Kh�n cho�ng (xanh)", NGUYENLIEUT, "C� R�t", THUYENRONGNHO, "Ng��i tuy�t cho�ng kh�n xanh (th��ng)")
elseif i == 3 then
NewTrungThu_NauBanh_3(50, MAICHEO, "Kh�n cho�ng (xanh)", NGUYENLIEUT, "C� R�t",THUYENRONGNHO, "Ng��i tuy�t cho�ng kh�n xanh (th��ng)")
elseif i == 4 then
NewTrungThu_NauBanh_3(1, DAURONG, "Kh�n cho�ng (��)", NGUYENLIEUDB, "C�y Th�ng",THUYENRONGLON, "Ng��i tuy�t cho�ng kh�n �� (��c bi�t)")
elseif i == 5 then
NewTrungThu_NauBanh_3(10, DAURONG, "Kh�n cho�ng (��)", NGUYENLIEUDB, "C�y Th�ng",THUYENRONGLON, "Ng��i tuy�t cho�ng kh�n �� (��c bi�t)")
elseif i == 6 then
NewTrungThu_NauBanh_3(50, DAURONG, "Kh�n cho�ng (��)", NGUYENLIEUDB, "C�y Th�ng",THUYENRONGLON, "Ng��i tuy�t cho�ng kh�n �� (��c bi�t)")
end
end

function NewTrungThu_NauBanh_3(SoLuong, IDNL, NameNL, NGUYENLIEU, NameNLTHEM, IDBanh, NameBanh)
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� C�y Th�ng, xin ki�m tra l�i !")
return
end

nl1 = GetItemCount(THANRONG)
nl2 = GetItemCount(XUONGRONG)
nl3 = GetItemCount(DUOIRONG)
nl4 = GetItemCount(IDNL)
nl5 = GetItemCount(NGUYENLIEU)
-- cashv = GetCash()
-- cash = GetTask(99)
-- cash2 = GetTask(101)

if nl1 < SoLuong or nl2 < SoLuong or nl3 < SoLuong or nl4 < SoLuong or nl5 < SoLuong then
Talk(1,"","Nguy�n li�u kh�ng ��: "..SoLuong.." Hoa tuy�t + "..SoLuong.." C�nh th�ng + "..SoLuong.." N�n gi�ng sinh + "..SoLuong.." "..NameNL.." + "..SoLuong.." "..NameNLTHEM..". Vui l�ng ki�m tra l�i !")
return
end

for k=1,SoLuong do 
	DelItem(THANRONG)
	DelItem(XUONGRONG)
	DelItem(DUOIRONG)
	DelItem(IDNL)
	DelItem(NGUYENLIEU)
end
	-- SetTask(99,cash - nXu1)
	-- SetTask(101,cash2 - nXu2)
	-- Pay(NganLuong)
if GetItemCount(THANRONG) == nl1 - SoLuong and GetItemCount(XUONGRONG) == nl2 - SoLuong and GetItemCount(DUOIRONG) == nl3 - SoLuong and GetItemCount(IDNL) == nl4 - SoLuong and GetItemCount(NGUYENLIEU) == nl5 - SoLuong then
	for k=1,SoLuong do AddEventItem(IDBanh) end
	Msg2Player("Ch� t�o th�nh c�ng "..SoLuong.." "..NameBanh.."")
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
end
-------- END COPY --------------



function nhan50()
if GetLevel() == 1 then
	SetLevel(80)
	Talk(1,"","B�n nh�n ���c ��ng c�p 80")
else
Talk(1,"","��ng c�p qu� 1 tr� l�n kh�ng ���c h� tr� !")
end
end

function hotrotanthuchanthien()
SayNew("Ch�o m�ng b�n �� tham gia may ch� Ph��ng T��ng ",6,
"Nh�n c�p 80/nhan50",
"Nh�n V� Kh� C� B�n /nhanvkcoban",
"Nh�n H� Tr� T�n Th�/nhankimphongtanthu",
-- "Nh�n H� Tr� C�p 150/nhanhotrocap125",
"Nh�p Gift Code T�n Th� /nhapseri",
"Nh�p GiftCode Live/nhapmacodenheae",
-- "Nh�p Gift Code Like + Share/nhapmacodenheaet7",
-- "Nh�n H� Tr� B� Ki�p 9x/tinhkiem_nhanptmoc",
"Tho�t./no")
end
function nhapmacodenheaet7()
if GetLevel() < 30 then
	Talk(1,"","C�p 30 m�i c� th� nh�n Giftcode n�y !")
	return
end
OpenStringBox (2,"Nh�p Code" , "nhancodegioihant7")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function nhancodegioihant7(num2)
num = tonumber(num2)
thoigian = tonumber(date("%H%M%d%m"))

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

m_codeevent = check_code_7(num)
-- if m_codeevent == 0 then
-- Talk(1,"","Gift Code kh�ng t�n t�i")
-- return
-- end
	
		if GetTask(814) >= 1 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
			return	
		end
		if m_codeevent > 0 then

	    if Code_Event[m_codeevent][2] == 0 then
	
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/logGiaHanGiftCodeLike.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
	
	        -- Code_Event[getn(m_codeevent)+1] = thoigian
			Code_Event[m_codeevent][2] = thoigian
			SetTask(814,1)
			
			idxp = AddEventItem(28)
				SetBindItem(idxp,1)
				idxp = AddEventItem(29)
				SetBindItem(idxp,1)
				idxp = AddEventItem(30)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
		--	Talk(1,"","B�n �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 6 ti�n th�o l�, 6 n� nhi h�ng, 1 ng�a T�c S��ng")
	        Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red> �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 1 b� Th�y Tinh, 6 T�nh H�ng B�o Th�ch")
        	
			BANG2 = TaoBang(Code_Event,"Code_Event")
			LuuBang("script/codeevent.lua",BANG2)
		--	Code_Event[getn(Code_Event)+1] = {GetName(),GetAccount(),thoigian,0}
			
	else
			Talk(1,"","Gift Code �� ���c s� d�ng l�c: "..Code_Event[m_codeevent][2].."")
	end
else
Talk(1,"","Seri ho�c m� code kh�ng ��ng, GIFT CODE kh�ng t�n t�i !")
end

end

function nhanhotrocap125()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(730) >= 1 then
Talk(1,"","Ng��i �� nh�n r�i , kh�ng th� s� d�ng ch�c n�ng n�y")
return
end
if GetLevel() < 150 then
Talk(1,"","Ng��i kh�ng �u c�p 150, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end
if GetLevel() >= 150 then
		SetTask(730,1)
		idxitem = AddItem(0,7,15,random(5,10),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,2,30,random(5,10),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,random(5,10),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,random(5,10),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,random(5,10),0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Ch�c m�ng "..GetName().." �� nh�n qu� c�p 150 nh�n �u�c set ��nh Qu�c")
		
				-- thoigian = tonumber(date("%H%M%d%m"))
				-- LoginLog = openfile("Data/SuKien/thuongcap150.txt", "a");
				-- if LoginLog then
				-- write(LoginLog,"Cap 150 - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				-- end
				-- closefile(LoginLog)Talk(0,"")
else
	Talk(1,"","��ng c�p tr�n 150 m�i c� th� s� d�ng ch�c n�ng n�y !")
end
end


function nhanvkcoban()
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
function nhankimphongtanthu()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))


-- ngay = tonumber(date("%d"))
-- thang = tonumber(date("%m"))
-- gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
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
		-- for p=1,3 do
		idxitem = AddItem(0,10,2,10,0,0,0)
		SetTimeItem(idxitem,550324);
		
		ngayvp = ngay + 3
		thangvp = thang
		if ngayvp > mangthang[thang] then
			ngayvp = ngayvp - mangthang[thang]
			thangvp = thang + 1
		end
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
---------------// THP //-----------------------------
		-- ngayvp = ngay + 5
		-- thangvp = thang
		-- if ngayvp > mangthang[thang] then
			-- ngayvp = ngayvp - mangthang[thang]
			-- thangvp = thang + 1
		-- end
		-- itemidx = AddEventItem(177)
		-- SetBindItem(itemidx,1)
		itemidx = AddEventItem(709)
		SetBindItem(itemidx,1)
		-- SetLevel(50)
		-- SetHSD(itemidx, 2022 , thangvp, ngayvp, gio)
		for p=1,3 do
		itemidx = AddEventItem(119)
		SetBindItem(itemidx,1)
		end
		Msg2SubWorld("<color=white>Cao Th� : <color> <color=yellow>"..GetName().." <color=white> �� gia nh�p m�y ch� Ph��ng T��ng giang h� s�p d�y l�n m�t phen s�ng gi� <color>")
		-- Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red>gia nh�p M�y Ch� Thi�n S�n")
else
	Talk(1,"","B�n �� nh�n ph�n th��ng h� tr�, kh�ng th� nh�n th�m ")
	end
end

function cacgoinapthe()
SayNew("Th�ng tin chi ti�t xem t�i web VLHOIUCCTC.COM ",3,
"Shop Ti�n V�n/shopnganluong",
-- "Mua ��i Th�nh 120/muadaithanh120",
-- "Mua 5 LB Boss 25Xu./mualbbosss",
-- "Mua LB D� T�u 10Xu./mualbdatau",
-- "Mua Qu� Hoa T� 15Xu./muaqhtxu",
-- "Mua THP 7 Ng�y = [1 KNB]/muaTHP7ngay",
"Mua T�i M�u 7 Ng�y = [1 KNB]/muatuimau7ngay",
-- "Mua 20 Tinh Luy�n Th�ch �Q = [1 KNB]/doikhieuchienlenh",
"Tho�t./no")
end

function muadaithanh120()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(101) < 1000 then
	Talk(1,"","Ng��i kh�ng mang �� 1000 xu kh�ng th� mua ���c !")
	return
end

	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 1000 and GetTask(101) >= 1000 then
		SetTask(99,GetTask(99) - 1000)
		SetTask(101,GetTask(101) - 1000)
		if GetTask(99) == vang-1000 and GetTask(101) == vang2 - 1000 and GetTask(99) == GetTask(101) then
			
			
			AddEventItem(708)
			

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/Muadaithanh120.txt", "a");
				if LoginLog then
				write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
				end
				closefile(LoginLog)
		Talk(0,"Ng��i kh�ng mang d� 1000 xu !")
else
	Talk(1,"","Ng��i kh�ng mang d� 1000 xu !")
		end
	end
end


function mualbbosss()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 25 and GetTask(101) >= 25 then
		SetTask(99,GetTask(99) - 25)
		SetTask(101,GetTask(101) - 25)
		if GetTask(99) == vang-25 and GetTask(101) == vang2 - 25 and GetTask(99) == GetTask(101) then
			
			for i=1,5 do
			AddEventItem(128)
			end

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/MuaLBboss.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"")
else
	Talk(1,"","��ng c�p tr�n 95 m�i c� th� s� d�ng ch�c n�ng n�y !")
		end
	end
end


function mualbdatau()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 10 and GetTask(101) >= 10 then
		SetTask(99,GetTask(99) - 10)
		SetTask(101,GetTask(101) - 10)
		if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
			
			
			AddEventItem(707)
			

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/MuaLBDT.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"Ng��i kh�ng mang �� 10 xu kh�ng th� mua ")
else
	Talk(1,"","��ng c�p tr�n 95 m�i c� th� s� d�ng ch�c n�ng n�y !")
		end
	end
end

function muaqhtxu()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 15 and GetTask(101) >= 15 then
		SetTask(99,GetTask(99) - 15)
		SetTask(101,GetTask(101) - 15)
		if GetTask(99) == vang-15 and GetTask(101) == vang2 - 15 and GetTask(99) == GetTask(101) then
			
			
			AddEventItem(654)
			

				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/SuKien/MuaQHT.txt", "a");
				if LoginLog then
				write(LoginLog,"MuaLBBoss - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
		Talk(0,"Ng��i kh�ng mang �� 15 xu kh�ng th� mua ")
else
	Talk(1,"","��ng c�p tr�n 95 m�i c� th� s� d�ng ch�c n�ng n�y !")
		end
	end
end

function inlog6(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end







function nhapseri()
if GetLevel() < 20 then
	Talk(1,"","C�p 20 m�i c� th� nh�n Giftcode n�y !")
	return
end
OpenStringBox(2,"Nh�p Code" , "acceptcode1")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function acceptcode1(num)
num = tonumber(num)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
-- if code == "" then
-- Talk(1,"","M� Code Sai Li�n H� GM")
-- return
-- end
if num < 27082020 or num > 27082022 then
Talk(1,"","M� Code Sai Li�n H� GM")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� C�y Th�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
		if GetTask(333) >= 4600 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
			return	
		end
	
	
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/logGiaHanGiftCode.txt", "a");
			if LoginLog then
			write(LoginLog,""..GetAccount().." - "..GetName().." -"..GetLevel().."  - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

			--Code_Event[m_codeevent][2] = thoigian
				-- if code == "volamhoiuc" then
				SetTask(333,4600)
				idxp = AddEventItem(28)
				SetBindItem(idxp,1)
				idxp = AddEventItem(29)
				SetBindItem(idxp,1)
				idxp = AddEventItem(30)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(31)
				SetBindItem(idxp,1)
				idxp = AddEventItem(714)
				SetBindItem(idxp,1)
				idxp = AddEventItem(714)
				SetBindItem(idxp,1)
				idxp = AddEventItem(714)
				SetBindItem(idxp,1)	
				idxp = AddEventItem(115)
				SetBindItem(idxp,1)
				idxp = AddEventItem(115)
				SetBindItem(idxp,1)
				idxp = AddEventItem(115)
				SetBindItem(idxp,1)				
				-- idxp = AddItem(0,10,2,10,0,0,0)
				-- SetTimeItem(idxp,550324);
			--Msg2SubWorld(1,"","Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red> �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 6 ti�n th�o l�, 6 n� nhi h�ng, 1 ng�a T�c S��ng")
			-- Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().." <color=red> �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 3 TTK, 3VLMT, 3 N� Nhi H�ng")
			Msg2SubWorld("<color=blue> Ch�c m�ng t�n th� <color> <color=yellow>"..GetName().." <color=red> <color=blue> �� nh�p Gift Code th�nh c�ng. Nh�n ���c: 3 B�o R��ng V� Kh� Xanh, 6 THBT, B� Th�y Tinh, 3 NNH")
end





function inlog2(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/MuaCayThong_1KNB.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog3(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logMamVang.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end
function inlog4(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/DoiPhanThuong.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function inlog5(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function no()

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
