--description: ���̽��󻤷���ľ�
--author: yuanlan	
--date: 2003/5/19


Include("trnpc08_Default.lua")
Include("trnpc08_UTask_50.lua")
Include("trnpc08_UTask_55.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 50) then trnpc08_UTask_50()  return end;					--50������
if (UTask_tr == 55) then trnpc08_UTask_55()  return end;					--50������

trnpc08_Default()

end;	


