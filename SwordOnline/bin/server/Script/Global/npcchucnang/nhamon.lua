--hoangnhk
Include("\\script\\header\\taskid.lua");
function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 1) then--phuong tuong
	Talk(1,"",10936)
	return end
	if (w == 11) then--thanh do
	if(nvheorung()==1) then
	return end;
	Talk(1,"",12628)
	return end
	if (w == 162) then--dai ly
	Talk(1,"",13908)
	return end
	if (w == 78) then--tuong duong
	Talk(1,"",RANDOM(15281,15282))
	return end
	if (w == 37) then--bien kinh
	Talk(1,"",RANDOM(14810,14811))
	return end
	if (w == 80) then--duong chau
	Talk(1,"",RANDOM(15461,15462))
	return end
	if (w == 176) then--lam an
	Talk(1,"",10114)
	return end
	Talk(1,"",10936)
end;

function nvheorung()
	local nCurTime = GetCurServerSec();
	local nTaskTime = GetTask(TASK_THOIGIAN3);
	if(GetNumber(1,GetTask(TASK_DUNGCHUNG1),8) == 1) then
		if(GetNumber(2,GetTask(TASK_DUNGCHUNG2),2) >= 10) then
		SetTask(TASK_DUNGCHUNG1, SetNumber(1,GetTask(TASK_DUNGCHUNG1),8,0))
		SetTask(TASK_DUNGCHUNG2, SetNumber(2,GetTask(TASK_DUNGCHUNG2),2,0))
		SetTask(TASK_THOIGIAN3,nCurTime);
		AddRepute(5);
		Earn(500);
		Talk(1,"","�� gi�t ch�t 10 con heo r�ng? T�t qu�! Ta thay m�t tr�m h� Th�nh �� �a t� ng��i v� c�c d�ng s� �� ra tay. ��y l� 500 l��ng th��ng!");
		Msg2Player("Nhi�m v� ho�n th�nh, ���c th��ng 500 l��ng, thanh th� giang h� t�ng 5 �i�m");
		else
		Talk(1,"","Mu�n l�nh th��ng �? Gi�t 10 con heo r�ng r�i quay l�i ��y");
		end;
		return 1;
	elseif (nCurTime >0 and nCurTime - nTaskTime < 3600) then
		Talk(1,"","G�n Th�nh �� c� r�t nhi�u n�i, th��ng c� heo r�ng xu�t hi�n, l�n n�y may nh� c� ng��i m�i c� th� ��m b�o thu ho�ch n�m nay.");
		return 1;
	end
	return 0;
end;