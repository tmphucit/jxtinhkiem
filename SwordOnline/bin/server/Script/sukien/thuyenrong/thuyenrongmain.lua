Include("\\script\\lib\\thuvien.lua")


function main__()
	Talk(1,"","Event ®· hÕt")
end

function main()
--nhagiao_main()
dofile("script\\sukien\\thuyenrong\\thuyenrongmain.lua")
--if (GetAccount() == "hinodl" or GetAccount() == "hinodl01" or GetAccount() == ""or GetAccount() == "")then
SayNew("<color=green>Sù KiÖn<color>: Event Quèc Kh¸nh 02-09.<enter>Sè l­îng L¸ Cê ChiÕn Th¾ng ®· sö dông : <color=green>"..GetTask(490).."<color><enter>Sè l­îng L¸ Cê ChiÕn Th¾ng ®Æc biÖt ®· sö dông : <color=green>"..GetTask(489).."<color>",2,
"Sù KiÖn th¸ng 9 /thuyenrong_main",
--"Gia h¹n sù kiÖn Quèc Kh¸nh 02-09 /giahan",
"Tho¸t./no")
-- else
	-- SayNew("<color=red>HÖ Thèng: <color> Event ®· hÕt<color>",1,
	--"Fix Phe Kim/fixtk",
	---"Fix Phe Tèng/fixtk1",
	--"NhËn M¸u Hç Trî/nhanmau",
	--"Më khãa r­¬ng tõ xa/mokhoaruong",
	-- "Thoat./no")
	-- end
end

function giahan()
SayNew("<color=green>Gia H¹n Sù KiÖn §ua ThuyÒn Rång.",3,
"B¹n muèn gia h¹n sù kiÖn §ua ThuyÒn Rång th­êng /giahan1",
"B¹n muèn gia h¹n sù kiÖn §ua ThuyÒn Rång VIP /giahan2",
"Tho¸t./no")
end

function giahan1()
	if GetTask(678) >= 1 then
		Talk(1,"","B¹n ®· gia h¹n 1 lÇn råi, kh«ng thÓ gia h¹n n÷a !")
		return
	end
	if GetTask(490) < 1500 then
		Talk(1,"","B¹n ch­a MAX sù kiÖn §ua ThuyÒn Rång !")
		return
	end
	if GetItemCount(17) < 2 then
		Talk(1,"","B¹n kh«ng ®ñ 2 KNB, h·y kiÓm tra l¹i !")
		return
	end
	SetTask(490, GetTask(490) - 1500)
	for i = 1,2 do DelItem(17) end
	SetTask(678,1)
end

function giahan2()
	if GetTask(679) >= 1 then
		Talk(1,"","B¹n ®· gia h¹n 1 lÇn råi, kh«ng thÓ gia h¹n n÷a !")
		return
	end
	if GetTask(489) < 2500 then
		Talk(1,"","B¹n ch­a MAX sù kiÖn §ua ThuyÒn Rång !")
		return
	end
	if GetItemCount(17) < 4 then
		Talk(1,"","B¹n kh«ng ®ñ 4 KNB, h·y kiÓm tra l¹i !")
		return
	end
	SetTask(489, GetTask(489) - 2500)
	for i = 1,4 do DelItem(17) end
	SetTask(679,1)
end

function eventthang09()
SayNew("<color=green>Sø Gi¶ Sù KiÖn<color>: Sù kiÖn Quèc Kh¸nh 02-09 ®¹i hiÖp cÇn ta lµm g× ?",7,
"ChÕ t¹o L¸ Cê ChiÕn Th¾ng ( Th­êng )/muanhanh5",
"ChÕ t¹o L¸ Cê ChiÕn ( §Æt BiÖt )/muanhanh3",
--"§ua ThuyÒn Rång th­êng /thuyenrong_thuong",
--"§ua ThuyÒn Rång Cæ vò b»ng Trèng /thuyenrong_vip",
"Mua Hép Kim ChØ - [1 xu] /thuyenrong_trong",
"Mua 10 Hép Kim ChØ - [10 xu] /thuyenrong_trongvip",
"Mua 50 Hép Kim ChØ - [50 xu] /mua50",
"PhÇn th­ëng theo mèc Sù KiÖn/thuyenrong_max",
"Tho¸t./no")
end

