Include("\\script\\monphai.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsach\\danhsachtop.lua")
Include("\\script\\danhsach\\code_1.lua")
Include("\\script\\danhsach\\code_2.lua")
--Include("\\script\\danhsach\\duatop100.lua")
Include("\\script\\admin\\monphai.lua")
Include("\\script\\admin\\shopktc.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\npcchucnang\\hotrotanthu.lua")
Include("\\Script\\Global\\sourcejx49.lua")
Include("\\script\\codeevent.lua")
Include("\\script\\codenew.lua")


function main()
if GetTask(906)  >= 111111 and GetTask(906) <= 555555 then
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
"Ta mu�n nh�n trang b� ph�n th��ng �ua Top /nhantrangbidhah",
"Tho�t./no")
elseif GetTask(906) >= 9000 and GetTask(906) <= 10000 then
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
"Ta mu�n nh�n trang b� Khuy�n M�i N�p Th� /nhantrangbikhuyenmai",
"Tho�t./no")
elseif GetTask(906) == 5468791 then
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
"Ta mu�n nh�n trang b� Thi�n Ho�ng /nhantrangbith",
"Tho�t./no")

elseif GetTask(906) == 11223344 then
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
"Ta mu�n nh�n ph�n th��ng Test T�ng Kim /testtongkim1",
"Tho�t./no")
elseif GetTask(906) == 44332211 then
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
"Ta mu�n nh�n ph�n th��ng Test T�ng Kim /testtongkim2",
"Tho�t./no")
else
--nhagiao_main()
SayNew("<color=green>L� Quan<color>: Hi�n t�i ta ch�a t� ch�c s� ki�n g�.",2,
--"S� Ki�n Thuy�n R�ng T�n Th� /thuyenrong_main",
--"S� ki�n Trung Thu /trungthu_main",
--"Nh�n ��n b� Server C� /phuchung_nhandenbu",
--"Ph�n Th��ng G�i N�p Th� /quockhanh_goinapthe",
--"Nh�n th��ng �ua Top/main_duatop",
--"Nh�n Ti�n Th�o L�, N� Nhi H�ng/nhanttl",
--"S� ki�n Gi� T� H�ng V��ng /gioto_main",
--"Nh�n ph�n th��ng Top Cao Th� /main_duatop_phuchung",
--"Nh�n ��n b� ��i H�i Anh H�ng /denbubt",
--"Nh�n ph�n th��ng �u ��i N�p Th� /nhannapthe",
--"Nh�n ��n b� kinh nghi�m c�p 90 /nhandenbu",
--"S� ki�n Nh� Gi�o Vi�t Nam /nhagiao_main",
--"Gi�ng Sinh An L�nh 2017 /giangsinh",
--"��ng K� T�n Th� 2 /dangkytanthu2",
--"S� Ki�n T�t Nguy�n ��n /tet_muavatpham",
--"Nh�n ph�n qu� U23 Vi�t Nam v�o Chung K�t /nhanqua",
"Nh�p Gift Code  /nhapseri",
"Nh�n TEST VIP ./nhanviptest",	
--"Nh�n th��ng ��n b� B�o Tr� Server/nhanthuongtrungthu1",
--"Nh�n th��ng �ua top c�p 120 /nhanthuongtop100",
--"Nh�n th��ng Top Cao Th� /main_duatop_phuchung",
--"S� ki�n Qu�c T� Thi�u Nhi /thieunhi_main_2021",
--"S� ki�n Gi�i Ph�ng Mi�n Nam 30-04 /giaiphong_main_2021",
--"Nh�n ph�n th��ng TOP /giaiphong_thuongtop",
--"Nh�n h� tr� nh�n ��i 6 gi� /nhanhotrox2",
--"Nh�n th��ng N�p Th� L�n ��u/nhanthuonglandau",
--"S� ki�n Qu�c T� Ph� N� 8-3/event83_main",
--"��n b� G�i T�n Th� /denbutt",
--"Nh�n ��n b� ��i H�i Anh H�ng/denbu_phuchung",
--"Nh�n th��ng N�p Th� L�n ��u /napthelandau",
--"��n b� Bi Kip 120 [TTK]/denbubk120",

--"Nh�n Gi�i B�n Ph�o H�a/nhangiaikk",
--"S� ki�n �u ��i N�p Th� /event_uudai",
--"S� ki�n Qu�c T� Ph� N� 8 th�ng 3 /phunu83",
"Tho�t./no")
end
end

function testtongkim1()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
		return
	end
	
