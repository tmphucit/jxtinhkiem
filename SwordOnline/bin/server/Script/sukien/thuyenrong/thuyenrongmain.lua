Include("\\script\\lib\\thuvien.lua")


function main__()
	Talk(1,"","Event �� h�t")
end

function main()
--nhagiao_main()
dofile("script\\sukien\\thuyenrong\\thuyenrongmain.lua")
--if (GetAccount() == "hinodl" or GetAccount() == "hinodl01" or GetAccount() == ""or GetAccount() == "")then
SayNew("<color=green>S� Ki�n<color>: Event Qu�c Kh�nh 02-09.<enter>S� l��ng L� C� Chi�n Th�ng �� s� d�ng : <color=green>"..GetTask(490).."<color><enter>S� l��ng L� C� Chi�n Th�ng ��c bi�t �� s� d�ng : <color=green>"..GetTask(489).."<color>",2,
"S� Ki�n th�ng 9 /thuyenrong_main",
--"Gia h�n s� ki�n Qu�c Kh�nh 02-09 /giahan",
"Tho�t./no")
-- else
	-- SayNew("<color=red>H� Th�ng: <color> Event �� h�t<color>",1,
	--"Fix Phe Kim/fixtk",
	---"Fix Phe T�ng/fixtk1",
	--"Nh�n M�u H� Tr�/nhanmau",
	--"M� kh�a r��ng t� xa/mokhoaruong",
	-- "Thoat./no")
	-- end
end

function giahan()
SayNew("<color=green>Gia H�n S� Ki�n �ua Thuy�n R�ng.",3,
"B�n mu�n gia h�n s� ki�n �ua Thuy�n R�ng th��ng /giahan1",
"B�n mu�n gia h�n s� ki�n �ua Thuy�n R�ng VIP /giahan2",
"Tho�t./no")
end

function giahan1()
	if GetTask(678) >= 1 then
		Talk(1,"","B�n �� gia h�n 1 l�n r�i, kh�ng th� gia h�n n�a !")
		return
	end
	if GetTask(490) < 1500 then
		Talk(1,"","B�n ch�a MAX s� ki�n �ua Thuy�n R�ng !")
		return
	end
	if GetItemCount(17) < 2 then
		Talk(1,"","B�n kh�ng �� 2 KNB, h�y ki�m tra l�i !")
		return
	end
	SetTask(490, GetTask(490) - 1500)
	for i = 1,2 do DelItem(17) end
	SetTask(678,1)
end

function giahan2()
	if GetTask(679) >= 1 then
		Talk(1,"","B�n �� gia h�n 1 l�n r�i, kh�ng th� gia h�n n�a !")
		return
	end
	if GetTask(489) < 2500 then
		Talk(1,"","B�n ch�a MAX s� ki�n �ua Thuy�n R�ng !")
		return
	end
	if GetItemCount(17) < 4 then
		Talk(1,"","B�n kh�ng �� 4 KNB, h�y ki�m tra l�i !")
		return
	end
	SetTask(489, GetTask(489) - 2500)
	for i = 1,4 do DelItem(17) end
	SetTask(679,1)
end

function eventthang09()
SayNew("<color=green>S� Gi� S� Ki�n<color>: S� ki�n Qu�c Kh�nh 02-09 ��i hi�p c�n ta l�m g� ?",7,
"Ch� t�o L� C� Chi�n Th�ng ( Th��ng )/muanhanh5",
"Ch� t�o L� C� Chi�n ( ��t Bi�t )/muanhanh3",
--"�ua Thuy�n R�ng th��ng /thuyenrong_thuong",
--"�ua Thuy�n R�ng C� v� b�ng Tr�ng /thuyenrong_vip",
"Mua H�p Kim Ch� - [1 xu] /thuyenrong_trong",
"Mua 10 H�p Kim Ch� - [10 xu] /thuyenrong_trongvip",
"Mua 50 H�p Kim Ch� - [50 xu] /mua50",
"Ph�n th��ng theo m�c S� Ki�n/thuyenrong_max",
"Tho�t./no")
end

function no()
end
function mua50()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
				Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t Gi�y Ki�ng Cam b� m�t.")
			end
			Msg2Player("B�n nh�n ���c 50 H�p Kim Ch�")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� <color=yellow>20<color> v�ng, kh�ng th� mua tr�ng!")
	end
end


function thuyenrong_trongvip()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
		Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
				Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t Gi�y Ki�ng Cam b� m�t.")
			end
			Msg2Player("B�n nh�n ���c 10 H�p Kim Ch�")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� <color=yellow>20<color> v�ng, kh�ng th� mua tr�ng!")
	end
end

