--description: ���Ź����� 40������ 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc11_Default.lua")
Include("tmnpc11_UTask_42.lua")
Include("tmnpc11_UTask_46.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 42) then tmnpc11_UTask_42() return end;				--40������
if (UTask_tm == 46) then tmnpc11_UTask_46() return end;				--40������
	   	
tmnpc11_Default()
	   	
end;	




