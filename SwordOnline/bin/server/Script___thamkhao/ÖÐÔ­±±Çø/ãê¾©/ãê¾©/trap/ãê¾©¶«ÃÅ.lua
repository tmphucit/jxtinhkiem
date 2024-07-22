--两湖区 巴陵县南门 战斗状态切换Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)
if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	-- 玩家处于非战斗状态，即在城内
	SetFightState(1)
	SetPos(1728, 3257)
	Msg2Player("Trap 41")
else			       		-- 玩家处于战斗状态，即在城外
	SetPos(1721, 3248)
	SetFightState(0)	
	Msg2Player("Trap 42")	-- 转换为非战斗状态
end;
	doimaump()
else
xuly()
end
end;