function thuyenrong_trong()
	if CheckFreeBoxItem(4,260,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
				Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t Gi�y Ki�ng Cam b� m�t.")
			end
			Msg2Player("B�n nh�n ���c 1 H�p Kim Ch�")
			--inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
			Talk(0,"")
		else
			Talk(1,"","Hack ha em")
		end
	else
		Talk(1,"","B�n kh�ng �� <color=yellow>2<color> v�ng, kh�ng th� giao d�ch!")
	end
end

function thuyenrong_max()
SayNew("<color=green>S� Gi� S� Ki�n<color>: Nh�n M�c Tham Gia L� C� Chi�n Th�ng T�n Th� ",4,
"Nh�n m�c s� ki�n L� C� Chi�n Th�ng [2500] = Trang b� �Q random /nhan1500",
--"Nh�n m�c s� ki�n Thuy�n R�ng ��c bi�t [500] /nhan200",
-- "Nh�n m�c [1000] L� C� ��c bi�t = Trang b� AB random/nhan1000",
"Nh�n m�c [2000] L� C� ��t Bi�t = 1 B� ��nh Qu�c/nhan2000",
"Dung �i�m ��i l�y v�t ph�m./thuyenrong_doidiem",

"Tho�t./no")
end

function nhan1500()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(490) < 3500 then
		Talk(1,"","B�n ch�a �� M�c nh�n !")
	return
	end
	if GetTask(899) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [3500] r�i m�, mu�n nh�n n�a ah ?")
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
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [3500] S� Ki�n L� C� Chi�n Th�ng nh�n ���c Trang b� An Bang Random ")
end


function nhan200()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(489) < 500 then
		Talk(1,"","B�n ch�a �� M�c nh�n !")
	return
	end
	if GetTask(997) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [500] r�i m�, mu�n nh�n n�a ah ?")
	return
	end
	for i = 1,5 do
		AddEventItem(410)
	end
	SetTask(997,1)
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [500] S� Ki�n �ua Thuy�n R�ng nh�n ���c: <color=green>Tu Luy�n �an")
end

function nhan500()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(489) < 1500 then
		Talk(1,"","B�n ch�a �� M�c nh�n !")
	return
	end
	if GetTask(997) == 0 then
		Talk(1,"","Ng��i ch�a nh�n m�c ph�n th��ng [1500]!")
	return
	end
	if GetTask(997) >= 2 then
		Talk(1,"","Ng��i �� nh�n m�c [1500] r�i m�, mu�n nh�n n�a ah ?")
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
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [1500] S� Ki�n �ua Thuy�n R�ng nh�n ���c: <color=green>Trang b� An Bang Random")
end

function nhan1000()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(489) < 1000 then
		Talk(1,"","B�n ch�a �� M�c nh�n !")
	return
	end
	-- if GetTask(997) == 1 or GetTask(997) == 0 then
		-- Talk(1,"","Ng��i ch�a nh�n m�c ph�n th��ng [500] v� [1500]!")
	-- return
	-- end
	if GetTask(997) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [1000] r�i m�, mu�n nh�n n�a ah ?")
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
	
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [2500] S� Ki�n L� C� Chi�n Th�ng  nh�n ���c: <color=green>Trang b� An Bang Ramdom")
end

function nhan2000()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
	end
	if GetTask(489) < 2000 then
		Talk(1,"","B�n hi�n t�i <color=yellow>"..GetTask(489).."<color>/2000 c�i ch�a �� �� nh�n ")
	return
	end
	-- if GetTask(997) == 1 or GetTask(997) == 0 then
		-- Talk(1,"","Ng��i ch�a nh�n m�c ph�n th��ng [500] v� [1500]!")
	-- return
	-- end
	if GetTask(998) >= 1 then
		Talk(1,"","Ng��i �� nh�n m�c [2000] r�i m�, mu�n nh�n n�a ah ?")
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
	
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng m�c [2500] S� Ki�n L� C� Chi�n Th�ng  nh�n ���c: <color=green>Trang b� An Bang Ramdom")
end

function muanhanh5()
Msg2Player("L� C� Chi�n Th�ng ( Th��ng ): M�nh C� 1 + M�nh C� 2 + M�nh C� 3 + M�nh C� 4 + 2 V�n L��ng") 
OpenStringBox(2,"Nh�p s� l��ng","chetao_thuyen")
end



function chetao_thuyen(num2)
num = tonumber(num2)
if num == 0 then
return
end
	cash = 20000
	soluong = 1
	if CheckFreeBoxItem(4,261,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
	return
	end
	if GetCash() < cash*num then
		Talk(1,"","B�n kh�ng �� "..cash*num.." l��ng !")
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
		Msg2Player("B�n nh�n ���c "..num.." L� C� Chi�n Th�ng")
		Talk(0,"")
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i") 
	end
end

function muanhanh3()
Msg2Player("L� C� Chi�n Th�ng ( ��t Bi�t ): M�nh C� 1 + M�nh C� 2 + M�nh C� 3 + M�nh C� 4 + H�p Kim Ch�") 
OpenStringBox(2,"Nh�p s� l��ng","chetao_thuyen1")
end


function chetao_thuyen1(num2)
num = tonumber(num2)
if num == 0 then
return
end
	soluong = 1
	if CheckFreeBoxItem(4,261,1,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
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
		Msg2Player("B�n nh�n ���c "..num.." L� C� Chi�n Th�ng ( ��t Bi�t )")
		Talk(0,"")
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i") 
	end
end



