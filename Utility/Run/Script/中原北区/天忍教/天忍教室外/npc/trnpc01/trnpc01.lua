--description: ���̵̽���
--author: yuanlan	
--date: 2003/5/17


Include("trnpc01_Default.lua")
Include("trnpc01_UTask_0.lua")
Include("trnpc01_UTask_8.lua")
Include("trnpc01_UTask_9.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 0) then	 trnpc01_UTask_0()  return end;					--��������
if (UTask_tr == 8) then	 trnpc01_UTask_8()  return end;					--��������
if (UTask_tr == 9) then	 trnpc01_UTask_9()  return end;					--��������

trnpc01_Default()

end;	


