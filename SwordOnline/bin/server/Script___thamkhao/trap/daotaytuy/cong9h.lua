--������ ���������� ս��״̬�л�Trap
Include("\\script\\Global\\doimaump.lua")
Include("\\script\\checkloinhanvat.lua")
function main(sel)


if check() == 0 then
checkruapk()
if ( GetFightState() == 0 ) then	
	SetPos(1588, 3171)		
	SetFightState(1)		
else			       		
	SetPos(1597, 3180)		
	SetFightState(0)		
end;
	AddStation(10)			
doimaump()
else
xuly()
end
end;

-- cua 3h