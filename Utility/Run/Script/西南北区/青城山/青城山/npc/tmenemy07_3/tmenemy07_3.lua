--description: ����40������ ���ɽ������ɫ����
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy07_3_Default.lua")
Include("tmenemy07_3_UTask_42.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 42) then	
	tmenemy07_3_UTask_42()	
else
	tmenemy07_3_Default()
end;
	
end;	




