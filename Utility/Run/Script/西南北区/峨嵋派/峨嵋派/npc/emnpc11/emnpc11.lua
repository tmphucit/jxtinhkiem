--description: �����������๫
--author: yuanlan	
--date: 2003/3/4


Include("emnpc11_Default.lua")
Include("emnpc11_UTask_12.lua")
Include("emnpc11_UTask_17.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 12) then emnpc11_UTask_12() return end;					--�ӵ�10������
if (UTask_em == 17) then emnpc11_UTask_17() return end;					--10�����������

emnpc11_Default();
	
end;	


