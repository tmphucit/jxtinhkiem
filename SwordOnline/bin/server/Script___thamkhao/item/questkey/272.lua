
function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông Thæ §Şa Phï trong L·nh §Şa Bang Héi !")
return
end

if w == 42 or w == 43 or w == 34 or w == 35 or w == 60 or w == 61 or w == 46 or w == 47 or w == 48 or w == 49 or w == 26 or w == 27 or w == 28 or w == 29 or w == 33 or w == 20  then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Şa Phï ë ®©y")
return
end

if w == 5 then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Şa Phï ë ®©y")
return
end

if GetFightState() == 0 then
	if w == 53 then
			SetRevPos(53,19)
			Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn !")
	elseif w == 15 then
			SetRevPos(15,10)
			Msg2Player("B¹n ®· trë vÒ T­¬ng D­¬ng !")
	elseif w == 17 then
				SetRevPos(17,12)
				Msg2Player("B¹n ®· trë vÒ Ph­îng T­êng !")
	elseif w == 9 then
				SetRevPos(9,16)
				Msg2Player("B¹n ®· trë vÒ BiÖn Kinh !")
	elseif w == 3 then
				SetRevPos(3,3)
				Msg2Player("B¹n ®· trë vÒ Chu Tiªn TrÊn !")
	elseif w == 66 then
			SetRevPos(66,18)
			Msg2Player("B¹n ®· trë vÒ Giang T©n Th«n !")
	end
			UseTownPortal(1)
else
			SetTaskTemp(1,0)
			rev = GetFromToward()
			w,x,y = GetWorldPos()
			vt = 0
			if rev == 53 then
				vt = 1
			elseif rev == 66 then
				vt = 2
			elseif rev == 3 then
				vt = 3
			elseif rev == 15 then
				vt = 4
			elseif rev == 17 then
				vt = 5
			elseif rev == 9 then
				vt = 6
			end
			UseTownPortal(0)
			Msg2Player("B¹n ®· trë vÒ ®iÓm xuÊt ph¸t !")
		--	if vt > 0 and vt <= getn(LuuRuong) then
		--		if CheckMap(w,vt) == 1 then
		--			UseTownPortal(0)
		--		else
		--			UseTownPortal(1)
		---			Msg2Player("B¹n kh«ng thÓ trë l¹i ®Şa ®iÓm cò do b¶n ®å L­u R­¬ng kh«ng hîp lÖ !")
		--		end
		--	else
		--		UseTownPortal(1)
		--	end
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
{9,"BiÖn Kinh",92, 56, 57, 3, 41, 38,39,102,104,105},
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