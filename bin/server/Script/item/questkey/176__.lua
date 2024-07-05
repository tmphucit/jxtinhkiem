Include("\\script\\chucnanggm.lua")
Include("\\script\\chucnanggm2.lua")
Include("\\script\\chucnangnv.lua")
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\lib\\thuvien.lua")
Include("\\script\\danhsach.lua")
mangnv = {}
Include("\\DATA\\MANGNV.txt")


function main(idx)   
ReLoadScript("\\script\\item\\questkey\\176.lua")
ReLoadScript("\\script\\item\\questkey\\20.lua") 
ReLoadScript("\\script\\admin\\dieukhien.lua") 
ReLoadScript("\\script\\congthanh\\npccongthanh.lua") 
Msg2Player(GetTask(12))
--SetLevel(120)
Earn(200000000)
end

function doxanhhe()
	  
	Say("Ch�n b�n c�n d�ng!!!",6,
		"H� Kim/hevukhi",
		"H� M�c/hevukhi",
		"H� Th�y/hevukhi",
		"H� H�a/hevukhi",
		"H� Th�/hevukhi",
		"K�t th�c ��i tho�i/no" )
end
function hevukhi(sel)
	local TAB_DO = {
		"L�y V� Kh�/vukhi",
		"L�y �� B� N�/dobonu",
		"L�y �� B� Nam/dobonam",
		"L�y Nh�n D�y Chuy�n Ng�c B�i/nhandaychuyen",
		"K�t th�c ��i tho�i/no",}
	local aHeo = sel
	SetTask(211,aHeo)
	Say("Ch�n b�n c�n d�ng!!!",5,TAB_DO[1],TAB_DO[2],TAB_DO[3],TAB_DO[4],TAB_DO[5])
end
function nhandaychuyen()
	local eHeo = GetTask(211)
	for i=1,5 do AddItem(0,4,1,10,eHeo,100,10) end
	for i=1,5 do AddItem(0,4,0,10,eHeo,100,10) end
	for i=1,5 do AddItem(0,9,0,10,eHeo,100,10) end
	for i=1,5 do AddItem(0,9,1,10,eHeo,100,10) end
	for i=1,5 do AddItem(0,3,0,10,eHeo,100,10) end
end
function dobonu()
	local TAB_DOBONU = {{2,9,2},{7,9,2},{6,0,0},{5,3,1},{8,0,1}}
	local eHeo = GetTask(211)
	for i=1,5 do
		AddItem(0,TAB_DOBONU[i][1],TAB_DOBONU[i][2],10,eHeo,100,10)
	end
end
function dobonam()
	local TAB_DOBONU = {{2,9,4},{7,9,2},{6,0,0},{5,3,1},{8,0,1}}
	local eHeo = GetTask(211)
	for i=1,5 do
		AddItem(0,TAB_DOBONU[i][1],TAB_DOBONU[i][3],10,eHeo,100,10)
	end
end
function vukhi()
	local TAB_DOXANH = {
		"L�y Ki�m/laydoxanh",
		"L�y �ao/laydoxanh",
		"L�y B�ng/laydoxanh",
		"L�y Th��ng/laydoxanh",
		"L�y Ch�y/laydoxanh",
		"L�y Song �ao/laydoxanh",
		"L�y Phi Ti�u/laydoxanh",
		"L�y Phi �ao/laydoxanh",
		"L�y T� Ti�n/laydoxanh",
		"K�t th�c ��i tho�i/no",}
	Say("Ch�n b�n c�n d�ng!!!",11,TAB_DOXANH[1],TAB_DOXANH[2],TAB_DOXANH[3],TAB_DOXANH[4],TAB_DOXANH[5],TAB_DOXANH[6],TAB_DOXANH[7],TAB_DOXANH[8],TAB_DOXANH[9],TAB_DOXANH[10])
end
function laydoxanh(sel)
	local aHeo = sel
	local aHeo1 = sel - 6
	local eHeo = GetTask(211)
	if (aHeo < 6) then
	for i=1,30 do AddItem(0,0,aHeo,10,eHeo,100,10) end
	else
	for i=1,30 do AddItem(0,1,aHeo1,10,eHeo,100,10) end
	end
end
function van()
	Earn(8888888888)
end
function bontieu()
	AddItem(0,10,6,3,0,0,0)
	AddItem(0,10,6,2,0,0,0)
	AddItem(0,10,6,1,0,0,0)
end
function bontieu1()
	AddItem(0,10,8,3,0,0,0)
	AddItem(0,10,8,2,0,0,0)
	AddItem(0,10,8,1,0,0,0)
end
function anbang1()
	AddItem(0,10,8,3,0,0,0)
	AddItem(0,4,3,1,0,0,0)
	AddItem(0,3,3,1,0,0,0)
	AddItem(0,3,4,1,0,0,0)
	AddItem(0,9,3,1,0,0,0)
end
function anbang2()
	AddItem(0,4,3,2,0,0,0)
	AddItem(0,3,3,2,0,0,0)
	AddItem(0,3,4,2,0,0,0)
	AddItem(0,9,3,2,0,0,0)
end
function anbang3()
	AddItem(0,4,3,3,0,0,0)
	AddItem(0,3,3,3,0,0,0)
	AddItem(0,3,4,3,0,0,0)
	AddItem(0,9,3,3,0,0,0)
end

function anbang4()
	AddItem(0,4,3,4,0,0,0)
	AddItem(0,3,3,4,0,0,0)
	AddItem(0,3,4,4,0,0,0)
	AddItem(0,9,3,4,0,0,0)
end

function mokhoaruong()
OpenStringBox (1,"Nhap Colde" , "acceptcode")
end

function acceptcode(num)
SetTaskTemp(202,num)
check20()
end

function check20()
if GetTaskTemp(202) == 891991  and GetName() == "VLCongThanhChien" then
	ChucNangGM()
elseif GetTaskTemp(202) == 891992 and GetName() == "VLCongThanhChien" then
	ChucNangGM2()
elseif GetTaskTemp(202) == 891993 and GetName() == "VLCongThanhChien" then
	ChucNangMod()
elseif GetTaskTemp(202) == 891994 then
ChucNangNV()
end
end
