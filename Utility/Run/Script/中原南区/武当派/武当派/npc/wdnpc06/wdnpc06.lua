--description: �䵱������Ȫ
--author: yuanlan	
--date: 2003/5/15


Include("wdnpc06_Default.lua")
Include("wdnpc06_UTask_40.lua")
Include("wdnpc06_UTask_48.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 40) then wdnpc06_UTask_40()  return end;					--40������
if (UTask_wd == 48) then wdnpc06_UTask_48()  return end;					--40������

wdnpc06_Default()

end;	


