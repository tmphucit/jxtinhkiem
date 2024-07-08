Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsachtop60.lua")
Include("\\script\\danhsachtop80.lua")
Include("\\script\\monphai.lua")


function main()
SayNew("<color=green>H� Tr� T�n Th� <color>: Ch�o "..GetName()..", ng��i c�n ta gi�p g� ?",6,
"Nh�n h� tr� t�n th� /nhanhotrotanthu",
--"Nh�n h� tr� B� Kip 90 /nhanphanthuonglevel",
"Nh�n V� Kh� C� B�n /nhanvk",
"��i m�u luy�n c�ng /doimau",
"H�c khinh c�ng/hockhinhcong",
"��i Gi�i T�nh /doigioitinh",
"Tho�t./no")
end


function nhantuimauvip()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
if GetTask(927) ~= 0 then
Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end

SetTask(927,1)
itemidx = AddEventItem(911)
SetBindItem(itemidx,1)
Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(itemidx).."")	
end


function hockhinhcong()
if HaveMagic(210) <= 0 then
	AddMagic(210,1)
	Talk(1,"","B�n �� h�c k� n�ng Khinh C�ng")
else
Talk(1,"","B�n �� h�c k� n�ng n�y r�!")
	end
end

function nhanphanthuonglevel()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

task = 944

if GetTask(task) < 6 then
Talk(1,"","B�n kh�ng �� �i�u ki�n nh�n ph�n th��ng B� Kip 90 !")
return
end

if GetTask(task) == 0 then
	if GetLevel() >= 1 then
		SetTask(task,1)
		
		
		itemidx = AddEventItem(911)
		SetBindItem(itemidx,1)

		idxitem = AddEventItem(696)
		SetBindItem(idxitem, 1)
		
		ngay = ngay + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]	
			if (thang == 12) then
				thang = 0
				nam = nam + 1
			end
			thang = thang + 1	
		end	
		
		SetHSD(idxitem, 2000+nam , thang, ngay, gio )	
		Msg2Player("Nh�n ph�n th��ng ��t c�p 1: <color=yellow>Th�n H�nh Ph� [3 ng�y], C�u Nguy�n Th�ch [3 ng�y]")
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 1")
	end
elseif GetTask(task) == 1 then
	if GetLevel() >= 20 then
		SetTask(task , 2)
		Msg2Player("Nh�n ph�n th��ng ��t c�p 20: ")
		idxitem = AddItem(0,10,random(0,4),1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 20")
	end
elseif GetTask(task) == 2 then
	if GetLevel() >= 30 then
		SetTask(task , 3)
		Msg2Player("Nh�n ph�n th��ng ��t c�p 30: ")
		idxitem = AddItem(0,5,4,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,4,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 30")
	end	
elseif GetTask(task) == 3 then
	if GetLevel() >= 40 then
		SetTask(task , 4)
		Msg2Player("Nh�n ph�n th��ng ��t c�p 40: ")
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
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 40")
	end	
elseif GetTask(task) == 4 then
	if GetLevel() >= 50 then
		SetTask(task , 5)
		Msg2Player("Nh�n ph�n th��ng ��t c�p 50: ")
		idxitem = AddItem(0,6,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")				
		idxitem = AddItem(0,8,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 50")
	end	
elseif GetTask(task) == 5 then
	if GetLevel() >= 60 then
		SetTask(task , 6)
		Msg2Player("Nh�n ph�n th��ng ��t c�p 60: ")
		idxitem = AddItem(0,3,1,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
		idxitem = AddItem(0,10,random(0,4),9,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("<color=yellow>- "..GetNameItemBox(idxitem).."")		
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 60")
	end	
elseif GetTask(task) == 6 then
	if GetLevel() >= 80 then
		nhanhotrobikip()
	else
		Talk(1,"","��ng c�p nh�n ph�n th��ng ti�p theo: <color=yellow>C�p 80")
	end	
else
	Talk(1,"","Ng��i �� nh�n h�t to�n b� h� tr� c�a m�y ch� Ph�t S�n")
end	
end

function hotronnh()
if GetTask(929) > 0 then
Talk(1,"","Ng��i �� nh�n h� tr� r�i, kh�ng th� nh�n th�m !")
return
end
if GetLevel() < 80 then
Talk(1,"","��ng c�p kh�ng �� 80, kh�ng th� nh�n !")
return
end
SetTask(929, 1)
SetTask(173, GetTask(173) + 24*60*60*18)
end
function taytuymienphi()
if GetLevel() < 50 then
Talk(1,"","��ng c�p kh�ng �� 50, kh�ng th� nh�n !")
return
end
if GetTask(928) ~= 0 then
Talk(1,"","Ng��i �� nh�n t�y t�y r�i, kh�ng th� nh�n th�m !")
return
end

SayNew("B�n ch� c� 1 l�n t�y t�y mi�n ph�, b�n c� ch�c ch�n mu�n s� d�ng kh�ng?",2,
"T�i ��ng � t�y t�y /taytuymienphi2",
"Tho�t./no")
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
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(926) ~= 0 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m !")
return
end

if GetLevel() < 100 then
Talk(1,"","��ng c�p d��i 100 kh�ng th� nh�n ph�n th��ng !") 
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
Talk(1,"","C�c h� ch�a gia nh�p m�n ph�i, kh�ng th� nh�n !")
return
end
if GetTask(944) ~= 6 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
return
end
if monphai == 1 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"��t Ma �� Giang/bk_thieulam",
			"V� T��ng Tr�m /bk_thieulam",
			"Ho�n T�o Thi�n Qu�n/bk_thieulam",
			"Tho�t./no")
		elseif monphai == 2 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"Truy Tinh Tr�c Nguy�t/bk_thienvuong",
			"Truy Phong Quy�t/bk_thienvuong",
			"Ph� Thi�n tr�m/bk_thienvuong",
			"Tho�t./no")
		elseif monphai == 3 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",5,
			"B�o V� L� Hoa /bk_duongmon",
			"Nhi�p H�n Nguy�t �nh/bk_duongmon",
			"C�u Cung Phi Tinh /bk_duongmon",
			"Lo�n Ho�n K�ch /bk_duongmon",
			"Tho�t./no")
		elseif monphai == 4 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"�m Phong Th�c C�t /bk_ngudoc",
			"Huy�n �m Tr�m/bk_ngudoc",
			"�o�n C�n H� C�t/bk_ngudoc",
			"Tho�t./no")
		elseif monphai == 5 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"Phong S��ng To�I �nh /bk_ngamy",
			"Tam Nga T� Tuy�t /bk_ngamy",
			"Ph� �� Ch�ng Sinh /bk_ngamy",
			"Tho�t./no")	
		elseif monphai == 6 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"B�ng Tung V� �nh /bk_thuyyen",
			"B�ng T�m Ti�n T� /bk_thuyyen",
			"Tho�t./no")	
		elseif monphai == 7 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"Phi Long T�i Thi�n /bk_caibang",
			"Thi�n H� V� C�u /bk_caibang",
			"Tho�t./no")		
		elseif monphai == 8 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"Thi�n Ngo�i L�u Tinh /bk_thiennhan",
			"V�n Long K�ch/bk_thiennhan",
			"Nhi�p H�n Lo�n T�m/bk_thiennhan",
			"Tho�t./no")	
		elseif monphai == 9 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",3,
			"Thi�n ��a V� C�c /bk_vodang",
			"Nh�n Ki�m H�p Nh�t/bk_vodang",
			"Tho�t./no")	
		elseif monphai == 10 then
			SayNew("Vui l�ng ch�n Bi Kip mu�n nh�n:",4,
			"L�i ��ng C�u Thi�n /bk_conlon",
			"Ng�o Tuy�t Khi�u Phong/bk_conlon",
			"T�y Ti�n T� C�t/bk_conlon",
			"Tho�t./no")		
		end

