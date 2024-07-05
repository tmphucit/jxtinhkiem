quai1 = {}
function taonpcpld()
for i=1,getn(toadomap1) do
ai = SubWorldID2Idx(47)
bossid = random(700,704)
bosslvl = 94
	posx = toadomap1[i][1] * 32
	posy = toadomap1[i][2] * 32	
quai1[i] =AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i], "\\script\\phonglangdo\\thuyenphu.lua")
end




end

toadomap1 = {
{1631,3252},
{1626,3248},
{1621,3245},
{1628,3239},
{1632,3241},
{1637,3247},
{1644,3243},
{1641,3239},
{1635,3235},
{1644,3221},
{1652,3214},
{1647,3218},
{1659,3218},
{1656,3224},
{1652,3229},
{1617,3229},
{1609,3235},
{1598,3222},
{1602,3213},
{1609,3222},
{1615,3215},
{1606,3208},
{1583,3203},
{1577,3198},
{1584,3188},
{1590,3193},
{1601,3172},
{1606,3179},
{1607,3165},
{1613,3173},
{1627,3188},
{1620,3195},
{1628,3202},
{1633,3209},
{1642,3205},
{1635,3197}
}
function main()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if phut < 10 and mod(gio,2) == 0 then
	Say("<color=green>ThuyÒn Phu<color>: Ng­¬i cÇn ta gióp g×? ",2,
	"Ta muèn ®Õn bê B¾c Phong L¨ng §é /dichuyen",
	"Ta chØ ®i ngang qua th«i/no")
else
	Talk(1,"","Thêi gian b¸o danh tõ phót thø 0 - 10, 1 ngµy 12 chuyÕn vµo giê ch¼n ")
end 
end

function no()
end
function dichuyen()
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
thoigianhide = ((9-phut)*60 + (60-giay))*18

Msg2Player("Thêi gian di chuyÓn cßn l¹i: "..(9-phut).." phót "..(60-giay).." gi©y !") 
if GetTask(188) <= 5 then
if GetItemCount(135) >= 1 then
		if GetGlbMissionV(15) == 0 then
			SetGlbMissionV(15,1)
			taonpcpld()
		end
		for i=1,getn(toadomap1) do
			HideNpc(quai1[i],thoigianhide)
		end

		SetDeathScript("\\script\\phonglangdo\\playerdie.lua");

		DelItem(135)
		Msg2Player("B¹n ®ang ë trªn thuyÒn, chuÈn bÞ khëi hµnh sang bê B¾c Phong L¨ng §é !")
		Msg2Player("<color=yellow>H·y sö dông Tiªn Th¶o Lé ®Ó t¨ng thªm kinh nghiÖm nhËn ®­îc khi ®¸nh Boss. !")

		LeaveTeam()
		SetFightState(0)
		SetCreateTeam(0);
		SetLogoutRV(1);
		NewWorld(47,199*8,199*16)
	else
	Talk(1,"","Ng­¬i kh«ng mang theo LÖnh Bµi kh«ng thÓ lªn thuyÒn !")
	end
else
Talk(1,"","H«m nay nhµ ng­¬i ®· qua thuyÒn 5 lÇn råi , hÑn gÆp ng­¬i vµo ngµy mai !")
end
end

function inlog(string)
thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logPhongLangDo.txt", "a");
if LoginLog then
write(LoginLog,""..string.." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
end

function OnDrop()
sx2 = random(1,100) 
if sx2 <= 20 then
	AddItem(1,2,0,5,0,0,0)
end
end

function OnDeath()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if phut >= 20 and GetGlbMissionV(15) == 1 then
	SetGlbMissionV(15,2)
	Msg2Player("Thñ LÜnh Thñy TÆc ®· xuÊt hiÖn, h·y nhanh ch©n tiªu diÖt ! ")	
	bossid = random(705,714)
	bosslvl = 99
	vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
	Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
	SetNpcScript(Boss1, "\\script\\phonglangdo\\boss.lua")
elseif phut >= 25 and GetGlbMissionV(15) == 2  then
	SetGlbMissionV(15,3)
	bossid = random(705,714)
bosslvl = 99
vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(Boss1, "\\script\\phonglangdo\\boss.lua")
	Msg2Player("Thñ LÜnh Thñy TÆc ®· xuÊt hiÖn, h·y nhanh ch©n tiªu diÖt ! ")	
elseif phut >= 30 and GetGlbMissionV(15) == 3 then
	SetGlbMissionV(15,4)
bossid = random(705,714)
bosslvl = 99
vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(Boss1, "\\script\\phonglangdo\\boss.lua")
	Msg2Player("Thñ LÜnh Thñy TÆc ®· xuÊt hiÖn, h·y nhanh ch©n tiªu diÖt ! ")	
end
end