--description: �������� 30������ 
--author: yuanlan	
--date: 2003/3/11


Include("tmnpc09_Default.lua")
Include("tmnpc09_UTask_35.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 35) then 				--30������
	tmnpc09_UTask_35() 				
else	   	
	tmnpc09_Default()
end;	
	   	
end;	




