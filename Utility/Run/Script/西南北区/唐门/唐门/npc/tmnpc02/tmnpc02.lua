--description: ������ͨ���� �����س���
--author: yuanlan	
--date: 2003/3/10


Include("tmnpc02_Default.lua")
Include("tmnpc02_UTask_8.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 8) then			--��������
	tmnpc02_UTask_8()					
else	   	
	tmnpc02_Default()
end;	
	   	
end;	




