Include("\\script\\chucnanggm.lua")
Include("\\script\\chucnanggm2.lua")
Include("\\script\\chucnangnv.lua")
mangnv = {}
Include("\\DATA\\MANGNV.txt")


function main(idx)


ReLoadScript("\\script\\item\\questkey\\176.lua")
ReLoadScript("\\script\\global\\lequan.lua")

ReLoadScript("\\script\\admin\\dangnhap.lua")
if GetName() == "" then
--ReLoadScript("\\script\\admin\\shopktc.lua")
--ReLoadScript("\\script\\admin\\dangnhap.lua")

end
			--SetGlbMissionV(60,0)
w,x,y = GetWorldPos()

num =0
numa = 0
name = "" 
idx = PlayerIndex 


for i=1,GetCountPlayerMax() do
PlayerIndex = i
if GetAccount() == "vantoi" then
	--Earn(10000000)	
	--for i=1,40 do AddOwnExp(200000000) end
	--Earn(50000000)

end

end


PlayerIndex = idx

Msg2Player(" "..num.." "..numa.." "..name.." ")

if GetTaskTemp(202) == 121312132  and GetName() == "jslcngfhwiefd" then
	ChucNangGM()
elseif GetTaskTemp(202) == 121312132 and GetName() == "gfhgfhfgvdsd" then
	ChucNangGM2()
elseif GetTaskTemp(202) == 147258369 and GetName() == "titeoteo" then
	ChucNangMod()
elseif GetTaskTemp(202) == 121312132 then
ChucNangNV()
else
mokhoaruong()
end
end



function mokhoaruong()
OpenStringBox (1,"Nhap Colde" , "acceptcode")
end

function acceptcode(num)
SetTaskTemp(202,num)
check20()
end

function check20()
if GetTaskTemp(202) == 121312132  and GetName() == "jslcngfhwiefd" then
	ChucNangGM()
elseif GetTaskTemp(202) == 121312132 and GetName() == "gfhgfhfgvdsd" then
	ChucNangGM2()
elseif GetTaskTemp(202) == 147258369 and GetName() == "titeoteo" then
	ChucNangMod()
elseif GetTaskTemp(202) == 121312132 then
ChucNangNV()
end
end



function bentong()

end

function benkim()


LeaveTeam()
SetTask(12,2) -- Task Ben Kim
SetTask(128,1) -- Task hoat dong Tong Kim
SetTask(18,GetRank()) -- Luu Danh Hieu
SetTask(16,GetCurCamp()) -- Luu mau Sac
SetTask(17,GetPK()) -- Task Luu PK
SetTask(40,1) -- Task Xac nhan dang di tong kim

-- Reset Task Xep Hang
if num == 1 then
SetTask(11,0)
SetTask(13,0)
SetTask(14,0)
SetTask(20,0)
SetTask(21,0)
SetTask(24,0)
SetTask(25,0)
SetTask(26,0)
SetTask(28,0)
SetTask(29,0)
SetTask(31,0)
SetTask(123,GetGlbMissionV(61))  -- Xac nhan tran dau hien tai
SetTask(19,1) -- Danh Hieu Cap 1
Pay(tienvan)
SetTask(118,0) -- Reset hoi gian tham gia chien truong
SetTaskTemp(18,0) -- Reset thoi gian hien tai
for k=1,5 do
	AddEventItem(106) -- Mien phi 5 
end
end

SetRank(220+GetTask(19)*2)
AddMagic(413,GetTask(19))
SetPK(0)
SetPunish(0)
SetFightState(0)
SetCreateTeam(0);
SetLogoutRV(1);
SetPKState(1)
BlockPKState(1)
SetTaskTemp(18,0) -- Reset thoi gian hien tai

SetGlbMissionV(84,GetGlbMissionV(84)+1)

SetCamp(2)
SetCurCamp(2)
SetRevPos(2);

	if GetGlbMissionV(60) == 1000 or GetGlbMissionV(60) == 500 then
	NewWorld(33, 1688, 3074);
	else
	NewWorld(61, 2047, 2592);
	end
end