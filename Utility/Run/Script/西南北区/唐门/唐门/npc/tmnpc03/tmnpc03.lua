--description: ������ͨ���� �񺣵ڶ���
--author: yuanlan	
--date: 2003/3/10


Include("tmnpc03_Default.lua")
Include("tmnpc03_UTask_2.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 2) then					--��������
	tmnpc03_UTask_2()		
else	   	
	tmnpc03_Default()
end;
	   	
end;	