function no()
end
function mua50()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
		return
	end
	sl = GetItemCount(362) 
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 50 and GetTask(101) >= 50 then
		SetTask(99,GetTask(99) - 50)
		SetTask(101,GetTask(101) - 50)
		if GetTask(99) == vang-50 and GetTask(101) == vang2 - 50 and GetTask(99) == GetTask(101) then
			for i = 1,50 do AddEventItem(362) end
			if GetItemCount(362) ~= sl + 50 then
				Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 İt GiÊy KiÕng Cam bŞ mÊt.")
			end
			Msg2Player("B¹n nhËn ®­îc 50 Hép Kim ChØ")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ <color=yellow>20<color> vµng, kh«ng thÓ mua trèng!")
	end
end


function thuyenrong_trongvip()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
		Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
		return
	end
	sl = GetItemCount(362) 
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 10 and GetTask(101) >= 10 then
		SetTask(99,GetTask(99) - 10)
		SetTask(101,GetTask(101) - 10)
		if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
			for i = 1,10 do AddEventItem(362) end
			if GetItemCount(362) ~= sl + 10 then
				Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 İt GiÊy KiÕng Cam bŞ mÊt.")
			end
			Msg2Player("B¹n nhËn ®­îc 10 Hép Kim ChØ")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ <color=yellow>20<color> vµng, kh«ng thÓ mua trèng!")
	end
end

function thuyenrong_trong()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
	return
	end
	sl = GetItemCount(362) 
	vang = GetTask(99)
	vang2 = GetTask(101)
	if GetTask(99) >= 1 and GetTask(101) >= 1 then
		SetTask(99,GetTask(99) - 1)
		SetTask(101,GetTask(101) - 1)
		if GetTask(99) == vang-1 and GetTask(101) == vang2 - 1 and GetTask(99) == GetTask(101) then
			AddEventItem(362)
			if GetItemCount(362) ~= sl + 1 then
				Talk(1,"","R­¬ng cña b¹n ®· Full nªn sÏ cã 1 İt GiÊy KiÕng Cam bŞ mÊt.")
			end
			Msg2Player("B¹n nhËn ®­îc 1 Hép Kim ChØ")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B¹n kh«ng ®ñ <color=yellow>2<color> vµng, kh«ng thÓ giao dŞch!")
	end
end

function thuyenrong_max()
SayNew("<color=green>Sø Gi¶ Sù KiÖn<color>: NhËn Mèc Tham Gia L¸ Cê ChiÕn Th¾ng T©n Thñ ",4,
"NhËn mèc sù kiÖn L¸ Cê ChiÕn Th¾ng [2500] = Trang bŞ §Q random /nhan1500",
--"NhËn mèc sù kiÖn ThuyÒn Rång ®Æc biÖt [500] /nhan200",
-- "NhËn mèc [1000] L¸ Cê ®Æc biÖt = Trang bŞ AB random/nhan1000",
"NhËn mèc [2000] L¸ Cê §Æt BiÖt = 1 Bé §Şnh Quèc/nhan2000",
"Dung ®iÓm ®æi lÊy vËt phÈm./thuyenrong_doidiem",

"Tho¸t./no")
end

