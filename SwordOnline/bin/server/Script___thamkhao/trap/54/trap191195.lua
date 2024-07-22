

function main(sel)

if ( GetFightState() == 0 ) then	
	SetPos(1527, 3124)		
	SetFightState(1)		
else			       		
	SetPos(1532, 3130)			
	SetFightState(0)		
end;
	AddStation(11)			
end;