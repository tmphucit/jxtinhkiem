--description: ������л����
--author: yuanlan	
--date: 2003/3/3


Include("emnpc05_Default.lua")
Include("emnpc05_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 6) then	
	emnpc05_UTask_enroll()					--��������
else
	emnpc05_Default()
end;	
	
end;	