end



function nhanhotrotanthu()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetLevel() < 90 then
				lv = GetLevel()
				for i=1,(90-lv) do AddOwnExp(1000000000) end
	
itemidx = AddItem(0,2,80,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,4,21,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,6,27,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,5,25,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,8,23,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,7,42,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,9,21,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,3,40,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,3,41,1,0,0,0)
SetTimeItem(itemidx,550324);
itemidx = AddItem(0,10,5,4,0,0,0)
SetTimeItem(itemidx,550324);

	itemidx = AddEventItem(911)
	SetBindItem(itemidx,1)

	idxitem = AddEventItem(696)
	SetBindItem(idxitem, 1)
		
		ngay = ngay + 3
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]	
			if (thang == 12) then
				thang = 0
				nam = nam + 1
			end
			thang = thang + 1	
		end	
		
		SetHSD(idxitem, 2000+nam , thang, ngay, gio )	
		
	


Msg2Player("B�n nh�n ���c Set Ho�ng Kim T�n Th� v� Ng�a ��ch L�, ��n Th� R�n �� h�y trang b� kh�a v�nh vi�n")
else
Talk(1,"","��ng c�p 90 tr� l�n kh�ng nh�n ���c h� tr� !")
end
end

function hoanganh_hotro()
SayNew("Test",7,
"Nh�n H� Tr� 130 nhanh /nhanhotronhanh",
"M� Shop B�n �� /moshop",
"Nh�n H� Tr� Test/nhanhotrotest",
"Trang b� xanh /nhantbxanh1",
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
if GetTask(103) < 45 then
Talk(1,"","Ng��i ch�a c� k� n�ng 90 trong ng��i, kh�ng th�  hack ��i th�nh")
return
end

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
function nhanlevel90()

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(486) == 0 then
		SetTask(486,1000)
		for p=1,(90-GetLevel()) do AddOwnExp(200000000) end
		idxitem = AddItem(0,5,4,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,4,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		
		idxitem = AddItem(0,2,29,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,7,14,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,9,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,8,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,6,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,3,2,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem =AddItem(0,3,1,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2Player("B�n nh�n ���c "..GetNameItemBox(idxitem).."")
		idxitem = AddItem(0,10,5,4,0,0,0)
		SetTimeItem(idxitem,550324);
		ngay = ngay + 7
		if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
			thang = thang + 1
		end
		SetHSD(idxitem, 2017 , thang, ngay, gio )
		Msg2Player("B�n nh�n ���c 1 ��ch L� 7 ng�y")
		
		itemidx = AddEventItem(264)
		SetBindItem(itemidx,1)
		SetHSD(itemidx, 2017 , thang, ngay, gio )
		Msg2SubWorld("Ch�o m�ng t�n th� m�i: <color=yellow>"..GetName().."")
else
	Talk(1,"","B�n �� nh�n ph�n th��ng h� tr�, kh�ng th� nh�n th�m ")
end
end


function tinhkiem_hotro2_3()
if GetTask(927) ~= 0 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m !")
return
end
if GetTask(925) ~= 9999 then
Talk(1,"","H� tr� ch� �p d�ng cho th�nh vi�n �ua top !")
return
end
if GetLevel() < 100 then
Talk(1,"","��ng c�p kh�ng �� 100, kh�ng th� nh�n !")
return
end
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
if GetItemCount2(264) > 0 then
Talk(1,"","B�n �� c� tui m�u VIP r�i, kh�ng th� nh�n th�m")
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
	Msg2Player("B�n nh�n ���c 1 [VIP] Th�a Ti�n M�t L� Bao")	
	Talk(0,"")

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

function nhapgiftcode()
if CheckFreeBoxItem(0,3,1,10) == 0 then
				Talk(1,"","H�nh trang kh�ng �� 6 x 6 �, vui l�ng ki�m tra l�i !")
				return
				end
				
				
OpenStringBox (2,"Nh�p Code" , "acceptcode1")
end

function acceptcode1(num2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
num = tonumber(num2)
if num < 111111 or num > 99999999 then
Talk(1,"","Ch� ���c nh�p M� Code t�: 111111 - 999999")
return
end
	if GetTask(333) > 0 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
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
	
	Msg2Player("B�n �� nh�p Gift Code th�nh c�ng !")
	Msg2SubWorld("Ch�o m�ng t�n th� m�i <color=yellow>"..GetName().."<color=red> gia nh�p c�ng ��ng V� L�m H�i �c")
else
Talk(1,"","Gift Code kh�ng h�p l� !")
end
end
mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}

function bk_thieulam(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 75)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thienvuong(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 78)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_duongmon(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 81)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_ngudoc(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 85)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end

function bk_ngamy(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 88)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thuyyen(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 91)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_caibang(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 93)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_thiennhan(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 95)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_vodang(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 98)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
else
	Talk(1,"","hack ha em")
end
end
function bk_conlon(nsel)
if GetTask(944) == 6 then
	SetTask(944, 7 )
	idx = AddEventItem(nsel + 100)
	SetBindItem(idx, 1)
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().." <color=red>�� nh�n ph�n th��ng m�c c�p 80: <color=yellow>"..GetNameItemBox(idx).."")
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
if GetAccount() == "" then
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
SayNew("Ch�n ch�c n�ng c�n h� tr� ",10,
"Hack Level /test_nhanlv",
"Hack ng�n l��ng /test_nhantien",
"Ho�n th�nh h�t nhi�m v� /hoanthanh",
"��i Th�nh B� Kip 90, 120/muadaithanh",
"Nh�n Set An Bang /test_nhanab",
"Nh�n Set Dinh Quoc /test_nhandq",
"Nhan TTK, VLMT /test_mattich",
"Nh�n t�y t�y mi�n ph� /nhantaytuy",
"Nh�n ng�a 80 /test_nhanngua",
"Tho�t./no")
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
"T�ng 10 level /testnhanlv1",
"Gi�m 10 Level /testnhanlv1",
"Tho�t./no")
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
		Msg2SubWorld("V� L�m H�i �c ch�o m�ng t�n th� m�i: <color=pink>"..GetName().."")
		Msg2Player("<color=yellow>H�y gia nh�p m�n ph�i v� b�t ��u l�m nhi�m v� m�n ph�i �� nh�n k� n�ng!")
else
	Talk(1,"","��ng c�p d��i 60 m�i c� th� nh�n H� Tr� T�n Th� !")
end
end
function doigioitinh()
SayNew("<color=green>H� Tr� T�n Th� <color>: �� ��i gi�i t�nh, b�n ti�u hao <color=yellow>100 Ti�n ��ng<color>, ng��i c� ch�c ch�n mu�n ��i gi�i t�nh kh�ng?",2,
"Ta ch�c ch�n mu�n ��i gi�i t�nh /doigioitinh1",
"Tho�t./no")
end

function doigioitinh1()
if GetItemCount(697) < 100 then
Talk(1,"","Ng��i kh�ng �� <color=yellow>100 Ti�n ��ng<color>, kh�ng th� ��i gi�i t�nh !")
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


sl = GetItemCount(697)
for k=1,100 do DelItem(697) end

if GetItemCount(697) == sl - 100 then
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
if GetAccount() == "" then
ReLoadScript("\\script\\hotrotanthu.lua")
ReLoadScript("\\script\\item\\questkey\\176.lua")
end
if GetAccount() == "" then
SetPK(10)
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