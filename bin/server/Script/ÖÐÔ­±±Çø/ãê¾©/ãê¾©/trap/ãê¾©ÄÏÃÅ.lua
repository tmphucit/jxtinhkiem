--两湖区 巴陵县南门 战斗状态切换Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
if ( GetFightState() == 0 ) then	-- 玩家处于非战斗状态，即在城内
	SetPos(1605,3227)
	SetFightState(1)
	
else		
	SetPos(1612,3218)	       		-- 玩家处于战斗状态，即在城外
	SetFightState(0)		-- 转换为非战斗状
end;
	doimaump()
else
xuly()
end
end;