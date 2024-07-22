
function main(sel)

if ( GetFightState() == 0 ) then	
	SetPos(1570, 3086)		
	SetFightState(1)		
else			       		
	SetPos(1573, 3090)			
	SetFightState(0)		
end;
	AddStation(11)			
end;