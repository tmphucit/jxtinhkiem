--description: �䵱�ɵ�˼��
--author: yuanlan	
--date: 2003/5/16


Include("wdnpc08_Default.lua")
Include("wdnpc08_UTask_50.lua")
Include("wdnpc08_UTask_58.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 50) then wdnpc08_UTask_50()  return end;					--50������
if (UTask_wd == 58) then wdnpc08_UTask_58()  return end;					--50������

wdnpc08_Default()

end;	


