--description: ������ػ����ĳ�
--author: yuanlan	
--date: 2003/4/28


Include("twnpc09_Default.lua")
Include("twnpc09_UTask_50.lua")
Include("twnpc09_UTask_55.lua")

function main()

UTask_tw = GetTask(3);

if (UTask_tw == 50) then twnpc09_UTask_50()  return end;					--50������
if (UTask_tw == 55) then twnpc09_UTask_55()  return end;					--50������

twnpc09_Default()

end;	


