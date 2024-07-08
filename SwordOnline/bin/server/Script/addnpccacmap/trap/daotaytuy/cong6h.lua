--两湖区 巴陵县南门 战斗状态切换Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)


if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	
	SetPos(1584, 3231)		
	SetFightState(1)		
else			       		
	SetPos(1591, 3223)		
	SetFightState(0)		
end;
	AddStation(10)			
doimaump()
else
xuly()
end
end;

-- cua 3h