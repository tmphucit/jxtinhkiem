--description: ���ų�ʦ���� ��˿���ڶ������
--author: yuanlan	
--date: 2003/3/13


Include("tmenemy09_2_Default.lua")
Include("tmenemy09_2_UTask_65.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 65) then	
	tmenemy09_2_UTask_65()	
else
	tmenemy09_2_Default()
end;
	
end;	




