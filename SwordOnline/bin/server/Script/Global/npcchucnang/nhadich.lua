--hoangnhk
Include("\\script\\header\\taskid.lua");
Include("\\script\\header\\fuyuan.lua")

function main(NpcIndex)
	local w,x,y = GetWorldPos();
	if (w == 37) then--bien kinh
	nhadich();
	return end
	if (w == 176) then--lam an
	nhadich();
	return end
	Talk(1,"",10936)
end;


function nhadich() 
if (GetFightState() ~= 0) then 
	SetFightState(0)
end
	SayNew(10114,3,
	"Ta ��n ��u th�/atone",
	"Ta ��n th�m t�/visit",
	"Kh�ng h�i n�a!/no") 
	LeaveTeam(); 
end 

function atone()
	local PK_value = GetPK();
	local my_money = GetCash();
	local ExpPer = floor(GetExp()/GetNextExp()*100);
	if (PK_value == 0) then
		Talk(2,"",10115,10116) 
	elseif (ExpPer < -50) then
		Talk(1,"",10118) 
		Msg2Player("Lu�t ph�p quy ��nh: Ph�m nh�ng k� kinh nghi�m �m v��t qua 50%, kh�ng cho t� th� chu�c t�i") 
	else 
		SayNew("<player>: Tr��c ��y ta l� tay s�t th��ng ng��i kh�c, nay ��n t� th�", 1,"Ti�p t�c ��i tho�i/want_atone") 
	end 
end 

function want_atone() 
	local PK_value = GetPK(); 
	local my_money = GetCash();
	SayNew("Tay ng��i �� nhu�m m�u, ph�i ng�i ��i lao �� s�m h�i t�i l�i, tu t�m d��ng t�nh<enter>��<enter>T�i tr�ng nh� sau<enter>Cai ph�m <color=Red><player><color> hi�n �i�m PK l� <color=Red>"..PK_value.."<color>, ��nh h�i l� quan sai <color=Red>"..my_money.."<color>. C�ng g�p 2 t�i, nh�t v�o ��i lao "..PK_value.." ng�y.",2,
	"V�o ��i lao/go_atone",
	"Hay l� ta ch�y tr�n th�i/no"); 
end; 

function go_atone()
	local PK_value = GetPK(); 
	local my_money = GetCash(); 
	local w,x,y = GetWorldPos();
	Pay(my_money); 
	Msg2Player("Quan sai t�ch thu to�n b� "..my_money.." l��ng c�a b�n. B�n b� ��a v�o ��i lao") 
	FuYuan_Pause();
	SetTask(TASK_DUNGCHUNG3, SetNumber(3,GetTask(TASK_DUNGCHUNG3),3,100+PK_value));
	if(w == 176) then
		SetTask(TASK_DUNGCHUNG, SetNumber(1,GetTask(TASK_DUNGCHUNG),9,1));
	else
		SetTask(TASK_DUNGCHUNG, SetNumber(1,GetTask(TASK_DUNGCHUNG),9,2));
	end;
	SetTimer(2*60*60*18,9)
	SetCreateTeam(0); 
	NewWorld(208,1785,3062)
end 

function visit()
	SayNew("Mau �i ch� kh�c! Nh�n c�i g�? C� ph�i l� ��ng b�n kh�ng!",2,
	"H�i l� 5000 l��ng b�c/go_visit",
	"�i ra/no") 
end 

function go_visit() 
	local w,x,y = GetWorldPos();
	if (GetCash() >= 5000) then 
	Talk(1,"",10120) 
	Msg2Player("H�i l� Nha D�ch 5000 l��ng b�c, v�o ��i lao �� th�m t� nh�n") 
	Pay(5000)
	SetCreateTeam(0); 
	SetTask(TASK_DUNGCHUNG3, SetNumber(3,GetTask(TASK_DUNGCHUNG3),3,1));
	if(w == 176) then
		SetTask(TASK_DUNGCHUNG, SetNumber(1,GetTask(TASK_DUNGCHUNG),9,1));
	else
		SetTask(TASK_DUNGCHUNG, SetNumber(1,GetTask(TASK_DUNGCHUNG),9,2));
	end;
	NewWorld(208,1785,3062) 
	else 
	Talk(1,"",10121) 
	end 
end 

function no() 
end 
