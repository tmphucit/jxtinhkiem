--description: �������һ�����
--author: yuanlan	
--date: 2003/5/19


Include("trenemy03_1_Default.lua")
Include("trenemy03_1_UTask_32.lua")

function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 32) then trenemy03_1_UTask_32()  return end;					--30������

trenemy03_1_Default()

end;	


