SoLuongGioiHan = 2
quai1 = {}
function taonpcpld()
for i=1,getn(toadomap1) do
ai = SubWorldID2Idx(48)
bossid = random(700,704)
bosslvl = 94
	posx = toadomap1[i][1] * 32
	posy = toadomap1[i][2] * 32	
quai1[i] =AddNpc(bossid,bosslvl,ai,posx,posy)
SetNpcScript(quai1[i], "\\script\\hoatdong\\phonglangdo\\thuyenphu1.lua")
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

-- function main()
-- Talk(1,"","T�nh n�ng t�m kh�a ��i c�p nh�t t�nh n�ng m�i thay th� !")
-- end

function main()
if GetCurCamp() == 0 then
Talk(1,"","B�n ch�a gia nh�p m�n ph�i, kh�ng �� s�c l�n thuy�n !")
return
end
if GetLevel() < 90 then
Talk(1,"","B�n ch�a ��t c�p 90, kh�ng �� s�c l�n thuy�n !")
return
end
ngay = tonumber(date("%d"))
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))

if (gio == 8 and phut >= 10) or (gio == 10 and phut >= 10) or (gio == 12 and phut >= 10) or (gio == 14 and phut >= 10) or (gio == 16 and phut >= 10) or (gio == 18 and phut >= 10) or (gio == 20 and phut >= 10) or (gio == 22 and phut >= 10) then
Talk(1,"","Th�i gian b�o danh t� ph�t th� 0 - 10, 1 nh�n v�t t�i �a 1 ng�y �i 2 l�n ")
return
end
if GetTask(613) == ngay then
	if GetTask(614) < SoLuongGioiHan then
		SayNew("<color=green>Thuy�n Phu<color>: Ng��i c�n ta gi�p g�? ",2,
		"Ta mu�n ��n b� B�c Phong L�ng �� /dichuyen",
		"Ta ch� �i ngang qua th�i/no")
	else
		Talk(1,"","<color=green>Phong L�ng �� <color>: H�m nay b�n �� tham gia <color=red>"..SoLuongGioiHan.."<color> Phong L�ng ��")
	end
else

	SetTask(613,ngay)
	SetTask(614,0)
	end
end 

function no()
end
function dichuyen()
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
giay = tonumber(date("%S"))
if gio == 8 or gio == 10 or gio == 12 or gio == 14 or gio == 16 or gio == 18 or gio == 20 or gio == 22 then
if phut < 10 then
	thoigianhide = ((9-phut)*60 + (60-giay))*18

	Msg2Player("Th�i gian di chuy�n c�n l�i: "..(9-phut).." ph�t "..(60-giay).." gi�y !") 

	if GetItemCount(135) >= 1 then
			if GetGlbMissionV(16) == 0 then
				SetGlbMissionV(16,1)
				taonpcpld()
			end
			for i=1,getn(toadomap1) do
				HideNpc(quai1[i],thoigianhide)
			end
			SetDeathScript("\\script\\hoatdong\\phonglangdo\\playerdie.lua");
			
			DelItem(135)
			Msg2Player("B�n �ang � tr�n thuy�n, chu�n b� kh�i h�nh sang b� B�c Phong L�ng �� !")
			LeaveTeam()
			SetFightState(0)
			SetCreateTeam(0);
			SetLogoutRV(1);
			NewWorld(48,199*8,199*16)
			thoigian = tonumber(date("%H%M%d%m"))
LoginLog = openfile("Data/logPhongLangDo1.txt", "a");
if LoginLog then
write(LoginLog,""..GetAccount().." - "..GetName().." - "..GetLevel().." - Time: "..thoigian.."\n");
end
closefile(LoginLog)
	else
		Talk(1,"","Ng��i kh�ng mang theo L�nh B�i kh�ng th� l�n thuy�n !")
	end
else
		Talk(1,"","Th�i gian b�o danh t� ph�t th� 0 - 10, 1 ng�y 12 chuy�n v�o gi� ch�n ")
end
else
		Talk(1,"","Th�i gian b�o danh t� ph�t th� 0 - 10, 1 ng�y 12 chuy�n v�o gi� ch�n ")
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


sx = random(1,30)
if sx == 5 then
	AddItem(1,2,0,5,0,0,0)
	-- Msg2World("<color=blue>"..GetName().." nh�n ���c H�i Thi�n T�i T�o L� Bao")
end
gio = tonumber(date("%H"))
phut = tonumber(date("%M"))
if phut >= 20 and GetGlbMissionV(16) == 1 then
	SetGlbMissionV(16,2)
	Msg2Player("Th� L�nh Th�y T�c �� xu�t hi�n, h�y nhanh ch�n ti�u di�t ! ")	
	bossid = random(705,714)
	bosslvl = 99
	vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
	Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
	SetNpcScript(Boss1, "\\script\\hoatdong\\phonglangdo\\boss1.lua")
elseif phut >= 25 and GetGlbMissionV(16) == 2  then
	SetGlbMissionV(16,3)
	bossid = random(705,714)
	bosslvl = 99
	vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
	Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
	SetNpcScript(Boss1, "\\script\\hoatdong\\phonglangdo\\boss1.lua")
	Msg2Player("Th� L�nh Th�y T�c �� xu�t hi�n, h�y nhanh ch�n ti�u di�t ! ")	
elseif phut >= 30 and GetGlbMissionV(16) == 3 then
	SetGlbMissionV(16,4)
	bossid = random(705,714)
	bosslvl = 99
	vt = random(1,getn(toadomap1))
	posx = toadomap1[vt][1] * 32
	posy = toadomap1[vt][2] * 32
	Boss1 =AddNpc(bossid,bosslvl,ai,posx,posy)
	SetNpcScript(Boss1, "\\script\\hoatdong\\phonglangdo\\boss1.lua")
	Msg2Player("Th� L�nh Th�y T�c �� xu�t hi�n, h�y nhanh ch�n ti�u di�t ! ")	
end
end