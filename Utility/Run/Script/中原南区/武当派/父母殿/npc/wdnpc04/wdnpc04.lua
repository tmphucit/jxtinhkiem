--description: �䵱��Ҧʯ��
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc04_Default.lua")
Include("wdnpc04_UTask_20.lua")
Include("wdnpc04_UTask_23.lua")
Include("wdnpc04_UTask_28.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 20) then wdnpc04_UTask_20()  return end;					--20������
if (UTask_wd == 23) then wdnpc04_UTask_23()  return end;					--20������
if (UTask_wd == 28) then wdnpc04_UTask_28()  return end;					--20������

wdnpc04_Default()

end;	