function nhan1500()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
	if GetTask(490) < 3500 then
		Talk(1,"","B¹n ch­a ®ñ Mèc nhËn !")
	return
	end
	if GetTask(899) >= 1 then
		Talk(1,"","Ng­¬i ®· nhËn mèc [3500] råi mµ, muèn nhËn n÷a ah ?")
	return
	end
		sxnhan = random(1,4)
	if sxnhan == 1 then
		AddItem(0,4,3,random(1,8),0,0,0)
	elseif sxnhan == 2 then
		AddItem(0,3,3,random(1,8),0,0,0)
	elseif sxnhan == 3 then
		AddItem(0,3,4,random(1,8),0,0,0)
	else
		AddItem(0,9,3,random(1,8),0,0,0)
	end
	SetTask(899,1)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng mèc [3500] Sù KiÖn L¸ Cê ChiÕn Th¾ng nhËn ®­îc Trang bŞ An Bang Random ")
end


function nhan200()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
	if GetTask(489) < 500 then
		Talk(1,"","B¹n ch­a ®ñ Mèc nhËn !")
	return
	end
	if GetTask(997) >= 1 then
		Talk(1,"","Ng­¬i ®· nhËn mèc [500] råi mµ, muèn nhËn n÷a ah ?")
	return
	end
	for i = 1,5 do
		AddEventItem(410)
	end
	SetTask(997,1)
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng mèc [500] Sù KiÖn §ua ThuyÒn Rång nhËn ®­îc: <color=green>Tu LuyÖn §an")
end

function nhan500()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
	if GetTask(489) < 1500 then
		Talk(1,"","B¹n ch­a ®ñ Mèc nhËn !")
	return
	end
	if GetTask(997) == 0 then
		Talk(1,"","Ng­¬i ch­a nhËn mèc phÇn th­ëng [1500]!")
	return
	end
	if GetTask(997) >= 2 then
		Talk(1,"","Ng­¬i ®· nhËn mèc [1500] råi mµ, muèn nhËn n÷a ah ?")
	return
	end
	SetTask(997,2)
		sxnhan = random(1,4)
	if sxnhan == 1 then
		AddItem(0,4,3,random(1,8),0,0,0)
	elseif sxnhan == 2 then
		AddItem(0,3,3,random(1,8),0,0,0)
	elseif sxnhan == 3 then
		AddItem(0,3,4,random(1,8),0,0,0)
	else
		AddItem(0,9,3,random(1,8),0,0,0)
	end
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng mèc [1500] Sù KiÖn §ua ThuyÒn Rång nhËn ®­îc: <color=green>Trang bŞ An Bang Random")
end

function nhan1000()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
	if GetTask(489) < 1000 then
		Talk(1,"","B¹n ch­a ®ñ Mèc nhËn !")
	return
	end
	-- if GetTask(997) == 1 or GetTask(997) == 0 then
		-- Talk(1,"","Ng­¬i ch­a nhËn mèc phÇn th­ëng [500] vµ [1500]!")
	-- return
	-- end
	if GetTask(997) >= 1 then
		Talk(1,"","Ng­¬i ®· nhËn mèc [1000] råi mµ, muèn nhËn n÷a ah ?")
	return
	end
	SetTask(997,1)
	sxnhan = random(1,4)
	if sxnhan == 1 then
		AddItem(0,4,3,random(1,10),0,0,0)
	elseif sxnhan == 2 then
		AddItem(0,3,3,random(1,10),0,0,0)
	elseif sxnhan == 3 then
		AddItem(0,3,4,random(1,10),0,0,0)
	else
		AddItem(0,9,3,random(1,10),0,0,0)
	end
	
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng mèc [2500] Sù KiÖn L¸ Cê ChiÕn Th¾ng  nhËn ®­îc: <color=green>Trang bŞ An Bang Ramdom")
end

