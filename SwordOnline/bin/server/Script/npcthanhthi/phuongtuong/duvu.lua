function main(sel)
	--12173,12176
	--SayNew(12174,0);
	SayNew(12173,2,
		"Th� v� ��y, �i th� xem/hoason",
		"Kh�ng quan t�m, kh�ng mu�n �i./no");
end;


function hoason()
	if(GetCash() < 500) then
		Talk(1,"",12175);
	return end;
	if(NewWorld(2,2609,3590)) then
		Msg2Player("B�n �ang ��n Hoa S�n c�nh k� tr��ng!");
		Pay(500);
	end;	
end;

function no()
	Talk(1,"",12176);
end;