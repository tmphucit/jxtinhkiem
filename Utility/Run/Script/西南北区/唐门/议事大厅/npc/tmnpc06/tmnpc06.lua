--description: ������һ�� 20������ 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc06_Default.lua")
Include("tmnpc06_UTask_20.lua")
Include("tmnpc06_UTask_26.lua")
Include("tmnpc06_UTask_52.lua")

function main()

UTask_tm = GetTask(2);

if (UTask_tm == 20) then tmnpc06_UTask_20() return end;				--20������
if (UTask_tm == 26) then tmnpc06_UTask_26() return end;				--20������
if (UTask_tm == 52) then tmnpc06_UTask_52() return end;				--50������
	   	
tmnpc06_Default()
	   	
end;	




