
function main(sel)
	if (GetLevel() >= 40) then
		if(NewWorld(325, 1523,3201) == 1) then	
		SetFightState(0)
		end
	else
		Talk(1, "", "��ng c�p 40 tr� l�n m�i ���c ra chi�n tr��ng!")
    end
end;
