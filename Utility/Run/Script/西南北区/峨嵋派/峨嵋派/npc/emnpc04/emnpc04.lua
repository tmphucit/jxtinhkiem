--description: �����ɺ���Ʈ
--author: yuanlan	
--date: 2003/3/3


Include("emnpc04_Default.lua")
Include("emnpc04_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 4) then	
	emnpc04_UTask_enroll()					--��������
else
	emnpc04_Default()
end;	
	
end;	


