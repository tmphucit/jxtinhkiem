--hoangnhk
Include("\\script\\header\\taskid.lua");
MONEY = {100,200,400,800,1600,3200,6400,12800,25600,51200};
GIVE_MONEY = "Cho ng��i %d ng�n l��ng/chotien"
function main()
	local nTaskValue = GetTask(TASK_DUNGCHUNG2);
	local nTask = GetNumber(2,nTaskValue,1);
	if(nTask >= 10 or HaveMagic(400) ~= -1) then
	Talk(1,"", "Ng��i t�t � hi�n g�p l�nh");
	return end;
	SayNew("Ch�c ng�i m�nh kh�e, xin th��ng x�t cho k� �n m�y ngheo h�n n�y!", 2,
	format(GIVE_MONEY,MONEY[nTask+1]),
	"Nh�ng k� �n no l��i bi�ng, nh�t ��nh kh�ng �ng h�/no")
end;

function chotien()
	local nTaskValue = GetTask(TASK_DUNGCHUNG2);
	local nTask = GetNumber(2,nTaskValue,1);
	if(GetCash() >= MONEY[nTask+1]) then
		Pay(MONEY[nTask+1])
		if((RANDOM(1,10) <= 1) or (nTask == 10)) then
			Talk(3,"hockn","�a t� l�ng t�t, c� mu�n h�c m�t v�i tr� ch�i vui kh�ng?","Tr� g� vui?","��ng l� nh� th� ");
			nTask = 10;
		else
			nTask = nTask+1;
		end;
		SetTask(TASK_DUNGCHUNG2,SetNumber(2,GetTask(TASK_DUNGCHUNG2),1,nTask));
	else
		Talk(1,"","B�y gi� ta kh�ng mang theo ti�n");
	end
end

function hockn()
	AddMagic(400,1);
	Msg2Player("B� th� cho ng��i �n m�y, h�c ���c k� n�ng 'Ki�p Ph� T� B�n'");
end;

function no()
	Talk(1,"","Ng��i kh�ng c� t�m l�ng! B� T�t s� kh�ng ph� h� ");
end;