if GetTask(906) == 11223344 then
	SetTask(906, 0)
	idxitem = AddItem(0,10,5,random(1,5),0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Code Alpha Test nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
else
	Talk(1,"","Hack ha em")
end
end
function testtongkim2()
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
		return
	end
	
if GetTask(906) == 44332211 then
	SetTask(906, 0)
	idxitem = AddEventItem(28)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(29)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(30)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(31)
	SetBindItem(idxitem , 1)
	Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng Code Alpha Test nh�n ���c <color=yellow>1 B� Th�y Tinh + Tinh H�ng B�o Th�ch")
else
	Talk(1,"","Hack ha em")
end
end
function nhanthuongtrungthu1()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if GetTask(994) == 6666 then
Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end
if GetLevel() < 80 then
Talk(1,"","��ng c�p kh�ng �� 80, kh�ng th� nh�n !")
return
end

if GetTask(994) == 0 then
		SetTask(994, 6666)	
		
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)		
		Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 6 Gi� ")
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/nhandenbu.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
else
	Talk(1,"","B�n �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end	
end

function nhanthuongtop100()
w,x,y = GetWorldPos()
if w ~= 17 then
Talk(1,"","Ph�n th��ng ch� nh�n ���c � Ph��ng T��ng ")
return
end

if GetLevel() < 120 then
Talk(1,"","��ng c�p d��i 120 kh�ng th� nh�n ph�n th��ng !")
return
end
if TOP100[1] ~= "" then
Talk(1,"","Ph�n th��ng TOP �� ���c ��i hi�p <color=yellow>"..TOP100[1].."<color> nh�n v�o l�c "..TOP100[3].."")
return
end

thoigian = tonumber(date("%H%M%d%m"))
TOP100[1] = GetName()
TOP100[2] = GetAccount()
TOP100[3] = thoigian
BANG = TaoBang(TOP100,"TOP100")
LuuBang("script/danhsach/duatop100.lua",BANG)

AddItem(0,10,6,1,0,0,0)
Msg2SubWorld("<color=pink>Ch�c m�ng ��i hi�p "..GetName().." �� nh�n th��ng c�p 120 ��u ti�n c�a server: 1 B�n Ti�u")
AddGlobalCountNews("Ch�c m�ng ��i hi�p "..GetName().." �� nh�n th��ng c�p 120 ��u ti�n c�a server: <color=yellow>1 B�n Ti�u",3)

end


function nhantrangbith()
if GetTask(906) == 5468791 then
	SetTask(906,0)
	
	
	ngay = tonumber(date("%d"))
	thang = tonumber(date("%m"))
	gio = tonumber(date("%H"))
	ngay = ngay + 3
	if ngay > mangthang[thang] then
		ngay = ngay - mangthang[thang]
		thang = thang + 1
	end
	
	item = RandomNew(1,9)
	if item == 1 then	
		idxitem = AddItem(0,4,19,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )	
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 2 then
		idxitem = AddItem(0,2,79,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 3 then
		idxitem = AddItem(0,5,24,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 4 then
		idxitem = AddItem(0,8,22,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 5 then
		idxitem = AddItem(0,7,41,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 6 then
		idxitem = AddItem(0,6,26,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 7 then
		idxitem = AddItem(0,9,19,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 8 then
		idxitem = AddItem(0,3,35,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	elseif item == 9 then
		idxitem = AddItem(0,3,36,1,0,0,0)
	SetHSD(idxitem, 2021 , thang, ngay, gio )
		Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
	end			
	
	
end
end

function nhantrangbidhah()
if GetTask(906) == 111111 then
	SetTask(906,0)
	
		idxitem = AddItem(0,4,3,6,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng �ua Top ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 222222 then
	SetTask(906,0)
	
		idxitem = AddItem(0,7,15,8,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng �ua Top ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 333333 then
	SetTask(906,0)
	
		idxitem = AddItem(0,2,32,2,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng �ua Top ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 444444 then
	SetTask(906,0)
	
		idxitem = AddItem(0,5,24,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng �ua Top ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 555555 then
	SetTask(906,0)
	
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng �ua Top ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		
		
end
end

function nhantrangbikhuyenmai()
if GetTask(906) == 9111 then
	SetTask(906,0)
	idxitem = AddItem(0,4,3,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9112 then
	SetTask(906,0)
	idxitem = AddItem(0,3,3,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9113 then
	SetTask(906,0)
	idxitem = AddItem(0,3,4,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9114 then
	SetTask(906,0)
	idxitem = AddItem(0,9,3,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9211 then
	SetTask(906,0)
	idxitem = AddItem(0,7,15,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9212 then
	SetTask(906,0)
	idxitem = AddItem(0,2,30,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9213 then
	SetTask(906,0)
	idxitem = AddItem(0,6,3,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9214 then
	SetTask(906,0)
	idxitem = AddItem(0,5,5,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9215 then
	SetTask(906,0)
	idxitem = AddItem(0,8,3,random(5,10),0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9311 then
	SetTask(906,0)
	idxitem = AddItem(0,9,4,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9411 then
	SetTask(906,0)
	idxitem = AddItem(0,2,32,2,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9511 then
	SetTask(906,0)
	idxitem = AddItem(0,4,19,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9512 then
	SetTask(906,0)
	idxitem = AddItem(0,2,79,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif GetTask(906) == 9513 then
	SetTask(906,0)
	idxitem = AddItem(0,5,24,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9514 then
	SetTask(906,0)
	idxitem = AddItem(0,8,22,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9515 then
	SetTask(906,0)
	idxitem = AddItem(0,7,41,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9516 then
	SetTask(906,0)
	idxitem = AddItem(0,6,26,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9517 then
	SetTask(906,0)
	idxitem = AddItem(0,9,19,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	elseif GetTask(906) == 9518 then
	SetTask(906,0)
		idxitem = AddItem(0,3,35,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
	elseif GetTask(906) == 9519 then
	SetTask(906,0)
	idxitem = AddItem(0,3,36,1,0,0,0)
	Msg2Player("Ch�c m�ng B�n nh�n ph�n th��ng N�p Th� ���c: <color=yellow>"..GetNameItemBox(idxitem).."")

	
	

end
end

function giaiphong_thuongtop()
if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
		return
end
vt = 0

for i=1,getn(GIAI_PHONG) do
		if GetAccount() == GIAI_PHONG[i][1] then
				vt = i
				break
		end
end

if vt == 0 then
	Talk(1,"","B�n kh�ng c� t�n trong danh s�ch nh�n th��ng !")
	return
end

if GIAI_PHONG[vt][2] ~= 0 then
Talk(1,"","B�n �� nh�n th��ng v�o l�c: "..GIAI_PHONG[vt][2]..", kh�ng th� nh�n th�m !")
return
end
thoigian = tonumber(date("%H%M%d%m"))
GIAI_PHONG[vt][2] = thoigian
BANG = TaoBang(GIAI_PHONG,"GIAI_PHONG")
LuuBang("script/dstopeventgiaiphong.lua",BANG)

if vt == 1 then
	idxitem = AddItem(0,4,3,4,0,0,0)
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th�ng B�o] <color=red>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..vt.." s� ki�n �ua Top B�c Th� G�i M�: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 2 then
	idxitem = AddItem(0,2,30,8,0,0,0)
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th�ng B�o] <color=red>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..vt.." s� ki�n �ua Top B�c Th� G�i M�: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 3 then
	idxitem = AddItem(0,2,32,2,0,0,0)
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th�ng B�o] <color=red>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..vt.." s� ki�n �ua Top B�c Th� G�i M�: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 4 then
idxitem = AddItem(0,10,5,5,0,0,0)
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th�ng B�o] <color=red>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..vt.." s� ki�n �ua Top B�c Th� G�i M�: <color=yellow>"..GetNameItemBox(idxitem).."")
elseif vt == 5 then
idxitem = AddItem(0,10,5,2,0,0,0)
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	Msg2SubWorld("<color=green>[Th�ng B�o] <color=red>Ch�c m�ng "..GetName().." �� nh�n th��ng TOP "..vt.." s� ki�n �ua Top B�c Th� G�i M�: <color=yellow>"..GetNameItemBox(idxitem).."")

end


end

function nhanhotrox2()
ngay = tonumber(date("%d"))
if GetLevel() < 85 then
	if GetTask(476) ~= ngay then
		SetTask(476, ngay)
		SetTask(172, GetTask(172) + 6*60*60*18)
		Talk(1,"","B�n �� nh�n th�nh c�ng <color=yellow>6 gi� nh�n ��i kinh nghi�m<color> h� tr� t�n th� !")
	else
		Talk(1,"","H�m nay ng��i �� nh�n 6 gi� nh�n ��i r�i, kh�ng th� nh�n th�m !")
	end
else
	Talk(1,"","��ng c�p 85 tr� l�n kh�ng th� nh�n h� tr� n�y !")
end
end

function nhanthuonglandau()
if GetTask(448) < 10000  then
if  GetTask(435) >= 50 then
SayNew("Vui l�ng ch�n trang b� mu�n nh�n: ",3,
"Set An Bang + Chi�u D� /nhanthuonglandau1",
"Set ��nh Qu�c + Chi�u D� /nhanthuonglandau1",
"Tho�t./no")
else
	Talk(1,"","T�ch l�y n�p th� ��t: "..GetTask(435).." / 50 v�ng")
end
elseif GetTask(448) < 20000  then
if  GetTask(435) >= 100 then
SayNew("Vui l�ng ch�n trang b� mu�n nh�n: ",3,
"Set An Bang Max Opt + Phi V�n /nhanthuonglandau1",
"Set ��nh Qu�c Max Opt + Phi V�n /nhanthuonglandau1",
"Tho�t./no")
else
	Talk(1,"","T�ch l�y n�p th� ��t: "..GetTask(435).." / 100 v�ng")
end
else
Talk(1,"","Ng��i �� nh�n �� ph�n th��ng n�p th� l�n ��u, kh�ng th� nh�n th�m")
end
end

function nhanthuonglandau1(nsel)
i = nsel + 1
if GetTask(448) >= 20000 then
Talk(1,"","B�n �� nh�n �� ph�n th��ng r�i, kh�ng th� nh�n th�m l�n n�a")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(448) < 10000 and GetTask(435) >= 50 then
	SetTask(448, 10000)
	if i == 1 then
		idxitem = AddItem(0,4,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,4,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,9,3,2,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng n�p th� l�n ��u: <color=yellow>Set An Bang + Chi�u D� Ng�c S� T�")
	else
		idxitem = AddItem(0,2,30,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,7,15,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,random(2,6),0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng n�p th� l�n ��u: <color=yellow>Set ��nh Qu�c + Chi�u D� Ng�c S� T�")
	end	
	thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NapTheLanDau.txt", "a");
				if LoginLog then
				write(LoginLog,"Lan 1 - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)

elseif GetTask(448) < 20000 and GetTask(435) >= 100 then
	SetTask(448, 20000)
	if i == 1 then
		idxitem = AddItem(0,4,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,3,4,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,9,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng n�p th� l�n ��u: <color=yellow>Set An Bang Max Opt + Phi V�n")
	else
		idxitem = AddItem(0,2,30,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,7,15,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,6,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,8,3,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,5,5,10,0,0,0)
		SetTimeItem(idxitem,550324);
		idxitem = AddItem(0,10,8,1,0,0,0)
		SetTimeItem(idxitem,550324);
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n th��ng n�p th� l�n ��u: <color=yellow>Set ��nh Qu�c Max Opt + Phi V�n")
	end	
	thoigian = tonumber(date("%H%M%d%m"))
				LoginLog = openfile("Data/ThoRen/NapTheLanDau.txt", "a");
				if LoginLog then
				write(LoginLog,"Lan 2 - ["..i.."] "..GetAccount().." - "..GetName().."\n");
				end
				closefile(LoginLog)

else
	Talk(1,"","Ng��i �� nh�n ��, kh�ng th� nh�n th�m")
end

end

function denbutt()
Talk(1,"","Ch�c n�ng s� c�p nh�t v�o 17h00 ng�y 20/03/2018")
end

function event83_main()
SayNew("<color=green>L� Quan<color>: S� ki�n Qu�c T� Ph� N� 8-3 b�t ��u v�o 17h00 ng�y 07/03/2018 - 17h00 ng�y 14/03/2018",7,
"Gh�p B� Hoa H�ng /event83_ghep",
"Mua B� Hoa H�ng [1 KNB]/event83_muabohohong",
"Gia h�n s� ki�n [2 KNB]/event83_giahan",
"Nh�n th��ng V�ng Quay May M�n /event83_nhanthuong",
"Mua V�ng Quay May M�n [10 KNB = 6  L�n]/event83_mua",
"Quay S� Tr�ng Th��ng /event83_quayso",
"Tho�t./no")
end



function event83_nhanthuong()
if GetTask(444) == 0 then
	if GetTask(446) >= 4000 then
		SetTask(444,1)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B�n nh�n ���c 1 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 4 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end
elseif GetTask(444) == 1 then
	if GetTask(446) >= 6000 then
		SetTask(444,2)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B�n nh�n ���c 1 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 6 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end
elseif GetTask(444) == 2 then
	if GetTask(446) >= 8000 then
		SetTask(444,3)
		SetTask(445, GetTask(445) + 1)
		Msg2Player("B�n nh�n ���c 1 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 8 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end	
elseif GetTask(444) == 3 then
	if GetTask(446) >= 10000 then
		SetTask(444,4)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B�n nh�n ���c 2 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 10 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end	

elseif GetTask(444) == 4 then
	if GetTask(446) >= 12000 then
		SetTask(444,5)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B�n nh�n ���c 2 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 12 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end		

elseif GetTask(444) == 5 then
	if GetTask(446) >= 16000 then
		SetTask(444,6)
		SetTask(445, GetTask(445) + 2)
		Msg2Player("B�n nh�n ���c 2 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 16 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end	

elseif GetTask(444) == 6 then
	if GetTask(446) >= 20000 then
		SetTask(444,7)
		SetTask(445, GetTask(445) + 3)
		Msg2Player("B�n nh�n ���c 3 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		Talk(1,"","B�n ch�a �� 20 t� kinh nghi�m, kh�ng th� nh�n th��ng")
	end		
else
Talk(1,"","B�n �� nh�n t�t c� ph�n th��ng m�c s� ki�n")
end
end
function event83_mua()
if GetItemCount(17) < 10 then
Talk(1,"","B�n kh�ng �� 10 Kim Nguy�n B�o, kh�ng th� mua V�ng Quay May M�n")
return
end
for p=1,10 do DelItem(17) end
SetTask(445, GetTask(445) + 6)
Msg2Player("B�n nh�n ���c 6 V�ng Quay May M�n. S� v�ng quay hi�n t�i l�: "..GetTask(445).." l�n quay")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MuaVongQuay10Kim.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetTask(445).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		
end

function event83_ghep()
slcu = GetItemCount(583)
for p=1,GetItemCount(582) do
	if GetItemCount(579) >= 1 and GetItemCount(580) >= 1 and GetItemCount(581) >= 1 and GetItemCount(582) >= 1 and GetCash() >= 30000 then
		Pay(30000)
		for t=579,582 do DelItem(t) end
		AddEventItem(583)
	end
end

Msg2Player("B�n nh�n ���c "..(GetItemCount(583)-slcu).." B� Hoa H�ng")
end

function event83_quayso()
if CheckFreeBoxItem(0,5,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng, xin ki�m tra l�i !")
return
end

if GetTask(445) <= 0 then
Talk(1,"","B�n kh�ng c�n l��t quay may m�n n�o, kh�ng th� s� d�ng ch�c n�ng n�y")
return
end

SetTask(445, GetTask(445) - 1)
Msg2Player("B�n �� s� d�ng 1 l�n Quay S�. S� l�n quay c�n l�i: "..GetTask(445).."")

sx = random(1,100)
if sx < 35 then
	idxitem = AddEventItem(random(28,31))
	Msg2Player("B�n nh�n ���c <color=blue>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
elseif sx >= 35 and sx < 70 then
	idxitem = AddEventItem(random(61,66))
	Msg2Player("B�n nh�n ���c <color=green>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
elseif sx >= 70 and sx < 80 then
	idxitem = AddEventItem(random(35,43))
	Msg2Player("B�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
else
	if GetTask(445) > 5 then
	AddEventItem(339)
	Msg2Player("Ch�c m�ng "..GetName().." Quay S� nh�n ���c <color=pink>M�nh Ng�a Phi�n V� ")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"[Manh Ngua Phien Vu] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	else
		idxitem = AddEventItem(random(28,31))
		Msg2Player("B�n nh�n ���c <color=blue>"..GetNameItemBox(idxitem).."")
			thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/QuaySo.txt", "a");
		if LoginLog then
		write(LoginLog,"["..GetNameItemBox(idxitem).."] ["..GetTask(445).."] - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	
	end
end	


end

function event83_muabohohong()
knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			for p=1,30 do
				AddEventItem(583)
			end
			Msg2Player("B�n nh�n ���c 30 B� Hoa H�ng")
				thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/BoHoaHong.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 1 Kim Nguy�n b�o �� mua v�t ph�m n�y")
	end
end
function event83_giahan()

if GetItemCount(17) < 2 then
Talk(1,"","Ng��i kh�ng mang theo 2 Kim Nguy�n B�o, kh�ng th� gia h�n")
return
end

if GetTask(447) >= 6 then
Talk(1,"","B�n �� ��t gia h�n t�i �a, kh�ng th� gia h�n th�m")
return
end
if GetTask(447) == 0 and GetTask(446) < 4000 then
Talk(1,"","Ng��i ch�a ��t �� gi�i h�n 4.000.000.000 kinh nghi�m, kh�ng th� gia h�n 1")
return
end
if GetTask(447) == 1 and GetTask(446) < 6000 then
Talk(1,"","Ng��i ch�a ��t �� gi�i h�n 6.000.000.000 kinh nghi�m, kh�ng th� gia h�n 1")
return
end
if GetTask(447) == 2 and GetTask(446) < 8000 then
Talk(1,"","Ng��i ch�a ��t �� gi�i h�n 8.000.000.000 kinh nghi�m, kh�ng th� gia h�n 1")
return
end
if GetTask(447) == 3 and GetTask(446) < 10000 then
Talk(1,"","Ng��i ch�a ��t �� gi�i h�n 10.000.000.000 kinh nghi�m, kh�ng th� gia h�n 1")
return
end

DelItem(17)
DelItem(17)

SetTask(447, GetTask(447) + 1)
Msg2Player("Ch�c m�ng b�n �� th�ng c�p S� Ki�n Qu�c T� Ph� N� 8-3 l�n: <color=pink>Gia H�n "..GetTask(447).."")
inlog5("Gia han "..GetTask(447).." - "..GetAccount().." - "..GetName().."")

end

function tet_muavatpham()
SayNew("<color=green>L� Quan<color>: Ng��i mu�n mua g� n�o? ",4,
"20 M�m B�c = 20 v�n l��ng /tet_muavatpham1",
"20 M�m V�ng = 10 v�ng /tet_muavatpham2",
"2 Ng� S�c B�ng Tinh = 20 v�ng/tet_muavatpham3", 
"Tho�t./no")
end

function tet_muavatpham1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetCash()
if GetCash() >= 200000 then
	Pay(200000)
	if GetCash() == vang - 200000 then
		for p=1,20 do AddEventItem(321) end
		Msg2Player("B�n nh�n ���c 20 M�m B�c")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MamBac20Van.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 20 v�n l��ng, kh�ng th� mua v�t ph�m n�y")
end
end

function tet_muavatpham2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,20 do AddEventItem(322) end
		Msg2Player("B�n nh�n ���c 20 M�m V�ng")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MamVang10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 10 v�ng, kh�ng th� mua v�t ph�m n�y")
end
end


function tet_muavatpham3()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 20 then
	SetTask(99 , GetTask(99) - 20)
	SetTask(101, GetTask(101) - 20)
	if GetTask(99) == vang - 20 and GetTask(101) == vang - 20 then
		for p=1,2 do AddEventItem(333) end
		Msg2Player("B�n nh�n ���c 2 Ng� S�c B�ng Tinh")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NguSac20Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 20 v�ng, kh�ng th� mua v�t ph�m n�y")
end
end

function napthelandau()
SayNew("<color=green>L� Quan<color>: V�ng t�ch l�y trong s� ki�n N�p Th� L�n ��u c�a ng��i hi�n t�i l�: <color=yellow>"..GetTask(461).." V�ng",6,
"G�i 1 [100 v�ng]/napthelandau2",
"G�i 2 [200 v�ng]/napthelandau2",
"G�i 3 [500 v�ng]/napthelandau2",
"G�i 4 [1500 v�ng]/napthelandau2",
"G�i 5 [3000 v�ng]/napthelandau2",
"Tho�t./no")
end

function napthelandau2(nsel)
i = nsel + 1
SetTaskTemp(1,i)
SayNew("<color=green>L� Quan<color>:  Ng��i c� ch�c ch�n mu�n nh�n <color=yellow>G�i "..i.." <color>kh�ng?\n L�u �: M�i nh�n v�t ch� ���c nh�n 1 g�i duy nh�t v� kh�ng th� giao d�ch ",2,
"Ta ch�c ch�n mu�n nh�n G�i "..i.." /napthelandau3",
"Tho�t./no")
end

function napthelandau3()
vt = GetTaskTemp(1)
if GetTask(467) == 88888 then
Talk(1,"","Ng��i �� nh�n qu� t�ng n�p th� l�n ��u, kh�ng th� nh�n th�m")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
gold = 0
if vt == 1 then
gold = 100
elseif vt == 2 then
gold = 200
elseif vt == 3 then
gold = 500
elseif vt == 4 then
gold = 1500
elseif vt == 5 then
gold = 3000
end

if gold ~= 0 then
	if GetTask(461) >= gold then
			if GetTask(467) ~= 88888 then
				SetTask(467,88888)
				if vt == 1 then
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng G�i 1 Khuy�n M�i N�p Th� L�n ��u")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 1] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 2 then
					idxitem = AddItem(0,10,5,2,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng G�i 2 Khuy�n M�i N�p Th� L�n ��u")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 2] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 3 then
					idxitem = AddItem(0,10,5,5,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng G�i 3 Khuy�n M�i N�p Th� L�n ��u")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 3] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")	
				elseif vt == 4 then
					idxitem = AddItem(0,10,8,1,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng G�i 4 Khuy�n M�i N�p Th� L�n ��u")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 4] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				elseif vt == 5 then
					idxitem = AddItem(0,10,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					idxitem = AddEventItem(251)
					SetBindItem(idxitem , 1)
					for p=1,4 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem , 1)
					end
					for p=1,2 do
						idxitem = AddEventItem(410)
						SetBindItem(idxitem , 1)
					end
					Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n th��ng G�i 5 Khuy�n M�i N�p Th� L�n ��u")
					thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/SuKien/NapThe.txt", "a");
					if LoginLog then
					write(LoginLog,"[GOI 5] "..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
					end
					closefile(LoginLog)
					Talk(0,"")
				end
			else
				Talk(1,"","hack ha em")
			end
	else
		Talk(1,"","Ng��i kh�ng ��t �i�u ki�n nh�n th��ng G�i "..vt..": <color=yellow>"..GetTask(461).." / "..gold.."")
	end
else
	Talk(1,"","hack ha em")
end
end

function denbu_phuchung()

if GetTask(464) ~= 2 then
Talk(1,"","Ng��i kh�ng ph�i nh�n v�t thu�c m�y ch� Huy�t Chi�n, kh�ng th� nh�n ��n b� ")
return
end

--if checkds() == 0 then
--	ttl = (GetTask(498) - 155) *  6
--	tld = GetTask(498) - 155
--	DEN_BU_PH[getn(DEN_BU_PH)+1] = {GetName(),GetAccount(),0,0,ttl,tld}
--	BANG2 = TaoBang(DEN_BU_PH,"DEN_BU_PH")
--	LuuBang("script/danhsachdenbuhuyetchien.lua",BANG2)
--	Msg2Player("C�p nh�t d� li�u th�nh c�ng")
	
	
--end

SayNew("<color=green>L� Quan: <color>Ng��i mu�n gi�p g� ?",3,
"R�t Ti�n Th�o L� 6 Gi� /denbu_phuchung1",
"R�t Tu Luy�n �an /denbu_phuchung1",
"Tho�t./no")
end


function denbu_phuchung1(nsel)

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

vt = checkds()
if vt == 0 then
Talk(1,"","L�i r�i, vui l�ng li�n h� Admin")
return
end
vtmin = 0
vtmax = 0
nameitem = ""
iditem = 0
if nsel == 0 then
vtmin = 3
vtmax = 5
nameitem = "Ti�n Th�o L� 6 Gi� "
iditem = 120
else
vtmin = 4
vtmax = 6
nameitem = "Tu Luy�n �an "
iditem = 410
end

--Msg2Player(""..vt.." "..vtmin.." "..vtmax.."")

if DEN_BU_PH[vt][vtmin] < DEN_BU_PH[vt][vtmax] then
	DEN_BU_PH[vt][vtmin] = DEN_BU_PH[vt][vtmin] + 1
	idxitem = AddEventItem(iditem)
	SetBindItem(idxitem , 1)
	Msg2Player("B�n nh�n ���c 1 <color=green>"..nameitem.."")
	Msg2Player("S� l��ng v�t ph�m �� r�t:<color=yellow> "..DEN_BU_PH[vt][vtmin].." / "..DEN_BU_PH[vt][vtmax].."")
	BANG2 = TaoBang(DEN_BU_PH,"DEN_BU_PH")
	LuuBang("script/danhsachdenbuhuyetchien.lua",BANG2)
	
else
	Talk(1,"","Ng��i �� r�t h�t "..DEN_BU_PH[vt][vtmin].." / "..DEN_BU_PH[vt][vtmax].." "..nameitem..", kh�ng th� r�t th�m n�a") 
end
end
function checkds()
for i=1,getn(DEN_BU_PH) do
	if GetName() == DEN_BU_PH[i][1] then
		return i
	end
end
return 0
end

function denbubk120()
if CheckFreeBoxItem(0,4,3,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 1 � m�i c� th� nh�n !")
	return
end
if GetTask(464) == 1 then
	SetTask(464, 11)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(19)
	SetBindItem(idxitem, 1)
	Msg2Player("B�n nh�n ���c 2 Bi Kip 120, h�y s� d�ng �� t�ng th�m 2 �i�m K� N�ng")
elseif GetTask(464) == 0 then
	Talk(1,"","Ng��i kh�ng ph�i l� gamer Tuy�t T�nh Ki�m, kh�ng th� nh�n")
else
	Talk(1,"","Ng��i �� nh�n ��n b� n�y r�i, kh�ng th� nh�n th�m")
end
end

function nhanqua()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(462) == 0 then
	SetTask(462, 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem, 1)
	idxitem = AddEventItem(410)
	SetBindItem(idxitem, 1)
	Msg2Player("B�n nh�n ���c 2 b�nh Ti�n Th�o L� 6 Gi� v� 1 B�nh Tu Luy�n �an")
else
	Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
end
end



function nhanhotrocapduoi100()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetLevel() < 100 then
	if GetTask(350) == 0 then
		SetTask(350, 9999)
		for p=1,5 do
			idxitem = AddEventItem(119)
			SetBindItem(idxitem , 1)
		end
		for p=1,5 do
			idxitem = AddEventItem(118)
			SetBindItem(idxitem , 1)
		end		
		Msg2Player("B�n nh�n ���c 5 b�nh Ti�n Th�o L� 3 Gi� ")
		Msg2Player("B�n nh�n ���c 5 b�nh N� Nhi H�ng 1 Gi� ")
	else
		Talk(1,"","Ng��i �� nh�n 1 l�n r�i, kh�ng th� nh�n th�m")
	end
else
	Talk(1,"","��ng c�p t� 100 tr� l�n kh�ng th� nh�n h� tr� ")
end
end
function dangkytanthu2()
if GetLevel() < 135 then
	SetTask(470,9999)
	SetRevPos(41)
	NewWorld(4, 202*8,200*16)
	Msg2SubWorld("Ch�c m�ng "..GetName().." �� ��ng k� th�nh c�ng S� Ki�n T�n Th� 2 ")
	Msg2Player("L�u �: C�p �� t� 135 tr� l�n kh�ng th� v�o l�i, c�p �� 145 t� ��ng Kick kh�i b�n �� t�n th� ")
else
	Talk(1,"","��ng c�p 135 tr� l�n, kh�ng th� ��ng k� ")
end
end

function nhangiaikk()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end


vitri = 0
for i=1,getn(KHUYEN_KHICH) do
	if GetName() == KHUYEN_KHICH[i][1] then
		vitri = i
		break
	end
end

if vitri == 0 then
Talk(1,"","Ng��i kh�ng c� t�n trong danh s�ch nh�n gi�i")
return
end

if KHUYEN_KHICH[vitri][2]  == 0 then
Talk(1,"","Ng��i �� nh�n gi�i n�y r�i, kh�ng th� nh�n th�m")
return
end
	if vitri == 1 then
		AddItem(0,10,6,1,0,0,0)
		for p=1,20 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng H�ng 1 - S� Ki�n Ph�o Hoa")
	elseif vitri == 2 then
		AddItem(0,10,6,1,0,0,0)
		for p=1,15 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng H�ng "..vitri.." - S� Ki�n Ph�o Hoa")
	elseif vitri == 3 then
		AddItem(0,10,8,1,0,0,0)
		for p=1,10 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng H�ng "..vitri.." - S� Ki�n Ph�o Hoa")
	elseif vitri >= 4 and vitri <= 10 then
		AddItem(0,10,5,5,0,0,0)
		for p=1,5 do
			AddEventItem(414)
			AddEventItem(415)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng H�ng "..vitri.." - S� Ki�n Ph�o Hoa")
	end
	KHUYEN_KHICH[vitri][2] = 0
	BANG2 = TaoBang(KHUYEN_KHICH,"KHUYEN_KHICH")
	LuuBang("script/danhsachphaohoa.lua",BANG2)
	
end

function nhandenbudaihoi()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

vitri = 0
for i=1,getn(DS_DEN_BU) do
	if GetName() == DS_DEN_BU[i][1] then
		vitri = i
		break
	end
end

if vitri == 0 then
Talk(1,"","Ng��i kh�ng c� t�n trong danh s�ch ��n b� ")
return
end

if DS_DEN_BU[vitri][2]  == 0 then


	if vitri <= 3 then
		Talk(1,"","Vui l�ng li�n h� H� Tr� Tr�c Tuy�n �� ph�t th��ng ri�ng do s� l��ng nh�n v�t v��t qu� s� l��ng r��ng ch�a �� ")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		SetTimeItem(idxitem,550324);
		for p=1,10 do
		AddEventItem(414)  
		AddEventItem(415)  
		end
	end

	DS_DEN_BU[vitri][2] = 1
	Msg2SubWorld("<color=yellow>"..GetName().." <color=red>�� nh�n th��ng TOP "..vitri.." Cao Th� t�i L� Quan")
	BANG2 = TaoBang(DS_DEN_BU,"DS_DEN_BU")
	LuuBang("script/global/danhsachdenbu2.lua",BANG2)
else
	Talk(1,"","Ng��i �� nh�n ��n b� r�i, kh�ng th� nh�n th�m")
end
end


function nhagiao_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
task = GetTask(479)
if GetTask(479) >= 5000000 and GetTask(479) < 5010000 then
	SetTask(479, GetTask(479) + 10000)
	if GetTask(479) == task +  10000 then
			sx = random(1,100)
			if sx < 70 then
				inlog5("NHAN MAX 1: "..GetAccount().." - "..GetName().."")
				for i=1,4 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>4 Ti�n Th�o L� 6 Gi� ")
				
			elseif sx >= 70 and sx < 95 then
				inlog5("NHAN MAX 2: "..GetAccount().." - "..GetName().."")
				for i=28,30 do 
					idxitem = AddEventItem(i)
					SetBindItem(idxitem , 1)
				end
				for i=1,6 do 
					idxitem = AddEventItem(31)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>1 B� THBT + 1 B� Th�y Tinh")
			elseif sx >= 95 and sx < 100 then
				inlog5("NHAN MAX 3: "..GetAccount().." - "..GetName().."")
				idxitem = AddEventItem(19)
				SetBindItem(idxitem , 1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>Bi Kip 120")
			else
				inlog5("NHAN MAX 4: "..GetAccount().." - "..GetName().."")
				idxitem = AddItem(0,10,5,5,0,0,0)
				SetTimeItem(idxitem,550324);
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>Chi�u D� Ng�c S� T� ")
			end
	else
		Talk(1,"","hack ha em")
	end	
else
	if GetTask(479) < 5000000 then
		Talk(1,"","B�n ch�a ��t ���c m�c Max S� Ki�n: <color=yellow>"..(GetTask(479)*1000).." / 5.000.000.000")
	else
		Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
	end
end
end

function nhagiao_main()
SayNew("<color=green>L� Quan<color>: S� ki�n Nh� Gi�o Vi�t Nam t� 0h00 ng�y 16/11/2017 ��n 17h00 ng�y 22/11/2017",6,
"Ch� t�o S�ch /nhagiao_chetao",
"Mua H�t May M�n /nhagiao_muahatmayman",
"Gia H�n S� Ki�n /nhagiao_giahan",
"Ph�n th��ng Max S� Ki�n /nhagiao_max",
"��i �i�m T�ch L�y S� Ki�n /nhagiao_doidiem",
"Tho�t./no")
end

function nhagiao_doidiem()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(481).." �i�m T�ch L�y S� Ki�n<color>, ng��i mu�n ��i ph�n th��ng n�o?",6,
"G�i C� B�n [25 �i�m]/nhagiao_doidiem2",
"G�i Th�n M� [150 �i�m]/nhagiao_doidiem2",
"G�i ��nh Qu�c [250 �i�m]/nhagiao_doidiem2",
"G�i An Bang [350 �i�m]/nhagiao_doidiem2",
"G�i VIP [600 �i�m]/nhagiao_doidiem2",
"Tho�t./no")
end

function nhagiao_doidiem2(nsel)
i = nsel + 1
if i == 1 then
	SayNew("B�n c� ch�c ch�n ��i 25 �i�m T�ch L�y S� Ki�n �� l�y: 30% Ti�n Th�o L� 6H , 30% N� Nhi H�ng 6H, 20% V� L�m M�t T�ch, 20% T�y T�y Kinh",2,
	"Ta ��ng � ��i /nhagiao_doidiem_1",
	"Tho�t./no")
elseif i == 2 then
	SayNew("B�n c� ch�c ch�n ��i 150 �i�m T�ch L�y S� Ki�n �� l�y: 25% ��ch L�, 25% Tuy�t �nh, 20% � V�n ��p Tuy�t, 20% X�ch Th�, 10% Chi�u D� ",2,
	"Ta ��ng � ��i /nhagiao_doidiem_2",
	"Tho�t./no")
elseif i == 3 then
	SayNew("B�n c� ch�c ch�n ��i 250 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 70% ��nh Qu�c ",2,
	"Ta ��ng � ��i /nhagiao_doidiem_3",
	"Tho�t./no")
elseif i == 4 then
	SayNew("B�n c� ch�c ch�n ��i 350 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 70% An Bang C�p 1 - 2",2,
	"Ta ��ng � ��i /nhagiao_doidiem_4",
	"Tho�t./no")
elseif i == 5 then
	SayNew("B�n c� ch�c ch�n ��i 600 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 60% Trang b� An Bang C�p 1 - 5, 10% Phi V�n Th�n M� ",2,
	"Ta ��ng � ��i /nhagiao_doidiem_5",
	"Tho�t./no")
end
end


function nhagiao_doidiem_1()
diem = 25
task = GetTask(481)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
	bk = random(1,100)
	if bk < 10 then
			AddEventItem(406)
	end
	sx = random(1,100)
	if sx < 45 then
		idxitem = AddEventItem(120)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 90 then
		idxitem = AddEventItem(116)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 90 and sx < 95 then
		idxitem = AddEventItem(0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(1)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).." ")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function nhagiao_doidiem_2()
diem = 150
task = GetTask(481)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then	
	bk = random(1,100)
	if bk < 25 then
			AddEventItem(406)
	end
	sx = random(1,100)
	if sx < 25 then
		idxitem = AddItem(0,10,5,4,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 25 and sx < 50 then
		idxitem = AddItem(0,10,5,3,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 50 and sx < 75 then
		idxitem = AddItem(0,10,5,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	elseif sx >= 75 and sx < 95 then
		idxitem = AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().." ")
	end	
	
	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end
function nhagiao_doidiem_3()
diem = 250
task = GetTask(481)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
		AddEventItem(406)
	sx = random(1,100)
	if sx < 15 then
		idxitem = AddItem(0,7,15,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 15 and sx < 25 then
		idxitem = AddItem(0,2,30,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 25 and sx < 45 then
		idxitem = AddItem(0,6,3,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 55 then
		idxitem = AddItem(0,8,3,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 55 and sx < 70 then
		idxitem = AddItem(0,5,5,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function nhagiao_doidiem_4()
diem = 350
task = GetTask(481)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then
		AddEventItem(406)
	sx = random(1,100)
	if sx < 40 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 40 and sx < 55 then
		idxitem = AddItem(0,4,3,random(1,2),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 55 and sx < 70 then
		idxitem = AddItem(0,3,3,random(1,2),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 70 and sx < 85 then
		idxitem = AddItem(0,3,4,random(1,2),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 85 and sx <= 100 then
		idxitem = AddItem(0,9,3,random(1,2),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function nhagiao_doidiem_5()
diem = 600
task = GetTask(481)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(481, GetTask(481) - diem)
if GetTask(481) == task - diem then

	AddEventItem(406)
	AddEventItem(406)
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 45 then
		idxitem = AddItem(0,4,3,random(1,3),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 60 then
		idxitem = AddItem(0,3,3,random(1,3),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 75 then
		idxitem = AddItem(0,3,4,random(1,3),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 90 then
		idxitem = AddItem(0,9,3,random(1,3),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
		--idxitem = AddItem(0,10,8,1,0,0,0)
		--Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		--inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function nhagiao_giahan()
SayNew("<color=green>L� Quan<color>: �� gia h�n s� ki�n c�n 1 Kim Nguy�n B�o, ng��i ch�c ch�n mu�n gi� h�n ch�?",2,
"Ta mu�n gia h�n s� ki�n /nhagiao_giahan1",
"Tho�t./no")
end

function nhagiao_giahan1()
	if GetTask(480) == 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			SetTask(480, GetTask(480) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n Nh� Gi�o Vi�t Nam 20-11 l�n <color=green>"..GetTask(480).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 1 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end



function nhagiao_muahatmayman()
SayNew("<color=green>L� Quan: <color>: B�n c� ch�c ch�n mu�n mua <color=yellow>20 H�t May M�n = 10 V�ng<color> kh�ng?",2,
"Ta ��ng � mua/nhagiao_muahatmayman1",
"Tho�t./no")
end

function nhagiao_muahatmayman1()
if CheckFreeBoxItem(4,260,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

sl = GetItemCount(260) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
		for i=1,20 do AddEventItem(189) end
		if GetItemCount(189) ~= sl + 20 then
			Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t H�t May M�n b� m�t.")
		end
		Msg2Player("B�n nh�n ���c 20 H�t May M�n")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch!")
end
end


function nhagiao_chetao()
SayNew("<color=green>L� Quan<color>: Vui l�ng ch�n lo�i s�ch mu�n ch� t�o ",7,
"Ch� t�o 1 Cu�n S�ch Xanh/chetao_sach1",
"Ch� t�o 1 Cu�n S�ch V�ng/chetao_sach1",
"Ch� t�o 1 Cu�n S�ch T�m/chetao_sach1",
"Ch� t�o 10 Cu�n S�ch Xanh/chetao_sach1",
"Ch� t�o 10 Cu�n S�ch V�ng/chetao_sach1",
"Ch� t�o 10 Cu�n S�ch T�m/chetao_sach1",
"Tho�t./no")
end

function chetao_sach1(nsel)
i = nsel + 1
if i == 1 then
chetao_sach2(178,179,180,0,0,183,"",1,"Cu�n S�ch Xanh")
elseif i == 2 then
chetao_sach2(178,179,180,181,10000,184,"H�p M�c M�u �en",1,"Cu�n S�ch V�ng")
elseif i == 3 then
chetao_sach2(178,179,180,182,20000,185,"H�p M�c M�u Xanh",1,"Cu�n S�ch T�m")
elseif i == 4 then
chetao_sach2(178,179,180,0,0,183,"",10,"Cu�n S�ch Xanh")
elseif i == 5 then
chetao_sach2(178,179,180,181,100000,184,"H�p M�c M�u �en",10,"Cu�n S�ch V�ng")
elseif i == 6 then
chetao_sach2(178,179,180,182,200000,185,"H�p M�c M�u Xanh",10,"Cu�n S�ch T�m")
end
end

function chetao_sach2(nl1, nl2, nl3, nl4, tienvan, idnew, tennl, soluong,newname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
vang = GetCash()

if nl4 == 0 then
	if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong then
		for i=1,soluong do 
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
		end
		if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong then 
			for p=1,soluong do 
				AddEventItem(idnew)
			end
			Msg2Player("B�n nh�n ���c "..soluong.." "..newname.."")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i")
	end
else
	if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong and GetItemCount(nl4) >= soluong and GetCash() >= tienvan then
		for i=1,soluong do 
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
		end
		Pay(tienvan)
		if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong and GetItemCount(nl4) == sl4 - soluong and GetCash() == vang - tienvan then 
			for p=1,soluong do 
				AddEventItem(idnew)
			end
			Msg2Player("B�n nh�n ���c "..soluong.." "..newname.."")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
		Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i")
	end
end
end

function thuyenrong_main()
SayNew("<color=green>L� Quan<color>: S� ki�n �ua Thuy�n R�ng t� 12h00 ng�y 20/10/2017 ��n 17h00 ng�y 27/10/2017",2,
--"Ch� t�o 1 Thuy�n R�ng /chetao_thuyen1",
--"Ch� t�o 10 Thuy�n R�ng /chetao_thuyen1",
--"Mua Tr�ng /thuyenrong_muatrong",
--"Gia H�n S� Ki�n /thuyenrong_giahan",
--"��i �i�m T�ch L�y S� Ki�n /thuyenrong_doidiem",
"Ph�n th��ng Max S� Ki�n /thuyenrong_max",
"Tho�t./no")
end


function thuyenrong_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
if GetTask(489) == 1300000 then
	SetTask(489, GetTask(489) + 10000)
	if GetTask(489) == 1310000 then
			sx = random(1,100)
			if sx < 70 then
				inlog5("NHAN MAX 1: "..GetAccount().." - "..GetName().."")
				for i=1,4 do 
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>4 Ti�n Th�o L� 6 Gi� ")
				
			elseif sx >= 70 and sx < 95 then
				inlog5("NHAN MAX 2: "..GetAccount().." - "..GetName().."")
				for i=28,30 do 
					idxitem = AddEventItem(i)
					SetBindItem(idxitem , 1)
				end
				for i=1,6 do 
					idxitem = AddEventItem(31)
					SetBindItem(idxitem , 1)
				end
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>1 B� THBT + 1 B� Th�y Tinh")
			elseif sx >= 95 and sx < 100 then
				inlog5("NHAN MAX 3: "..GetAccount().." - "..GetName().."")
				idxitem = AddEventItem(19)
				SetBindItem(idxitem , 1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>Bi Kip 120")
			else
				inlog5("NHAN MAX 4: "..GetAccount().." - "..GetName().."")
				idxitem = AddItem(0,10,5,5,0,0,0)
				SetTimeItem(idxitem,550324);
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c: <color=green>Chi�u D� Ng�c S� T� ")
			end
	else
		Talk(1,"","hack ha em")
	end	
else
	if GetTask(489) < 1300000 then
		Talk(1,"","B�n ch�a ��t ���c m�c Max S� Ki�n: <color=yellow>"..GetTask(489).."000 / 1300000000")
	else
		Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
	end
end
end

function thuyenrong_doidiem()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

SayNew("Hi�n t�i ng��i �ang c� <color=red>"..GetTask(488).." �i�m T�ch L�y S� Ki�n<color>, ng��i mu�n ��i ph�n th��ng n�o?",9,
"��i 15 �i�m /thuyenrong_doidiem2",
"��i 100 �i�m /thuyenrong_doidiem2",
"��i 200 �i�m /thuyenrong_doidiem2",
"��i 300 �i�m /thuyenrong_doidiem2",
"��i 400 �i�m /thuyenrong_doidiem2",
"��i 401 �i�m /thuyenrong_doidiem2",
"��i 402 �i�m /thuyenrong_doidiem2",
"��i 403 �i�m /thuyenrong_doidiem2",
"Tho�t./no")
end

function thuyenrong_doidiem2(nsel)

i = nsel + 1
if i == 1 then
	SayNew("B�n c� ch�c ch�n ��i 15 �i�m T�ch L�y S� Ki�n �� l�y: 30% Ti�n Th�o L� 6 Gi�, 30% N� Nhi H�ng 6 Gi�, 20% T�y T�y Kinh, 20% V� L�m M�t T�ch",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_1",
	"Tho�t./no")
elseif i == 2 then
	SayNew("B�n c� ch�c ch�n ��i 100 �i�m T�ch L�y S� Ki�n �� l�y: 25% ��ch L�, 25% Tuy�t �nh, 20% � V�n ��p Tuy�t, 20% X�ch Th�, 10% Chi�u D� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_2",
	"Tho�t./no")
elseif i == 3 then
	SayNew("B�n c� ch�c ch�n ��i 200 �i�m T�ch L�y S� Ki�n �� l�y: 15% N�n ��nh Qu�c, 15% �o ��nh Qu�c, 20% Gi�y ��nh Qu�c, 20% Bao Tay ��nh Qu�c, 20% Th�t L�ng ��nh Qu�c, 10% Chi�u D� ",2,
	"Ta ��ng � ��i /thuyenrong_doidiem_3",
	"Tho�t./no")
elseif i == 4 then
	SayNew("B�n c� ch�c ch�n ��i 300 �i�m T�ch L�y S� Ki�n �� l�y: 30% Bi Kip 120, 15% Nh�n C�c Hoa, 15% Nh�n K� Huy�t, 15% Ng�c B�i AB, 15% D�y Chuy�n An Bang, 10% Chi�u D� ",2,
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
diem = 15
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(120)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 1] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 60 then
		idxitem = AddEventItem(116)
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
diem = 100
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 25 then
		idxitem = AddItem(0,10,5,4,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 25 and sx < 50 then
		idxitem = AddItem(0,10,5,3,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 75 then
		idxitem = AddItem(0,10,5,1,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 95 then
		idxitem = AddItem(0,10,5,2,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 2] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end


function thuyenrong_doidiem_3()
diem = 200
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 15 then
		idxitem = AddItem(0,7,15,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 15 and sx < 30 then
		idxitem = AddItem(0,2,30,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 50 then
		idxitem = AddItem(0,6,3,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 50 and sx < 70 then
		idxitem = AddItem(0,8,3,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 70 and sx < 95 then
		idxitem = AddItem(0,5,5,random(1,10),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 3] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	end	
	Talk(0,"")
else
	Talk(1,"","hack ha em")
end
end

function thuyenrong_doidiem_4()
diem = 300
task = GetTask(488)
if task < diem then
Talk(1,"","B�n kh�ng �� "..diem.." �i�m T�ch L�y S� Ki�n, kh�ng th� ��i ph�n th��ng")
return
end
SetTask(488, GetTask(488) - diem)
if GetTask(488) == task - diem then
	sx = random(1,100)
	if sx < 30 then
		idxitem = AddEventItem(19)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 30 and sx < 45 then
		idxitem = AddItem(0,4,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 45 and sx < 60 then
		idxitem = AddItem(0,3,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 60 and sx < 75 then
		idxitem = AddItem(0,3,4,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	elseif sx >= 75 and sx < 90 then
		idxitem = AddItem(0,9,3,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
	else
		idxitem = AddItem(0,10,5,5,0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." ��i "..diem.." �i�m T�ch L�y S� Ki�n nh�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
		inlog4("[Goi 4] "..GetNameItemBox(idxitem).." - "..GetAccount().." - "..GetName().."")
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

function thuyenrong_giahan()
SayNew("<color=green>L� Quan<color>: �� gia h�n s� ki�n c�n 1 Kim Nguy�n B�o, ng��i ch�c ch�n mu�n gi� h�n ch�?",2,
"Ta mu�n gia h�n s� ki�n /thuyenrong_giahan1",
"Tho�t./no")
end

function thuyenrong_giahan1()
	if GetTask(490) == 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 1 then
		DelItem(17)
		if GetItemCount(17) == knb - 1 then
			SetTask(490, GetTask(490) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n �ua Thuy�n R�ng T�n th� l�n <color=green>"..GetTask(490).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 1 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end



function thuyenrong_muatrong()
SayNew("<color=green>L� Quan: <color>: B�n c� ch�c ch�n mu�n mua <color=yellow>10 Tr�ng = 10 V�ng<color> kh�ng?",2,
"Ta ��ng � mua/thuyenrong_muatrong1",
"Tho�t./no")
end

function thuyenrong_muatrong1()
if CheckFreeBoxItem(4,260,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

sl = GetItemCount(260) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 10 and GetTask(101) >= 10 then
	SetTask(99,GetTask(99) - 10)
	SetTask(101,GetTask(101) - 10)
	if GetTask(99) == vang-10 and GetTask(101) == vang2 - 10 and GetTask(99) == GetTask(101) then
		for i=1,10 do AddEventItem(260) end
		if GetItemCount(260) ~= sl + 10 then
			Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t Gi�y Ki�ng Cam b� m�t.")
		end
		Msg2Player("B�n nh�n ���c 10 Tr�ng")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>10<color> v�ng, kh�ng th� giao d�ch!")
end
end

function chetao_thuyen1(nsel)
soluong = 0
if nsel == 0 then
soluong = 1
else
soluong = 10
end
if CheckFreeBoxItem(4,261,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

if GetItemCount(254) >= soluong and GetItemCount(255) >= soluong and GetItemCount(256) >= soluong and GetItemCount(257) >= soluong then
	for k=1,soluong do
		for p=254,257 do DelItem(p) end
		AddEventItem(261)
	end
	Msg2Player("B�n nh�n ���c "..soluong.." Thuy�n R�ng")
	Talk(0,"")
else
	Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i") 
end
end

function quockhanh_goinapthe()
if GetTask(497) == 9999 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetTask(497)
if GetTask(497) >= 100 then
	SetTask(497, 9999)
	for i=1,10 do
		idxitem = AddEventItem(117)
		SetBindItem(idxitem , 1)
	end
	SetTask(196,0)
	Msg2Player("B�n nh�n ���c 10 b�nh Ti�n Th�o L� 1 Gi� ")
	Msg2Player("B�n nh�n ���c 1 l�n T�y T�y Mi�n Ph� ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/GoiNapThe100Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - "..vang.." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	Talk(0,"")
else
	Talk(1,"","Ng��i hi�n t�i t�ch l�y <color=yellow>"..GetTask(497).." / 100 v�ng<color>, kh�ng th� nh�n ")
end
end

Include("\\script\\danhsachdenbu.lua")
function denubu_checkten()
for i=1,getn(DENBU) do
	if GetAccount() == DENBU[i][1] and DENBU[i][3] == 0 then
		return i
	end
end
return 0
end

function phuchung_nhandenbu()
Msg2Player("Ng��i �ang c� "..GetTask(499).." v�ng, h�y ��n Shop V�ng Kh�a - Th�n B� Th��ng Nh�n �� s� d�ng") 
vitri = denubu_checkten()
if vitri == 0 then
Talk(1,"","Ng��i kh�ng c� t�n trong danh s�ch nh�n ��n b� ho�c �� nh�n r�i, n�u c� sai x�t vui l�ng li�n h� Admin �� gi�i quy�t")
return
end

if DENBU[vitri][3] == 0 then
	DENBU[vitri][3] = DENBU[vitri][3] + 100
	if DENBU[vitri][3] == 100 then
		SetTask(499, GetTask(499) + DENBU[vitri][2])
		Msg2Player("B�n nh�n ���c "..DENBU[vitri][2].." v�ng kh�a. Vui l�ng ��n Th�n B� Th��ng Nh�n �� s� d�ng")
		BANG = TaoBang(DENBU,"DENBU")
		LuuBang("script/danhsachdenbu.lua",BANG)
		
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/NhanVangDenBu.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(499).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
	
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i �� nh�n r�i")
end
end


function giaiphong_main_2021()
SayNew("<color=green>L� Quan<color>: Ng��i t�m ta c� vi�c g�?",5,
"Mua 20 Qu�n Trang Chi�n S� = 10 v�n /giaiphong_mua_quantrang",
"Mua 10 Cu�n Len = 10 v�ng /giaiphong_mua_cuonlen",
"Nh�n ph�n th��ng m�c Thi�p Tri �n Ng��i L�nh/giaiphong_phanthuongmoc_1",
"Nh�n ph�n th��ng m�c Thi�p Tri �n M� Hi�n/giaiphong_phanthuongmoc_2",
"Tho�t./no")
end


function giaiphong_phanthuongmoc_1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end

if GetTask(906) == 0 then
	if GetTask(904) >= 500 then
		SetTask(906, 1)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Free 500] "..GetNameItemBox(idxitem).."")
		end
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(904).." / 500")
	end
elseif GetTask(906) == 1 then
	if GetTask(904) >= 1000 then
		SetTask(906, 2)
		sx = random(1,100)
		if sx < 10 then
				idxitem = AddEventItem(0)
				SetBindItem(idxitem ,1)
				idxitem = AddEventItem(1)
				SetBindItem(idxitem ,1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>V� L�m M�t T�ch + T�y T�y Kinh")
				inlogMocEvent("[Free 1000] TTK + VLMT")
		else
			vp2 = random(1,4)
			if vp2 == 1 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 2 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 3 then
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 4 then
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n Ng��i L�nh ���c: <color=yellow>"..GetNameItemBox(idxitem).."")	
			inlogMocEvent("[Free 1000] "..GetNameItemBox(idxitem).."")			
			end						
		end
	else
			Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(904).." / 1000")
	end
else
	Msg2Player("B�n �� nh�n �� to�n b� ph�n th��ng m�c Thi�p Tri �n Ng��i L�nh")
end

end


function giaiphong_phanthuongmoc_2()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
if GetTask(907) == 0 then
	if GetTask(905) >= 500 then
		SetTask(907 , 1)
		sx = random(1,100)
		if sx < 50 then
				idxitem = AddEventItem(0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 500] "..GetNameItemBox(idxitem).."")
		else
				idxitem = AddEventItem(1)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 500 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 500] "..GetNameItemBox(idxitem).."")
		end
	else
		Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(905).." / 500")
	end
elseif GetTask(907) == 1 then
	if GetTask(905) >= 1000 then
		SetTask(907 , 2)
		
		if GetGlbMissionV(37) == 963 then
			SetGlbMissionV(37, 0)
			idxitem = AddItem(0,3,3,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			return	
		elseif GetGlbMissionV(37) == 753 then
			SetGlbMissionV(37, 0)
			idxitem = AddItem(0,2,32,2,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			return	
		end		
		
		
		sx = random(1,100)
		if sx < 10 then
				idxitem = AddEventItem(random(651,654))
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
		else
			vp2 = random(1,4)
			if vp2 == 1 then
			idxitem = AddItem(0,4,random(4,5),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 2 then
			idxitem = AddItem(0,9,5,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 3 then
			idxitem = AddItem(0,3,random(5,6),1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")
				inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")
			elseif vp2 == 4 then
			idxitem = AddItem(0,2,31,1,0,0,0)
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n m�c 1000 Thi�p Tri �n M� Hi�n ���c: <color=yellow>"..GetNameItemBox(idxitem).."")		
			inlogMocEvent("[Money 1000] "..GetNameItemBox(idxitem).."")			
			end						
		end
	else
		Msg2Player("�i�u ki�n nh�n th��ng kh�ng ��: "..GetTask(905).." / 1000")
	end
else
	Msg2Player("B�n �� nh�n �� to�n b� ph�n th��ng m�c Thi�p Tri �n M� Hi�n")
end
end

function giaiphong_mua_quantrang()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == vang - 100000 then
		for p=1,20 do AddEventItem(619) end
		Msg2Player("B�n nh�n ���c 20 Qu�n Trang Chi�n S� ")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 10 v�n l��ng, vui l�ng ki�m tra l�i !")
end
end

function giaiphong_mua_cuonlen()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,10 do AddEventItem(660) end
		Msg2Player("B�n nh�n ���c 10 Cu�n Len")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/CuonLen10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 10 v�ng, kh�ng th� mua v�t ph�m n�y")
end
end

function inlogMocEvent(text)
thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/MocSuKienGiaiPhong.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..text.." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
end
function giaiphong_main()
SayNew("<color=green>L� Quan<color>: Ng��i t�m ta c� vi�c g�?",7,
"Gh�p L� C� Chi�n Th�ng/giaiphong_laco",
"Gia H�n S� Ki�n /giaiphong_giahan",
"Nh�n ph�n th��ng m�c s� ki�n /giaiphong_moc",
"S� d�ng B� D�ng C� Chi�n S� /giaiphong_sudung_dungcu",
"��i D�ng C� Chi�n S� /giaiphong_doi_dungcu",
"Mua 10 ��i Gi�y B� ��i = 200 v�n /giaiphong_mua_dungcu",
"Tho�t./no")
end

function giaiphong_mua_dungcu()
vang = GetCash()
if GetCash() >= 2000000 then
	Pay(2000000)
	if GetCash() == vang - 2000000 then
		for p=1,10 do AddEventItem(618) end
		Msg2Player("B�n nh�n ���c 10 ��i Gi�y B� ��i")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� 200 v�n l��ng, vui l�ng ki�m tra l�i !")
end
end

function giaiphong_sudung_dungcu()
nl1 = GetItemCount(617)
nl2 = GetItemCount(618)
nl3 = GetItemCount(619)
nl4 = GetItemCount(620)
nl5 = GetItemCount(621)

if nl1 > 0 and nl2 > 0 and nl3 > 0 and nl4 > 0 and nl5 > 0 then
	for p=617,621 do DelItem(p) end
	if GetItemCount(617) == nl1 - 1 and GetItemCount(621) == nl5 - 1 then
		sx = random(1,100)
		if sx <= 80 then
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(113)
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>Ti�n Th�o L� 30 ph�t ")
			elseif sx2 >= 70 and sx2 < 90 then
				idxitem = AddEventItem(117)
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>Ti�n Th�o L� 1 Gi� ")	
			elseif sx2 >= 90 and sx2 < 98 then
				idxitem = AddEventItem(119)
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>Ti�n Th�o L� 3 Gi� ")
			else
				idxitem = AddEventItem(120)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>Ti�n Th�o L� 6 Gi� ")
			end
		elseif sx >= 80 and sx < 99 then
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(414)
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>Ng�c C��ng H�a ")
			elseif sx2 >= 70 and sx2 < 90 then
				idxitem = AddEventItem(415)
				Msg2Player("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=yellow>�� T�i T�o ")
			else
				idxitem = AddEventItem(random(594,599))
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=green>"..GetNameItemBox(idxitem).."")
			end
		else
			sx2 = random(1,100)
			if sx2 < 70 then
				idxitem = AddEventItem(339)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=green>"..GetNameItemBox(idxitem).."")
			else
				idxitem = AddEventItem(27)
				Msg2SubWorld("Ch�c m�ng "..GetName().." s� d�ng b� D�ng C� B� ��i nh�n ���c: <color=green>"..GetNameItemBox(idxitem).."")
			end
		end
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguy�n li�u kh�ng �� 5 m�n c�a B� D�ng C�, vui l�ng ki�m tra l�i !")
end
end

function giaiphong_doi_dungcu()
SayNew("Ch�n lo�i c�n ��i. M�i l�n quy ��i l� 20 c�i ",6,
"Chi�c M� Chi�n S� /giaiphong_doi_dungcu1",
"��i Gi�y B� ��i /giaiphong_doi_dungcu1",
"T�m �o Chi�n S� /giaiphong_doi_dungcu1",
"Chi�c v�ng Tr��ng S�n /giaiphong_doi_dungcu1",
"Ba l� Con C�c /giaiphong_doi_dungcu1",
"Tho�t./no")
end

function giaiphong_doi_dungcu1(nsel)
idold = 617 + nsel
if GetItemCount(idold) < 20 then
Talk(1,"","Ng��i kh�ng mang �� 20 "..checkten(idold)..",  kh�ng th� ��i ")
return
end

idnew = 0
for p=1,10 do
	idnew = random(617, 621)
	if idnew ~= idold then
		break
	end
	idnew = 0
end

if idnew == 0 then
Talk(1,"","C� l�i trong h� th�ng ch�n ng�u nhi�n, vui l�ng th� l�i !")
return
end


for p=1,20 do DelItem(idold) end
for p=1,10 do AddEventItem(idnew) end
Msg2Player("�� ��i th�nh c�ng 20 "..checkten(idold).." = <color=yellow>10 "..checkten(idnew).." !")

end

function checkten(id)
if id == 617 then
return "Chi�c M� Chi�n S� "
elseif id == 618 then
return "��i Gi�y B� ��i"
elseif id == 619 then
return "T�m �o Chi�n S�  "
elseif id == 620 then
return "Chi�c v�ng Tr��ng S�n"
elseif id == 621 then
return "Ba l� Con C�c"
else
return ""
end
end
function giaiphong_moc()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	if GetTask(460) < 10 then
		if GetTask(439) >= 8000 then
			SetTask(460, 10)

			for p=1,4 do
				idxitem = AddEventItem(120)
				SetBindItem(idxitem,1)
			end			
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 8 t�:  <color=yellow>4 Ti�n Th�o L� 6 Gi� ")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
			
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(439).."000000 / 8.000.000.000 kinh nghi�m")
		end
	elseif GetTask(460) < 20 then
		if GetTask(439) >= 13000 then
			SetTask(460, 20)
			
			sx = random(1,100)
			if sx < 80 then
				AddEventItem(586)
			elseif sx >= 80 and sx < 95 then
				AddEventItem(587)
			elseif sx >= 95 and sx < 100 then
				AddEventItem(588)
			else
				AddEventItem(random(589,590))
			end
				
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 13 t�:  <color=yellow>Ng�c C��ng H�a Cao C�p")
				thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(439).."000000 / 13.000.000.000 kinh nghi�m")
		end
	elseif GetTask(460) < 30 then
		if GetTask(439) >= 20000 then
			SetTask(460, 30)
			
			sx = random(1,10)
			if sx == 1 then
				idxitem = AddItem(0,4,17,6,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 2 then	
				idxitem = AddItem(0,9,17,6,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 3 then	
				idxitem = AddItem(0,3,29,6,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 4 then	
				idxitem = AddItem(0,3,30,6,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 5 then	
				idxitem = AddItem(0,7,43,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 6 then	
					idxitem = AddItem(0,5,26,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 7 then	
				idxitem = AddItem(0,2,81,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 8 then	
					idxitem = AddItem(0,8,24,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 9 then	
					idxitem = AddItem(0,6,28,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			elseif sx == 10 then	
					idxitem = AddItem(0,10,6,1,0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c Ph�n Th��ng M�c 20 t�: <color=yellow>"..GetNameItemBox(idxitem).."")
			end
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/NhanThuongMoc.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(460).." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(439).."000000 / 20.000.000.000 kinh nghi�m")
		end
	else
		Talk(1,"","Ng��i �� nh�n �� ph�n th��ng M�c S� Ki�n")
	end
end




function giaiphong_giahan()
knb = 0
if GetTask(490) < 10 then
knb = 3
elseif GetTask(490) == 10 then
knb = 4
elseif GetTask(490) == 20 then
knb = 5
end 

if knb == 0 then
Talk(1,"","Ng��i �� gia h�n �� 3 l�n r�i, kh�ng th� gia h�n th�m !")
return
end
SayNew("<color=green>L� Quan<color>: �� gia h�n s� ki�n c�n "..knb.." Kim Nguy�n B�o, ng��i ch�c ch�n mu�n gi� h�n ch�?",2,
"Ta mu�n gia h�n s� ki�n /giaiphong_giahan1",
"Tho�t./no")
end

function giaiphong_giahan1()
knb = 0
giahan = 0
if GetTask(490) < 10 then
knb = 3
giahan = 10
elseif GetTask(490) == 10 then
knb = 4
giahan = 20
elseif GetTask(490) == 20 then
knb = 5
giahan = 30
end 

if knb == 0 then
Talk(1,"","Ng��i �� gia h�n �� 3 l�n r�i, kh�ng th� gia h�n th�m !")
return
end

	knb2 = GetItemCount(17)
	if knb2 >= knb then
		for k=1,knb do DelItem(17) end
		if GetItemCount(17) == knb2 - knb then
			SetTask(490, giahan)
			Msg2Player("B�n �� gia h�n s� ki�n Gi�i Ph�ng Mi�n Nam 30-04 th�nh c�ng l�n th�: <color=yellow>"..floor(giahan/10).."")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(490).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� "..knb.." Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end



function giaiphong_laco()
nganluong = 30000
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
num = 0
for p = 1,50 do
	if GetItemCount(611) > 0 and GetItemCount(612) > 0 and GetItemCount(613) > 0 and GetItemCount(614) > 0 and GetCash() >= nganluong then
		Pay(nganluong)
		DelItem(611)
		DelItem(612)
		DelItem(613)
		DelItem(614)
		AddEventItem(615)
		num = num + 1
		Talk(0,"")
	else
		Talk(1,"","L� C� Chi�n Th�ng = M�nh C� 1 + M�nh C� 2 + M�nh C� 3 + M�nh C� 4 + "..nganluong.." l��ng")
	end
end

Msg2Player("B�n nh�n ���c "..num.." L� C� Chi�n Th�ng")

end

function quockhanh_main()
SayNew("<color=green>L� Quan<color>: Ng��i t�m ta c� vi�c g�?",6,
"Gh�p L� C� Chi�n Th�ng/quockhanh_laco",
"Mua Ng�i Sao May M�n /quockhanh_ngoisao",
"Gia h�n s� ki�n 2-9/quockhanh_giahan",
"��i �i�m T�ch L�y S� Ki�n /quockhanh_doidiem",
"Nh�n ph�n th��ng S� D�ng Max S� Ki�n /quockhanh_max",
"Tho�t./no")
end

function quockhanh_max()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� mua v�t ph�m !")
	return
end
if GetTask(496) == 0 then
	if GetTask(495) >= 600 then
		SetTask(496,1)
		idxitem = AddEventItem(120)
		SetBindItem(idxitem , 1)
		for k=1,50 do AddOwnExp(1000000) end
		Msg2Player("B�n nh�n ���c 50.000.000 v� 1 Ti�n Th�o L� 6 Gi� ")
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max Gia H�n L�n 1: <color=pink>50 tri�u kinh nghi�m v� 1 Ti�n th�o L� 6 Gi� ")
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(496).."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(495).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
	else
		Talk(1,"","Ng��i kh�ng ��t �� s� l��ng �� nh�n ph�n th��ng: <color=yellow>"..GetTask(495).." / 600")
	end
elseif GetTask(496) == 1 then
	if GetTask(495) >= 1200 then
		SetTask(496,2)
		for p=1,3 do
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
		end
		for k=1,100 do AddOwnExp(1000000) end
		Msg2Player("B�n nh�n ���c 100.000.000 v� 3 Ti�n Th�o L� 6 Gi� ")
		thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/MaxSuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..GetTask(496).."] "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(495).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
			
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max Gia H�n L�n 2: <color=pink>100 tri�u kinh nghi�m v� 3 Ti�n th�o L� 6 Gi� ")
	else
		Talk(1,"","Ng��i kh�ng ��t �� s� l��ng �� nh�n ph�n th��ng: <color=yellow>"..GetTask(495).." / 600")
	end
else
	Talk(1,"","B�n �� nh�n �� 2 l�n ph�n th��ng gia h�n")
end
end
function quockhanh_doidiem()
      SayNew("�i�m T�ch L�y S� Ki�n hi�n c�: <color=red>"..GetTask(493).." �i�m",3,
	"��i Trang B� Ho�ng Kim/quockhanh_doidiem1",
	"��i Ng�a vaf V�t Ph�m /quockhanh_doidiem1",
	"Tho�t./no")
end

function quockhanh_doidiem1(nsel)
i = nsel + 1
if i == 1 then
	   SayNew("�i�m T�ch L�y S� Ki�n hi�n c�: <color=red>"..GetTask(493).." �i�m",10,
	   "D�y Chuy�n An Bang/quockhanh_doidiem1_1",
	   "Nh�n An Bang K� Huy�t/quockhanh_doidiem1_1",
	   "Nh�n An Bang C�c Hoa/quockhanh_doidiem1_1",
	   "Ng�c B�i An Bang/quockhanh_doidiem1_1",
	   "N�n ��nh Qu�c/quockhanh_doidiem1_1",
	   "�o ��nh Qu�c/quockhanh_doidiem1_1",
	   "Bao Tay ��nh Qu�c/quockhanh_doidiem1_1",
	   "Gi�y ��nh Qu�c/quockhanh_doidiem1_1",
	   "Th�t L�ng ��nh Qu�c/quockhanh_doidiem1_1",
	   "Tho�t./no")
else
	   SayNew("�i�m T�ch L�y S� Ki�n hi�n c�: <color=red>"..GetTask(493).." �i�m",7,
	   "Phi V�n Th�n M� /quockhanh_doidiem1_2",
	   "Chi�u D� /quockhanh_doidiem1_2",
	   "X�ch Th� /quockhanh_doidiem1_2",
	   "T� Th�y Tinh/quockhanh_doidiem1_2",
	   "Ti�n Th�o L� 3 Gi� /quockhanh_doidiem1_2",
	   "B� Kip 120/quockhanh_doidiem1_2",
	   "Tho�t./no")
end
end

function quockhanh_doidiem1_1(nsel)
SetTaskTemp(1, nsel + 1)
MuaVatPham(nsel+1)
end
function quockhanh_doidiem1_2(nsel)
SetTaskTemp(1, nsel + 10)
MuaVatPham(nsel+10)
end

function MuaVatPham(num)
SayNew("Ng��i c� ch�c ch�n mu�n ��i <color=green>"..DANH_SACH[num][3].."<color> v�i gi� <color=yellow>"..DANH_SACH[num][2].." �i�m T�ch L�y S� Ki�n<color> kh�ng?\nS� l��ng c�n l�i: <color=red>"..DANH_SACH[num][1].." l��t ��i",2,
"Ta ch�c ch�n mu�n ��i/MuaVatPham2",
"Tho�t./no")
end

function MuaVatPham2()
vt = GetTaskTemp(1)
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� mua v�t ph�m !")
	return
end
if vt <= 0 and vt > getn(DANH_SACH) then
Talk(1,"","L�i v��t gi�i h�n m�ng, li�n h� Admin �� fix g�p")
return
end
if DANH_SACH[vt][1] <= 0 then
Talk(1,"","V�t ph�m n�y �� ���c ��i h�t, kh�ng th� ��i th�m")
return
end
if GetTask(493) < DANH_SACH[vt][2] then
Talk(1,"","Ng��i kh�ng c� �� "..GetTask(493).." �i�m T�ch L�y S� Ki�n �� ��i, vui l�ng quay l�i khi c� kh� n�ng nh� ")
return
end 
tichluy = GetTask(493)
if GetTask(493) >= DANH_SACH[vt][2]  and DANH_SACH[vt][1] > 0 then
		SetTask(493, GetTask(493) - DANH_SACH[vt][2])
		DANH_SACH[vt][1] = DANH_SACH[vt][1] - 1
		BANG = TaoBang(DANH_SACH,"DANH_SACH")		
		LuuBang("script/danhsachtichluysukien.lua",BANG)

		if GetTask(493) == tichluy - DANH_SACH[vt][2] then
			if DANH_SACH[vt][4] == 0 then 
				idxitem = AddItem(DANH_SACH[vt][4],DANH_SACH[vt][5],DANH_SACH[vt][6],random(DANH_SACH[vt][7],DANH_SACH[vt][8]),0,0,0)
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� d�ng "..DANH_SACH[vt][2].." ��i l�y trang b�: <color=pink>"..GetNameItemBox(idxitem).."")	
				Msg2SubWorld("S� l��ng c�n l�i: <color=yellow>"..DANH_SACH[vt][1].." l��t ��i")
			else
				idxitem = AddEventItem(DANH_SACH[vt][5])
				Msg2SubWorld("Ch�c m�ng "..GetName().." �� d�ng "..DANH_SACH[vt][2].." ��i l�y trang b�: <color=pink>"..GetNameItemBox(idxitem).."")	
				Msg2SubWorld("S� l��ng c�n l�i: <color=yellow>"..DANH_SACH[vt][1].." l��t ��i")
			end
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiTichLuySuKien.txt", "a");
			if LoginLog then
			write(LoginLog,"["..DANH_SACH[vt][1].."] "..DANH_SACH[vt][3].." - "..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(493).." - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)
		
			Talk(0,"")
		else
			Talk(1,"","hack ha em 1")
		end
else
	Talk(1,"","hack ha em 2")
end
end


function quockhanh_giahan()
SayNew("<color=green>L� Quan<color>: �� gia h�n s� ki�n c�n 2 Kim Nguy�n B�o, ng��i ch�c ch�n mu�n gi� h�n ch�?",2,
"Ta mu�n gia h�n s� ki�n /quockhanh_giahan1",
"Tho�t./no")
end

function quockhanh_giahan1()
	if GetTask(343) == 1000 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>1 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 2 then
		for k=1,2 do DelItem(17) end
		if GetItemCount(17) == knb - 2 then
			SetTask(343, 1000)
			Msg2Player("B�n �� gia h�n s� ki�n Qu�c Kh�nh 2-9 th�nh c�ng")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 2 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end



function quockhanh_ngoisao()
SayNew("Ng��i c� ��ng � mua <color=green>20 Ng�i Sao May M�n<color> v�i <color=yellow>gi� 10 v�ng<color> kh�ng?",2,
"Ta ��ng � mua /quockhanh_ngoisao1",
"Tho�t./no")
end

function quockhanh_ngoisao1()
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 3 � m�i c� th� mua v�t ph�m !")
	return
end
vang = GetTask(99)
if GetTask(99) >= 10 then
	SetTask(99 , GetTask(99) - 10)
	SetTask(101, GetTask(101) - 10)
	if GetTask(99) == vang - 10 and GetTask(101) == vang - 10 then
		for p=1,20 do AddEventItem(73) end
		Msg2Player("B�n nh�n ���c 20 Ng�i Sao May M�n")
		thoigian = tonumber(date("%H%M%d%m"))
		LoginLog = openfile("Data/SuKien/NgoiSaoMayMan10Vang.txt", "a");
		if LoginLog then
		write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(99).." - Time: "..thoigian.."\n");
		end
		closefile(LoginLog)
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng �� 10 v�ng, kh�ng th� mua v�t ph�m n�y")
end
end



function quockhanh_laco()
nganluong = 0
if CheckFreeBoxItem(0,10,5,5) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 2 x 5 � m�i c� th� mua v�t ph�m !")
	return
end

if GetLevel() >= 90 then
nganluong = 5000
end
num = 0
for p = 1,20 do
	if GetItemCount(68) > 0 and GetItemCount(69) > 0 and GetItemCount(70) > 0 and GetItemCount(71) > 0 and GetCash() >= nganluong then
		Pay(nganluong)
		DelItem(68)
		DelItem(69)
		DelItem(70)
		DelItem(71)
		idxitem  = AddEventItem(72)
		num = num + 1
		if GetLevel() < 90 then
			SetBindItem(idxitem , 1)
		end
		Talk(0,"")
	else
		Talk(1,"","L� C� Chi�n Th�ng = M�nh C� 1 + M�nh C� 2 + M�nh C� 3 + M�nh C� 4 + "..nganluong.." l��ng")
	end
end

Msg2Player("B�n nh�n ���c "..num.." L� C� Chi�n Th�ng")

end



function event_uudai()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� mua v�t ph�m !")
	return
end
SayNew("S� ki�n �u ��i n�p Th� <color=red>t� 17h00 ng�y 31-07 ��n 17h00 ng�y 03-08<color>\nM�i nh�n v�t ch� ���c mua 2 G�i trong 4 G�i d��i ��y. M�i g�i ch� mua ���c 1 lo�i",5,
"G�i Ti�n Th�o L� /event_uudai2",
"G�i N� Nhi H�ng /event_uudai2",
"G�i T�y T�y /event_uudai2",
"G�i Tinh Th�ng /event_uudai2",
"Tho�t./no")
end

function event_uudai2(nsel)
i = nsel+1 
if i == 1 then
	SayNew("Vui l�ng ch�n lo�i Ti�n Th�o L� c�n mua ",4,
	"6 TTL 3 Gi� = 20 v�ng/uudai_ttl",
	"20 TTL 3 Gi� = 60 v�ng/uudai_ttl",
	"30 TTL 3 Gi� = 100 v�ng/uudai_ttl",
	"Tho�t./no")
 elseif i == 2 then
 SayNew("Vui l�ng ch�n lo�i N� Nhi H�ng c�n mua ",4,
	"6 NNH 3 Gi� = 10 v�ng/uudai_nnh",
	"20 NNH 3 Gi� = 50 v�ng/uudai_nnh",
	"30 NNH 3 Gi� = 70 v�ng/uudai_nnh",
	"Tho�t./no")
 elseif i == 3 then
  SayNew("Vui l�ng ch�n lo�i T�y T�y c�n mua ",2,
	"T�y Ti�m N�ng v� K� N�ng = 30 v�ng/uudai_taytuy",
	"Tho�t./no")
 elseif i == 4 then
 SayNew("Vui l�ng ch�n lo�i Tinh Th�ng c�n mua ",3,
	"10 V� L�m M�t T�ch = 150 v�ng/uudai_tinhthong",
	"5 T�y T�y Kinh = 70 v�ng/uudai_tinhthong",
	"Tho�t./no")
 end
end

function uudai_ttl(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 1 then
Talk(1,"","B�n �� mua g�i n�y r�i, kh�ng th� mua th�m")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B�n �� mua 2 l��t �u ��i N�p Th�, kh�ng th� mua th�m")
return
end

if i == 1 then
	soluong = 6
	vang = 20
elseif i == 2 then
	soluong = 20
	vang = 60
elseif i == 3 then
	soluong = 30
	vang = 100
end
if GetTask(99) >= vang and vang ~= 0  then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,1)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(119)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B�n nh�n ���c "..soluong.." Ti�n Th�o L� 3 gi� ")
		inlog_uudai("[Goi 1]: "..GetAccount().." - "..GetName().." - "..soluong.." TTL 3 Gio - ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." v�ng, kh�ng th� mua ")
end
end

function uudai_nnh(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 2 then
Talk(1,"","B�n �� mua g�i n�y r�i, kh�ng th� mua th�m")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B�n �� mua 2 l��t �u ��i N�p Th�, kh�ng th� mua th�m")
return
end
if i == 1 then
	soluong = 6
	vang = 10
elseif i == 2 then
	soluong = 20
	vang = 50
elseif i == 3 then
	soluong = 30
	vang = 70
end
if GetTask(99) >= vang and vang ~= 0 then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,2)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(115)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B�n nh�n ���c "..soluong.." N� Nhi H�ng 3 gi� ")
		inlog_uudai("[Goi 2]: "..GetAccount().." - "..GetName().." - "..soluong.." Nu Nhi Hong 3 Gio - ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." v�ng, kh�ng th� mua ")
end
end
function uudai_taytuy()
if GetTask(346) == 3 then
Talk(1,"","B�n �� mua g�i n�y r�i, kh�ng th� mua th�m")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B�n �� mua 2 l��t �u ��i N�p Th�, kh�ng th� mua th�m")
return
end
vang = 30
if GetTask(99) >= vang and vang ~= 0 then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,3)
	else
		SetTask(346,9999)
	end
	TayTiemNang()
	TayKyNang()
	
	
	Msg2Player("T�y T�y th�nh c�ng")
	inlog_uudai("[Goi 3]: "..GetAccount().." - "..GetName().." ["..GetTask(99).."]")
	Talk(0,"")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." v�ng, kh�ng th� mua ")
end
end


function uudai_tinhthong(nsel)
i = nsel + 1
soluong = 0
vang = 0
if GetTask(346) == 4 then
Talk(1,"","B�n �� mua g�i n�y r�i, kh�ng th� mua th�m")
return
end
if GetTask(346) == 9999 then
Talk(1,"","B�n �� mua 2 l��t �u ��i N�p Th�, kh�ng th� mua th�m")
return
end

if i == 1 then
	soluong = 10
	vang = 150
	idquest = 0
elseif i == 2 then
	soluong = 5
	vang = 70
	idquest = 1
end
if GetTask(99) >= vang and vang ~= 0  then
	SetTask(99 , GetTask(99) - vang)
	SetTask(101, GetTask(101) - vang)
	if GetTask(346) == 0 then
		SetTask(346,4)
	else
		SetTask(346,9999)
	end
	for k=1,soluong do
		idxitem = AddEventItem(idquest)
		SetBindItem(idxitem , 1)
	end
		Msg2Player("B�n nh�n ���c G�i Tinh Th�ng ")
		inlog_uudai("[Goi 4 - "..nsel.."]: "..GetAccount().." - "..GetName().." ["..GetTask(99).."]")
		Talk(0,"")
else
	Talk(1,"","Ng��i kh�ng mang �� "..vang.." v�ng, kh�ng th� mua ")
end
end

function inlog_uudai(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/SuKien/LogUuDai.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end




function main_duatop_phuchung()
w,x,y = GetWorldPos()

ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
vt = checkdanhsachtop()
if vt == 0 then
Talk(1,"","Ng��i kh�ng c� t�n trong danh s�ch nh�n th��ng TOP")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� � tr�ng 6 x 5 m�i c� th� nh�n Ph�n Th��ng!")
	return
end

if DSTOP[vt][3] ~= 0 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n th�m")
return
end

old = DSTOP[vt][3]
DSTOP[vt][3] = DSTOP[vt][3] + 9999
BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/danhsach/danhsachtop.lua",BANG)

				thoigian = tonumber(date("%H%M%d%m"))
					LoginLog = openfile("Data/NhanPhanThuongTop.txt", "a");
					if LoginLog then
					write(LoginLog,"["..DSTOP[vt][2].."] ["..GetAccount().."] ["..GetName().."] ["..GetLevel().."] - IP: "..GetIP().." -  Time: "..thoigian.."\n");
					end
					closefile(LoginLog)


if DSTOP[vt][3] == 9999 then
		if DSTOP[vt][2] == 1 then
			AddItem(0,10,8,1,0,0,0)
			Earn(10000000)		
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 1 Server")	
		elseif DSTOP[vt][2] == 2 then
			AddItem(0,10,5,5,0,0,0)
			Earn(7000000)	
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 2 Server")
		elseif DSTOP[vt][2] == 3 then
			AddItem(0,10,5,5,0,0,0)
			Earn(5000000)	
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 3 Server")
		elseif DSTOP[vt][2] == 4 then
			AddItem(0,10,5,2,0,0,0)
			Earn(2000000)	
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 4 - 5 Server")
		elseif DSTOP[vt][2] == 5 then
			AddEventItem(687)
			Earn(1000000)	
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 6 - 10 Server")
		elseif DSTOP[vt][2] == 6 then
			AddEventItem(687)
			Msg2SubWorld("<color=pink>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Top 1 M�n Ph�i")	
		end
		Talk(0,"")
else
Talk(1,"","hack ha em")
end
end

function checkdanhsachtop()
for i=1,getn(DSTOP) do
	if GetName() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function main_duatop()
SayNew("Ng��i h�y s�p x�p l�i h�nh trang �� tr�nh <color=yellow>��y R��ng m�t v�t ph�m",2,
"Ta �� �� r��ng tr�ng r�i /main_duatop1",
"�� ta s�p x�p l�i /no")
end
function main_duatop1()
vt = checkdanhsachtop()
if vt == 0 then
Talk(1,"","Ng��i kh�ng c� t�n trong danh s�ch nh�n th��ng TOP")
return
end

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	
	if DSTOP[vt][5] == 1 then
		Talk(1,"","Ng��i �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
		return 
	end
	Msg2SubWorld("<color=green>Ch�c m�ng "..GetName().." nh�n ph�n th��ng TOP")
if DSTOP[vt][2] == 2 then
	DSTOP[vt][2] = 0
	idxitem = AddItem(0,10,5,5,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).." ")
elseif DSTOP[vt][2] == 1 then
	DSTOP[vt][2] = 0
	idxitem = AddItem(0,10,5,2,0,0,0)
	SetTimeItem(idxitem,550324);
	Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).." ")
end

if DSTOP[vt][3] == 2 then
	DSTOP[vt][3] = 0
	for k=1,2 do
		sx = RandomNew(1,4)
		if sx == 1 then
			idxitem = AddItem(0,4,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 2 then
			idxitem = AddItem(0,3,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")	
		elseif sx == 3 then
			idxitem = AddItem(0,3,4,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 4 then
			idxitem = AddItem(0,9,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		end
	end
elseif DSTOP[vt][3] == 1 then
			sx = RandomNew(1,4)
		if sx == 1 then
			idxitem = AddItem(0,4,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 2 then
			idxitem = AddItem(0,3,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")	
		elseif sx == 3 then
			idxitem = AddItem(0,3,4,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif sx == 4 then
			idxitem = AddItem(0,9,3,random(1,5),0,0,0)
			Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		end
end

Earn(DSTOP[vt][4] * 10000)
Msg2SubWorld("<color=yellow>- Nh�n ���c 1 "..DSTOP[vt][4].." v�n l��ng")
DSTOP[vt][4] = 0
DSTOP[vt][5] = 1

BANG = TaoBang(DSTOP,"DSTOP")		
LuuBang("script/danhsachtop.lua",BANG)
KickOutSelf()
end

function maxsukien()
SayNew("B�n vui l�ng �� tr�ng r��ng <color=red>�t nh�t 30 � <color> �� tr�nh m�t v�t ph�m",2,
"Ta ch�c ch�n �� d�n d�p r��ng/EV304_max1",
"Tho�t./no")
end
function EV304_max1()
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

if GetTask(332) ~= 300417 then
	if GetTask(352) >= 488*2 then
		SetTask(332, 300417)
		for i=1,10 do AddEventItem(59)	end
		for i=1,3 do AddEventItem(120)	end
		for i=1,3 do AddEventItem(116)	end
		idxitem = AddEventItem(264)
		SetHSD(idxitem , 2017, 5 ,30,23)
		Msg2Player("B�n nh�n ���c 10 X� L�i Kim ��n, 3 N� Nhi H�ng 6H, 3 Ti�n Th�o L� 6H, 1 T�i M�u VIP")
	elseif GetTask(352) == 488 then
		SetTask(332, 300417)
		for i=1,10 do AddEventItem(59)	end
		for i=1,10 do AddEventItem(118)	end
		idxitem = AddEventItem(264)
		SetHSD(idxitem , 2017, 5 ,10,23)
		Msg2Player("B�n nh�n ���c 10 X� L�i Kim ��n, 10 N� Nhi H�ng, 1 T�i M�u VIP")
	end
	Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Max S� Ki�n")
	KickOutSelf()
else
Talk(1,"","B�n �� nh�n ph�n th��ng r�i, kh�ng th� nh�n th�m")
end
end
function EV304_sudung()
Talk(1,"","Click ph�i chu�t v�o Hu�n Ch��ng Chi�n th�ng ho�c 3 M�n Trang B� Chi�n S� �� s� d�ng") 
end

function EV304_lacovietnam()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

sl1 = GetItemCount(68)
sl2 = GetItemCount(69)
sl3 = GetItemCount(70)
sl4 = GetItemCount(71)
sl5 = GetItemCount(362)
if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 and sl5 >= 1 then
	for k=68,71 do DelItem(k) end
	DelItem(362)
	if GetItemCount(68) == sl1 - 1 and GetItemCount(69) == sl2 - 1 and GetItemCount(70) == sl3 - 1 and GetItemCount(71) == sl4 - 1 and GetItemCount(362) == sl5 - 1 then
		AddEventItem(72)
		Msg2Player("B�n nh�n ���c 1 L� C� Vi�t Nam")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","L� C� Vi�t Nam = 4 M�nh C� + H�p Kim Ch�. Vui l�ng ki�m tra l�i nguy�n li�u")
end 
end


function EV304_giahan()
SayNew("<color=green>L� Quan<color>: �� gia h�n s� ki�n c�n 2 Kim Nguy�n B�o, ng��i ch�c ch�n mu�n gi� h�n ch�?",2,
"Ta mu�n gia h�n s� ki�n /EV304_giahan1",
"Tho�t./no")
end

function EV304_giahan1()
	if GetTask(343) == 1000 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>1 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 2 then
		for k=1,2 do DelItem(17) end
		if GetItemCount(17) == knb - 2 then
			SetTask(343, 1000)
			Msg2Player("B�n �� gia h�n s� ki�n Gi�i Ph�ng Mi�n Nam 30/4 v� Qu�c T� Lao ��ng 1/5 th�nh c�ng")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 2 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end


function EV304_cuonchi()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end
SayNew("<color=green>L� Quan<color>: Ng��i mu�n mua <color=yellow>10 Cu�n Ch� <color> b�ng h�nh th�c n�o ?",3,
"Ta mu�n mua b�ng 10 V�ng /EV304_cuonchi1",
"Ta mu�n mua b�ng 170 v�n l��ng/EV304_cuonchi2",
"Tho�t./no")
end


function EV304_cuonchi2()
cash = GetCash()

if GetCash() >= 1700000 then
Pay(1700000)
if GetCash() == cash - 1700000 then
	for k=1,10 do AddEventItem(362) end
	Msg2Player("B�n nh�n ���c <color=yellow>1 Cu�n Ch� ")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/CuonChi_TienVan.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 170 v�n l��ng, kh�ng th� mua")
end
end

function EV304_cuonchi1()
cash = GetTask(99)

if GetTask(99) >= 10 then
SetTask(99, GetTask(99) - 10)
SetTask(101, GetTask(101) - 10)
if GetTask(99) == cash - 10 then
	for k=1,10 do AddEventItem(362) end
	Msg2Player("B�n nh�n ���c <color=yellow>1 Cu�n Ch� ")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/CuonChi_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 10 v�ng, kh�ng th� mua")
end
end

function EV304_huanchuong()
if CheckFreeBoxItem(4,72,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end
SayNew("<color=green>L� Quan<color>: Ng��i mu�n mua <color=yellow>20 Hu�n Ch��ng<color> b�ng h�nh th�c n�o ?",3,
"Ta mu�n mua b�ng 5 V�ng /EV304_huanchuong1",
"Ta mu�n mua b�ng 80 v�n l��ng/EV304_huanchuong2",
"Tho�t./no")
end


function EV304_huanchuong2()
cash = GetCash()

if GetCash() >= 800000 then
Pay(800000)
if GetCash() == cash - 800000 then
	for k=1,20 do AddEventItem(355) end
	Msg2Player("B�n nh�n ���c <color=yellow>20 Hu�n Ch��ng")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/HuanChuong_TienVan.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 80 v�n l��ng, kh�ng th� mua")
end
end

function EV304_huanchuong1()
cash = GetTask(99)

if GetTask(99) >= 5 then
SetTask(99, GetTask(99) - 5)
SetTask(101, GetTask(101) - 5)
if GetTask(99) == cash - 5 then
	for k=1,20 do AddEventItem(355) end
	Msg2Player("B�n nh�n ���c <color=yellow>20 Hu�n Ch��ng")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/HuanChuong_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 5 v�ng, kh�ng th� mua")
end
end



function nhanttl()
ngay = tonumber(date("%d"))
if ngay == 15 or ngay == 16 then
	idxitem = AddEventItem(117)
	SetBindItem(idxitem, 1)
	SetHSD(idxitem , 2017, 4, 16, 23)
	idxitem = AddEventItem(118)
	SetBindItem(idxitem, 1)
	SetHSD(idxitem , 2017, 4, 16, 23)
end
end

function gioto_main()
SayNew("<color=green>L� Quan<color>: Ng��i mu�n ta gi�p g� ? ",5,
"N�u B�nh T�t /gioto_nau1",
"N�u B�nh Ch�ng /gioto_nau2",
"Mua Th�t Heo /gioto_muathitheo",
"Nh�n ph�n th��ng s� ki�n /gioto_ptmoc",
"Tho�t./no")
end

function gioto_ptmoc()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

if GetTask(350) == 688 then
	SetTask(350, 10000)
	sx = random(1,100)
	if sx < 30 then
		for i=1,4 do AddEventItem(120) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>4 B�nh Ti�n Th�o L� 6 gi� ")
	elseif sx >= 30 and sx < 60 then
		for i=1,4 do AddEventItem(116) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>4 B�nh N� Nhi H�ng 6 gi� ")
	elseif sx >= 60 and sx < 90 then
		for i=1,10 do AddEventItem(59) end
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>10 X� L�i Kim ��n")
	elseif sx >= 90 and sx < 93 then
		itemidx = AddEventItem(264)
		SetHSD(itemidx, 2017 , thang + 1, ngay, gio )
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>[VIP] Th�a Ti�n M�t L� Bao")
	elseif sx >= 93 and sx < 97 then
		if GetTask(196) ~= 0 then
			SetTask(196, 0 )
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>T�y T�y Mi�n Ph� ")
		else
			for i=1,10 do AddEventItem(59) end
			Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>10 X� L�i Kim ��n")
		end
	else
		idxitem = AddItem(0,10,5,random(1,5),0,0,0)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng Max S� Ki�n nh�n ���c <color=yellow>"..GetNameItemBox(idxitem).."")
	end
	
	
	
elseif GetTask(350) == 10000 then
	Talk(1,"","Ng��i �� nh�n ph�n th��ng r�i, c�n mu�n nh�n th�m � ")
else
	Talk(1,"","Ng��i ch�a �� �i�u ki�n �� nh�n Ph�n Th��ng Max S� Ki�n")
end
end


function gioto_nau1()
sl1 = GetItemCount(351)
sl2 = GetItemCount(352)
sl3 = GetItemCount(353)

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 then
	for i=351,353 do DelItem(i) end
	if GetItemCount(351) == sl1 - 1 and GetItemCount(352) == sl2 - 1 and GetItemCount(353) == sl3 - 1 then
		AddEventItem(349)
		Msg2Player("B�n nh�n ���c 1 B�nh T�t")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=yellow>L� B�nh + ��u Xanh + G�o N�p<color>, kh�ng th� n�u B�nh T�t")
end
end
function gioto_nau2()
sl1 = GetItemCount(351)
sl2 = GetItemCount(352)
sl3 = GetItemCount(353)
sl4 = GetItemCount(354)

if sl1 >= 1 and sl2 >= 1 and sl3 >= 1 and sl4 >= 1 then
	for i=351,354 do DelItem(i) end
	if GetItemCount(351) == sl1 - 1 and GetItemCount(352) == sl2 - 1 and GetItemCount(353) == sl3 - 1 and GetItemCount(354) == sl4 - 1  then
		AddEventItem(350)
		Msg2Player("B�n nh�n ���c 1 B�nh Ch�ng")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=yellow>L� B�nh + ��u Xanh + G�o N�p + Th�t Heo<color>, kh�ng th� n�u B�nh Ch�ng")
end
end

function gioto_muathitheo()
SayNew("<color=green>L� Quan:<color> Hi�n t�i kh�ng c� s� ki�n n�o di�n ra: ",3,
"X�c nh�n mua 5 Th�t Heo = 15 v�n l��ng/gioto_muathitheo1",
"X�c nh�n mua 5 Th�t Heo = 1 v�ng/gioto_muathitheo2",
"Tho�t./no")
end

function gioto_muathitheo1()
cash = GetCash()

if GetCash() >= 150000 then
Pay(150000)
if GetCash() == cash - 150000 then
	for k=1,5 do AddEventItem(354) end
	Msg2Player("B�n nh�n ���c <color=yellow>5 Th�t Heo")
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThitHeo_Van.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 15 v�n l��ng, kh�ng th� mua")
end
end

function gioto_muathitheo2()
cash = GetTask(99)

if GetTask(99) >= 1 then
SetTask(99, GetTask(99) - 1)
SetTask(101, GetTask(101) - 1)
if GetTask(99) == cash - 1 then
	for k=1,5 do AddEventItem(354) end
	Msg2Player("B�n nh�n ���c <color=yellow>5 Th�t Heo")
	
	thoigian = tonumber(date("%H%M%d%m"))
	LoginLog = openfile("Data/SuKien/ThitHeo_Vang.txt", "a");
	if LoginLog then
	write(LoginLog,""..GetAccount().." - "..GetName().." - Time: "..thoigian.."\n");
	end
	closefile(LoginLog)
	
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 1 v�ng, kh�ng th� mua")
end
end

function nhannapthe()
if GetTask(306) == 88888 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng �u ��i N�p Th�, kh�ng th� nh�n th�m")
return
end
if GetTask(306) == 9999 then
	SayNew("Ng��i �� �� �i�u ki�n nh�n �u ��i N�p Th�. H�y d�n d�p tr�ng h�nh trang tr��c khi nh�n\n<color=red>C�nh b�o: M�t do ��y r��ng kh�ng ��n b� ",2,
	"Ta mu�n nh�n ph�n th��ng �u ��i N�p Th� /nhannapthe1",
	"�� ta d�n d�p l�i h�nh trang /no")

else
	Talk(1,"","B�n kh�ng �� �i�u ki�n nh�n �u ��i N�p Th� ")
end
end

function nhannapthe1()

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if GetTask(306) == 88888 then
Talk(1,"","Ng��i �� nh�n ph�n th��ng �u ��i N�p Th�, kh�ng th� nh�n th�m")
return
end
if GetTask(306) == 9999 then
	SetTask(306, 88888)
	sx = random(1,10)
	if sx == 1 then
		itemidx = AddItem(0,10,5,random(1,4),0,0,0)
		SetTimeItem(itemidx,550324);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n �u ��i N�p Th� ���c "..GetNameItemBox(itemidx).."")
	elseif sx == 2 then
		itemidx = AddEventItem(0)
		SetBindItem(itemidx,1);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n �u ��i N�p Th� ���c "..GetNameItemBox(itemidx).."")
	elseif sx == 3 then
		itemidx = AddEventItem(1)
		SetBindItem(itemidx,1);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n �u ��i N�p Th� ���c "..GetNameItemBox(itemidx).."")
	else
		itemidx = AddItem(0,11,0,random(1,25),0,0,0)
		SetTimeItem(itemidx,550324);
		if thang == 12 then
			SetHSD(itemidx,2018,1,ngay,gio)
		else
			SetHSD(itemidx,2017,thang+1,ngay,gio)
		end
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n �u ��i N�p Th� ���c "..GetNameItemBox(itemidx).."")
	end
	
	for p=1,5 do
		idxitem = AddEventItem(117)
		SetBindItem(idxitem , 1)
		idxitem = AddEventItem(118)
		SetBindItem(idxitem , 1)
	end
	KickOutSelf()
	Msg2Player("B�n �� �i�u ki�n nh�n �u ��i N�p Th�, vui l�ng ��i l�t nh� ")
else
	Talk(1,"","B�n kh�ng �� �i�u ki�n nh�n �u ��i N�p Th� ")
end
end

function denbubt()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))

if ngay ~= 23 then
Talk(1,"","Th�i gian nh�n th��ng t�  17h00 - 24h00 ng�y 23/05/2021")
return
end
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if GetTask(318) ~= 1200 then
	SetTask(318, 1200)
	
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(120)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	idxitem = AddEventItem(116)
	SetBindItem(idxitem , 1)
	
	ngay = ngay + 3
	if ngay > mangthang[thang] then
			ngay = ngay - mangthang[thang]
	thang = thang + 1
	end
	itemidx = AddEventItem(264)
	SetHSD(itemidx, 2021 , thang, ngay, gio )
	Msg2Player("B�n nh�n ���c ��n b� 3 Ti�n Th�o L� 6 Gi�, 3 N� Nhi H�ng 6 Gi�, 1 T�i M�u Vip [3 Ng�y]")
	Msg2SubWorld("��i hi�p "..GetName().." �� nh�n ��n b� ��i H�i Anh H�ng t�i L� Quan")
	Talk(0,"")
else
	Talk(1,"","B�n �� nh�n 1 l�n, kh�ng th� nh�n th�m !")
end
end

function nhanthuongtoptinhkiem()

if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end

if checktontai() == 1 then
Talk(1,"","Ng��i �� nh�n th��ng r�i, kh�ng th� nh�n th�m l�n n�a ")
return
end

thoigian = tonumber(date("%H%M%d%m"))
	if DSTOP[monphai][1][3] == 0 then
		DSTOP[monphai][1][1] = GetAccount()
		DSTOP[monphai][1][2] = GetName()
		DSTOP[monphai][1][3] = thoigian
		savetop()
		Msg2Player("Ng��i �� nh�n ph�n th��ng TOP 1")
		Msg2Player("- Phi V�n")
		Msg2Player("- Nh�c V��ng Ki�m")
		Msg2Player("- 2000 v�n l��ng")
		Msg2Player("- 300 v�ng")
		AddItem(0,10,8,1,0,0,0)
		AddEventItem(164)
		Earn(20000000)
		SetTask(99, GetTask(99) + 300)
		SetTask(101, GetTask(101) + 300)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng TOP 1 Ph�i: "..GetFaction().."")
		Talk(0,"")
	elseif DSTOP[monphai][2][3] == 0 then
		DSTOP[monphai][2][1] = GetAccount()
		DSTOP[monphai][2][2] = GetName()
		DSTOP[monphai][2][3] = thoigian
		savetop()
		Msg2Player("Ng��i �� nh�n ph�n th��ng TOP 2")
		Msg2Player("- Chi�u D� Ng�c S� T� ")
		Msg2Player("- 1000 v�n l��ng")
		Msg2Player("- 200 v�ng")
		AddItem(0,10,5,5,0,0,0)
		Earn(10000000)
		SetTask(99, GetTask(99) + 200)
		SetTask(101, GetTask(101) + 200)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng TOP 2 Ph�i: "..GetFaction().."")
		Talk(0,"")
	elseif DSTOP[monphai][3][3] == 0 then
		DSTOP[monphai][3][1] = GetAccount()
		DSTOP[monphai][3][2] = GetName()
		DSTOP[monphai][3][3] = thoigian
		savetop()	
		Msg2Player("Ng��i �� nh�n ph�n th��ng TOP 3")	
		Msg2Player("- Ng�a 90 Ng�u Nhi�n ")
		Msg2Player("- 500 v�n l��ng")
		Msg2Player("- 100 v�ng")
		AddItem(0,10,5,random(1,4),0,0,0)
		Earn(5000000)
		SetTask(99, GetTask(99) + 100)
		SetTask(101, GetTask(101) + 100)
		Msg2SubWorld("Ch�c m�ng "..GetName().." nh�n ph�n th��ng TOP 3 Ph�i: "..GetFaction().."")
		Talk(0,"")
	else
		Talk(1,"","Hi�n t�i �� c� 3 ng��i trong M�n Ph�i l�n c�p 100 tr��c, ng��i ch�m ch�n 1 b��c r�i")
	end
end


function checktontai()
for i=1,getn(DSTOP) do
	for j=1,3 do
		if DSTOP[i][j][2] == GetName() then
			return 1
		end
	end
end
return 0
end
function nhandenbu()

	if GetTask(451) <= 1 then
		Talk(1,"","Ng��i kh�ng c� �i�m kinh nghi�m �� nh�n")
		return
	end
	
	kinhnghiem = GetTask(451) * 5 / 1000
	for k=1,1000 do AddOwnExp(kinhnghiem) end
	SetTask(451,1)
	KickOutSelf()
end
function test()
Talk(1,"","Ch�a c�p nh�t ")
end

function phunu83()
SayNew("<color=green>L� Quan<color>: Vui l�ng ch�n ch�c n�ng ",3,
"Gia h�n s� ki�n 8 th�ng 3/phunu83_giahan",
"Nh�n ph�n th��ng m�c s� ki�n /phunu83_phanthuong",
"Tho�t./no")
end


function phunu83_phanthuong()
gio = tonumber(date("%H"))
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end
faction = mp()
if faction == 0 then
Talk(1,"","Ng��i ch�a gia nh�p ph�i, kh�ng th� s� d�ng !")
return
end

if GetTask(344) == 0 then
	if GetTask(342) >= 1500 then
			SetTask(344,GetTask(344) + 1)
			if GetTask(344) == 1 then
					idxitem = AddEventItem(0)
					idxitem = AddEventItem(1)
					idxitem = AddEventItem(28)
					SetBindItem(idxitem,1)
					idxitem = AddEventItem(29)
					SetBindItem(idxitem,1)
					idxitem = AddEventItem(30)
					SetBindItem(idxitem,1)
					for p=1,6 do 
						idxitem = AddEventItem(31)
						SetBindItem(idxitem,1)
					end
					Msg2SubWorld("<color=pink>"..GetName().." �� nh�n ph�n th��ng m�c 1500 Hoa H�ng �� nh�n ���c: V� L�m M�t T�ch, T�y T�y Kinh, 1 B� Th�y Tinh [Kh�a], 1 B� Tinh H�ng B�o Th�ch [Kh�a]")
					Msg2Player("<color=yellow>L�u �: ��y r��ng m�t kh�ng ��n b� ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Ng��i ch� ��t ���c "..GetTask(342).." / 1500 Hoa H�ng ��, kh�ng th� nh�n")
	end
elseif GetTask(344) == 1 then
	if GetTask(342) >= 3000 then
			SetTask(344,GetTask(344) + 1)
			if GetTask(344) == 2 then
					idxitem = AddItem(0,10,6,1,0,0,0)
					SetTimeItem(idxitem,550324);
					SetHSD(idxitem , 2017, thang + 1 , ngay , gio)
					Msg2SubWorld("<color=pink>"..GetName().." �� nh�n ph�n th��ng m�c 3000 Hoa H�ng �� nh�n ���c: B�n Ti�u [Kh�a - HSD: 30 ng�y]")
					Msg2Player("<color=yellow>L�u �: ��y r��ng m�t kh�ng ��n b� ")
			else
				Talk(1,"","Hack ha em")
			end
	else
		Talk(1,"","Ng��i ch� ��t ���c "..GetTask(342).." / 3000 Hoa H�ng ��, kh�ng th� nh�n")
	end
else
	Talk(1,"","Ng��i �� nh�n �� t�t c� ph�n th��ng m�c s� ki�n")
 end
end

function phunu83_giahan()
	if GetTask(343) >= 1 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>1 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 5 then
		for k=1,5 do DelItem(17) end
		if GetItemCount(17) == knb - 5 then
			SetTask(343, GetTask(343) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n Qu�c T� Ph� N� 8 Th�ng 3 l�n <color=yellow>"..GetTask(343).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(343).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 5 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end

function denbux2()
if GetTask(340) == 4567 then
Talk(1,"","B�n �� nh�n ph�n th��ng ��n b� b�o tr�, kh�ng th� nh�n th�m")
return
end
			SetTask(340 ,4567)
			SetTask(172, GetTask(172) + 2*60*60*18)
			AddSkillEffect(460,1, GetTask(172))
			SetTask(141,1)
			Msg2Player("B�n nh�n ���c th�m 2 gi� nh�n ��i kinh nghi�m")

			
			Talk(0,"")
end

function EventTet()
SayNew("<color=green>L� Quan<color>: S� ki�n Ng� Qu� M�ng Xu�n <color=red>b�t ��u t� ng�y 27/01 , k�t th�c ng�y 08/02 ",3,
--"N�ng c�p Nguy�n Li�u /tet_nangcapnguyenlieu",
--"Ch� t�o M�m Ng� Qu� /tet_chetao",
--"Mua M�m B�c /tet_muamambac",
--"Mua M�m V�ng /tet_muamamvang",
"Gia H�n S� Ki�n /tet_giahan",
"Nh�n ph�n th��ng Max S� Ki�n /phanthuongmax",
"Tho�t./no")
end
function phanthuongmax()

if CheckFreeBoxItem(0,10,5,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� tr�ng !")
return
end

if GetTask(335) >= 6000 and GetTask(335) < 7000 then
	SetTask(335,10000)
	if GetTask(335) == 10000 then
			SetTask(335,10001)
			sx=random(1,10)
			if sx == 5 then
				AddItem(0,4,3,1,0,0,0)
			else 
				sx2 = random(1,3)
				if sx2 == 1 then
					AddItem(0,9,3,1,0,0,0)
				elseif sx2 == 2 then				
					AddItem(0,3,3,1,0,0,0)
				elseif sx2 == 3 then
					AddItem(0,3,4,1,0,0,0)
				end
			end
			Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." nh�n ���c ph�n th��ng Max S� Ki�n")
			inlog6(""..GetAccount().." - "..GetName().." - "..GetLevel().."")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Ng��i �� nh�n r�i, kh�ng th� nh�n th�m")
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

function tet_giahan()
	if GetTask(334) >= 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 5 then
		for k=1,5 do DelItem(17) end
		if GetItemCount(17) == knb - 5 then
			SetTask(334, GetTask(334) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n Ng� Qu� M�ng Xu�n l�n <color=yellow>"..GetTask(334).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(334).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 5 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end

function tet_muamambac()
SayNew("<color=green>L� Quan<color>: M�m B�c gi� <color=yellow>20 v�n l��ng = 20 c�i<color>, Ng��i c� ch�c ch�n mu�n mua kh�ng?",2,
"Ta ��ng � mua M�m B�c /tet_muamambac2",
"Tho�t./no")
end

function tet_muamambac2()
vang = GetCash()

if GetCash() >= 200000 then
	Pay(200000)
	if GetCash() == vang - 200000 then
		for k=1,20 do AddEventItem(321) end
		Msg2Player("B�n nh�n ���c 20 M�m B�c")
		inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\Ngan Luong: "..GetCash().."\tBanh: "..GetItemCount(321).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>20 v�n l��ng<color>, kh�ng th� mua")
end
end

function tet_muamamvang()
SayNew("<color=green>L� Quan<color>: M�m B�c gi� <color=yellow>1 Kim Nguy�n B�o = 40 c�i<color>, Ng��i c� ch�c ch�n mu�n mua kh�ng?",2,
"Ta ��ng � mua M�m V�ng /tet_muamamvang2",
"Tho�t./no")
end

function tet_muamamvang2()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,40 do AddEventItem(322) end
		Msg2Player("B�n nh�n ���c 40 M�m V�ng")
		inlog3("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(322).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>1 Kim Nguy�n B�o<color>, kh�ng th� mua")
end
end



function tet_muaphaohoa()
SayNew("<color=green>L� Quan<color>: Ph�o Hoa N�m M�i gi� <color=yellow>1 Kim Nguy�n B�o ho�c 500 v�n l��ng<color>, Ng��i c� ch�c ch�n mu�n mua kh�ng?",3,
"Mua ph�o hoa 1 Kim Nguy�n B�o /tet_muaphaohoa1",
"Mua ph�o hoa 500 v�n l��ng /tet_muaphaohoa2",
"Tho�t./no")
end

function tet_muaphaohoa1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		AddEventItem(327)
		Msg2Player("B�n nh�n ���c Ph�o Hoa N�m M�i")
		inlog4("[KNB] Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>1 Kim Nguy�n B�o<color>, kh�ng th� mua")
end
end
function tet_muaphaohoa2()
vang = GetCash()

if GetCash() >= 5000000 then
	Pay(5000000)
	if GetCash() == vang - 5000000 then
		AddEventItem(327)
		Msg2Player("B�n nh�n ���c Ph�o Hoa N�m M�i")
		inlog4("[VAN] Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>500 v�n l��ng<color>, kh�ng th� mua")
end
end


function tet_nangcapnguyenlieu()
SayNew("<color=green>L� Quan<color>: Ch�n lo�i tr�i c�y c�n n�ng c�p: ",5,
"M�ng C�u /tet_nangcap1",
"D�a /tet_nangcap1",
"�u �� /tet_nangcap1",
"Xo�i /tet_nangcap1",
"Tho�t./no")
end

function tet_nangcap1(nsel)
i = nsel+1
SetTaskTemp(1 , i)
namecu = ""
namenew = ""
iditem = 312+i
soluong = GetItemCount(iditem)
soluong2 = soluong - mod(soluong,3)

if i == 1 then
namecu = "M�ng C�u"
namenew = "D�a"
elseif i == 2 then
namecu = "D�a"
namenew = "�u �� "
elseif i == 3 then
namecu = "�u �� "
namenew = "Xo�i"
elseif i == 4 then
namecu = "Xo�i"
namenew = "Sung"
end
SayNew("<color=green>L� Quan<color>: B�n c� ch�c ch�n mu�n n�ng c�p <color=yellow>"..soluong2.." "..namecu.."<color> th�nh <color=green>"..(soluong2/3).." "..namenew.."<color> hay kh�ng?\n<color=red>Ch� �: V�t ph�m kh�ng mu�n n�ng c�p h�y mang b� v�o r��ng ch�a �� ",2,
"Ta ��ng � n�ng c�p /tet_nangcap2",
"Tho�t./no")
end

function tet_nangcap2()
i = GetTaskTemp(1)
iditem = 312+i
soluong = GetItemCount(iditem)
soluong2 = floor(soluong/3)
namecu = ""
namenew = ""
if soluong2 == 0 then
Msg2Player("B�n kh�ng �� nguy�n li�u trong r��ng")
return
end
if i == 1 then
namecu = "M�ng C�u"
namenew = "D�a"
elseif i == 2 then
namecu = "D�a"
namenew = "�u �� "
elseif i == 3 then
namecu = "�u �� "
namenew = "Xo�i"
elseif i == 4 then
namecu = "Xo�i"
namenew = "Sung"
end
for i=1,soluong2 do
	if GetItemCount(iditem) >= 3 then
		DelItem(iditem)
		DelItem(iditem)
		DelItem(iditem)
		AddEventItem(iditem+1)
	else
		Msg2Player("B�n kh�ng �� nguy�n li�u trong r��ng")
	end
end
Msg2Player("B�n �� n�ng c�p th�nh c�ng "..soluong.." "..namecu.." th�nh "..soluong2.." "..namenew.."")

end

function tet_chetao()
SayNew("<color=green>L� Quan<color>: Ch�n lo�i ng� qu� c�n ch� t�o: ",5,
"1x M�m B�c Ng� Qu� /tet_chetao1",
"1x M�m V�ng Ng� Qu� /tet_chetao1",
"10x M�m B�c Ng� Qu� /tet_chetao1",
"10x M�m V�ng Ng� Qu� /tet_chetao1",
"Tho�t./no")
end

function tet_chetao1(nsel)
i = nsel + 1
if i == 1 then
tet_chetao2(313,314,315,316,317,321, "M�m B�c",1, 323, "M�m B�c Ng� Qu� ")
elseif i == 2 then
tet_chetao2(313,314,315,316,317,322, "M�m V�ng",1, 324, "M�m B�c Ng� V�ng")
elseif i == 3 then
tet_chetao2(313,314,315,316,317,321, "M�m B�c",10, 323, "M�m B�c Ng� Qu� ")
elseif i ==4 then
tet_chetao2(313,314,315,316,317,322, "M�m V�ng",10, 324, "M�m B�c Ng� V�ng")
end
end

function tet_chetao2(nl1,nl2,nl3,nl4,nl5, nl6, namenl, num, idnew, namenew)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
sl5 = GetItemCount(nl5)
sl6 = GetItemCount(nl6)

if GetItemCount(nl1) >= num and GetItemCount(nl2) >= num and GetItemCount(nl3) >= num and GetItemCount(nl4) >= num and GetItemCount(nl5) >= num and GetItemCount(nl6) >= num then
		for i=1,num do
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
			DelItem(nl6)
		end
		if GetItemCount(nl1) == sl1 - num and GetItemCount(nl2) == sl2 - num and GetItemCount(nl3) == sl3 - num and GetItemCount(nl4) == sl4 - num and GetItemCount(nl5) == sl5 - num and GetItemCount(nl6) == sl6 - num then
			for k=1,num do AddEventItem(idnew) end
			Msg2Player("B�n nh�n ���c "..num.." "..namenew.."")
		else
		Talk(1,"","hack ha em")
		end
		
		
else
	Talk(1,"","<color=red>Nguy�n li�u kh�ng ��:<color>\n"..namenew.." = M�ng C�u + D�a + �u �� + Xo�i + Sung + "..namenl.."")
end
end


function giangsinh()
SayNew("<color=green>L� Quan<color>: S� ki�n Gi�ng Sinh 2017 �� b�t ��u t� 22/12 - 31/12 ",5,
"Ch� t�o ng��i tuy�t /noel_chetao",
"Mua c�y th�ng /noel_muacaythong",
"Gia h�n s� ki�n Gi�ng Sinh 2017 /noel_giahan",
"Nh�n ph�n th��ng M�c S� Ki�n /noel_ptmoc",
"Tho�t./no")
end

function noel_ptmoc()
if CheckFreeBoxItem(4,364,1,1) == 0 then
	Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
	return
end
	if GetTask(463) == 0 then
		if GetTask(465) >= 3000 then
			SetTask(463, 1)
			for p=1,5 do 
					idxitem = AddEventItem(119)
					SetBindItem(idxitem,1)
			end
			Msg2Player("B�n nh�n ���c 5 Ti�n Th�o L� 3 Gi� ")
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(465).."000000 / 3000000000 kinh nghi�m")
		end
	elseif GetTask(463) == 1 then
		if GetTask(465) >= 6000 then
			SetTask(463, 2)
			for p=1,2 do 
					idxitem = AddEventItem(410)
					SetBindItem(idxitem,1)
			end
			Msg2Player("B�n nh�n ���c 2 Tu Luy�n �an ")
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(465).."000000 / 6000000000 kinh nghi�m")
		end
	elseif GetTask(463) == 2 then
		if GetTask(465) >= 10000 then
			SetTask(463, 3)
			for p=1,10 do 
					idxitem = AddEventItem(414)
			end
			for p=1,5 do 
					idxitem = AddEventItem(415)
			end
			Msg2Player("B�n nh�n ���c 10 Ng�c C��ng H�a v� 5 �� T�i T�o ")
		else
			Talk(1,"","B�n ch�a ��t ���c m�c nh�n th��ng: <color=yellow>"..GetTask(465).."000000 / 10000000000 kinh nghi�m")
		end	
	else
		Talk(1,"","Ng��i �� nh�n �� ph�n th��ng M�c S� Ki�n")
	end
end

function noel_giahan()
	if GetTask(466) >= 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 3 then
		for k=1,3 do DelItem(17) end
		if GetItemCount(17) == knb - 3 then
			SetTask(466, GetTask(466) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n Gi�ng Sinh 2017 l�n <color=yellow>"..GetTask(466).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(466).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 3 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end

function noel_chetao()
SayNew("<color=green>L� Quan<color>: Ch�n lo�i ng��i tuy�t c�n ch� t�o: ",7,
"1x Ng��i Tuy�t Kh�n Xanh/noel_chetao1",
"1x Ng��i Tuy�t Kh�n �� /noel_chetao1",
"1x Ng��i Tuy�t Th��ng /noel_chetao1",
"10x Ng��i Tuy�t Kh�n Xanh/noel_chetao1",
"10x Ng��i Tuy�t Kh�n �� /noel_chetao1",
"10x Ng��i Tuy�t Th��ng /noel_chetao1",
"Tho�t./no")
end

function noel_chetao1(nsel)
i = nsel + 1
if i == 1 then
noel_chetao2(416,417,418,419,420, "Kh�n Cho�ng Xanh",10000,1, 423, "Ng��i Tuy�t Kh�n Xanh")
elseif i == 2 then
noel_chetao2(416,417,418,419,421, "Kh�n Cho�ng �� ",30000,1, 424, "Ng��i Tuy�t Kh�n �� ")
elseif i == 3 then
noel_chetao2(416,417,418,419,422, "C�y Th�ng",10000,1, 425, "Ng��i Tuy�t Th��ng")
elseif i == 4 then
noel_chetao2(416,417,418,419,420, "Kh�n Cho�ng Xanh",100000,10, 423, "Ng��i Tuy�t Kh�n Xanh")
elseif i == 5 then
noel_chetao2(416,417,418,419,421, "Kh�n Cho�ng �� ",300000,10, 424, "Ng��i Tuy�t Kh�n �� ")
elseif i == 6 then
noel_chetao2(416,417,418,419,422, "C�y Th�ng",100000,10, 425, "Ng��i Tuy�t Th��ng")
end
end

function noel_chetao2(nl1,nl2,nl3,nl4,nl5, namenl, cash, num, idnew, namenew)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)
sl5 = GetItemCount(nl5)
vang = GetCash()
if GetItemCount(nl1) >= num and GetItemCount(nl2) >= num and GetItemCount(nl3) >= num and GetItemCount(nl4) >= num and GetItemCount(nl5) >= num and GetCash() >= cash then
		for i=1,num do
			DelItem(nl1)
			DelItem(nl2)
			DelItem(nl3)
			DelItem(nl4)
			DelItem(nl5)
		end
			Pay(cash)
		if GetItemCount(nl1) == sl1 - num and GetItemCount(nl2) == sl2 - num and GetItemCount(nl3) == sl3 - num and GetItemCount(nl4) == sl4 - num and GetItemCount(nl5) == sl5 - num and GetCash() == vang - cash then
			for k=1,num do AddEventItem(idnew) end
			Msg2Player("B�n nh�n ���c "..num.." "..namenew.."")
		else
		Talk(1,"","hack ha em")
		end
		
		
else
	Talk(1,"","<color=red>Nguy�n li�u kh�ng ��:<color>\n"..namenew.." = Hoa Tuy�t + C� R�t + C�nh Th�ng + N�n Gi�ng Sinh + "..namenl.." + "..cash.." l��ng")
end
end
function noel_muabanhkem()
SayNew("<color=green>L� Quan<color>: Ta ��y b�n <color=yellow>4 B�nh Kem Gi�ng Sinh = 1 Kim Nguy�n B�o<color>. Ng��i c� ch�c ch�n mua ch�?",2,
"Ta mu�n mua C�y Th�ng /noel_muabanhkem1",
"Ta s� quay l�i sau/no")
end

function noel_muabanhkem1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,4 do AddEventItem(382) end
		Msg2Player("B�n nh�n ���c 4 B�nh Kem Gi�ng Sinh")
		inlog3("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(382).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>1 Kim Nguy�n B�o<color>, kh�ng th� mua")
end
end

function noel_muacaythong()
if CheckFreeBoxItem(0,10,6,1) == 0 then
Talk(1,"","R��ng kh�ng �� ch� tr�ng, vui l�ng d�n l�i r��ng !")
return
end
SayNew("<color=green>L� Quan<color>: Ta ��y b�n <color=yellow>40 C�y Th�ng = 1 Kim Nguy�n B�o<color>. Ng��i c� ch�c ch�n mua ch�?",2,
"Ta mu�n mua C�y Th�ng /noel_muacaythong1",
"Ta s� quay l�i sau/no")
end

function noel_muacaythong1()
sl = GetItemCount(17)

if GetItemCount(17) >= 1 then
	DelItem(17)
	if GetItemCount(17) == sl - 1 then
		for k=1,40 do AddEventItem(422) end
		Msg2Player("B�n nh�n ���c 40 C�y Th�ng")
		inlog2("Acc:["..GetAccount().."]\tName: ["..GetName().."]\tLv: "..GetLevel().."\tKNB: "..GetItemCount(17).."\tBanh: "..GetItemCount(422).."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Ng��i kh�ng mang �� <color=red>1 Kim Nguy�n B�o<color>, kh�ng th� mua")
end
end

function nhiemvuanhhung()
vt = ah_checknhom(GetName())
if vt == 0 then
	SayNew("<color=green>L� Quan<color>: Ng��i c�n ta gi�p g� ?",2,
	"��ng k� Nh�m Anh H�ng /ah_dangky",
	"Tho�t./no")
else
	SayNew("<color=green>L� Quan<color>: Ng��i c�n ta gi�p g� ?",4,
	"Nh�n nhi�m v� Anh H�ng /ah_xem",
	"Xem �i�m t�ch l�y nh�m/ah_xem",
	"Gi�i t�n nh�m /ah_xem",
	"Tho�t./no")
end
end
function ah_xem()
vt = ah_checknhom(GetName())
Talk(1,"","Nh�m Anh H�ng c�a b�n g�m:\n1. "..DSAH[vt][1].."\n2. "..DSAH[vt][2].."\n3. "..DSAH[vt][3].."\n�i�m t�ch l�y nh�m: <color=red>"..DSAH[vt][4].."")
end

function ah_dangky()
if GetTeamSize() == 3 then
	if GetCash() >= 500000 then
		ten1 = ""
		ten2 = ""
		ten3 = ""
		idx = PlayerIndex
		team = GetTeam()
		for i=1,GetCountPlayerMax() do
				PlayerIndex = i
				if GetTeam() == team then
					if ten1 == "" then
						ten1 = GetName()
					elseif ten2 == "" then
						ten2 = GetName()
					elseif ten3 == "" then
						ten3 = GetName()
					end
				end
		end
		PlayerIndex = idx
		if ah_checknhom(ten1) == 0 and ah_checknhom(ten2) == 0 and ah_checknhom(ten3) == 0 then
				DSAH[getn(DSAH)+1] = {ten1,ten2,ten3,0}
				BANG1 = TaoBang(DSAH,"DSAH")
				LuuBang("datascript/danhsachanhhung.lua",BANG1)
				Msg2SubWorld("<color=yellow>Kh�i t�o nh�m Anh H�ng th�nh c�ng: <color=red>["..ten1.."], ["..ten2.."], ["..ten3.."]")
		else
				Talk(1,"","C� th�nh vi�n trong nh�m �� gia nh�p nh�m kh�c, kh�ng th� kh�i t�o nh�m !")
		end
	else
		Talk(1,"","L� ph� l�p nh�m l� 50 v�n l��ng !")
	end
else
	Talk(1,"","T� ��i b�t bu�c 3 ng��i m�i c� th� ��ng k� nh�m !")
end
end

function ah_checknhom(ten)
for i=1,getn(DSAH) do
	for k=1,3 do
			if ten == DSAH[i][k] then
				return i
			end
	end
end
return 0
end

function thamgia()
	if CheckFreeBoxItem(0,10,6,1) == 0 then
	Talk(1,"","R��ng kh�ng �� ch� tr�ng, vui l�ng d�n l�i r��ng !")
	return
	end
	
	if GetTask(329) < 1000 then
	Talk(1,"","B�n �� s� d�ng "..GetTask(329).." / 1000 Cu�n S�ch T�m, kh�ng th� tham gia s� ki�n V�ng Quay May M�n !")
	return
	end

	if GetTask(329) > 1000000 then
	Talk(1,"","B�n �� tham ra s� ki�n n�y r�i, kh�ng th� s� d�ng th�m !")
	return
	end
	sl = GetTask(329)
	SetTask(329 , GetTask(329) + 1000000)
	if GetTask(329) == sl + 1000000 then
		sx = RandomNew(1,100)
		if sx < 80 then
				for p=1,6 do AddEventItem(120) end
				Msg2SubWorld("��i hi�p "..GetName().." tham gia V�ng Quay May M�n nh�n ���c <color=yellow>6 b�nh Ti�n Th�o L� ")
		elseif sx >= 80 and sx < 90 then
				AddEventItem(random(273,277))
				Msg2SubWorld("��i hi�p "..GetName().." tham gia V�ng Quay May M�n nh�n ���c <color=yellow>M�nh Ng�a 90 ")
		elseif sx >= 90 and sx < 93 then
				AddEventItem(19)
				Msg2SubWorld("��i hi�p "..GetName().." tham gia V�ng Quay May M�n nh�n ���c <color=yellow>Bi Kip 120 ")
		elseif sx >= 93 and sx < 96 then
				AddEventItem(random(283,302))
				Msg2SubWorld("��i hi�p "..GetName().." tham gia V�ng Quay May M�n nh�n ���c <color=yellow>M�nh An Bang")
		else		
				AddEventItem(random(303,312))
				Msg2SubWorld("��i hi�p "..GetName().." tham gia V�ng Quay May M�n nh�n ���c <color=yellow>M�nh ��nh Qu�c")
		end

	else
		Talk(1,"","hack ha em")
	end


end

function chua()
if GetAccount() == "vantoi" then
nhagiao_vietsach()
else
Talk(1,"","Ch�c n�ng s� c�p nh�t trong s�ng nay !")
end
end

function nhagiao_vietsach()
SayNew("<color=green>L� Quan<color>: Ch�n lo�i s�ch mu�n gh�p : ",7,
"1x Cu�n S�ch Xanh /nhagiao_vietsach2",
"1x Cu�n S�ch V�ng /nhagiao_vietsach2",
"1x Cu�n S�ch T�m /nhagiao_vietsach2",
"10x Cu�n S�ch Xanh /nhagiao_vietsach2",
"10x Cu�n S�ch V�ng /nhagiao_vietsach2",
"10x Cu�n S�ch T�m /nhagiao_vietsach2",
"Tho�t./no")
end

function nhagiao_vietsach2(nsel)
i = nsel + 1
if i == 1 then
nhagia_vietsach3_1(178,179,180,-1,183,1,"Cu�n S�ch Xanh")
elseif i == 2 then
nhagia_vietsach3(178,179,180,181,184,1,"Cu�n S�ch V�ng")
elseif i == 3 then
nhagia_vietsach3(178,179,180,182,185,1,"Cu�n S�ch T�m")
elseif i == 4 then 
nhagia_vietsach3_1(178,179,180,-1,183,10,"Cu�n S�ch Xanh")
elseif i == 5 then
nhagia_vietsach3(178,179,180,181,184,10,"Cu�n S�ch V�ng")
elseif i == 6 then
nhagia_vietsach3(178,179,180,182,185,10,"Cu�n S�ch T�m")
end
end

function nhagia_vietsach3_1(nl1,nl2,nl3,nl4, itemnew, soluong, itemname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)

if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
	end
	if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." "..itemname.."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
end
end
function nhagia_vietsach3(nl1,nl2,nl3,nl4, itemnew, soluong, itemname)
sl1 = GetItemCount(nl1)
sl2 = GetItemCount(nl2)
sl3 = GetItemCount(nl3)
sl4 = GetItemCount(nl4)

if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong and sl4 >=  soluong then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	if GetItemCount(nl1) == sl1 - soluong and GetItemCount(nl2) == sl2 - soluong and GetItemCount(nl3) == sl3 - soluong and GetItemCount(nl4) == sl4 - soluong then
		for p=1,soluong do AddEventItem(itemnew) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." "..itemname.."")
	else
		Talk(1,"","hack ha em")
	end
else
	Talk(1,"","Nguy�n li�u kh�ng ��, vui l�ng ki�m tra l�i !")
end
end
function vipcodez()
Talk(1,"","Ch�c n�ng ch�a cho s� d�ng !")
end
function giftcode()
main1()
end



function mainxx()
SayNew("<color=green>L� Quan<color>: Vui l�ng ch�n s� ki�n c�n �p ",5,
"Gh�p L�ng ��n Trung Thu /gheplongden",
"Gh�p L� C� Chi�n Th�ng /gheplaco",
"Mua Gi�y Ki�ng Cam /muaevent",
"Gia H�n S� Ki�n Trung Thu /giahanquockhanh",
"Tho�t./no")
end
function nhanthuongkn()

if GetTask(308) == 1000 then
		SetTask(308,1001)
		AddSkillEffect(460,1,48*60*60*18)
		Setx2Exp(48*60*60*18)
		SetTask(141,1)
		Msg2Player("B�n nh�n ���c 2 ng�y nh�n ��i kinh nghi�m, t�nh t� b�y gi�")
else
if GetTask(308) == 1001 then
Talk(1,"","Ng��i �� nh�n th��ng r�i, kh�ng th� nh�n th�m ")
else
Talk(1,"","Ng��i s� d�ng ch� "..GetTask(308).."/1000 Thuy�n R�ng, kh�ng th� nh�n ph�n th��ng Max S� Ki�n")
end
end
end

function muamaicheo()
SayNew("<color=green>L� Quan:<color> Hi�n t�i kh�ng c� s� ki�n n�o di�n ra: ",2,
"X�c nh�n mua 10 M�i Ch�o = 5 v�n l��ng/muamaicheo1",
"Tho�t./no")
end
function muamaicheo1()
cash = GetCash()

if GetCash() >= 50000 then
Pay(50000)
if GetCash() == cash - 50000 then
	for k=1,10 do AddEventItem(258) end
	Msg2Player("B�n nh�n ���c <color=yellow>10 M�i Ch�o")
	Talk(0,"")
else
Talk(1,"","Hack ha em")
end
else
Talk(1,"","Ng��i kh�ng mang �� 5 v�n l��ng, kh�ng th� mua")
end
end


function chetaothuyen()
SayNew("<color=green>L� Quan:<color> Hi�n t�i kh�ng c� s� ki�n n�o di�n ra: ",4,
"Ch� t�o 1 Thuy�n R�ng/chetaothuyen1",
"Ch� T�o 10 Thuy�n R�ng /chetaothuyen1",
"Ch� T�o 20 Thuy�n R�ng /chetaothuyen1",
"Tho�t./no")
end

function chetaothuyen1(nsel)
soluong = 1
if nsel == 1 then
soluong = 10
elseif nsel == 2 then
soluong = 20
end

sl1 = GetItemCount(254)
sl2 = GetItemCount(255)
sl3 = GetItemCount(256)
sl4 = GetItemCount(257)
sl5 = GetItemCount(258)
if sl1 >= soluong and sl2 >= soluong and sl3 >= soluong and sl4 >= soluong and sl5 >= soluong then
	for i=1,soluong do 
		DelItem(254)
		DelItem(255)
		DelItem(256)
		DelItem(257)
		DelItem(258)
	end
	if GetItemCount(254) == sl1 - soluong and GetItemCount(255) == sl2 - soluong and GetItemCount(256) == sl3 - soluong and GetItemCount(257) == sl4 - soluong and GetItemCount(258) == sl5 - soluong then
			for i=1,soluong do AddEventItem(261) end
			Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." Thuy�n R�ng")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","Nguy�n li�u kh�ng ��:\n<color=yellow>"..sl1.."/"..soluong.."<color> Long ��u, <color=yellow>"..sl2.."/"..soluong.."<color> Th�n R�ng\n<color=yellow>"..sl3.."/"..soluong.."<color> X��ng R�ng, <color=yellow>"..sl4.."/"..soluong.."<color> �u�i R�ng\n<color=yellow>"..sl5.."/"..soluong.."<color> M�i Ch�o")
end
end
function taocode()
LoginLog = openfile("Data/SuKien/logGiaHan.txt", "a");
if LoginLog then
for i=1,300 do
seri = random(111111,999999)
mathe = random(111111,999999)
	write(LoginLog,"{"..seri..","..mathe..",0},\n");
end
end
closefile(LoginLog)
Msg2Player("XONG")
end

function nhanthuongtop()

vt = checktopcaothu()
if vt == 0 then
Talk(1,"","B�n kh�ng thu�c danh s�ch top, kh�ng th� nh�n th��ng")
return
end

if vt > 0 then
	if DSTOP[vt][2] == 1 then
			if CheckFreeBoxItem(0,10,7,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,7,10,0,0,0)
				Msg2Player("B�n nh�n ���c 1 Phi�n V� ")
						
			else
				Msg2Player("R��ng kh�ng c�n ch� tr�ng")
			end
	elseif DSTOP[vt][2] == 2 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,6,10,0,0,0)
				Msg2Player("B�n nh�n ���c 1 B�n Ti�u")
						
			else
				Msg2Player("R��ng kh�ng c�n ch� tr�ng")
			end
		elseif DSTOP[vt][2] == 3 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,8,10,0,0,0)
				Msg2Player("B�n nh�n ���c 1 Phi V�n")
			else
				Msg2Player("R��ng kh�ng c�n ch� tr�ng")
			end	
	elseif DSTOP[vt][2] == 4 then
			if CheckFreeBoxItem(0,10,6,1) ~= 0 then
				DSTOP[vt][2] = 0
				idxitem =  AddItem(0,10,8,1,0,0,0)
				Msg2Player("B�n nh�n ���c 1 Phi V�n")
			else
				Msg2Player("R��ng kh�ng c�n ch� tr�ng")
			end			
			
	else
		Msg2Player("B�n kh�ng c� ng�a �� nh�n !")
	end

	if DSTOP[vt][3] > 0  then
		Earn(DSTOP[vt][3] * 10000)
		Msg2Player("B�n nh�n ���c "..DSTOP[vt][3].." v�n l��ng")
		DSTOP[vt][3] = 0		
		Msg2SubWorld("<color=yellow>Ch�c m�ng "..GetName().." �� nh�n ���c ph�n th��ng Top "..vt.." Cao Th� ")
	else
		Msg2Player("B�n kh�ng c� ng�n l��ng �� nh�n")
	end
	
	if DSTOP[vt][4] == 1  then
		if CheckFreeBoxItem(0,10,6,1) ~= 0 then
			AddEventItem(164)
			Msg2Player("B�n nh�n ���c Nh�c V��ng Ki�m")
			DSTOP[vt][4] = 0	
		else
			Msg2Player("H�nh trang kh�ng �� ch� tr�ng �� nh�n Nh�c V��ng Ki�m, h�y ki�m tra r�i nh�n l�i !")
		end
	else
		Msg2Player("B�n kh�ng c� Nh�c V��ng Ki�m �� nh�n")
	end
	
end
savetop()
end

function savetop()
				BANG2 = TaoBang(DSTOP,"DSTOP")
				LuuBang("script/danhsachtopcaothu.lua",BANG2)
end
function checktopcaothu()
for i=1,getn(DSTOP) do
	if GetAccount() == DSTOP[i][1] then
		return i
	end
end
return 0
end

function giahanquockhanh()
	if GetTask(318) >= 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if knb >= 8 then
		for k=1,8 do DelItem(17) end
		if GetItemCount(17) == knb - 8 then
			SetTask(318, GetTask(318) + 1)
			Msg2Player("B�n �� gia h�n s� ki�n Qu�c Kh�nh 2 - 9 l�n <color=yellow>"..GetTask(318).." l�n")
			inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(318).." Lan")
			Talk(0,"")
		else
			Talk(1,"","hack ha em")
		end
	else
	Talk(1,"","Ng��i kh�ng �� 8 Kim Nguy�n b�o �� gia h�n s� ki�n")
	end
end
function gheplaco()
Talk(1,"","�ang c�p nh�t")
end
function gheplaco()
gheplaco1(68,69,70,71,50000,72,1,"L� C� Chi�n Th�ng")
end

function gheplaco1(nl1, nl2, nl3, nl4, tienvan, idxitem, soluong, tenitem)
n1 = GetItemCount(nl1)
n2 = GetItemCount(nl2)
n3 = GetItemCount(nl3)
n4 = GetItemCount(nl4)
cash = GetCash()

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	Pay(tienvan)
	if GetItemCount(nl1) == n1 - soluong and GetItemCount(nl2) == n2 - soluong and GetItemCount(nl3) == n3 - soluong and GetItemCount(nl4) == n4 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(idxitem) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." "..tenitem.."")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"",""..tenitem.." = M�nh C� 1 + M�nh C� 2 + M�nh C� 3 + M�nh C� 4 + "..tienvan.." l��ng")
end
end

function trungthu_main()
if CheckFreeBoxItem(4,17,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end
SayNew("<color=green>L� Quan<color>: B�n �ang c� <color=yellow>"..GetTask(493).." �i�m T�ch L�y S� Ki�n",8,
"Gh�p L�ng ��n /trungthu_gheplongden",
"Gia h�n s� ki�n /trungthu_giahan",
"Nh�n ph�n th��ng m�c s� ki�n /trungthu_ptmoc",
"Tho�t./no")
end

function trungthu_ptmoc()
if CheckFreeBoxItem(0,10,5,5) == 0 then
Talk(1,"","H�nh trang kh�ng �� 2 x 3 � ch� tr�ng, xin ki�m tra l�i !")
return
end

if GetTask(460) == 0 then
	if GetTask(463) >= 10000 then
		sx = random(1,2)
		SetTask(460,1)
		if sx == 1 then
			idxitem = AddEventItem(113)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 30 Ph�t [Kh�a]")
			idxitem = AddEventItem(118)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 60 Ph�t [Kh�a]")
		else
			idxitem = AddEventItem(114)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 60 Ph�t [Kh�a]")
			idxitem = AddEventItem(117)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 30 Ph�t [Kh�a]")
		end
		Talk(0,"")		
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c "..GetTask(463).."0000 / 100000000, kh�ng th� nh�n th��ng")
	end
elseif GetTask(460) == 1 then
	if GetTask(463) >= 20000 then
		sx = random(1,2)
		SetTask(460,2)
		if sx == 1 then
			idxitem = AddEventItem(115)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 6 Gi� [Kh�a]")
			idxitem = AddEventItem(120)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 3 Gi� [Kh�a]")
		else
			idxitem = AddEventItem(116)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L� 3 Gi� [Kh�a]")
			idxitem = AddEventItem(119)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng 6 Gi� [Kh�a]")
		end
		Talk(0,"")		
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c "..GetTask(463).."0000 / 200000000, kh�ng th� nh�n th��ng")
	end

elseif GetTask(460) == 2 then
	if GetTask(463) >= 30000 then
		SetTask(460,3)
		idxitem = AddEventItem(random(28,31))
		SetBindItem(idxitem , 1)
		Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c "..GetTask(463).."0000 / 300000000, kh�ng th� nh�n th��ng")
	end
elseif GetTask(460) == 3 then
	if GetTask(463) >= 50000 then
		SetTask(460,4)
		if GetTask(199) < 10 and GetTask(198) < 5 then
			idxitem = AddEventItem(random(0,1))
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(199) == 10 and GetTask(198) == 5 then
			idxitem = AddEventItem(random(0,1))
			Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(199) == 10 then
			idxitem = AddEventItem(1)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		elseif GetTask(198) == 5 then
			idxitem = AddEventItem(0)
			SetBindItem(idxitem , 1)
			Msg2Player("B�n nh�n ���c 1 "..GetNameItemBox(idxitem).."")
		end
	else
		Talk(1,"","Ng��i ch�a ��t �� m�c "..GetTask(463).."0000 / 500000000, kh�ng th� nh�n th��ng")
	end	
end
end

function trungthu_banh1()
	idcu = 145
	idmoi = 146
	cost = 5
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B�n nh�n ���c 1 <color=yellow>B�nh Trung Thu ��u Xanh")
			

	else
		Talk(1,"","Ng��i kh�ng �� nguy�n li�u, vui l�ng ki�m tra l�i")
	end
end
function trungthu_banh2()
	idcu = 146
	idmoi = 147
	cost = 20
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B�n nh�n ���c 1 <color=yellow>B�nh Trung Thu Nh�n Tr�ng")

	else
		Talk(1,"","Ng��i kh�ng �� nguy�n li�u, vui l�ng ki�m tra l�i")
	end
end
function trungthu_banh3()
		idcu = 147
	idmoi = 148
	cost = 50
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B�n nh�n ���c 1 <color=yellow>B�nh Trung Thu ��c Bi�t")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiBanhTrungThu.txt", "a");
			if LoginLog then
			write(LoginLog,"[3] "..GetAccount().." - "..GetName().." - Cu: ["..GetItemCount(idcu).."] - Moi: ["..GetItemCount(idmoi).."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

	else
		Talk(1,"","Ng��i kh�ng �� nguy�n li�u, vui l�ng ki�m tra l�i")
	end
end
function trungthu_banh4()
	idcu = 148
	idmoi = 149
	cost = 150
	if GetItemCount(idcu) >= 3 and GetTask(493) >= cost then
			for p=1,3 do DelItem(idcu) end
			SetTask(493, GetTask(493) - cost)
			idxitem = AddEventItem(idmoi)
			Msg2Player("B�n nh�n ���c 1 <color=yellow>B�nh Trung Thu H�t Sen")
			
			thoigian = tonumber(date("%H%M%d%m"))
			LoginLog = openfile("Data/SuKien/DoiBanhTrungThu.txt", "a");
			if LoginLog then
			write(LoginLog,"[4] "..GetAccount().." - "..GetName().." - Cu: ["..GetItemCount(idcu).."] - Moi: ["..GetItemCount(idmoi).."] - Time: "..thoigian.."\n");
			end
			closefile(LoginLog)

	else
		Talk(1,"","Ng��i kh�ng �� nguy�n li�u, vui l�ng ki�m tra l�i")
	end
end

function trungthu_doithuytinh()
OpenCheckItemBox("Th�ng C�p Trang B�","H�y ��t 1 vi�n Th�y Tinh B�t K� v�o ","okhaha")
end


function okhaha()
numitem1 = GetIdxItemBoxQuestKey(28)
numitem2 = GetIdxItemBoxQuestKey(29)
numitem3 = GetIdxItemBoxQuestKey(30)

if numitem1 == 0 and numitem2 == 0 and numitem3 == 0 then
Talk(1,"","B�n kh�ng ��t vi�n th�y tinh n�o v�o, kh�ng th� ��i �i�m") 
return
end

iditem = 0
if numitem1 > 0 then
iditem = 28
elseif numitem2 > 0 then
iditem = 29
elseif numitem3 > 0 then
iditem = 30
end

numitem = GetIdxItemBoxQuestKey(iditem)
if (numitem == -1) then
Msg2Player("B�n ch� c� th� ��t 1 vi�n th�y tinh ")
Talk(1,"","<color=red>L�i<color>: V��t qu� s� l��ng y�u c�u: 1 vi�n Th�y Tinh!")
return
end
if (numitem == -2) then
Msg2Player("Nguy�n li�u ��t v�o kh�ng ph�i Th�y Tinh ")
Talk(1,"","<color=red>L�i<color>: Nguy�n li�u ��t v�o kh�ng ph�i l� Th�y Tinh!")
return
end
if (GetBindItem(numitem) == 1) then
Talk(1,"","Th�y Tinh kh�a kh�ng ���c ph�p ��i, n�u Th�y Tinh b�n ��i t� Shop V�ng Kh�a vui l�ng li�n h� H� Tr� Tr�c Tuy�n �� gi�i quy�t")
return
end

DelEquipItemQuestKey(iditem)
if  GetIdxItemBoxQuestKey(iditem) == 0 then
	SetTask(493, GetTask(493) + 20)
	Msg2Player("T�ch l�y s� ki�n hi�n t�i: "..GetTask(493).."")
else
	Talk(1,"","hack ha em")
end
end

function x()
if GetItemCount(28) > 0 then
	DelItem(28)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("T�ch l�y s� ki�n hi�n t�i: "..GetTask(493).."")
elseif GetItemCount(29) > 0 then
	DelItem(29)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("T�ch l�y s� ki�n hi�n t�i: "..GetTask(493).."")
elseif GetItemCount(30) > 0 then
	DelItem(30)
	SetTask(493, GetTask(493) + 20)
	Msg2Player("T�ch l�y s� ki�n hi�n t�i: "..GetTask(493).."")
else
	Talk(1,"","Ng��i kh�ng mang theo Th�y Tinh trong h�nh trang, kh�ng th� ��i �i�m")
end 
end
function trungthu_giahan()
	if GetTask(464) >= 2 then
		Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
		return
	end
	knb = GetItemCount(17)
	if GetTask(464) == 0 then
		if knb >= 1 then
			DelItem(17)
			if GetItemCount(17) == knb - 1 then
				SetTask(464, GetTask(464) + 1)
				Msg2Player("B�n �� gia h�n s� ki�n Vui R�m trung Thu l�n <color=yellow>"..GetTask(464).." l�n")
				inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(464).." Lan")
				Talk(0,"")
			else
				Talk(1,"","hack ha em")
			end
		else
		Talk(1,"","Ng��i kh�ng �� 1 Kim Nguy�n b�o �� gia h�n s� ki�n")
		end
	elseif GetTask(464) == 1 then
		if knb >= 2 then
			DelItem(17)
			DelItem(17)
			if GetItemCount(17) == knb - 2 then
				SetTask(464, GetTask(464) + 1)
				Msg2Player("B�n �� gia h�n s� ki�n Vui R�m trung Thu l�n <color=yellow>"..GetTask(464).." l�n")
				inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(464).." Lan")
				Talk(0,"")
			else
				Talk(1,"","hack ha em")
			end
		else
		Talk(1,"","Ng��i kh�ng �� 2 Kim Nguy�n b�o �� gia h�n s� ki�n")
		end
	end
end
function trungthu_gheplongden()
SayNew("<color=green>L� Quan<color>: Ch�n lo�i l�ng ��n mu�n �p ",10,
"1x L�ng ��n B��m B��m /gheplongden1",
"1x L�ng ��n Ng�i Sao /gheplongden1",
"1x L�ng ��n C� Ch�p /gheplongden1",
"10x L�ng ��n B��m B��m /gheplongden1",
"10x L�ng ��n Ng�i Sao /gheplongden1",
"10x L�ng ��n C� Ch�p /gheplongden1",
"50x L�ng ��n B��m B��m /gheplongden1",
"50x L�ng ��n Ng�i Sao /gheplongden1",
"50x L�ng ��n C� Ch�p /gheplongden1",
"Tho�t./no")
end

function gheplongden1(nsel)
i = nsel + 1
if i == 1 then
gheplongden2(136,137,138,123,0,139,1,"Gi�y Ki�ng V�ng","L�ng ��n B��m B��m")
elseif i == 2 then
gheplongden2(136,137,138,126,30000,140,1,"Gi�y Ki�ng �� ","L�ng ��n Ng�i Sao")
elseif i == 3 then
gheplongden2(136,137,138,127,50000,143,1,"Gi�y Ki�ng Cam","L�ng ��n C� Ch�p")
elseif i == 4 then
gheplongden2(136,137,138,123,0,139,10,"Gi�y Ki�ng V�ng","L�ng ��n B��m B��m")
elseif i == 5 then
gheplongden2(136,137,138,126,300000,140,10,"Gi�y Ki�ng �� ","L�ng ��n Ng�i Sao")
elseif i == 6 then
gheplongden2(136,137,138,127,500000,143,10,"Gi�y Ki�ng Cam","L�ng ��n C� Ch�p")
elseif i == 7 then
gheplongden2(136,137,138,123,0,139,50,"Gi�y Ki�ng V�ng","L�ng ��n B��m B��m")
elseif i == 8 then
gheplongden2(136,137,138,126,1500000,140,50,"Gi�y Ki�ng �� ","L�ng ��n Ng�i Sao")
elseif i == 9 then
gheplongden2(136,137,138,127,2500000,143,50,"Gi�y Ki�ng Cam","L�ng ��n C� Ch�p")
end
end

function gheplongden2(nl1, nl2, nl3, nl4, tienvan, idxitem, soluong, tennl, tenitem)
n1 = GetItemCount(nl1)
n2 = GetItemCount(nl2)
n3 = GetItemCount(nl3)
n4 = GetItemCount(nl4)
cash = GetCash()

if n1 >= soluong and n2  >= soluong and n3  >= soluong and n4  >= soluong and cash > tienvan then
	for i=1,soluong do 
		DelItem(nl1)
		DelItem(nl2)
		DelItem(nl3)
		DelItem(nl4)
	end
	Pay(tienvan)
	if GetItemCount(nl1) == n1 - soluong and GetItemCount(nl2) == n2 - soluong and GetItemCount(nl3) == n3 - soluong and GetItemCount(nl4) == n4 - soluong and GetCash() == cash - tienvan then
		for k=1,soluong do AddEventItem(idxitem) end
		Msg2Player("B�n nh�n ���c <color=yellow>"..soluong.." "..tenitem.."")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"",""..tenitem.." = N�n + Thanh Tre + D�y C�i + "..tennl.." + "..tienvan.." l��ng")
end
end
function main1()
--nhapseri()
end

function nhapseri()
w,x,y = GetWorldPos()

OpenStringBox (2,"Nh�p Code" , "acceptcode1")
end

mangthang = {31,28,31,30,31,30,31,31,30,31,30,31}
function acceptcode1(num2)
num = tonumber(num2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
	if CheckFreeBoxItem(4,364,1,1) == 0 then
		Talk(1,"","H�nh trang ph�i �� tr�ng 6 x 5 � m�i c� th� nh�n !")
		return
	end
		

	m_code1 = check_code_1(num)
	if m_code1 ~= 0 then
		UseCode1(m_code1)
		return
	end

	--m_code3 = check_code_2(num)
	--if m_code3 ~= 0 then
	--	UseCode3(m_code3)
	--	return
	--end
	
	
	
	m_code2 = num
	if (m_code2 == 54567841 or m_code2 == 45647878 or m_code2 == 12574524 or m_code2 == 84654621) then
		UseCode2(m_code2)
		return
	end
	
		Talk(1,"","Code kh�ng t�n t�i ")
end


function check_code_tanthu()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(333) == 0 then
				SetTask(333,1000)

				if GetLevel() < 90 then
					lv=90-GetLevel()
					for i=1,lv do AddOwnExp(2000000) end
				end
				
				ngay1 = ngay + 3
				thang1 = thang
				if ngay1 > mangthang[thang] then
						ngay1 = ngay - mangthang[thang]
				thang1 = thang + 1
				end
				itemidx = AddEventItem(264)
					SetBindItem(itemidx , 1)
				SetHSD(itemidx, 2021 , thang1, ngay1, gio )
				for i=1,5 do
					idxitem = AddEventItem(116)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)
				end
				ngay2 = ngay + 7
				thang2 = thang
				if ngay2 > mangthang[thang] then
						ngay2 = ngay - mangthang[thang]
				thang2 = thang + 1
				end
				itemidx = AddItem(0,10,5,1,0,0,0)
				SetTimeItem(itemidx,550324);
				SetHSD(itemidx, 2021 , thang2, ngay2, gio )
				
				Msg2Player("B�n �� s� d�ng th�nh c�ng Gift Code T�n Th� nh�n ���c:")
				Msg2Player("- <color=yellow>��ng c�p 90")
				Msg2Player("- <color=yellow>T�i M�u VIP [3 ng�y]")
				Msg2Player("- <color=yellow>5 Ti�n Th�o L� 6 Gi� ")
				Msg2Player("- <color=yellow>5 N� Nhi H�ng 6 Gi� ")
				Msg2Player("- <color=yellow>Ng�a � V�n ��p Tuy�t [7 ng�y] ")
				
				
				Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� s� d�ng GiftCode T�n Th� nh�n ���c: Level 90, T�i M�u VIP [3 ng�y], 5 Ti�n th�o l� 6 gi�, 6 N� nhi h�ng 6 gi� ")
				
	else
			Talk(1,"","B�n �� s� d�ng Code T�n Th�, kh�ng th� s� d�ng th�m !")
	end
end

function UseCode1(m_code1)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))
	if GetTask(952) ~= 4000 then
			
			if m_code1 == 0 then
			Talk(1,"","Gift Code kh�ng t�n t�i")
			return
			end
			
			if GetTask(952) == 4000 then
				Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
				return	
			end
			
			if CodeLiveShare[m_code1][2] == 0 then			
				SetTask(952, 4000)
			
				thoigian = tonumber(date("%H%M%d%m"))			
				CodeLiveShare[m_code1][2] = thoigian
				CodeLiveShare[m_code1][3] = GetName()
	
				Msg2Player("<color=green>Ch�c m�ng "..GetName().." s� d�ng Gift Code - Fan C�ng nh�n ���c:")
							
			ngay = ngay + 3
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
			
			item = RandomNew(1,9)
			if item == 1 then	
				idxitem = AddItem(0,4,19,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 2 then
				idxitem = AddItem(0,2,79,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 3 then
				idxitem = AddItem(0,5,24,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 4 then
				idxitem = AddItem(0,8,22,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 5 then
				idxitem = AddItem(0,7,41,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 6 then
				idxitem = AddItem(0,6,26,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 7 then
				idxitem = AddItem(0,9,19,1,0,0,0)
				SetTimeItem(idxitem,550324);
			SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 8 then
				idxitem = AddItem(0,3,35,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			elseif item == 9 then
				idxitem = AddItem(0,3,36,1,0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
				Msg2Player("- <color=yellow>"..GetNameItemBox(idxitem).." [3 ng�y]")
			end			
			
			
				
		
				BANG2 = TaoBang(CodeLiveShare,"CodeLiveShare")
				LuuBang("script/danhsach/code_1.lua",BANG2)
			else
				Talk(1,"","Gift Code �� ���c s� d�ng l�c: "..CodeLiveShare[m_code1][2].."")
			end
	else
		Talk(1,"","B�n �� s� d�ng code n�y r�i, kh�ng th� s� d�ng th�m !")
	end
	
end

function UseCode2(m_code2)


ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(959) ~= 2000 then
			
				
			if GetLevel() >= 10 then
				Talk(1,"","��ng c�p v��t qu� 10, kh�ng th� nh�n ph�n th��ng")
				return
			end
			--if CodeAlpha[m_code2][2] == 0 then			
				SetTask(959, 2000)
			
			--	thoigian = tonumber(date("%H%M%d%m"))
			
			--	CodeAlpha[m_code2][2] = thoigian
			--	CodeAlpha[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				Msg2SubWorld("<color=green>Ch�o m�ng  t�n th� "..GetName().." ��n v�i V� L�m H�i �c �� s� d�ng Gift Code T�n Th� ")
				Msg2Player("<color=yellow>- 2 Ti�n Th�o L� 6 gi� ")
				Msg2Player("<color=yellow>- 2 Ti�n Th�o L� 3 gi� ")
				Msg2Player("<color=yellow>- 2 Ti�n Th�o L� 1 gi� ")
				Msg2Player("<color=yellow>- 2 N� Nhi H�ng 6 gi� ")
				Msg2Player("<color=yellow>- 2 N� Nhi H�ng 3 gi� ")
				Msg2Player("<color=yellow>- 2 N� Nhi H�ng 1 gi� ")

	
				for k=1,2 do
					idxitem = AddEventItem(115)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(116)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(117)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(118)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(119)
					SetBindItem(idxitem , 1)
					idxitem = AddEventItem(120)
					SetBindItem(idxitem , 1)	
				end
				

			---------------- END ITEM

			--	BANG2 = TaoBang(CodeAlpha,"CodeAlpha")
			--	LuuBang("script/danhsach/code_2.lua",BANG2)
			--else
			--	Talk(1,"","Gift Code �� ���c s� d�ng cho l�c: "..CodeAlpha[m_code2][2].."")
			--end
	else
		Talk(1,"","B�n �� s� d�ng code n�y r�i, kh�ng th� s� d�ng th�m !")
	end
	
end



function UseCode3(m_code2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
nam = tonumber(date("%y"))
gio = tonumber(date("%H"))

	if GetTask(988) ~= 1000 then
					
			if CodeAlpha[m_code2][2] == 0 then			
				SetTask(988, 1000)
			
				thoigian = tonumber(date("%H%M%d%m"))
				
				CodeAlpha[m_code2][2] = thoigian
				CodeAlpha[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				Msg2Player("<color=green>Ch�c m�ng "..GetName().." s� d�ng Gift Code - ��i H�i Anh H�ng nh�n ���c:")
				Msg2Player("<color=yellow>- 1 Th�n H�nh Ph� 1 Ng�y")
				Msg2Player("<color=yellow>- 1 C�u Nguy�n Th�ch 1 Ng�y")
				
					

			idxitem = AddEventItem(910)
			SetBindItem(idxitem,1)

			ngay = ngay + 1
			if ngay > mangthang[thang] then
				ngay = ngay - mangthang[thang]
				
				if (thang == 12) then
					thang = 0
					nam = nam + 1
				end
				thang = thang + 1	
			end	
		
				idxitem = AddEventItem(696)
				SetBindItem(idxitem,1)			
				SetHSD(idxitem, 2000+nam , thang, ngay, gio )
			---------------- END ITEM

				BANG2 = TaoBang(CodeAlpha,"CodeAlpha")
				LuuBang("script/danhsach/code_2.lua",BANG2)
			else
				Talk(1,"","Gift Code �� ���c s� d�ng cho l�c: "..CodeAlpha[m_code2][2].."")
			end
	else
		Talk(1,"","B�n �� s� d�ng code n�y r�i, kh�ng th� s� d�ng th�m !")
	end
	
end


function UseCode4(m_code2)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
	if GetTask(937) ~= 1000 then
			
			if m_code2 == 0 then
			Talk(1,"","Gift Code kh�ng t�n t�i")
			return
			end
			
			if GetTask(937) == 1000 then
				Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
				return	
			end
			
			if CODE_1607[m_code2][2] == 0 then			
				SetTask(937, 1000)
			
				thoigian = tonumber(date("%H%M%d%m"))
				
				CODE_1607[m_code2][2] = thoigian
				CODE_1607[m_code2][3] = GetName()
				
				
			------------------- START ITEM
				
				
				ngay1 = ngay + 3
				thang1 = thang
				if ngay1 > mangthang[thang] then
					ngay1 = ngay - mangthang[thang]
					thang1 = thang + 1
				end
				idxitem = AddEventItem(264)
				SetBindItem(idxitem,1)			
				SetHSD(idxitem, 2021 , thang1, ngay1, gio )
				
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().." <color=red>�� nh�n ���c code xem Live Stream C�ng Th�nh Chi�n ")
				
				Msg2Player("Ch�c m�ng b�n s� d�ng Gift Code nh�n ���c: ")
				Msg2Player("- <color=yellow>T�i M�u VIP [3 ng�y]")
				Msg2Player("- <color=yellow>3 Ti�n Th�o L� 6 gi�")
				Msg2Player("- <color=yellow>3 N� Nhi H�ng 6 gi�")
		
				for i=1,3 do
						idxitem = AddEventItem(116)
						SetBindItem(idxitem,1)				
				end
				for i=1,3 do
						idxitem = AddEventItem(120)
						SetBindItem(idxitem,1)				
				end
				
				
				ngay2 = ngay + 7
				thang2 = thang
				if ngay2 > mangthang[thang] then
					ngay2 = ngay - mangthang[thang]
					thang2 = thang + 1
				end
				idxitem = AddItem(0,10,5,random(3,4),0,0,0)
				SetTimeItem(idxitem,550324);
				SetHSD(idxitem, 2021 , thang2, ngay2, gio )
				Msg2Player("- <color=yellow>- "..GetNameItemBox(idxitem).."")
				
			---------------- END ITEM

				BANG2 = TaoBang(CODE_1607,"CODE_1607")
				LuuBang("script/Code_1607.lua",BANG2)
			else
				Talk(1,"","Gift Code �� ���c s� d�ng cho l�c: "..CODE_1607[m_code2][2].."")
			end
	else
		Talk(1,"","B�n �� s� d�ng code n�y r�i, kh�ng th� s� d�ng th�m !")
	end
	
end

function nhapmathe()
OpenStringBox (2,"Nh�p M�" , "acceptcode2")
end
function acceptcode2(num2)
num = tonumber(num2)
if num < 111111 or num > 999999 then
Talk(1,"","Ch� ���c nh�p M� Code t�: 111111 - 999999")
return
end
SetTaskTemp(2,num)
Msg2Player("M� Th� �� nh�p: <color=red>"..GetTaskTemp(2).."")
main1()
end
function kickhoat()
m_codeevent = check_code_3()
if m_codeevent> 0 then
		if GetTask(333) > 0 then
			Talk(1,"","Nh�n v�t n�y �� s� d�ng Gift Code, kh�ng th� s� d�ng th�m l�n n�a")
			return	
		end
	if Code_Event[m_codeevent][3] == 0 then
			thoigian = tonumber(date("%H%M%d%m"))
			Code_Event[m_codeevent][3] = thoigian
			SetTask(333,m_codeevent)
	

			for i=1,6 do
				itemidx = AddEventItem(117)
				SetBindItem(itemidx,1);
			end
			for i=1,6 do
				itemidx = AddEventItem(118)
				SetBindItem(itemidx,1);
			end
			Msg2Player("B�n s� d�ng Gift Code th�nh c�ng nh�n ���c: ")
			Msg2Player("- 6 Ti�n Th�o L� 1 Gi� ")
			Msg2Player("- 6 N� Nhi H�ng 1 Gi� ")
			
			
			BANG2 = TaoBang(Code_Event,"Code_Event")
			LuuBang("script/codeevent.lua",BANG2)
			Msg2Player("Ch�c m�ng b�n nh�n th�nh c�ng GIFT CODE")
			
	else
			Talk(1,"","Gift Code �� ���c s� d�ng l�c: "..Code_Event[m_codeevent][3].."")
	end
else
Talk(1,"","Seri ho�c m� code kh�ng ��ng, GIFT CODE kh�ng t�n t�i !")
end
end

function check_code_1(num)
for i=1,getn(CodeLiveShare) do
	if num == CodeLiveShare[i][1] then
		return i
	end
end
return 0
end
function check_code_2()
for i=1,getn(CodeAlpha) do
	if num == CodeAlpha[i][1] then
		return i
	end
end
return 0
end
function check_code_3()
for i=1,getn(CODE_0507) do
	if num == CODE_0507[i][1] then
		return i
	end
end
return 0
end

function check_code_4()
for i=1,getn(CODE_1607) do
	if num == CODE_1607[i][1] then
		return i
	end
end
return 0
end

function gheplongdenxxx()
SayNew("<color=green>L� Quan:<color>: Ch�n lo�i L�ng ��n mu�n ch� t�o : ",10,
"10x L�ng ��n B��m B��m /chetao1",
"10x L�ng ��n Ng�i Sao /chetao1",
"10x L�ng ��n �ng /chetao1",
"10x L�ng ��n Tr�n /chetao1",
"10x L�ng ��n C� Ch�p /chetao1",
"L�ng ��n B��m B��m  /chetao1",
"L�ng ��n Ng�i Sao /chetao1",
"L�ng ��n �ng /chetao1",
"L�ng ��n Tr�n /chetao1",
"L�ng ��n C� Ch�p /chetao1")
end

function chetao1(nsel)
i = nsel+1
if i == 1 then
	chetao11(thanhtre,daycoi,nen,giayvang,0,denbuom,10,"Gi�y Ki�ng V�ng","L�ng ��n B��m B��m")
elseif i == 2 then
	chetao11(thanhtre,daycoi,nen,giaylam,100000,densao,10,"Gi�y Ki�ng Lam","L�ng ��n Ng�i Sao")
elseif i == 3 then
	chetao11(thanhtre,daycoi,nen,giayluc,200000,denong,10,"Gi�y Ki�ng L�c","L�ng ��n �ng")
elseif i == 4 then
	chetao11(thanhtre,daycoi,nen,giaydo,300000,dentron,10,"Gi�y Ki�ng �� ","L�ng ��n Tr�n")
elseif i == 5 then
	chetao11(thanhtre,daycoi,nen,giaycam,300000,denca,10,"Gi�y Ki�ng Cam","L�ng ��n C� Ch�p")
elseif i == 6 then
	chetao11(thanhtre,daycoi,nen,giayvang,0,denbuom,1,"Gi�y Ki�ng V�ng","L�ng ��n B��m B��m")
elseif i == 7 then
	chetao11(thanhtre,daycoi,nen,giaylam,10000,densao,1,"Gi�y Ki�ng Lam","L�ng ��n Ng�i Sao")
elseif i == 8 then
	chetao11(thanhtre,daycoi,nen,giayluc,20000,denong,1,"Gi�y Ki�ng L�c","L�ng ��n �ng")
elseif i == 9 then
	chetao11(thanhtre,daycoi,nen,giaydo,30000,dentron,1,"Gi�y Ki�ng �� ","L�ng ��n Tr�n")
elseif i == 10 then
	chetao11(thanhtre,daycoi,nen,giaycam,30000,denca,1,"Gi�y Ki�ng Cam","L�ng ��n C� Ch�p")
end
end


function chetao11(nl1,nl2,nl3,nl4,gold,newitem,soluong,name1,newname)
a = GetItemCount(nl1)
b = GetItemCount(nl2)
c = GetItemCount(nl3)
d = GetItemCount(nl4)

f = GetCash()
if GetItemCount(nl1) >= soluong and GetItemCount(nl2) >= soluong and GetItemCount(nl3) >= soluong and GetItemCount(nl4) >= soluong and GetCash() >= gold then
	for k=1,soluong do
	DelItem(nl1)
	DelItem(nl2)
	DelItem(nl3)
	DelItem(nl4)
	end
	Pay(gold)
	if GetItemCount(nl1) == a - soluong and GetItemCount(nl2) == b - soluong and GetItemCount(nl3) == c - soluong and GetItemCount(nl4) == d - soluong and GetCash() == f - gold then
		for k=1,soluong do
			AddEventItem(newitem)
		end
		Msg2Player("B�n nh�n ���c "..soluong.." "..newname.." ")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end	
else
	Talk(1,"",""..soluong.."x "..newname.."= "..soluong.."x [Thanh Tre + D�y C�i + N�n + "..name1.."] + "..gold.." l��ng ")
end
end




function muaevent_2()
SayNew("<color=green>L� Quan: <color>: B�n c� ch�c ch�n mu�n mua <color=yellow>10 H�p M�c M�u Xanh = 5 V�ng<color> kh�ng?",2,
"Ta ��ng � mua/muaevent_2_1",
"Tho�t./no")
end
giaycam = 182
function muaevent_2_1()
if CheckFreeBoxItem(4,giaycam,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

sl = GetItemCount(giaycam) 
vang = GetTask(99)
vang2 = GetTask(101)
if GetTask(99) >= 5 and GetTask(101) >= 5 then
	SetTask(99,GetTask(99) - 5)
	SetTask(101,GetTask(101) - 5)
	if GetTask(99) == vang-5 and GetTask(101) == vang2 - 5 and GetTask(99) == GetTask(101) then
		for i=1,10 do AddEventItem(giaycam) end
		if GetItemCount(giaycam) ~= sl + 10 then
			Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t Gi�y Ki�ng Cam b� m�t.")
		end
		Msg2Player("B�n nh�n ���c 10 H�p M�c M�u Xanh")
		inlog2(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Vang con: "..GetTask(99).." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>5<color> v�ng, kh�ng th� giao d�ch!")
end
end
function muaevent_1()
SayNew("<color=green>L� Quan: <color>: B�n c� ch�c ch�n mu�n mua <color=yellow>10 H�p M�c M�u Xanh = 10 v�n l��ng<color> kh�ng?",2,
"Ta ��ng � mua/muaevent_1_1",
"Tho�t./no")
end
function muaevent_1_1()
if CheckFreeBoxItem(4,123,1,1) == 0 then
Talk(1,"","H�nh trang kh�ng �� ch� trong, xin ki�m tra l�i !")
return
end

sl = GetItemCount(181) 
vang = GetCash()
if GetCash() >= 100000 then
	Pay(100000)
	if GetCash() == vang-100000 then
		for i=1,10 do AddEventItem(181) end
		if GetItemCount(181) ~= sl + 10 then
			Talk(1,"","R��ng c�a b�n �� Full n�n s� c� 1 �t H�p M�c M�u �en b� m�t.")
		end
		Msg2Player("B�n nh�n ���c 10 H�p M�c M�u �en")
		inlog3(""..GetAccount().." - "..GetName().." - "..GetLevel().." .Tien van con: "..GetCash().." !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng �� <color=yellow>170<color> v�n, kh�ng th� giao d�ch!")
end
end

function giahan()
if GetTask(307) >= 2 then
	Talk(1,"","Gi�i h�n s� ki�n c�a b�n �� ��t m�c t�i �a <color=yellow>2 l�n<color> !")
	return
end

vang = GetTask(99)
if GetTask(99) >= 100 then
	SetTask(99,GetTask(99) - 100)
	SetTask(101,GetTask(101) - 100)
	if GetTask(99) == vang - 100 and GetTask(101) == vang - 100 then
		SetTask(307, GetTask(307) + 1)
		Msg2Player("B�n �� gia h�n s� ki�n �ua Thuy�n R�ng - H� Tr� T�n Th� l�n <color=yellow>"..GetTask(307).." l�n")
		inlog5(""..GetAccount().." - "..GetName().." - "..GetLevel().." - "..GetTask(307).." Lan")
		Talk(0,"")
	else
		Talk(1,"","hack ha em")
	end
else
Talk(1,"","Ng��i kh�ng �� 100 v�ng �� gia h�n s� ki�n")
end
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








--------------- EVENT 2 - 9 ------------------------


function nhanthem()
num = 0
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] then
		num = num + danhsach[i][4]
	end
end

Msg2Player("S� l�n quay s� c�a b�n t�ng c�ng l�: <color=yellow>"..num.." l�n ")
if num >= 100 and num < 500 then
	cleards()
	AddEventItem(50)
	AddEventItem(50)
	Msg2Player("B�n nh�n ���c 2 vi�n Huy�n Tinh 7")
elseif num >= 500 and num < 1000 then
	cleards()
	AddEventItem(51)
	AddEventItem(51)
	Msg2Player("B�n nh�n ���c 2 vi�n Huy�n Tinh 8")
elseif num >= 1000 then 
	cleards()
	AddEventItem(51)
	AddEventItem(51)
	AddEventItem(51)
	AddEventItem(51)
	Msg2Player("B�n nh�n ���c 4 vi�n Huy�n Tinh 8")
else
	Talk(1,"","B�n kh�ng thu�c tr��ng h�p nh�n th��ng !")
end



end


function cleards()
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] then
		danhsach[i][2] = ""
	end
end
savebang()
end



function rutvatpham()
SayNew("<color=green>L� Quan:<color> Ch�n lo�i v�t ph�m c�n r�t.",4,
"R�t Ti�n Th�o L� /rutvp1",
"R�t N� Nhi H�ng /rutvp1",
"R�t Thi�t La H�n /rutvp1",
"Tho�t./no")
end

function rutvp1(nsel)
i = nsel+1
if i == 1 then
	rutvp2(5,"Ti�n Th�o L� ")
elseif i == 2 then
	rutvp2(6,"N� Nhi H�ng ")

elseif i == 3 then
	rutvp2(7,"Thi�t La H�n ")
end
end


function rutvp2(loai,ten)
vtvp = checkvtvatpham(loai)
if vtvp == 0 then
Talk(1,"","B�n �� r�t h�t "..ten.." trong danh s�ch!")
return
end
soluongdem = 0
if vtvp > 0 then
	for i=1,danhsach[vtvp][loai] do
		if CheckFreeBoxItem(4,22,1,1) == 0 then
			break
		end

		
		soluongdem = soluongdem + 1
		danhsach[vtvp][loai] = danhsach[vtvp][loai] - 1

		if loai == 5 then
			xs = random(1,100)
			if xs < 80 then
				AddEventItem(113)
				Msg2Player("B�n nh�n ���c 1 "..ten.." nh� ")
			elseif xs >= 80 and xs < 99 then
				AddEventItem(117)
				Msg2Player("B�n nh�n ���c 1 "..ten.." ")
			else
				AddEventItem(119)
				Msg2Player("B�n nh�n ���c 1 "..ten.." 3 gi� ")
			end
		elseif loai == 6 then
			xs = random(1,100)
			if xs < 80 then
				AddEventItem(114)
				Msg2Player("B�n nh�n ���c 1 "..ten.." nh� ")
			elseif xs >= 80 and xs < 99 then
				AddEventItem(118)
				Msg2Player("B�n nh�n ���c 1 "..ten.." ")
			else
				AddEventItem(115)
				Msg2Player("B�n nh�n ���c 1 "..ten.." 3 gi� ")
			end
		elseif loai == 7 then
			AddEventItem(2)
			Msg2Player("B�n nh�n ���c 1 "..ten.." ")
		end

		Talk(0,"")
	end
end

Msg2Player("B�n �� r�t t�ng c�ng "..soluongdem.." "..ten.." ")
if soluongdem > 0 then
	Msg2SubWorld("��i hi�p ["..GetName().."] �� r�t "..soluongdem.." "..ten.." t� V�ng Quay May M�n !")
end
savebang()
end


function chonquay(nsel)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if gio ~= 20 then
Talk(1,"","Th�i gian quay s� may m�n t� 20h00 - 20h59 m�i ng�y !")
return
end

num = 1
if nsel == 1 then
num = 10
end

if GetTask(132) < num then
Talk(1,"","B�n kh�ng c� �� "..num.." l��t quay s� may m�n !")
return
end

if getn(danhsach) == 0 then
	danhsach[getn(danhsach)+1] = {"","",0,0,0,0,0} -- tk, ten, ngay, solan, ttl, nnh, tlh
	Msg2Player("�� kh�i t�o m�ng danh s�ch !")
return
end

vitri = checkdsmang()
if vitri == 0 then
	danhsach[getn(danhsach)+1] = {GetAccount(),GetName(),ngay,0,0,0,0}
	Msg2Player("�� c�p nh�t t�n c�a b�n v�o danh s�ch quay s� ng�y <color=pink>"..ngay.."/"..thang.."/2014!")
return
end

if GetTask(132) >= num then
	SetTask(132,GetTask(132)-num)
	danhsach[vitri][4] = danhsach[vitri][4] + num	
	Msg2Player("B�n �� quay s� t�ng c�ng: <color=yellow>"..danhsach[vitri][4].." l�n<color=red> trong ng�y <color=pink>"..ngay.."/"..thang.."/2014 ")
	for k=1,num*10 do AddOwnExp(1000000) end
	Msg2Player("B�n nh�n ���c "..(num*10).." tri�u kinh nghi�m !")

	for k=1,num do
	xs = random(1,300)
	if xs < 260 then
		xs2 = random(1,20)
		if xs2 < 5 then
			danhsach[vitri][5] = danhsach[vitri][5] + 1
			Msg2Player("B�n nh�n ���c 1 Ti�n Th�o L�. S� l��ng Ti�n Th�o L� ch�a r�t l�: <color=yellow>"..danhsach[vitri][5].." ")
		elseif xs2 >= 5 and xs2 < 10 then
			danhsach[vitri][6] = danhsach[vitri][6] + 1
			Msg2Player("B�n nh�n ���c 1 N� Nhi H�ng. S� l��ng N� Nhi H�ng ch�a r�t l�: <color=yellow>"..danhsach[vitri][6].." ")
		elseif xs2 == 13 then
			danhsach[vitri][7] = danhsach[vitri][7] + 1
			Msg2Player("B�n nh�n ���c 1 Thi�t La H�n. S� l��ng Thi�t La H�n ch�a r�t l�: <color=yellow>"..danhsach[vitri][7].." ")
		else
			m = random(1,5)
			AddOwnExp(m*1000000)
			Msg2Player("B�n nh�n ���c "..m..".000.000 ph�n th��ng V�ng Quay May M�n !")
		end
	elseif xs >= 260 and xs < 280 then
		xs2 = random(1,4)
		if xs2 == 1 then
			AddEventItem(31)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>Tinh H�ng B�o Th�ch")
		else
			AddEventItem(random(28,30))
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>Th�y Tinh")
		end
	elseif xs >= 280 and xs < 299 then
		xs2 = random(1,10)
		if xs2 == 1 then
			AddEventItem(0)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>V� L�m M�t T�ch")
		elseif xs2 == 2 then
			AddEventItem(1)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>T�y T�y Kinh")
		elseif xs2 == 3 then
			AddEventItem(49)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>Huy�n Tinh 6")
		else
			AddEventItem(48)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>Huy�n Tinh 5")
		end	
	elseif xs == 299 then
			AddEventItem(50)
			Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=yellow>Huy�n Tinh 7")	
	else
		xs2 = random(1,4)
		if xs2 == 1 then
		AddItem(0,4,3,1,0,0,0)
		elseif xs2 == 2 then
		AddItem(0,3,3,1,0,0,0)
		elseif xs2 == 3 then
		AddItem(0,3,4,1,0,0,0)
		elseif xs2 == 4 then
		AddItem(0,9,3,1,0,0,0)
		end
		Msg2SubWorld("Ch�c m�ng ["..GetName().."] quay s� nh�n ���c <color=pink>Trang b� Ho�ng Kim An Bang")	
	end


	end



	Talk(0,"")
else
	Talk(1,"","B�n kh�ng c� �� "..num.." l��t quay s� may m�n !")
end
end


function checkdsmang()
ngay = tonumber(date("%d"))
vt = 0
for i=1,getn(danhsach) do
	if GetName() == danhsach[i][2] and ngay == danhsach[i][3] then
		vt = i
		break
	end
end
return vt
end

function checkvtvatpham(loai)
vt = 0
for i=1,getn(danhsach) do
	if (GetName() == danhsach[i][2] or GetAccount() == danhsach[i][1]) and danhsach[i][loai] > 0 then
		vt = i
		break
	end
end
return vt
end


function hockynang()
if GetFaction() == "" then
Talk(1,"","B�n ch�a gia nh�p ph�i kh�ng th� nh�n h� tr� ")
return
end
if GetLevel() < 120 then
Talk(1,"","B�n kh�ng �� ��ng c�p 120, kh�ng th� nh�n h� tr� !")
return
end
num = 0
for i=412,430 do
	if mod(i,2) == 0 then
		if HaveMagic(i) > 0 then
			num = 1
			break
		end
	end
end

if num == 1 then
Talk(1,"","B�n �� nh�n k� n�ng 120 r�i, kh�ng th� nh�n th�m !")
return
end


sl = GetItemCount(17)
if GetItemCount(17) >= 5 then
	for k=1,5 do DelItem(17) end
	if GetItemCount(17) == sl - 5 then
		if mp() == 1 then
			AddMagic(412,1)
		elseif mp() == 2 then
			AddMagic(414,1)
		elseif mp() == 3 then
			AddMagic(416,1)
		elseif mp() == 4 then
			AddMagic(418,1)
		elseif mp() == 5 then
			AddMagic(420,1)
		elseif mp() == 6 then
			AddMagic(422,1)
		elseif mp() == 7 then
			AddMagic(424,1)
		elseif mp() == 8 then
			AddMagic(426,1)
		elseif mp() == 9 then
			AddMagic(428,1)
		elseif mp() == 10 then
			AddMagic(430,1)
		else
			Talk(1,"","B�n ch�a gia nh�p ph�i !")
		end
		Msg2Player("Ch�c m�ng b�n �� h�c ���c k� n�ng 120 !")
		Talk(0,"")
	else
		Talk(1,"","Hack ha em")
	end
else
	Talk(1,"","B�n kh�ng mang theo <color=yellow>5 Kim Nguy�n B�o<color>, kh�ng th� h�c k� n�ng !")
end
end


function no()



end

function savebang()
BANG = TaoBang(DSTOP,"DSTOP")
				
LuuBang("script/danhsachtop.lua",BANG)
end

function xacnhan()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if getn(danhsach) == 0 then
return
end

soluong = 0
ten = ""
for i=1,getn(danhsach) do
	if ngay == danhsach[i][3] then
		if danhsach[i][4] > soluong then
			soluong = danhsach[i][4]
			ten = danhsach[i][2]
		end
	end
end

Msg2SubWorld("Ng��i �ang d�n ��u V�ng Quay May M�n ng�y "..ngay.."/"..thang.."/2014  l� <color=pink>"..ten.."")
end

function xacnhan2()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))


if getn(danhsach) == 0 then
return
end

soluong = 0
ten = ""
for i=1,getn(danhsach) do
	if ngay == danhsach[i][3] then
		if danhsach[i][4] > soluong then
			soluong = danhsach[i][4]
			ten = danhsach[i][2]
		end
	end
end

Msg2SubWorld("Ch�c m�ng ��i hi�p [<color=pink>"..ten.."<color=red>] �� gi�nh chi�n th�ng trong V�ng Quay May M�n ng�y "..ngay.."/"..thang.."/2014 v�i s� l�n quay s�: <color=yellow>"..soluong.." l�n")
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





--==================================


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
end