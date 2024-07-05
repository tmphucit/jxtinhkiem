--description: 天忍教20级任务 小灰驴
--author: yuanlan	
--date: 2003/5/18


Include("trobj06_Default.lua")
Include("trobj06_UTask_25.lua")


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 25) then	
	trobj06_UTask_25()					
else
	trobj06_Default()
end;
	
end;	


