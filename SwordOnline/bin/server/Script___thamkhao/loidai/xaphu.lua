Include("\\script\\loidai\\loidai_head.lua");

function main()
	SayNew("Cã ph¶i ng­¬i muèn rêi khái l«i ®µi thi ®Êu kh«ng ?",2,"Ph¶i, ta ra ®©y mét l¸t!/yes","Kh«ng cÇn ®©u/no")
end;

function yes()
	LeaveGame();
	NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end

function no()
end
