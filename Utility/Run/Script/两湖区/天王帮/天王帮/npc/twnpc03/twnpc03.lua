--description: ��������ʹ���
--author: yuanlan	
--date: 2003/4/25


Include("twnpc03_Default.lua")
Include("twnpc03_UTask_20.lua")
Include("twnpc03_UTask_28.lua")

function main()

UTask_tw = GetTask(3);

if (UTask_tw == 20) then twnpc03_UTask_20()  return end;					--20������
if (UTask_tw == 28) then twnpc03_UTask_28()  return end;					--20������

twnpc03_Default()

end;	


