--description: �����Ʋ�Ⱦ 30������ 
--author: yuanlan	
--date: 2003/3/11


Include("tmnpc08_Default.lua")
Include("tmnpc08_UTask_30.lua")
Include("tmnpc08_UTask_35.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 30) then tmnpc08_UTask_30() return end;				--30������
if (UTask_tm == 35) then tmnpc08_UTask_35() return end;				--30������
	 				
tmnpc08_Default()
	   	
end;	




