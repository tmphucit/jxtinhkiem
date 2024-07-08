
function main(sel)
if ( GetFightState() == 0 ) then	
	SetFightState(1)
	SetPosU(1554, 3244)
else
	SetFightState(0)
	SetPosU(1560, 3237)
end;
end;
