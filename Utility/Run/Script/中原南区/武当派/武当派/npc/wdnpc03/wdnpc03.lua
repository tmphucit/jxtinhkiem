--description: �䵱��Ҷ����
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc03_Default.lua")
Include("wdnpc03_UTask_12.lua")
Include("wdnpc03_UTask_15.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 12) then wdnpc03_UTask_12()  return end;					--10������
if (UTask_wd == 15) then wdnpc03_UTask_15()  return end;					--10������

wdnpc03_Default()

end;	


