--description: �䵱��С��ʿ���
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc01_Default.lua")
Include("wdnpc01_UTask_0.lua")
Include("wdnpc01_UTask_8.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 0) then	 wdnpc01_UTask_0()  return end;					--��������
if (UTask_wd == 8) then	 wdnpc01_UTask_8()  return end;					--��������

wdnpc01_Default()

end;	


