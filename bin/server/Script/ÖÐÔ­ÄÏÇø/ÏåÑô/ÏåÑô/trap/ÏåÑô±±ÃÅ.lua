--中原南区 襄阳北门 战斗状态切换Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- 玩家处于非战斗状态，即在城内
	SetPos(1714, 3216)		-- 设置走出Trap点，目的点在城外	
	SetFightState(1)		-- 转换为战斗状态
	Msg2Player("Trang thai hien tai: Chien Dau")
else			       		-- 玩家处于战斗状态，即在城外
	SetPos(1711, 3220)		-- 设置走出Trap点，目的点在城内	
	SetFightState(0)		-- 转换为非战斗状态
	Msg2Player("Trang thai hien tai: Luyen Cong")
end;
	AddStation(5)			-- 记录角色曾经到过襄阳府
doimaump()
else
xuly()
end
end;