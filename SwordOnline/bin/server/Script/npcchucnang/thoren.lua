Include("\\Script\\global\\sourcejx49.lua");
Include("\\Script\\header\\taskid.lua");
Include("\\Script\\lib\\worldlibrary.lua");
Include("\\Script\\lib\\thuvien.lua");
-----------------------------------------------------�� FIX OK 10/03/2024--------------------------------------------------------
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function main()
	SayNew("<color=green>Th� r�n<color> H�y l�a ch�n 1 v� kh� ngang v�i s�c m�nh nh�: ",8,
	"Giao D�ch/binhthuong",
           --   "Ch� T�o Trang b� T�m/chetaodotim",
	"��i B� Ki�p 120/doibk12vlhoiuc",
	"Ch� t�o trang b� Ho�ng Kim /hoangkim_chetao",
	"Thay ��i Trang B� Xanh/thangcapxxx",
	"X� l� <trang b� xanh t�n h�i> /trangbitonhai",
	"H�y trang b� kh�a V�nh Vi�n /huytrangbi2",
	"Giao t�n th� ch��ng m�n /giaotinthu",
	"Tho�t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao()
SayNew("Ng��i c�n ch� t�o trang b� g�?",6,
"Ch� t�o An Bang /hoangkim_chetao1",
"Ch� t�o ��nh Qu�c /hoangkim_chetao1",
"T�i T�o L�i Trang B� HKMP /taitaohkmpok",
"Ch� t�o Ho�ng Kim M�n Ph�i B�ng Xu /ephkmpxu",
"Ch� t�o Ho�ng Kim M�n Ph�i B�ng V�n /ephkmptienvan",
"Tho�t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thangcapxxx()
SayNew("<color=green>Th� r�n<color> Ng��i c�n ta gi�p g�? ",4,
	"Th�ng C�p Trang B� Xanh/thangcap",
	"H� C�p Trang B� Xanh/hacap",
	"Thay ��i V� Kh� /thaydoivukhi123",
	"Tho�t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function huytrangbi2()
SayNew("<color=green>Th� r�n<color>: Ch�c n�ng n�y l� <color=red>X�a B� Trang B� <color> ch� kh�ng ph�i l� <color=yellow>M� Kh�a Trang B� <color>. N�u ��t item v�o s� m�t v�nh vi�n trang b� n�y v� kh�ng ph�c h�i !",2,
"Ta ��ng � h�y b� trang b� n�y /huytrangbi",
"Tho�t./no")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function trangbitonhai()
SayNew("B�n c� <color=red><trang b� t�n h�i><color> kh�ng? Mu�n s�a nh� th� n�o?",2,
"Ta mu�n s� d�ng Lam Th�y Tinh �� kh�i ph�c l�i /phuchoi_tonhai",
"Ta mu�n h�y trang b� n�y /huy_tonhai")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao1(nsel)
i = nsel + 1
if i == 1 then
	SayNew("Nguy�n li�u : 50 M�nh An Bang v� 10 An Bang Tinh Luy�n Th�ch t� l� 30% th�nh c�ng !!  ",5,
	"An Bang B�ng Tinh Th�ch H�ng Li�n /hoangkim_chetao_anbang",
	"An Bang C�c Hoa Th�ch Ch� Ho�n/hoangkim_chetao_anbang",
	"An Bang K� Huy�t Th�ch Gi�i Ch� /hoangkim_chetao_anbang",
	"An Bang �i�n Ho�ng Th�ch Ng�c B�i/hoangkim_chetao_anbang",
	"Tho�t./no")
elseif i == 2 then
	SayNew("Nguy�n li�u : 50 M�nh ��nh Qu�c v� 10 ��nh Qu�c Tinh Luy�n Th�ch t� l� 30% th�nh c�ng !!  ",6,
	"��nh Qu�c � Sa Ph�t Qu�n /hoangkim_chetao_dinhquoc",
	"��nh Qu�c Thanh Sa Tr��ng Sam/hoangkim_chetao_dinhquoc",
	"��nh Qu�c T� ��ng H� Uy�n/hoangkim_chetao_dinhquoc",
	"��nh Qu�c � ��ng Y�u ��i/hoangkim_chetao_dinhquoc",
	"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa/hoangkim_chetao_dinhquoc",
	"Tho�t./no")
else
	Talk(1,"","�ang c�p nh�t")
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function binhthuong()
w,x,y = GetWorldPos()
if w == 3 then
Sale(8)
elseif w == 15 then
Sale(10)
elseif w == 66 then
Sale(12)
elseif w == 9 then
Sale(14)
elseif w == 17 then
Sale(16)
elseif w == 53 then
Sale(10)
else
Talk(1,"","Hi�n t�i ta kh�ng m� c�a h�ng v� kh�, ng��i h�y �i th�nh th� kh�c �i nh� ")
end
end;
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function doibk12vlhoiuc()
OpenCheckItemBox("��i B� Ki�p 120","Nguy�n Li�u: 10 Lam Th�y Tinh\nTien: 200 v�n\nXu: 50 xu\nB� Ki�p 90 + T� L� tr�ng.","loaddulieubk12")
end

function loaddulieubk12()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)
if time > 1 then
Talk(1,"","Kh�ng th� ��i trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end

if GetCash() < 2000000 then
Talk(1,"","Kh�ng c� �� 200 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh�ng c� �� 10 Lam Th�y Tinh, kh�ng th� ch� t�o !")
return
end

if GetItemCountBox(75) == 0 and GetItemCountBox(76) == 0 and GetItemCountBox(77) == 0 and GetItemCountBox(78) == 0 and GetItemCountBox(79) == 0 and GetItemCountBox(80) == 0 and GetItemCountBox(81) == 0 and GetItemCountBox(82) == 0 and GetItemCountBox(83) == 0 and GetItemCountBox(84) == 0 and GetItemCountBox(85) == 0 and GetItemCountBox(86) == 0 and GetItemCountBox(87) == 0 and GetItemCountBox(88) == 0 and GetItemCountBox(89) == 0 and GetItemCountBox(90) == 0 and GetItemCountBox(91) == 0 and GetItemCountBox(92) == 0 and GetItemCountBox(93) == 0 and GetItemCountBox(94) == 0 and GetItemCountBox(95) == 0 and GetItemCountBox(96) == 0 and GetItemCountBox(97) == 0 and GetItemCountBox(98) == 0 and GetItemCountBox(99) == 0 and GetItemCountBox(100) == 0 and GetItemCountBox(101) == 0 and GetItemCountBox(102) == 0 then
Talk(1,"","Kh�ng c� B� Ki�p 9x , kh�ng th� ch� t�o ")
return
end

vang = 50
vang2 = 50

if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end

TimeBox("��i B� Ki�p 120",20,"doibk120nheae");
end

function doibk120nheae()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)

if time > 1 then
Talk(1,"","Kh�ng th� ��i trang b� kh�a ")
return
end

if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end
if GetCash() < 2000000 then
Talk(1,"","Kh�ng c� �� 200 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end

if GetItemCountBox(28) < 10 then
Talk(1,"","Kh�ng c� �� 10 Lam Th�y Tinh, kh�ng th� ch� t�o !")
return
end


if GetItemCountBox(75) == 0 and GetItemCountBox(76) == 0 and GetItemCountBox(77) == 0 and GetItemCountBox(78) == 0 and GetItemCountBox(79) == 0 and GetItemCountBox(80) == 0 and GetItemCountBox(81) == 0 and GetItemCountBox(82) == 0 and GetItemCountBox(83) == 0 and GetItemCountBox(84) == 0 and GetItemCountBox(85) == 0 and GetItemCountBox(86) == 0 and GetItemCountBox(87) == 0 and GetItemCountBox(88) == 0 and GetItemCountBox(89) == 0 and GetItemCountBox(90) == 0 and GetItemCountBox(91) == 0 and GetItemCountBox(92) == 0 and GetItemCountBox(93) == 0 and GetItemCountBox(94) == 0 and GetItemCountBox(95) == 0 and GetItemCountBox(96) == 0 and GetItemCountBox(97) == 0 and GetItemCountBox(98) == 0 and GetItemCountBox(99) == 0 and GetItemCountBox(100) == 0 and GetItemCountBox(101) == 0 and GetItemCountBox(102) == 0 then
Talk(1,"","Kh�ng c� Th�y Tinh, kh�ng th� ch� t�o ")
return
end

vang = 50
vang2 = 50
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end
nl5 = GetItemCountBox(75) + GetItemCountBox(76) + GetItemCountBox(77) + GetItemCountBox(78) + GetItemCountBox(79) + GetItemCountBox(80) + GetItemCountBox(81) + GetItemCountBox(82) + GetItemCountBox(83) + GetItemCountBox(84) + GetItemCountBox(85) + GetItemCountBox(86) + GetItemCountBox(87) + GetItemCountBox(88) + GetItemCountBox(89) + GetItemCountBox(90) + GetItemCountBox(91) + GetItemCountBox(92) + GetItemCountBox(93) + GetItemCountBox(94) + GetItemCountBox(95) + GetItemCountBox(96) + GetItemCountBox(97) + GetItemCountBox(98) + GetItemCountBox(99) + GetItemCountBox(100) + GetItemCountBox(101) + GetItemCountBox(102)

if nl5 > 0 and GetCash() >= 2000000 and GetItemCountBox(28) == 10 then
	xacsuat = random(1,100)
	if xacsuat < nl5*20 then
	Msg2Player("Th�nh C�ng: T� L�:  "..(nl5*20).."% ")
		Pay(2000000)
		for i=1,GetItemCountBox(75) do DelItemBox(75) end
		for i=1,GetItemCountBox(76) do DelItemBox(76) end
		for i=1,GetItemCountBox(77) do DelItemBox(77) end
		for i=1,GetItemCountBox(78) do DelItemBox(78) end
		for i=1,GetItemCountBox(79) do DelItemBox(79) end
		for i=1,GetItemCountBox(80) do DelItemBox(80) end
		for i=1,GetItemCountBox(81) do DelItemBox(81) end
		for i=1,GetItemCountBox(82) do DelItemBox(82) end
		for i=1,GetItemCountBox(83) do DelItemBox(83) end
		for i=1,GetItemCountBox(84) do DelItemBox(84) end
		for i=1,GetItemCountBox(85) do DelItemBox(85) end
		for i=1,GetItemCountBox(86) do DelItemBox(86) end
		for i=1,GetItemCountBox(87) do DelItemBox(87) end
		for i=1,GetItemCountBox(88) do DelItemBox(88) end
		for i=1,GetItemCountBox(89) do DelItemBox(89) end
		for i=1,GetItemCountBox(90) do DelItemBox(90) end
		for i=1,GetItemCountBox(91) do DelItemBox(91) end
		for i=1,GetItemCountBox(92) do DelItemBox(92) end
		for i=1,GetItemCountBox(93) do DelItemBox(93) end
		for i=1,GetItemCountBox(94) do DelItemBox(94) end
		for i=1,GetItemCountBox(95) do DelItemBox(95) end
		for i=1,GetItemCountBox(96) do DelItemBox(96) end
		for i=1,GetItemCountBox(97) do DelItemBox(97) end
		for i=1,GetItemCountBox(98) do DelItemBox(98) end
		for i=1,GetItemCountBox(99) do DelItemBox(99) end
		for i=1,GetItemCountBox(100) do DelItemBox(100) end
		for i=1,GetItemCountBox(101) do DelItemBox(101) end
		for i=1,GetItemCountBox(102) do DelItemBox(102) end
		for i=1,10 do DelItemBox(28) end
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddEventItem(19)
				Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().."<color> ��i th�nh c�ng <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiBK12.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
	else
	Msg2Player("Th�t B�i: T� L� : "..(nl5*20).."% ")
	    Pay(2000000)
		for i=1,GetItemCountBox(75) do DelItemBox(75) end
		for i=1,GetItemCountBox(76) do DelItemBox(76) end
		for i=1,GetItemCountBox(77) do DelItemBox(77) end
		for i=1,GetItemCountBox(78) do DelItemBox(78) end
		for i=1,GetItemCountBox(79) do DelItemBox(79) end
		for i=1,GetItemCountBox(80) do DelItemBox(80) end
		for i=1,GetItemCountBox(81) do DelItemBox(81) end
		for i=1,GetItemCountBox(82) do DelItemBox(82) end
		for i=1,GetItemCountBox(83) do DelItemBox(83) end
		for i=1,GetItemCountBox(84) do DelItemBox(84) end
		for i=1,GetItemCountBox(85) do DelItemBox(85) end
		for i=1,GetItemCountBox(86) do DelItemBox(86) end
		for i=1,GetItemCountBox(87) do DelItemBox(87) end
		for i=1,GetItemCountBox(88) do DelItemBox(88) end
		for i=1,GetItemCountBox(89) do DelItemBox(89) end
		for i=1,GetItemCountBox(90) do DelItemBox(90) end
		for i=1,GetItemCountBox(91) do DelItemBox(91) end
		for i=1,GetItemCountBox(92) do DelItemBox(92) end
		for i=1,GetItemCountBox(93) do DelItemBox(93) end
		for i=1,GetItemCountBox(94) do DelItemBox(94) end
		for i=1,GetItemCountBox(95) do DelItemBox(95) end
		for i=1,GetItemCountBox(96) do DelItemBox(96) end
		for i=1,GetItemCountBox(97) do DelItemBox(97) end
		for i=1,GetItemCountBox(98) do DelItemBox(98) end
		for i=1,GetItemCountBox(99) do DelItemBox(99) end
		for i=1,GetItemCountBox(100) do DelItemBox(100) end
		for i=1,GetItemCountBox(101) do DelItemBox(101) end
		for i=1,GetItemCountBox(102) do DelItemBox(102) end
		for i=1,10 do DelItemBox(28) end
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
		Msg2SubWorld("Xin chia bu�n c�ng "..GetName().." �� ��i th�t b�i <color=green> B� Ki�p 120 ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/DoiBK12.txt", "a");
				if LoginLog then
				write(LoginLog,"That Bai: ["..GetNameItemBox(itemidx).."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)
	end
else
	Talk(1,"","Trang b� ��t v�o kh�ng h�p l�, vui l�ng ki�m tra l�i")
end	
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao_anbang(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
i = nsel + 1
idmanh = 0
idtinhthach = 664
if i == 1 then
	idmanh = 283
elseif i == 2 then
	idmanh = 284
elseif i == 3 then
	idmanh = 285
elseif i == 4 then
	idmanh = 286
end

if idmanh == 0 then
Talk(1,"","L�i nh�n d�ng idmanh, li�n h� admin �� x� l� !")
return
           end
		sl1 = GetItemCount(idmanh)
		
		if sl1 < 50 then
		Talk(1,"","B�n kh�ng mang �� 50 M�nh An Bang trong h�nh trang, kh�ng th� ch� t�o !")
		return
		end
		sl2 = GetItemCount(idtinhthach)
		
		if sl2 == 0 then
		Talk(1,"","B�n kh�ng mang An Bang Tinh Th�ch trong h�nh trang, kh�ng th� ch� t�o !")
		return
		end
		sl2 = 1
		xacsuat = 20
		
		for k=1,1 do DelItem(idtinhthach) end -- M�t Tinh Th�ch ��a v�o
		
		sx = RandomNew(1,100)
		if sx <= xacsuat then
				for k=1,50 do DelItem(idmanh) end
				if i == 1 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,4,3,random(1,7),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,4,3,2,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 2 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,3,3,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,3,3,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 3 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,3,4,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,3,4,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				elseif i == 4 then
					sx2 = random(1,3)
					if sx2 == 2 then
						idxitem = AddItem(0,9,3,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					else
						idxitem = AddItem(0,9,3,1,0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
					end
				end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"Thanh Cong: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
		else
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"That bai: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
				Talk(2,"","<color=red>Xin chia bu�n ! Qu� tr�nh ch� t�o th�t b�i.... X�c su�t: "..xacsuat.."%","B�n b� m�t  An Bang Tinh Th�ch")
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hoangkim_chetao_dinhquoc(nsel)
if CheckFreeBoxItem(0,10,5,1) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng 2 x 3 �, vui l�ng ki�m tra l�i")
	return
	end
	
i = nsel + 1

idmanh = 0
idtinhthach = 665
if i == 1 then
	idmanh = 287
elseif i == 2 then
	idmanh = 288
elseif i == 3 then
	idmanh = 289
elseif i == 4 then
	idmanh = 290
elseif i == 5 then
	idmanh = 291
end

if idmanh == 0 then
Talk(1,"","L�i nh�n d�ng idmanh, li�n h� admin �� x� l� !")
return
             end
		sl1 = GetItemCount(idmanh)
		if sl1 < 50 then
		Talk(1,"","B�n kh�ng mang �� 50 M�nh ��nh Qu�c trong h�nh trang, kh�ng th� ch� t�o !")
		return
		end

		sl2 = GetItemCount(idtinhthach)
		
		if sl2 == 0 then
		Talk(1,"","B�n kh�ng mang ��nh Qu�c Tinh Th�ch trong h�nh trang, kh�ng th� ch� t�o !")
		return
		end

		sl2 = 1
		xacsuat = 25
		
		for k=1,1 do DelItem(idtinhthach) end -- M�t Tinh Th�ch ��a v�o
		sx = RandomNew(1,100)
		if sx <= xacsuat then
				for k=1,50 do DelItem(idmanh) end
				if i == 1 then
						idxitem = AddItem(0,7,15,random(5,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 2 then
						idxitem = AddItem(0,2,30,random(5,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 3 then
						idxitem = AddItem(0,8,3,random(5,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 4 then
						idxitem = AddItem(0,6,3,random(5,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
				elseif i == 5 then
						idxitem = AddItem(0,5,5,random(5,10),0,0,0)
						Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." ch� t�o th�nh c�ng trang b�: <color=pink>"..GetNameItemBox(idxitem).."")
				end
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"Thanh Cong: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
		else
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/CheTaoHoangKim.txt", "a");
				if LoginLog then
				write(LoginLog,"That bai: ID: ["..idmanh.."] - Xac Suat: ["..xacsuat.."] - Name: ["..GetName().."] - Acc: ["..GetAccount().."] - Time: ["..thoigian.."] \n");
				end
				closefile(LoginLog)
				Talk(2,"","<color=red>Xin chia bu�n ! Qu� tr�nh ch� t�o th�t b�i.... X�c su�t: "..xacsuat.."%","B�n b� m�t ��nh Qu�c Tinh Th�ch")
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function taitaohkmpok()
OpenCheckItemBox("T�i T�o HKMP","��t trang b� HKMP c�n t�i t�o \nC�n 1 Vi�n Th�y Tinh\nC�n 1 Vi�n �� T�i T�o\n200 xu ph� r�n ","okhoantaitaohkmp")
end
function okhoantaitaohkmp()
itemidx = GetIdxItemBoxUpdateItem3()
time = GetTimeItemIdx(itemidx)
if time > 1 then
Talk(1,"","Kh�ng th� t�i t�o trang b� kh�a ")
return
end
if idxitem == -1 then
Talk(1,"","S� l��ng v�t ph�m v��t qu� 1 trang b� ")
Msg2Player("L�i: S� l��ng v��t qu� 1 trang b� ")
return
end
	a = GetGenreItem(itemidx)
	b = GetDetailTypeItem(itemidx)
	c = GetParticularItem(itemidx)		
	d = GetLevelItem(itemidx)
check = 0	
if a == 0 and ((b == 2 and c == 49 and d == 10) or (b == 0 and c == 0 and d == 70) or (b == 0 and c == 1 and d == 70) or (b == 0 and c == 2 and d == 70) or (b == 0 and c == 3 and d == 70) or (b == 0 and c == 4 and d == 70) or (b == 0 and c == 5 and d == 70) or (b == 0 and c == 0 and d == 130) or (b == 0 and c == 1 and d == 130) or (b == 0 and c == 2 and d == 130) or (b == 0 and c == 3 and d == 130) or (b == 0 and c == 1 and d == 160) or (b == 0 and c == 0 and d == 180) or (b == 0 and c == 1 and d == 180) or (b == 0 and c == 1 and d == 190) or (b == 1 and c == 1 and d == 30) or (b == 1 and c == 0 and d == 50) or (b == 1 and c == 2 and d == 40) or (b == 8 and c == 15 and d == 10) or (b == 9 and c == 16 and d == 10) or (b == 2 and c == 33 and d == 10) or (b == 7 and c == 19 and d == 10) or (b == 7 and c == 24 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 2 and c == 33 and d == 10) or (b == 2 and c == 34 and d == 10) or (b == 2 and c == 35 and d == 10) or
 (b == 2 and c == 36 and d == 10) or (b == 2 and c == 37 and d == 10) or (b == 2 and c == 38 and d == 10) or (b == 2 and c == 39 and d == 10) or (b == 2 and c == 40 and d == 10) or (b == 2 and c == 41 and d == 10) or (b == 2 and c == 42 and d == 10) or (b == 2 and c == 43 and d == 10) or (b == 2 and c == 44 and d == 10) or (b == 2 and c == 45 and d == 10) or (b == 2 and c == 46 and d == 10) or (b == 2 and c == 47 and d == 10) or (b == 2 and c == 48 and d == 10) or (b == 2 and c == 49 and d == 10) or (b == 7 and c == 16 and d == 10) or (b == 7 and c == 17 and d == 10) or (b == 7 and c == 18 and d == 10) or (b == 7 and c == 19 and d == 10) or (b == 7 and c == 20 and d == 10) or (b == 7 and c == 21 and d == 10) or (b == 7 and c == 22 and d == 10) or (b == 7 and c == 23 and d == 10) or (b == 7 and c == 24 and d == 10) or (b == 7 and c == 25 and d == 10) or (b == 7 and c == 26 and d == 10) or (b == 6 and c == 4 and d == 10) or (b == 6 and c == 5 and d == 10) or (b == 6 and c == 6 and d == 10) or
 (b == 6 and c == 7 and d == 10) or (b == 6 and c == 8 and d == 10) or (b == 6 and c == 9 and d == 10) or (b == 6 and c == 10 and d == 10) or (b == 6 and c == 11 and d == 10) or (b == 6 and c == 12 and d == 10) or (b == 6 and c == 13 and d == 10) or (b == 6 and c == 14 and d == 10) or (b == 6 and c == 15 and d == 10) or (b == 6 and c == 16 and d == 10) or (b == 6 and c == 17 and d == 10) or (b == 6 and c == 18 and d == 10) or (b == 6 and c == 19 and d == 10) or (b == 6 and c == 20 and d == 10) or (b == 6 and c == 21 and d == 10) or (b == 6 and c == 22 and d == 10) or (b == 6 and c == 23 and d == 10) or (b == 5 and c == 6 and d == 10) or (b == 5 and c == 7 and d == 10) or (b == 5 and c == 8 and d == 10) or (b == 5 and c == 9 and d == 10) or (b == 5 and c == 10 and d == 10) or (b == 5 and c == 11 and d == 10) or (b == 5 and c == 12 and d == 10) or (b == 5 and c == 13 and d == 10) or (b == 5 and c == 14 and d == 10) or (b == 5 and c == 15 and d == 10) or (b == 5 and c == 16 and d == 10) or
 (b == 5 and c == 17 and d == 10) or (b == 5 and c == 18 and d == 10) or (b == 5 and c == 19 and d == 10)  or (b == 8 and c == 4 and d == 10) or (b == 8 and c == 5 and d == 10) or (b == 8 and c == 6 and d == 10) or (b == 8 and c == 7 and d == 10) or (b == 8 and c == 8 and d == 10) or (b == 8 and c == 9 and d == 10) or (b == 8 and c == 10 and d == 10) or (b == 8 and c == 11 and d == 10) or (b == 8 and c == 12 and d == 10) or (b == 8 and c == 13 and d == 10) or (b == 8 and c == 14 and d == 10) or (b == 8 and c == 15 and d == 10) or (b == 8 and c == 16 and d == 10) or (b == 8 and c == 17 and d == 10) or (b == 8 and c == 18 and d == 10) or (b == 8 and c == 19 and d == 10)    or (b == 9 and c == 6 and d == 10) or (b == 9 and c == 7 and d == 10) or (b == 9 and c == 8 and d == 10) or (b == 9 and c == 9 and d == 10) or (b == 9 and c == 10 and d == 10) or (b == 9 and c == 11 and d == 10) or (b == 9 and c == 12 and d == 10) or (b == 9 and c == 13 and d == 10) or (b == 9 and c == 14 and d == 10) or 
(b == 9 and c == 15 and d == 10) or (b == 9 and c == 16 and d == 10) or (b == 3 and c == 7 and d == 10) or (b == 3 and c == 8 and d == 10) or (b == 3 and c == 9 and d == 10) or (b == 3 and c == 10 and d == 10) or (b == 3 and c == 11 and d == 10) or (b == 3 and c == 12 and d == 10) or (b == 3 and c == 13 and d == 10) or (b == 3 and c == 14 and d == 10) or (b == 3 and c == 15 and d == 10) or (b == 3 and c == 16 and d == 10) or (b == 3 and c == 17 and d == 10) or (b == 3 and c == 18 and d == 10) or (b == 3 and c == 19 and d == 10) or (b == 3 and c == 20 and d == 10) or (b == 3 and c == 21 and d == 10) or (b == 3 and c == 22 and d == 10) or (b == 3 and c == 23 and d == 10) or (b == 3 and c == 24 and d == 10) or (b == 3 and c == 25 and d == 10) or (b == 3 and c == 26 and d == 10) or (b == 3 and c == 27 and d == 10) or (b == 3 and c == 28 and d == 10) or (b == 4 and c == 6 and d == 10) or (b == 4 and c == 7 and d == 10) or (b == 4 and c == 8 and d == 10) or (b == 4 and c == 9 and d == 10) or
 (b == 4 and c == 10 and d == 10) or (b == 4 and c == 11 and d == 10) or (b == 4 and c == 12 and d == 10) or (b == 4 and c == 13 and d == 10) or (b == 4 and c == 14 and d == 10) or (b == 4 and c == 15 and d == 10) or (b == 4 and c == 16 and d == 10)) then
	check = 1
end
if check == 0 then
Talk(1,"","Trang b� b�n ��t v�o kh�ng ph�i trang b� HKMP, kh�ng th� t�i t�o")
return
end
if GetItemCountBox(28) < 1 and GetItemCountBox(29) < 1 and GetItemCountBox(30) < 1 then
Talk(1,"","Kh�ng c� Th�y Tinh, kh�ng th� ch� t�o ")
return
end	
if GetItemCountBox(415) < 1 then
Talk(1,"","B�n kh�ng mang �� 1 vi�n �� T�i T�o, kh�ng th� t�i t�o")
return
end	
vang = 200
vang2 = 200
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","B�n kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end	
		DelEquipIdx(itemidx)
		DelItemBox(415)
                            DelItemBox(28)
                            DelItemBox(29)
		DelItemBox(30)
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� t�i t�o ")
		if GetIdxItemBoxUpdateItem() == 0 then
				idxitem = AddItem(a,b,c,d,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." t�i t�o th�nh c�ng trang b�: <color=yellow>"..GetNameItemBox(idxitem).." ")
				thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/TaiTaoHKMP.txt", "a");
				if LoginLog then
				write(LoginLog,"["..GetNameItemBox(idxitem).."] "..GetAccount().." - "..GetName().." \n");
				end
				closefile(LoginLog)
		end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function ephkmpxu()
OpenCheckItemBox("Ch� T�o Ho�ng Kim M�n Ph�i","6 M�nh Ho�ng Kim \n�� Ph� Ho�ng Kim \nB� Ki�p 9x (x�c ��nh trang b�) \nTh�y Tinh = T� L� %\n500 Xu ph� r�n.","xacnhanephkmpxu")
end
function xacnhanephkmpxu()
num = 0
demsoluong = 0
if GetItemCountBox(243) ~= 1 then
Talk(1,"","Kh�ng c� �� Ph� HKMP, kh�ng th� ch� t�o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh�ng c� Th�y Tinh, kh�ng th� ch� t�o ")
return
end
vang = 500
vang2 = 500
if GetTask(XU_VANG) < vang and GetTask(XU_VANG2) < vang2 then
Talk(1,"","Ng��i kh�ng mang �� <color=yellow>"..vang2.."<color> Xu !")
return
end
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end
if demsoluong == 0 then
Talk(1,"","Kh�ng �� �i�u ki�n �p ho�ng kim m�n ph�i")
return
end
if demsoluong == 1 then
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	a = GetItemCountBox(manghkmp[k][6])
	b = GetItemCountBox(manghkmp[k][6] + 1)
	c = GetItemCountBox(manghkmp[k][6] + 2)
	d = GetItemCountBox(manghkmp[k][6] + 3)
	e = GetItemCountBox(manghkmp[k][6] + 4)
	f = GetItemCountBox(manghkmp[k][6] + 5)
	mattich = checkmattich(manghkmp[k][7])
	nl1 = GetItemCountBox(mattich)
	nl2 = GetItemCountBox(243)
	nl3 = vang2
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and vang2 >= 200 then
		xacsuat = random(1,90)
		if xacsuat < (nl5*5-10) then
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		SetTask(XU_VANG,GetTask(XU_VANG) - vang)
		SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
		Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 then
			inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
			AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
			Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			num = 1
			Talk(0,"")
			break;
		else
			Talk(1,"","Hack ha em")
		end
		else
			inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					DelItemBox(manghkmp[k][6]) 		
					DelItemBox(manghkmp[k][6] + 1)
					DelItemBox(manghkmp[k][6] + 2)
					DelItemBox(manghkmp[k][6] + 3)
					DelItemBox(manghkmp[k][6] + 4)
					DelItemBox(manghkmp[k][6] + 5)
					DelItemBox(mattich)
					DelItemBox(243)
					DelItemBox(manghkmp[k][7])
					SetTask(XU_VANG,GetTask(XU_VANG) - vang)
					SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
					Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + �� Ph� Ho�ng Kim + 500 Xu !")
			Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
					
		end
	else
		Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
	end	
end
end
else
	xs = random(1,2)
	for k=1,getn(manghkmp) do
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	num = num + 1
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	Msg2Player(" Item :"..num.." -  "..xs.." ")
	if num == xs then
		a = GetItemCountBox(manghkmp[k][6])
		b = GetItemCountBox(manghkmp[k][6] + 1)
		c = GetItemCountBox(manghkmp[k][6] + 2)
		d = GetItemCountBox(manghkmp[k][6] + 3)
		e = GetItemCountBox(manghkmp[k][6] + 4)
		f = GetItemCountBox(manghkmp[k][6] + 5)
		mattich = checkmattich(manghkmp[k][7])
		nl1 = GetItemCountBox(mattich)
		nl2 = GetItemCountBox(243)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1  and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and vang2 >= 200 then
				xacsuat = random(1,90)
				if xacsuat < nl5*5 then
				--Msg2Player("Th�nh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
				SetTask(XU_VANG,GetTask(XU_VANG) - vang)
				SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
				Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 then
					inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
					Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			
				Talk(0,"")
				break;
			
				else
				Talk(1,"","Hack ha em")
				end
				else
				inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("Th�t B�i: "..(nl5*5).."% ")
					DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
					SetTask(XU_VANG,GetTask(XU_VANG) - vang)
					SetTask(XU_VANG2,GetTask(XU_VANG2) - vang2)
					Msg2Player(" B�n s� d�ng  <color=yellow>"..vang2.."<color> Xu �� n�ng c�p ")
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + �� Ph� Ho�ng Kim + 500 Xu !")
					Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")
				end
			else
				Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
			end	
		end
	end
	end
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function ephkmptienvan()
OpenCheckItemBox("Ch� T�o Ho�ng Kim M�n Ph�i","6 M�nh Ho�ng Kim\n�� Ph� Ho�ng Kim\nB� Ki�p 9x (x�c ��nh trang b�) \nTh�y Tinh = T� L� %\n3000 v�n ph� r�n ","xacnhanephkmp")
end
function xacnhanephkmp()
num = 0
demsoluong = 0
if GetItemCountBox(243) ~= 1 then
Talk(1,"","Kh�ng c� �� Ph� HKMP, kh�ng th� ch� t�o !")
return
end
if GetItemCountBox(28) == 0 and GetItemCountBox(29) == 0 and GetItemCountBox(30) == 0 then
Talk(1,"","Kh�ng c� Th�y Tinh, kh�ng th� ch� t�o ")
return
end
if GetCash() < 30000000 then
Talk(1,"","Kh�ng c� �� 3000 v�n trong h�nh trang, kh�ng th� ch� t�o !")
return
end
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	demsoluong = demsoluong + 1
end
end
if demsoluong == 0 then
Talk(1,"","Kh�ng �� �i�u ki�n �p ho�ng kim m�n ph�i")
return
end

if demsoluong == 1 then
for k=1,getn(manghkmp) do
if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	a = GetItemCountBox(manghkmp[k][6])
	b = GetItemCountBox(manghkmp[k][6] + 1)
	c = GetItemCountBox(manghkmp[k][6] + 2)
	d = GetItemCountBox(manghkmp[k][6] + 3)
	e = GetItemCountBox(manghkmp[k][6] + 4)
	f = GetItemCountBox(manghkmp[k][6] + 5)
	mattich = checkmattich(manghkmp[k][7])
	nl1 = GetItemCountBox(mattich)
	nl2 = GetItemCountBox(243)
	nl3 = GetCash()
	nl4 = GetItemCountBox(manghkmp[k][7])
	nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and GetCash() >= 20000000 then
		xacsuat = random(1,110)
		if xacsuat < (nl5*5-10) then
		--Msg2Player("Th�nh Cong: "..(nl5*5).."% ")
		DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		Pay(30000000)
		for i=1,GetItemCountBox(28) do DelItemBox(28) end
		for i=1,GetItemCountBox(29) do DelItemBox(29) end
		for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
		if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 and GetCash() == nl3 - 30000000 then
			inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
			AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
			Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			num = 1
			Talk(0,"")
			break;
		else
			Talk(1,"","Hack ha em")
		end
		else
			inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("Th�t B�i: "..(nl5*5).."% ")
					DelItemBox(manghkmp[k][6]) 		
		DelItemBox(manghkmp[k][6] + 1)
		DelItemBox(manghkmp[k][6] + 2)
		DelItemBox(manghkmp[k][6] + 3)
		DelItemBox(manghkmp[k][6] + 4)
		DelItemBox(manghkmp[k][6] + 5)
		DelItemBox(mattich)
		DelItemBox(243)
		DelItemBox(manghkmp[k][7])
		Pay(30000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + �� Ph� HK + 3000 v�n l��ng !")
			Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
					
		end
	else
		Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
	end	
end
end
else
	xs = random(1,2)
	
	for k=1,getn(manghkmp) do
	if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][7]) == 1 then
	num = num + 1
	if CheckFreeBoxItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5]) == 0 then
	Talk(1,"","H�nh trang kh�ng �� ch� tr�ng �� ch� t�o trang b� <color=yellow>"..manghkmp[k][1].." ")
	return
	end
	Msg2Player(" Item :"..num.." -  "..xs.." ")
	if num == xs then
		a = GetItemCountBox(manghkmp[k][6])
		b = GetItemCountBox(manghkmp[k][6] + 1)
		c = GetItemCountBox(manghkmp[k][6] + 2)
		d = GetItemCountBox(manghkmp[k][6] + 3)
		e = GetItemCountBox(manghkmp[k][6] + 4)
		f = GetItemCountBox(manghkmp[k][6] + 5)
		mattich = checkmattich(manghkmp[k][7])
		nl1 = GetItemCountBox(mattich)
		nl2 = GetItemCountBox(243)
		nl3 = GetCash()
		nl4 = GetItemCountBox(manghkmp[k][7])
		nl5 = GetItemCountBox(28) + GetItemCountBox(29) + GetItemCountBox(30)
			if GetItemCountBox(manghkmp[k][6]) == 1 and GetItemCountBox(manghkmp[k][6] + 1) == 1 and GetItemCountBox(manghkmp[k][6] + 2) == 1 and GetItemCountBox(manghkmp[k][6] + 3) == 1 and GetItemCountBox(manghkmp[k][6] + 4) == 1 and GetItemCountBox(manghkmp[k][6] + 5) == 1  and GetItemCountBox(manghkmp[k][7]) == 1 and GetItemCountBox(243) == 1 and nl5 > 0 and GetCash() >= 20000000 then
				xacsuat = random(1,110)
				if xacsuat < nl5*5 then
				--Msg2Player("Th�nh Cong: "..(nl5*5).."% ")
				DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
				Pay(30000000)
				for i=1,GetItemCountBox(28) do DelItemBox(28) end
				for i=1,GetItemCountBox(29) do DelItemBox(29) end
				for i=1,GetItemCountBox(30) do DelItemBox(30) end
	
				if GetItemCountBox(manghkmp[k][6]) == a - 1 and GetItemCountBox(manghkmp[k][6] + 1) == b - 1 and GetItemCountBox(manghkmp[k][6] + 2) == c - 1 and GetItemCountBox(manghkmp[k][6] + 3) == d - 1 and GetItemCountBox(manghkmp[k][6] + 4) == e - 1 and GetItemCountBox(manghkmp[k][6] + 5) == f - 1  and GetItemCountBox(manghkmp[k][7]) == nl4 - 1 and GetItemCountBox(243) == nl2 - 1 and GetCash() == nl3 - 20000000 then
					inloghkmp("Thanh Cong HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
					AddItem(manghkmp[k][2],manghkmp[k][3],manghkmp[k][4],manghkmp[k][5],0,0,0)
					Msg2SubWorld("Ch�c m�ng <color=green>"..GetName().." <color=red>ch� t�o th�nh c�ng trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")	
			
				Talk(0,"")
				break;
			
				else
				Talk(1,"","Hack ha em")
				end
				else
				inloghkmp("That Bai HKMP: "..GetAccount().." - "..GetName().." - "..(nl5*5).."% - "..manghkmp[k][1].." ")
				--Msg2Player("Th�t B�i: "..(nl5*5).."% ")
					DelItemBox(manghkmp[k][6]) 		
				DelItemBox(manghkmp[k][6] + 1)
				DelItemBox(manghkmp[k][6] + 2)
				DelItemBox(manghkmp[k][6] + 3)
				DelItemBox(manghkmp[k][6] + 4)
				DelItemBox(manghkmp[k][6] + 5)
				DelItemBox(mattich)
				DelItemBox(243)
				DelItemBox(manghkmp[k][7])
					Pay(30000000)
					for i=1,GetItemCountBox(28) do DelItemBox(28) end
					for i=1,GetItemCountBox(29) do DelItemBox(29) end
					for i=1,GetItemCountBox(30) do DelItemBox(30) end
					Talk(1,"","<color=red>Ch� t�o th�t b�i, b�n m�t h�t Th�y Tinh + Huy�n Tinh + 3000 v�n l��ng !")
					Msg2SubWorld("Xin chia bu�n c�ng <color=green>"..GetName().." <color=red>ch� t�o th�t b�i trang b� ho�ng kim m�n ph�i <color=yellow>["..manghkmp[k][1].."]")
				end
			else
				Talk(1,"","Kh�ng �� nguy�n li�u ��t v�o, vui l�ng ki�m tra l�i !")
			end	
		end
	end
	end
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
manghkmp = {
-- Day Chuyen
{"Ng� Long Chi�n Th�n Phi Qu�i Gi�p",0,4,6,10,225,80},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",0,4,7,10,225,84},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",0,4,8,10,225,81},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",0,4,9,10,225,87},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",0,4,10,10,225,90},
{"B�ch H�i Ho�n Ch�u V� Li�n",0,4,11,10,225,92},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",0,4,12,10,225,97},
{"Ma Th� Ma Ph� T�m Li�n",0,4,13,10,225,95},
{"C�p Phong Tam Thanh Ph� ",0,4,14,10,225,99},
{"V� �o Ky B�n Ph� Ch� ",0,4,15,10,225,102},
{"L�i Khung Thi�n ��a H� Ph� ",0,4,16,10,225,100},

-- Nhan
{"T� Kh�ng Gi�i Lu�t Ph�p Gi�i",0,3,7,10,237,76},
{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",0,3,8,10,237,77},
{"Ng� Long Tuy�t M�nh Ch� Ho�n",0,3,9,10,237,80},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",0,3,10,10,237,84},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",0,3,11,10,237,81},
{"Ch� Ph��c U �o Ch� Ho�n",0,3,12,10,237,87},
{"Minh �o ��c Y�t Ch� Ho�n",0,3,13,10,237,86},
{"V� Gian B�ch Ng�c Ban Ch� ",0,3,14,10,237,89},
{"V� Ma B�ng Tinh Ch� Ho�n",0,3,15,10,237,88},
{"V� Tr�n Ph�t Quang Ch� Ho�n",0,3,16,10,237,90},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",0,3,17,10,237,90},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",0,3,18,10,237,91},
{"B�ch H�i Khi�n T� Ch� ho�n",0,3,37,10,237,92},
{"��ng C�u Ki�n Long Ban Ch� ",0,3,19,10,237,93},
{"��ch Kh�i Th�o Gian Th�ch Gi�i ",0,3,20,10,237,94},
{"Ma Th� Nghi�p H�a U Linh Gi�i",0,3,21,10,237,95},
{"Ma S�t V�n Long Th� Ch�u Gi�i",0,3,22,10,237,96},
{"C�p Phong Thanh T�ng Ph�p Gi�i",0,3,23,10,237,99},
{"L�ng Nh�c N� L�i Gi�i",0,3,24,10,237,98},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng Gi�i",0,3,25,10,237,98},
{"V� �o Th�c T�m Ch� Ho�n",0,3,26,10,237,102},
{"S��ng Tinh Phong B�o Ch� Ho�n",0,3,27,10,237,101},
{"L�i Khung C�u Thi�n D�n L�i Gi�i",0,3,28,10,237,100},

-- Ngoc Boi
{"M�ng Long Ph�t Ph�p Huy�n B�i",0,9,6,10,231,75},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",0,9,7,10,231,82},
{"S�m Ho�ng Huy�n Thi�t T��ng Ng�c B�i",0,9,8,10,231,83},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",0,9,9,10,231,90},
{"B�ch H�i H�ng L�ng Ba",0,9,10,10,231,92},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",0,9,11,10,231,95},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",0,9,12,10,231,99},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",0,9,13,10,231,98},
{"V� �o Thanh �nh Huy�n Ng�c B�i",0,9,14,10,231,102},
{"L�i Khung Linh Ng�c U�n L�i",0,9,15,10,231,100},
{"V� Ma T�y T��ng Ng�c Kh�u",0,9,16,10,231,88},

-- Bao Tay
{"T� Kh�ng Nhuy�n B� H� Uy�n",0,8,4,10,207,76},
{"K� Nghi�p H�a V�n K� L�n Th� ",0,8,5,10,207,78},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",0,8,6,10,207,79},
{"Ng� Long T�n Phong H� Uy�n",0,8,7,10,207,80},
{"��a Ph�ch Kh�u T�m Tr�c",0,8,8,10,207,84},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",0,8,9,10,207,81},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",0,8,10,10,207,87},
{"U Lung Ng�n Thi�n H� Uy�n",0,8,11,10,207,85},
{"Minh �o H� C�t H� Uy�n",0,8,12,10,207,86},
{"V� Gian C�m V�n H� Uy�n",0,8,13,10,207,89},
{"T� Ho�ng B�ng Tung C�m Uy�n",0,8,14,10,207,91},
{"��ng C�u Kh�ng Long H� Uy�n",0,8,15,10,207,93},
{"��ch Kh�i C�u T�ch B� H� Uy�n",0,8,16,10,207,94},
{"Ma Ho�ng Huy�t Y Th� Tr�c",0,8,17,10,207,97},
{"Ma S�t C� H�a L�u Thi�n Uy�n",0,8,18,10,207,96},
{"S��ng Tinh B�ng Tinh Thi�n Tinh Th�",0,8,19,10,207,101},

-- GIAY
{"M�ng Long ��t Ma T�ng H�i",0,5,6,10,219,75},
{"Ph�c Ma Ph� �� T�ng H�i",0,5,7,10,219,77},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",0,5,8,10,219,78},
{"H�m Thi�n Th�a Long Chi�n Ngoa",0,5,9,10,219,79},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",0,5,10,10,219,84},
{"B�ng H�n Nguy�t �nh Ngoa",0,5,11,10,219,82},
{"S�m Ho�ng Tinh V�n Phi L� ",0,5,12,10,219,83},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",0,5,13,10,219,87},
{"U Lung M�c Th� Nhuy�n L� ",0,5,14,10,219,85},
{"Minh �o Song Ho�n X� H�i",0,5,15,10,219,86},
{"V� Ma H�ng Truy Nhuy�n Th�p H�i",0,5,16,10,219,88},
{"Ma Ho�ng ��ng ��p Ngoa",0,5,17,10,219,97},
{"Ma Th� S�n H�i Phi H�ng L� ",0,5,18,10,219,95},
{"V� �o Tung Phong Tuy�t �nh Ngoa",0,5,19,10,219,102},

-- THAT LUNG
{"M�ng Long Huy�n Ti Ph�t ��i",0,6,4,10,213,75},
{"T� Kh�ng H� Ph�p Y�u ��i",0,6,5,10,213,76},
{"Ph�c Ma � Kim Nhuy�n �i�u",0,6,6,10,213,77},
{"K� Nghi�p B�ch H� V� Song Kh�u",0,6,7,10,213,78},
{"H�m Thi�n Uy V� Th�c Y�u ��i",0,6,8,10,213,79},
{"Ng� Long Thi�n M�n Th�c Y�u Ho�n",0,6,9,10,213,80},
{"B�ng H�n T�m Ti�n Y�u Kh�u",0,6,10,10,213,82},
{"S�m Ho�ng H�n Gi�o Y�u Th�c",0,6,11,10,213,83},
{"Thi�n Quang S�m La Th�c ��i",0,6,12,10,213,81},
{"U Lung Thanh Ng� Tri�n Y�u",0,6,13,10,213,85},
{"V� Gian Ph�t V�n Ti ��i",0,6,14,10,213,89},
{"T� Ho�ng B�ng Tuy�t B�ch V�n Th�c ��i",0,6,15,10,213,91},
{"B�ch H�i H�ng Linh Kim Ti ��i",0,6,16,10,213,92},
{"��ng C�u Ti�m Long Y�u ��i",0,6,17,10,213,93},
{"��ch Kh�i Truy�n M�ng Y�u ��i",0,6,18,10,213,94},
{"Ma Ho�ng Kh� C�c Th�c Y�u ��i",0,6,19,10,213,97},
{"Ma S�t X�ch K� T�a Y�u Kh�u",0,6,20,10,213,96},
{"C�p Phong Huy�n Ti Tam �o�n C�m",0,6,21,10,213,99},
{"S��ng Tinh Thanh Phong L� ��i",0,6,22,10,213,101},
{"L�i Khung Phong L�i Thanh C�m ��i",0,6,23,10,213,100},

-- NON
{"M�ng Long Ch�nh H�ng T�ng M�o",0,7,16,10,389,75},
{"��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n",0,7,17,10,389,84},
{"Ch� Ph��c Ph� Gi�p ��u Ho�n",0,7,18,10,389,87},
{"U Lung Kim X� Ph�t ��i",0,7,19,10,389,85},
{"V� Ma Ma Ni Qu�n",0,7,20,10,389,88},
{"V� Tr�n Ng�c N� T� T�m Qu�n",0,7,21,10,389,90},
{"��ng C�u Phi Long ��u Ho�n",0,7,22,10,389,93},
{"Ma Ho�ng Kim Gi�p Kh�i",0,7,23,10,389,97},
{"Ma Th� Li�t Di�m Qu�n Mi�n",0,7,24,10,389,95},
{"V� �o B�c Minh ��o Qu�n",0,7,25,10,389,102},
{"L�i Khung H�n Tung B�ng B�ch Qu�n",0,7,26,10,389,100},

-- AO GIAP

{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",0,2,33,10,395,75},
{"T� Kh�ng T� Kim C� Sa",0,2,34,10,395,76},
{"Phuc Ma Huy�n Ho�ng C� Sa",0,2,35,10,395,77},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",0,2,36,10,395,78},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",0,2,37,10,395,79},
{"B�ng H�n Huy�n Y  Th�c Gi�p",0,2,38,10,395,82},
{"S�m Ho�ng Kim Ti�n Li�n Ho�n Gi�p",0,2,39,10,395,83},
{"U Lung X�ch Y�t M�t Trang",0,2,40,10,395,85},
{"Minh �o U ��c �m Y",0,2,41,10,395,86},
{"V� Gian Thanh Phong Truy Y",0,2,42,10,395,89},
{"V� Ma T� Kh�m C� Sa",0,2,43,10,395,88},
{"T� Ho�ng T� T�m Khinh Sa Y",0,2,44,10,395,91},
{"��ng C�u Gi�ng Long C�i Y",0,2,45,10,395,93},
{"��ch Kh�i C�u ��i C�i Y",0,2,46,10,395,94},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",0,2,47,10,395,96},
{"L�ng Nh�c V� Ng� ��o B�o",0,2,48,10,395,98},
{"S��ng Tinh Ng�o S��ng ��o B�o",0,2,49,10,395,101},

-- VU KHI

{"V� Gian � Thi�n Ki�m",0,0,0,70,383,89},  -- nga mi 
{"T� Kh�ng Gi�ng Ma Gi�i �ao",0,0,1,70,383,76},  -- thieu lam
{"Ph�c Ma T� Kim C�n",0,0,2,70,383,77},  -- thieu lam
{"K� Nghi�p B�n L�i To�n Long Th��ng",0,0,3,70,383,78}, -- thien vuong
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",0,0,4,70,383,79},  -- thien vuong
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",0,0,5,70,383,92},  -- thuy yen
{"L�ng Nh�c Th�i C�c Ki�m",0,0,0,130,383,98},  --- vo dang
{"Ng� Long L��ng Ng�n B�o �ao",0,0,1,130,383,80},  -- thien vuong
{"��ch Kh�i L�c Ng�c Tr��ng",0,0,2,130,383,94},  -- cai bang
{"Ma S�t Qu� C�c U Minh Th��ng",0,0,3,130,383,96},  -- thien nhan 
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",0,0,1,160,383,101}, -- con lon 
{"C�p Phong Ch�n V� Ki�m",0,0,0,180,383,99},  -- vo dang 
{"Minh �o T� S�t ��c Nh�n",0,0,1,180,383,86}, -- ngu doc
{"T� Ho�ng Ph�ng Nghi �ao",0,0,1,190,383,91}, -- thuy yen
{"B�ng H�n ��n Ch� Phi �ao",0,1,1,30,383,82},  -- duong mon 
{"S�m Ho�ng Phi Tinh �o�t H�n",0,1,0,50,383,83},  -- duong mon
{"Thi�n Quang Hoa V� M�n Thi�n",0,1,2,40,383,81},  -- duong mon 
{"��ng C�u Kh�ng Long H� Uy�n",0,8,15,10,383,93}, -- cai bang
{"V� Ma T�y T��ng Ng�c Kh�u",0,9,16,10,383,88},  -- Nga mi 
{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",0,2,33,10,383,75}, -- thieu lam 
{"U Lung Kim X� Ph�t ��i",0,7,19,10,383,85},  -- ngu doc
{"Ma Th� Li�t Di�m Qu�n Mi�n",0,7,24,10,383,95}, -- thien nhan
{"L�i Khung H�n Tung B�ng B�ch Qu�n",0,7,26,10,383,100}, -- con lon 
}
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function checkmattich(num)
if num >= 75 and num <= 77 then
return 4 -- thieu lam
elseif num >= 78 and num <= 80 then
return 5
elseif num >= 81 and num <= 84 then
return 6
elseif num >= 85 and num <= 87 then
return 7
elseif num >= 88 and num <= 90 then
return 8
elseif num >= 91 and num <= 92 then
return 9
elseif num >= 93 and num <= 94 then
return 11
elseif num >= 95 and num <= 97 then
return 10
elseif num >= 98 and num <= 99 then
return 12
elseif num >= 100 and num <= 102 then
return 13
else
return 14
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thangcap()
OpenCheckItemBox("Th�ng C�p Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n T� Th�y Tinh v�o ","okhaha")
end

function okhaha()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n th�ng c�p v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end


if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u th�ng c�p!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u th�ng c�p ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n T� Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i T� Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� T� Th�y Tinh!")
return
end

	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang b� k�t h�n kh�ng th� th�ng c�p !")
		Talk(1,"","Trang b� k�t h�n kh�ng th� th�ng c�p !")
		return
	end

	if c < 1 or c >= 10 then
	Msg2Player("Trang b� c�a b�n ��t c�p t�i �a, kh�ng th� th�ng c�p")
	Talk(1,"","<color=red>L�i<color>: Kh�ng th� th�ng c�p trang b� c�p 10!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)

	sx = RandomNew(1,100)
	DelEquipItemQuestKey(29)
	
	xacsuatthem = 0
	if GetTask(485) >= 5 then
		xacsuatthem = 5 + GetTask(485)
	end
	sxtinh =100 - c*10 + xacsuatthem

	if sx < sxtinh or GetTask(THANGCAPXANH1) >= 10 then
		SetTask(THANGCAPXANH1,0)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] t� c�p "..c.." l�n c�p "..(c+1).." !")
		if c >= 7 then
			Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=red>] t� c�p "..c.." l�n c�p "..(c+1).." !")
			AddGlobalCountNews("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color>] �� th�ng c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color>] t� c�p "..c.." l�n c�p "..(c+1).." ! ",1)
		end
		--cuonghoa = GetCuongHoa(itemidx)
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(29) == 0 then
			idxitem = AddItemPrama(0,a,b,c+1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			--SetCuongHoa(idxitem, cuonghoa)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
	else
		inlogin("Thang cap That bai: "..GetAccount().." - "..GetName().." - "..sxtinh.."% ")
		Msg2Player("Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..sxtinh.."% ")
		Talk(1,"","Th�ng c�p trang b� th�t b�i, x�c su�t th�ng c�p: <color=yellow>"..sxtinh.."% ")
		SetTask(THANGCAPXANH1,GetTask(THANGCAPXANH1) + 5)
	end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function hacap()
OpenCheckItemBox("H� C�p Trang B�","H�y ��t 1 trang b� Xanh v� 1 vi�n L�c Th�y Tinh v�o ","okhahacap")
end

function okhahacap()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(30) -- Sua thanh Luc Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n th�ng c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n th�ng c�p v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end

if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u h� c�p v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u h� c�p!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u h� c�p ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n L�c Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i L�c Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� L�c Th�y Tinh!")
return
end
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	
	if (a == 2 and b == 28) then
		Msg2Player("Trang b� k�t h�n kh�ng th� h� c�p !")
		Talk(1,"","Trang b� k�t h�n kh�ng th� h� c�p !")
		return
	end

	if c <= 1 then
	Msg2Player("Trang b� c�a b�n hi�n t�i kh�ng th� h� c�p ���c n�a")
	Talk(1,"","<color=red>L�i<color>: Kh�ng th� h� c�p trang b� c�p 1!")
	return
	end

	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)
	DelEquipItemQuestKey(30) -- Sua thanh Luc Thuy Tinh

           Msg2Player("<color=yellow>Ch�c m�ng b�n �� h� c�p th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."<color=yellow>] t� c�p "..c.." xu�ng c�p "..(c-1).." !")
		DelEquipIdx(itemidx)
		if GetIdxItemBoxUpdateItem() == 0 and GetIdxItemBoxQuestKey(30) == 0 then
			idxitem = AddItemPrama(0,a,b,c-1,d,random41,Level411,Level412,Level413,Level414,Level415,Level416,1,mayman,8,2,0)
			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end	
               end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function thaydoivukhi123()
OpenCheckItemBox("Thay ��i V� Kh�","H�y ��t 1 V� Kh� Xanh + 1 T� Th�y Tinh v�o + 2 V�n L��ng ","okthaydoivk123")
end

function okthaydoivk123()
itemidx = GetIdxItemBoxUpdateItem()
numitem = GetIdxItemBoxQuestKey(29)

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u thay ��i trang b� v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u thay ��i trang b�!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u thay ��i trang b� ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n T� Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i T� Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� T� Th�y Tinh!")
return
end

if (itemidx == 0) then
Msg2Player("B�n ch�a ��t trang b� c�n thay ��i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a ��t trang b� c�n thay ��i v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end

if numitem < 1 then
Talk(1,"","Ng��i kh�ng mang �� 1 L�c Th�y Tinh trong h�nh trang, kh�ng th� thay ��i !")
return
end

if GetCash() < 50000 then
Talk(1,"","Thay ��i trang b� m�i l�n c�n 5 v�n !")
return
end
	tencu = GetNameItemBox(itemidx)
	a = GetDetailTypeItem(itemidx)
	b = GetParticularItem(itemidx)		
	c = GetLevelItem(itemidx)
	if a ~= 0 and a ~= 1 then
		Msg2Player("Ch� ���c thay ��i V� Kh�, vui l�ng ki�m tra l�i")
	return
	end    
		
	d = GetSeriItem(itemidx)
	
	lucky1 = GetEquipMagicLucky(itemidx,1)
	lucky2 = GetEquipMagicLucky(itemidx,2)
	lucky3 = GetEquipMagicLucky(itemidx,3)
	lucky4 = GetEquipMagicLucky(itemidx,4)
	lucky5 = GetEquipMagicLucky(itemidx,5)
	lucky6 = GetEquipMagicLucky(itemidx,6)
	
	Level411 = GetEquipMagicLevel(itemidx,1)
	Id411 = GetEquipMagicId(itemidx,1)
	Level412 = GetEquipMagicLevel(itemidx,2)
	Id412 = GetEquipMagicId(itemidx,2)
	Level413 = GetEquipMagicLevel(itemidx,3)
	Id413 = GetEquipMagicId(itemidx,3)
	Level414 = GetEquipMagicLevel(itemidx,4) 
	Id414 = GetEquipMagicId(itemidx,4)
	Level415 = GetEquipMagicLevel(itemidx,5)
	Id415 = GetEquipMagicId(itemidx,5)
	Level416 = GetEquipMagicLevel(itemidx,6)
	Id416 = GetEquipMagicId(itemidx,6)
	random41 = GetEquipMagicRandomSeed(itemidx)
	mayman = GetItemBoxLucky(itemidx)
	Pay(50000)
	cuonghoa = GetCuongHoa(itemidx)
	
		DelEquipIdx(itemidx)
		for i=1,1 do DelEquipItemQuestKey(29) end
		if GetIdxItemBoxUpdateItem() == 0 then
			idxitem = AddItem(0,a,b,c,d,random(6,10),random(6,10)) -- tra lai item opt gia tri tu 6 den 10 
			Msg2Player("Ch�c m�ng ��i hi�p [<color=yellow>"..GetName().."<color=red>] �� thay ��i Option v� kh� <color=yellow>"..tencu.." th�nh c�ng ")
			SetCuongHoa(idxitem, cuonghoa)

			inlogin("Thanh Cong: "..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.." ")
		else
			a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
			inlogin(""..GetAccount().." - "..GetName().." - ("..a..","..b..","..c..","..d..","..random41..","..Level411..","..Level412..","..Level413..","..Level414..","..Level415..","..Level416.." "..mayman.."")
			Talk(1,"","hack ha em")
		end
          end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function phuchoi_tonhai()
OpenCheckItemBox("Ph�c h�i  <trang b� t�n h�i>","H�y ��t 1 <trang b� t�n h�i> v� 1 vi�n Lam Th�y Tinh v�o ","okphuchoi_tonhai")
end
function okphuchoi_tonhai()
itemidx = GetIdxItemBoxUpdateItem4()
numitem = GetIdxItemBoxQuestKey(28) -- Sua thanh Lam Thuy Tinh

if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c d�ng v�o m�c ��ch Kh�m N�m")
return
end

if (itemidx == 0) then
Talk(1,"","<color=red>L�i<color>: Ch�a ��t <trang b� t�n h�i> v�o !")
return
end

if (itemidx == -1) then
Msg2Player("B�n kh�ng ��t v�o qu� 1 trang b� xanh !")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o nhi�u h�n 1 trang b� !")
return
end

if (itemidx == -2) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i trang b� xanh ")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i trang b� xanh !")
return
end

if (itemidx == -3) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i <trang b� t�n h�i>")
Talk(1,"","<color=red>L�i<color>: Trang b� ��t v�o kh�ng ph�i <trang b� t�n h�i>")
return
end

if (numitem == 0) then
Msg2Player("B�n ch�a ��t nguy�n li�u ph�c h�i v�o !")
Talk(1,"","<color=red>L�i<color>: Ch�a c� nguy�n li�u ph�c h�i!")
return
end

if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 nguy�n li�u ph�c h�i ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n Lam Th�y Tinh!")
return
end

if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i Lam Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� Lam Th�y Tinh!")
return
end
	DelEquipItemQuestKey(28) -- Sua thanh Lam Thuy Tinh
	SetDurationIdx(itemidx)
	Msg2Player("<color=yellow>Ch�c m�ng b�n �� ph�c h�i th�nh c�ng trang b� [<color=green>"..GetNameItemBox(itemidx).."!")
	
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function huy_tonhai()
OpenCheckItemBox("H�y <trang b� t�n h�i>","H�y ��t 1 <trang b� t�n h�i> v�o �� h�y b�","okhuy_tonhai")
end
function okhuy_tonhai()
idx = GetIdxItemBox3()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
elseif (idx == -3) then
Msg2Player("Trang b� ��t v�o kh�ng ph�i <color=yellow><trang b� t�n h�i>")
          else
	if (GetDurationIdx(idx) == 0) then
		ten = GetNameItemBox(idx)
		DelEquipIdx(idx)
		Talk(1,"","�� h�y trang b� th�nh c�ng trang b�  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytbth(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B�n �� h�y th�nh c�ng trang b� <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang b� ��t v�o kh�ng b� t�n h�i, kh�ng c�n ph�c h�i !")
	end
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function huytrangbi()
OpenCheckItemBox("H�y B� Trang B�","H�y ��t 1 trang b� Kh�a V�nh Vi�n V�o ","okhuytb")
end

function okhuytb()
idx = GetIdxItemBox2()
if (idx == -1) then
Msg2Player("Trong r��ng c� nhi�u h�n 1 v�t ph�m ")
elseif (idx == 0) then
Msg2Player("Trong r��ng kh�ng c� v�t ph�m n�o ")
elseif (idx == -2) then
Msg2Player("V�t ph�m ��t  v�o kh�ng ph�i l� trang b� ")
else
	if (GetTimeItemIdx(idx) == 550324) then
		ten = GetNameItemBox(idx)
		SetTimeItem(idx,0);
		DelEquipIdx(idx)
		Talk(1,"","�� h�y trang b� th�nh c�ng trang b�  <color=yellow>"..ten.." !")
		a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17 = GetPramaItemIdx(itemidx)
		inloghuytb(""..ten.." - TK: ["..GetAccount().."] - ["..GetName().."] - {"..a1..","..a2..","..a3..","..a4..","..a5..","..a6..","..a7..","..a8..","..a9..","..a10..","..a11..","..a12..","..a13..","..a14..","..a15..","..a16..","..a17.."},")	
		Msg2Player("B�n �� h�y th�nh c�ng trang b� <color=yellow>"..ten.." ")
	else	
		Talk(1,"","Trang b� ��t v�o kh�ng kh�a v�nh vi�n !")
	end
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function giaotinthu()
	if GetTask(NV_MONPHAI1) == 6 then
		SetTask(NV_MONPHAI1,7)
		Talk(1,"","<color=green>Th� R�n <color>: Ta �� nh�n ���c t�n th�, h�y n�i v�i Ch��ng M�n ng��i l� ta s� c� g�ng h�t s�c �� gi�p �� t� c�a ng��i !")
		Msg2Player("<color=green>Nhi�m v� M�n Ph�i: <color=red>H�y ��n g�p B�n Ng�a")
	end
Msg2Player("b�n kh�ng c� t�n th�...")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function inloghuytb(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiKhoaVinhVien.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inloghuytbth(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/HuyTrangBiTonHai.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - "..thoigian.." \n");
end
closefile(LoginLog)
end

function inloghkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/CheTaoHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogprhkmp(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/PhanRaHoangKimMonPhai.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end

function inlogin(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logchetao.txt", "a");
if LoginLog then
write(LoginLog,""..string.."\n");
end
closefile(LoginLog)
end
-----------=======================-------------------------====================----------------------
-----------=======================---------H�M N�Y �? D�NH SAU N�Y S�I TRANG S?C----------------====================----------------------
function luyenthanh()
OpenCheckItemBox("Luy�n Th�nh Huy�n Tinh","H�y ��t trang s�c v�o �� ��i th�nh Huy�n tinh 1 ","okluyenthanh")
end

function okluyenthanh()
numx = GetAllItemCountInCheckBox()
if numx == 0 then
Talk(1,"","Kh�ng ���c �� tr�ng !")
return
end

if CheckTrangSucInBox() == -1 then
Talk(1,"","C� v�t ph�m kh�ng thu�c Trang S�c trong r��ng !")
return
end

if CheckTrangSucInBox()  == -2 then
Talk(1,"","Kh�ng ���c �� trang b� ��nh trong r��ng !")
return
end

DeleteAllItemInCheckBox()

for i=1,numx do AddEventItem(44) end
Msg2Player("B�n nh�n ���c "..numx.." Huy�n Tinh 1")
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
manghk = {
{243,"�� Ph� V� Kh� Ho�ng Kim",189,"M�nh V� Kh� Ho�ng KIm","VU KHI"},
{244,"�� Ph� N�n Ho�ng Kim",195, "M�nh N�n Ho�ng Kim","NON"},
{245,"�� Ph� �o Gi�p Ho�ng Kim",201, "M�nh �o Gi�pHo�ng Kim","AO GIAP"},
{246,"�� Ph� Bao Tay Ho�ng Kim",207, "M�nh Bao Tay Ho�ng Kim","BAO TAY"},
{247,"�� Ph� Th�t L�ng Ho�ng Kim",213, "M�nh Th�t L�ng Ho�ng Kim","THAT LUNG"},
{248,"�� Ph� Gi�y Ho�ng Kim",219, "M�nh Gi�y Ho�ng Kim","GIAY"},
{250,"�� Ph� D�y Chuy�n Ho�ng Kim",225, "M�nh D�y Chuy�n Ho�ng Kim","DAY CHUYEN"},
{251,"�� Ph� Ng�c B�i Ho�ng Kim",231, "M�nh Ng�c B�i Ho�ng Kim","NGOC BOI"},
{252,"�� Ph� Nh�n Ho�ng Kim",237, "M�nh Nh�n Ho�ng Kim","NHAN"},
}
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------
function demtt()
num = 0
num = num + GetItemCountBox(28)
num = num + GetItemCountBox(29)
num = num + GetItemCountBox(30)
return num
end

function idthienthach()
if GetItemCountBox(61) == 1 then
return 1
elseif GetItemCountBox(62) == 1 then
return 2 
elseif GetItemCountBox(63) == 1 then
return 3
elseif GetItemCountBox(64) == 1 then
return 4 
elseif GetItemCountBox(65) == 1 then
return 5 
elseif GetItemCountBox(66) == 1 then
return 6 
else
return 0
end
end

function idmanh()
if GetItemCountBox(243) == 1 then
return 1
elseif GetItemCountBox(244) == 1 then
return 2
elseif GetItemCountBox(245) == 1 then
return 3
elseif GetItemCountBox(246) == 1 then
return 4
elseif GetItemCountBox(247) == 1 then
return 5
elseif GetItemCountBox(248) == 1 then
return 6
elseif GetItemCountBox(250) == 1 then
return 7
elseif GetItemCountBox(251) == 1 then
return 8
elseif GetItemCountBox(252) == 1 then
return 9
else
return 0
end
end
-----------=======================-------------------------====================----------------------
----------=========================ANHVIETDONGNAI=====================----------------------
-----------=======================-------------------------====================----------------------

function chetaodotim()
OpenPGBoxItem()
end



function no()
end

