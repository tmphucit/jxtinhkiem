--description: ��������ʹ�Ű�
--author: yuanlan	
--date: 2003/4/25


Include("twnpc04_Default.lua")
Include("twnpc04_UTask_30.lua")
Include("twnpc04_UTask_35.lua")

function main()

UTask_tw = GetTask(3);

if (UTask_tw == 30) then twnpc04_UTask_30()  return end;					--30������
if (UTask_tw == 35) then twnpc04_UTask_35()  return end;					--30������

twnpc04_Default()

end;	


