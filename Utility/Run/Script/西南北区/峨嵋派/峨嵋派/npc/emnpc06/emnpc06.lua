--description: �������
--author: yuanlan	
--date: 2003/3/4


Include("emnpc06_Default.lua")
Include("emnpc06_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 7) then	
	emnpc06_UTask_enroll()					--��������
else
	emnpc06_Default()
end;	
	
end;	


