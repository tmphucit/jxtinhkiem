--description: ���̻̽�������
--author: yuanlan	
--date: 2003/5/18


Include("trnpc02_Default.lua")
Include("trnpc02_UTask_10.lua")
Include("trnpc02_UTask_18.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 10) then trnpc02_UTask_10()  return end;					--10������
if (UTask_tr == 18) then trnpc02_UTask_18()  return end;					--10������

trnpc02_Default()

end;	


