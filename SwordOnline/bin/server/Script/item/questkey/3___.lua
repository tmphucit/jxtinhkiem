
function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
--if w == 53 and GetFightState() == 0 then
--NewWorld(53,200*8,200*16)
--end
if w == 17 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("NhÊn Thæ §Þa Phï 10 lÇn ®Ó vÒ trung t©m. LÇn thó: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(17,1594,3200)
		SetTaskTemp(1,0)
	end
end
if w == 15 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("NhÊn Thæ §Þa Phï 10 lÇn ®Ó vÒ trung t©m. LÇn thó: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(15,197*8,202*16)
		SetTaskTemp(1,0)
	end
end

if w == 53 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("NhÊn Thæ §Þa Phï 10 lÇn ®Ó vÒ trung t©m. LÇn thó: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(53,1588,3230)
		SetTaskTemp(1,0)
	end
end

if w == 9 and GetFightState() == 0 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1, GetTaskTemp(1) + 1)
		Msg2Player("NhÊn Thæ §Þa Phï 10 lÇn ®Ó vÒ trung t©m. LÇn thó: <color=yellow>"..GetTaskTemp(1).." ")
	else
		NewWorld(9,1729,3079)
		SetTaskTemp(1,0)
	end
end

if GetTaskTemp(2) > 0 then
SetTaskTemp(2,0)
Msg2Player("Thêi gian ®Õm ng­îc nhÆt qu¶ kÕt thóc !")
end
if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông Thæ §Þa Phï trong L·nh §Þa Bang Héi !")
return
end

if w == 87 then
SetFightState(0)
NewWorld(116,1721,3317)
Msg2Player("B¹n ®­îc ®­a vÒ Khu Vùc Bang Héi")
return
end

if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 37 or w == 46 or w == 47 or w == 48 or w == 258 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20 or w == 106 then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
return
end

if w == 5 or w == 59 or w == 24 then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
return
end

if GetFightState() == 1 then
			SetTaskTemp(1,0)
			UseTownPortal(0)
end		
end;

function CheckMap(w,vt)
for i=3,getn(LuuRuong[vt]) do
	if w == LuuRuong[vt][i] then
		return 1
	end
end
return 0
end

LuuRuong = {
{53,"Ba L¨ng HuyÖn", 70, 74, 54, 53},
{66,"Giang T©n Th«n", 67,68,73, 66},
{3,"Chu Tiªn TrÊn", 92, 56, 57, 3},
{15,"T­¬ng D­¬ng",  70, 74, 54, 53, 8, 91, 50, 78, 21, 64},
{17,"Ph­îng T­êng", 67,68,73, 66, 13,14,63,62,79,65},
{9,"Ph­îng T­êng",92, 56, 57, 3, 41, 38,39,102,104,105},
}

MANGMAP = {
{17,1663,3222},
{17,1558,3110},
{17,1509,3192},
{17,1595,3106},
{17,1638,3129},
{17,1663,3222},
{17,1590,3282},

-- VT thu 8
{15,1553,3116},
{15,1504,3209},
{15,1687,3264},
{15,1551,3256},
{15,1511,3299},
{15,1606,3310},

-- VT thu 14
{18,3201,5142},
{18,3103,5025},
{18,3092,5079},
{18,3038,5147},
{18,3096,5204},
{18,3145,5210},

-- VT thu 20
{9,1771,2983},
{9,1816,3094},
{9,1683,3094},
{9,1748,3160},
{9,1699,3167},
{9,1667,3000},

}