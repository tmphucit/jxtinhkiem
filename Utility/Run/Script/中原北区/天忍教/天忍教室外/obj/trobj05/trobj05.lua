--description: 天忍教20级任务 小黄狗
--author: yuanlan	
--date: 2003/5/18


Include("trobj05_Default.lua")
Include("trobj05_UTask_25.lua")


function main()

UTask_tr = GetTask(4);

if (UTask_tr == 25) then	
	trobj05_UTask_25()					
else
	trobj05_Default()
end;
	
end;	


