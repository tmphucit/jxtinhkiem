Include("\\script\\loidai\\loidai_head.lua");

function main()
	SayNew("C� ph�i ng��i mu�n r�i kh�i l�i ��i thi ��u kh�ng ?",2,"Ph�i, ta ra ��y m�t l�t!/yes","Kh�ng c�n ��u/no")
end;

function yes()
	LeaveGame();
	NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end

function no()
end
