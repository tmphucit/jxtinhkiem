--description: ����40������ ���ɽ��ͨ����
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy07_7_Default.lua")
Include("tmenemy07_7_UTask_46.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 46) then	
	tmenemy07_7_UTask_46()	
else
	tmenemy07_7_Default()
end;
	
end;	




