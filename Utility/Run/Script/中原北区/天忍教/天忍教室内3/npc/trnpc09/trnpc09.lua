--description: ���̽̽������պ���
--author: yuanlan	
--date: 2003/5/19


Include("trnpc09_Default.lua")
Include("trnpc09_UTask_60.lua")
Include("trnpc09_UTask_68.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 60) then trnpc09_UTask_60()  return end;					--��ʦ����
if (UTask_tr == 68) then trnpc09_UTask_68()  return end;					--��ʦ����

trnpc09_Default()

end;	


