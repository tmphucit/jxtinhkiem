bientam = 0

function main(idx)
bientam = idx
if GetNpcName(idx) == "" then
SetNpcName(idx,GetName())
elseif GetNpcName(idx) ~= GetName() then
Talk(1,"","<color=green>C�y B�ch Qu� <color>: C�y n�y c�a ng��i kh�c. B�n kh�ng th� thu th�p ! ")
return
end
Say("<color=green>C�y B�ch Qu� <color> C�y �� c� th� thu ho�ch. Ng��i t�m ra c�y l�: <color=red>"..GetNpcName(idx).."<color>",1,
"H�i Qu� /haiqua")
end

function haiqua()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
thoigian = tinhngay()*24*60+gio*60+phut
if GetTask(127) < thoigian then
SetTask(126,0)
end
if GetTask(126) == 0 then
SetTask(126,1)
SetTask(127,thoigian)
thuthap()
else
thoigiancl = 59-giay
Talk(1,"","Th�i gian thu th�p ti�p theo: <color=red>"..thoigiancl.."<color> gi�y !")
end
end

function thuthap()
for i=1,3 do
item = random(1,10)
	if item == 1 then
	AddEventItem(56)
	Msg2Player("B�n nh�n ���c 1 Tr�i Xo�i ")
	elseif item == 2 then
	AddEventItem(57)
	Msg2Player("B�n nh�n ���c 1 Tr�i M�ng C�u ")
	elseif item == 3 then		
	AddEventItem(58)
	Msg2Player("B�n nh�n ���c 1 Tr�i Cam ")
	elseif item == 4 then		
	AddEventItem(59)
	Msg2Player("B�n nh�n ���c 1 Tr�i L� ")
	elseif item == 5 then		
	AddEventItem(60)
	Msg2Player("B�n nh�n ���c 1 Tr�i B��i ")
	elseif item == 6 then		
	AddEventItem(61)
	Msg2Player("B�n nh�n ���c 1 N�i Chu�i ")
	elseif item == 7 then		
	AddEventItem(62)
	Msg2Player("B�n nh�n ���c 1 Tr�i H�ng ")
	elseif item == 8 then		
	AddEventItem(63)
	Msg2Player("B�n nh�n ���c 1 Tr�i D�a ")
	elseif item == 9 then		
	AddEventItem(64)
	Msg2Player("B�n nh�n ���c 1 Tr�i �u �� ")
	elseif item == 10 then		
	AddEventItem(65)
	Msg2Player("B�n nh�n ���c 1 Tr�i Sung ")
	end
end
end

function tinhngay()
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
tinhngay1 = 0
for k=1,getn(mang) do
	if thang > mang[k][1] then
	tinhngay1 = tinhngay1 + mang[k][2]
	end
end
tinhngay1 = tinhngay1 + ngay
return tinhngay1
end

mang = {
{1,31},
{2,28},
{3,31},
{4,30},
{5,31},
{6,30},
{7,31},
{8,31},
{9,30},
{10,31},
{11,30},
{12,31},
}