--description: �䵱��40������ ��ţɽ���ڶ���ֻ����
--author: yuanlan	
--date: 2003/5/15


Include("wdenemy04_2_Default.lua")
Include("wdenemy04_2_UTask_42.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 42) then	
	wdenemy04_2_UTask_42()	
else
	wdenemy04_2_Default()
end;
	
end;	




