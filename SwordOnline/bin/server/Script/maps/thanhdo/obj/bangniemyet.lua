Include("\\script\\header\\taskid.lua");

function main()
	local nValue = GetTask(TASK_DUNGCHUNG1);
	local nTaskTime = GetTask(TASK_THOIGIAN3);
	local nCurTime = GetCurServerSec();
	if(GetRepute()<2 or (nCurTime - nTaskTime < 3600)) then
		Talk(1,"","Nha d�ch ph� Th�nh ��: V� d�n tr� h�a, ai di�t ���c m�i h�a heo r�ng � 4 v�ng, b�n ph� th��ng ngay 500 l��ng v� bi�u d��ng h�nh ��ng hi�p ngh�a\nB� c�o")
	return end
	if(GetNumber(1,nValue,8) ~= 1) then
	SayNew("Th�ng c�o: G�n ��y c�c v�ng ngo�i � b� heo r�ng qu�y nhi�u, ph� ho�i m�a m�ng, th�t l� phi�n ph�c. �� treo gi�i 500 l��ng b�c �� t�m d�ng s� di�t b�y heo r�ng n�y. H� gi�t ���c b�n ch�ng th� �� nha m�n l�nh th��ng",2,
	"B�ng ni�m y�t/bangniemyet",
	"Kh�ng m�ng/no");
	else
	Talk(1,"","Nha d�ch ph� Th�nh ��: Nhi�u d�ng s� h�ng h�i v� d�n tr� h�a, �en l�i s� b�nh y�n cho d�n ch�ng, chu�n b� ��n nh�ng tr�ng s� chi�n th�ng tr� v�.");
	end;
end;

function bangniemyet()
	SetTask(TASK_DUNGCHUNG1,SetNumber(1,GetTask(TASK_DUNGCHUNG1),8,1));
	SetTask(TASK_DUNGCHUNG2,SetNumber(2,GetTask(TASK_DUNGCHUNG2),1,0));
	Talk(1,"","B�n gi�t l�y b�n th�ng c�o, quy�t t�m tr� h�i gi�p b� t�nh");
end;

function no()
end;