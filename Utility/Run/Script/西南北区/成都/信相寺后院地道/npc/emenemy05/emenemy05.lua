--description: ������ �����º�Ժ�ص�����
--author: yuanlan	
--date: 2003/3/6


Include("emenemy05_Default.lua")
Include("emenemy05_UTask_56.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 56) then	
	emenemy05_UTask_56()					
else
	emenemy05_Default()
end;
	
end;	


