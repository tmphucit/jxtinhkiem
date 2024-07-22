
function main(idx)
w,x,y = GetWorldPos()
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if w >= 116 and w <= 134 then
Msg2Player("Kh«ng thÓ sö dông Thæ §Þa Phï trong L·nh §Þa Bang Héi !")
return
end
if w == 34 or w == 35 or w == 36 or w == 42 or w == 43 or w == 60 or w == 61 or w == 33 or w == 13 or w == 47 or w == 48 or w == 49 then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
return
end
if GetTaskTemp(149) == 1 then
Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
return
elseif GetTask(143) == 1 then
	if GetTask(4) > 0 then
	Talk(1,"","B¹n ®ang trong tr¹ng th¸i t¹m giam. Kh«ng thÓ rêi khái ®©y ! ")
	return
	end
	if GetTaskTemp(1) < 10 then
	SetTaskTemp(1,GetTaskTemp(1)+1)
	Msg2Player("B¹n kh«ng ®­îc Thæ §Þa Phï ë ®©y. NÕu bÞ kÑt b¹n h·y nhÊn 10 lÇn Thæ §Þa Phï ®Ó Gi¶i kÑt")
	Msg2Player("Sè lÇn nhÊn Thæ §Þa Phï gi¶i kÑt lµ: "..GetTaskTemp(1).."/10 lÇn")
	else
	StopTimer()
	SetTask(142,0)
	SetRevPos(53,19)
	UseTownPortal(1)
	SetTask(128,0)
	AddSkillEffect(413,1,0)
	SetTask(143,0)
	Msg2Player("B¹n §· Di ChuyÓn VÒ Ba L¨ng HuyÖn Do Lçi Lag Täa §é")
	SetTaskTemp(1,0)
	end
return
end

if GetFightState() == 0 then
if (w ~= 33 and w ~= 20 and w ~= 53 and w ~= 3 and w~= 66 and w ~= 17 and w ~= 18 and w ~= 9 and w ~= 15 and w ~= 26 and w ~= 27 and w ~= 45) then
SetRevPos(53,19)
UseTownPortal(1)
Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn !")
elseif (w == 26) or (w == 27) or (w == 45) or (w == 28) or (w == 29) or (w == 33) or (w == 20) then
	Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
elseif w == 15 or w == 9 or w == 17 or w == 18 or w == 20 then
	if GetTaskTemp(1) < 10 then
		SetTaskTemp(1,GetTaskTemp(1)+1)
		Msg2Player("B¹n kh«ng ®­îc Thæ §Þa Phï ë ®©y. NÕu bÞ kÑt b¹n h·y nhÊn 10 lÇn Thæ §Þa Phï ®Ó Gi¶i kÑt")
		Msg2Player("Sè lÇn nhÊn Thæ §Þa Phï gi¶i kÑt lµ: "..GetTaskTemp(1).."/10 lÇn")
	else
	
		SetRevPos(53,19)
		UseTownPortal(1)
		SetTask(128,0)	
		AddSkillEffect(413,1,0)
		Msg2Player("B¹n §· Di ChuyÓn VÒ Ba L¨ng HuyÖn Do Lçi Lag Täa §é")
		SetTaskTemp(1,0)
	end
else
	Msg2Player("Tr¹ng th¸i kh«ng thÓ thæ ®Þa phï ")
	SetTaskTemp(1,0)
end
else
	if (w == 26) or (w == 27) or (w == 45) or (w == 33) or (w == 28) or (w == 29)  or (w == 20) then
		Msg2Player("B¹n kh«ng thÓ sö dông Thæ §Þa Phï ë ®©y")
	else
		if w == 46 then
			SetRevPos(53,19)
			UseTownPortal(1)
			Msg2Player("B¹n ®· trë vÒ Ba L¨ng HuyÖn !")
		else
			Msg2Player("B¹n ®· trë vÒ ®iÓm xuÊt ph¸t !")
			rev = GetFromToward()
			SetTaskTemp(1,0)
			
			if rev == 17 then	
				rnd = random(1,7)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 15 then	
				rnd = random(8,13)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 18 then	
				rnd = random(14,19)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])
			elseif rev == 9 then	
				rnd = random(20,25)
				SetFightState(0)
				NewWorld(MANGMAP[rnd][1],MANGMAP[rnd][2],MANGMAP[rnd][3])

			else
				UseTownPortal(0)
			end
		end
	end
end
end;


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
{15,1608,3173},
{15,1511,3299},
{15,1606,3310},

-- VT thu 14
{18,3201,5142},
{18,3103,5025},
{18,3092,6079},
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