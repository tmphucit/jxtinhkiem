--description: ���������� 
--author: yuanlan	
--date: 2003/3/4


Include("emnpc08_Default.lua")
Include("emnpc08_UTask_20.lua")
Include("emnpc08_UTask_28.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 20) then emnpc08_UTask_20() return end;					--�ӵ�20������
if (UTask_em == 28) then emnpc08_UTask_28() return end;					--20�����������

emnpc08_Default();
	
end;	


