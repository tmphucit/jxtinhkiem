--description: �䵱�ɵ�һ����
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc02_Default.lua")
Include("wdnpc02_UTask_10.lua")
Include("wdnpc02_UTask_15.lua")
Include("wdnpc02_UTask_48.lua")
Include("wdnpc02_UTask_60.lua")
Include("wdnpc02_UTask_65.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 10) then wdnpc02_UTask_10()  return end;					--10������
if (UTask_wd == 15) then wdnpc02_UTask_15()  return end;					--10������
if (UTask_wd == 48) then wdnpc02_UTask_48()  return end;					--40������
if (UTask_wd == 60) then wdnpc02_UTask_60()  return end;					--��ʦ����
if (UTask_wd == 65) then wdnpc02_UTask_65()  return end;					--��ʦ����

wdnpc02_Default()

end;	


