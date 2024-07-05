bientam = 0

function main(idx)
bientam = idx
if GetNpcName(idx) == "" then
SetNpcName(idx,GetName())
elseif GetNpcName(idx) ~= GetName() then
Talk(1,"","<color=green>C©y B¸ch Qu¶ <color>: C©y nµy cña ng­êi kh¸c. B¹n kh«ng thÓ thu thËp ! ")
return
end
Say("<color=green>C©y B¸ch Qu¶ <color> C©y ®· cã thÓ thu ho¹ch. Ng­êi t×m ra c©y lµ: <color=red>"..GetNpcName(idx).."<color>",1,
"H¸i Qu¶ /haiqua")
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
Talk(1,"","Thêi gian thu thËp tiÕp theo: <color=red>"..thoigiancl.."<color> gi©y !")
end
end

function thuthap()
for i=1,3 do
item = random(1,10)
	if item == 1 then
	AddEventItem(56)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Xoµi ")
	elseif item == 2 then
	AddEventItem(57)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i M·ng CÇu ")
	elseif item == 3 then		
	AddEventItem(58)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Cam ")
	elseif item == 4 then		
	AddEventItem(59)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Lª ")
	elseif item == 5 then		
	AddEventItem(60)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i B­ëi ")
	elseif item == 6 then		
	AddEventItem(61)
	Msg2Player("B¹n nhËn ®­îc 1 N¶i Chuèi ")
	elseif item == 7 then		
	AddEventItem(62)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Hång ")
	elseif item == 8 then		
	AddEventItem(63)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Dõa ")
	elseif item == 9 then		
	AddEventItem(64)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i §u §ñ ")
	elseif item == 10 then		
	AddEventItem(65)
	Msg2Player("B¹n nhËn ®­îc 1 Tr¸i Sung ")
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