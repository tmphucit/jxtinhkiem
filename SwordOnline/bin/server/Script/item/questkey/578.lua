

function main(idx)
ngay = tonumber(date("%d"))
thang = tonumber(date("%m"))
gio = tonumber(date("%H"))

if (ngay == 2 and gio >= 17) or ngay > 2 then
Talk(1,"","VËt phÈm hÕt h¹n sö dông !")
return
end

w,x,y = GetWorldPos()
if w ~= 15 and w ~= 17 and w ~= 9 and w ~= 53 and w ~= 66 and w ~= 3 and w~= 20 then
Talk(1,"","ChØ ®­îc gieo h¹t gièng trong b¶n ®å Thµnh ThÞ, Th«n Lµng vµ §¶o TÈy Tñy !")
return
end
if GetAccount() == "" and GetGlbMissionV(37) == 0 then
		SetGlbMissionV(37, 90000)
		Talk(1,"","§· khãa c©y trång !")
	return
end
if GetGlbMissionV(37) == 90000 and GetAccount() ~= "" then
Talk(1,"","<color=red>T¹m khãa trång c©y 5 phót ®Ó reset m·ng c©y trång tr¸nh qu¸ t¶i, c¸c b¹n h·y thu ho¹ch nh÷ng c©y cò tr­íc khi b¾t ®Çu ®ît trång c©y míi !")
return
end

n = GetItemCount(578)
			if GetItemCount(578) >= 1 then
				DelItemIdx(idx);
				if GetItemCount(578) == (n-1) then
						quai = AddNpc(1044,95,SubWorldID2Idx(w),x*32,y*32)
						SetNpcScript(quai, "\\script\\sukien\\trongcay.lua")
				else
				Talk(1,"","Hack Ha Em")
				end
			end
end
