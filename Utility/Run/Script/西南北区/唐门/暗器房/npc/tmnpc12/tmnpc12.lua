--description: �������� 50������ 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc12_Default.lua")
Include("tmnpc12_UTask_50.lua")
Include("tmnpc12_UTask_58.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 50) then tmnpc12_UTask_50() return end;				--50������
if (UTask_tm == 58) then tmnpc12_UTask_58() return end;				--50������
	   	
tmnpc12_Default()
	   	
end;	




