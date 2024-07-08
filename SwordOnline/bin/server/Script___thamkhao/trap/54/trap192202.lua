

function main(sel)

if ( GetFightState() == 0 ) then	
	SetPos(1565, 3242)			
	SetFightState(1)		
else			       		
	SetPos(1570, 3240)		
	SetFightState(0)		
end;
	AddStation(11)			
end;