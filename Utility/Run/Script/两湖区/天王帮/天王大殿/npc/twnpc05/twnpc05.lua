--description: �������커��·��Զ
--author: yuanlan	
--date: 2003/4/26


Include("twnpc05_Default.lua")
Include("twnpc05_UTask_40.lua")
Include("twnpc05_UTask_48.lua")

function main()

UTask_tw = GetTask(3);

if (UTask_tw == 40) then twnpc05_UTask_40()  return end;					--40������
if (UTask_tw == 48) then twnpc05_UTask_48()  return end;					--40������

twnpc05_Default()

end;	