function nhan2000()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","Hµnh trang ph¶i ®Ó trèng 6 x 5 « míi cã thÓ nhËn !")
	return
	end
	if GetTask(489) < 2000 then
		Talk(1,"","B¹n hiÖn t¹i <color=yellow>"..GetTask(489).."<color>/2000 c¸i ch­a ®ñ ®Ó nhËn ")
	return
	end
	-- if GetTask(997) == 1 or GetTask(997) == 0 then
		-- Talk(1,"","Ng­¬i ch­a nhËn mèc phÇn th­ëng [500] vµ [1500]!")
	-- return
	-- end
	if GetTask(998) >= 1 then
		Talk(1,"","Ng­¬i ®· nhËn mèc [2000] råi mµ, muèn nhËn n÷a ah ?")
	return
	end
	SetTask(998,1)
	sxnhan = random(1,4)
	if sxnhan == 1 then
		AddItem(0,4,3,random(1,10),0,0,0)
	elseif sxnhan == 2 then
		AddItem(0,3,3,random(1,10),0,0,0)
	elseif sxnhan == 3 then
		AddItem(0,3,4,random(1,10),0,0,0)
	else
		AddItem(0,9,3,random(1,10),0,0,0)
	end
	
	Msg2SubWorld("Chóc mõng "..GetName().." nhËn phÇn th­ëng mèc [2500] Sù KiÖn L¸ Cê ChiÕn Th¾ng  nhËn ®­îc: <color=green>Trang bŞ An Bang Ramdom")
end

function muanhanh5()
Msg2Player("L¸ Cê ChiÕn Th¾ng ( Th­êng ): M·nh Cê 1 + M·nh Cê 2 + M·nh Cê 3 + M·nh Cê 4 + 2 V¹n L­îng") 
OpenStringBox(2,"NhËp sè l­îng","chetao_thuyen")
end



function chetao_thuyen(num2)
num = tonumber(num2)
if num == 0 then
return
end
	cash = 20000
	soluong = 1
	if CheckFreeBoxItem(4,261,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
	return
	end
	if GetCash() < cash*num then
		Talk(1,"","B¹n kh«ng ®ñ "..cash*num.." l­îng !")
		return
	end
	if GetItemCount(68) >= num and GetItemCount(69) >= num and GetItemCount(70) >= num and GetItemCount(71) >= num then
		for k=1,soluong do
			for p=1,num do DelItem(68) end
			for p=1,num do DelItem(69) end
			for p=1,num do DelItem(70) end
			for p=1,num do DelItem(71) end
			--for p=1,num do DelItem(260) end
			Pay(cash*num)
			for p=1,num do AddEventItem(72) end -- La Co Chien Thang
		--	AddEventItem(261)
		end
		Msg2Player("B¹n nhËn ®­îc "..num.." L¸ Cê ChiÕn Th¾ng")
		Talk(0,"")
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i") 
	end
end

function muanhanh3()
Msg2Player("L¸ Cê ChiÕn Th¾ng ( §Æt BiÖt ): M·nh Cê 1 + M·nh Cê 2 + M·nh Cê 3 + M·nh Cê 4 + Hép Kim ChØ") 
OpenStringBox(2,"NhËp sè l­îng","chetao_thuyen1")
end


function chetao_thuyen1(num2)
num = tonumber(num2)
if num == 0 then
return
end
	soluong = 1
	if CheckFreeBoxItem(4,261,1,1) == 0 then
	Talk(1,"","Hµnh trang kh«ng ®ñ chç trong, xin kiÓm tra l¹i !")
	return
	end
	if GetItemCount(68) >= num and GetItemCount(69) >= num and GetItemCount(70) >= num and GetItemCount(71) >= num and GetItemCount(362) >= num then
		for k=1,soluong do
			--for i=254,257 do DelItem(num*p) end
			for p=1,num do DelItem(68) end
			for p=1,num do DelItem(69) end
			for p=1,num do DelItem(70) end
			for p=1,num do DelItem(71) end
			for p=1,num do DelItem(362) end  --- hop kim chi
			for p=1,num do AddEventItem(678) end -- la co chien thang dat biet
			--AddEventItem(654)
		end
		Msg2Player("B¹n nhËn ®­îc "..num.." L¸ Cê ChiÕn Th¾ng ( §Æt BiÖt )")
		Talk(0,"")
	else
		Talk(1,"","Nguyªn liÖu kh«ng ®ñ, vui lßng kiÓm tra l¹i") 
	end
end



